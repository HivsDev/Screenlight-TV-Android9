package com.screenlight.tv;

import android.content.Context;
import android.os.Build;
import android.util.Base64;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

final class TvApi {
    private static final String CONFIG_URL = "http://202.189.11.25:521/tg4.json";
    private static final String[] FALLBACK = {
        "http://23.224.122.237:520", "http://202.189.11.25:598",
        "https://app.zhamaopi.fun", "https://zhamaopi.fun"
    };
    private final Context context;
    private final PrivateKey key;
    private final List<String> hosts = new ArrayList<>();
    private String preferred;

    TvApi(Context context) throws Exception {
        this.context = context.getApplicationContext();
        try (InputStream input = context.getAssets().open("client_key.pk8")) {
            byte[] raw = readAll(input, 4096);
            key = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(raw));
        }
        preferred = context.getSharedPreferences("tv", 0).getString("api_host", FALLBACK[0]);
        refreshHosts();
    }

    private void refreshHosts() {
        LinkedHashSet<String> ordered = new LinkedHashSet<>();
        addHost(ordered, preferred);
        String cached = context.getSharedPreferences("tv", 0).getString("api_hosts", "");
        try {
            String encoded = new String(download(CONFIG_URL, false, 4096), StandardCharsets.UTF_8).trim();
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(Cipher.DECRYPT_MODE, key);
            String json = new String(cipher.doFinal(Base64.decode(encoded, Base64.DEFAULT)), StandardCharsets.UTF_8);
            JSONArray list = new JSONArray(json);
            for (int i = 0; i < list.length(); i++) addHost(ordered, list.optString(i));
            context.getSharedPreferences("tv", 0).edit().putString("api_hosts", json).apply();
        } catch (Exception ignored) {
            try {
                JSONArray list = new JSONArray(cached);
                for (int i = 0; i < list.length(); i++) addHost(ordered, list.optString(i));
            } catch (Exception invalidCache) { Log.w("ScreenlightTV", "Cached service list invalid"); }
        }
        for (String host : FALLBACK) addHost(ordered, host);
        hosts.clear();
        hosts.addAll(ordered);
    }

    private static void addHost(Set<String> hosts, String candidate) {
        if (candidate == null) return;
        try {
            URL url = new URL(candidate.trim());
            if (!("http".equals(url.getProtocol()) || "https".equals(url.getProtocol()))
                || url.getHost().isEmpty() || !url.getPath().isEmpty() && !"/".equals(url.getPath())
                || url.getQuery() != null || url.getRef() != null) return;
            String value = url.toExternalForm();
            hosts.add(value.endsWith("/") ? value.substring(0, value.length() - 1) : value);
        } catch (Exception ignored) { }
    }

    JSONObject get(String route) throws Exception {
        Exception last = null;
        Set<String> attempted = new LinkedHashSet<>();
        for (int pass = 0; pass < 2; pass++) {
            if (pass == 1) refreshHosts();
            for (String host : new ArrayList<>(hosts)) {
                if (!attempted.add(host)) continue;
                try {
                    byte[] raw = download(host + "/tgapp.php/v6/" + route, true, 3_000_000);
                    JSONObject result = new JSONObject(new String(raw, StandardCharsets.UTF_8));
                    if (result.optBoolean("encrypted")) result = decrypt(result);
                    if (!host.equals(preferred)) {
                        preferred = host;
                        context.getSharedPreferences("tv", 0).edit().putString("api_host", host).apply();
                    }
                    return result;
                } catch (Exception error) {
                    last = error;
                }
            }
        }
        throw last == null ? new Exception("服务暂不可用") : last;
    }

    private JSONObject decrypt(JSONObject envelope) throws Exception {
        Cipher rsa = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        rsa.init(Cipher.DECRYPT_MODE, key);
        byte[] aesKey = rsa.doFinal(Base64.decode(envelope.getString("encrypted_key"), Base64.DEFAULT));
        byte[] ciphertext = Base64.decode(envelope.getString("ciphertext"), Base64.DEFAULT);
        byte[] tag = Base64.decode(envelope.getString("tag"), Base64.DEFAULT);
        byte[] combined = new byte[ciphertext.length + tag.length];
        System.arraycopy(ciphertext, 0, combined, 0, ciphertext.length);
        System.arraycopy(tag, 0, combined, ciphertext.length, tag.length);
        Cipher aes = Cipher.getInstance("AES/GCM/NoPadding");
        byte[] nonce = Base64.decode(envelope.getString("nonce"), Base64.DEFAULT);
        SecretKeySpec secret = new SecretKeySpec(aesKey, "AES");
        if (Build.VERSION.SDK_INT < 21) {
            aes.init(Cipher.DECRYPT_MODE, secret, new IvParameterSpec(nonce));
        } else {
            aes.init(Cipher.DECRYPT_MODE, secret, new GCMParameterSpec(128, nonce));
        }
        return new JSONObject(new String(aes.doFinal(combined), StandardCharsets.UTF_8));
    }

    static byte[] download(String url, boolean api, int limit) throws Exception {
        HttpURLConnection connection = (HttpURLConnection) new URL(url).openConnection();
        connection.setConnectTimeout(3000);
        connection.setReadTimeout(5000);
        connection.setInstanceFollowRedirects(true);
        connection.setRequestProperty("User-Agent", api ? "Dart/3.12 (dart:io)" : "Mozilla/5.0 (Linux; Android 9; TV)");
        connection.setRequestProperty("Accept", api ? "application/json" : "image/webp,image/*,*/*");
        if (api) {
            connection.setRequestProperty("x-xht-client", "tgapp-flutter");
            connection.setRequestProperty("version-number", "4018");
            connection.setRequestProperty("versions", "v4.1.8");
            connection.setRequestProperty("version", "v4.1.8");
            connection.setRequestProperty("x-xht-crypto", "hybrid-v1");
            connection.setRequestProperty("x-xht-response-mode", "plain");
        }
        try {
            if (connection.getResponseCode() != 200) throw new Exception("HTTP " + connection.getResponseCode());
            try (InputStream input = connection.getInputStream()) {
                return readAll(input, limit);
            }
        } finally {
            connection.disconnect();
        }
    }

    static byte[] readAll(InputStream input, int limit) throws Exception {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        byte[] buffer = new byte[8192];
        int count;
        while ((count = input.read(buffer)) >= 0) {
            if (output.size() + count > limit) throw new Exception("响应过大");
            output.write(buffer, 0, count);
        }
        return output.toByteArray();
    }
}
