package com.screenlight.tv;

import android.content.Context;
import android.os.Build;
import android.util.Log;

import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyStore;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

final class LegacyTls extends SSLSocketFactory {
    private static boolean installed;
    private final SSLSocketFactory delegate;

    private LegacyTls(SSLSocketFactory delegate) { this.delegate = delegate; }

    static synchronized void install(Context context) {
        if (installed || Build.VERSION.SDK_INT >= 21) return;
        try {
            TrustManagerFactory systemFactory = TrustManagerFactory.getInstance(
                TrustManagerFactory.getDefaultAlgorithm());
            systemFactory.init((KeyStore) null);
            X509TrustManager system = trustManager(systemFactory);

            KeyStore roots = KeyStore.getInstance(KeyStore.getDefaultType());
            roots.load(null);
            CertificateFactory certificates = CertificateFactory.getInstance("X.509");
            int index = 0;
            for (String asset : new String[] {"mozilla-ca-bundle.pem", "root-yr.pem"}) {
                try (InputStream input = context.getAssets().open(asset)) {
                    for (Certificate certificate : certificates.generateCertificates(input)) {
                        roots.setCertificateEntry("root-" + index++, certificate);
                    }
                }
            }
            TrustManagerFactory bundleFactory = TrustManagerFactory.getInstance(
                TrustManagerFactory.getDefaultAlgorithm());
            bundleFactory.init(roots);
            X509TrustManager bundle = trustManager(bundleFactory);
            X509TrustManager combined = new X509TrustManager() {
                @Override public void checkClientTrusted(X509Certificate[] chain, String authType)
                    throws CertificateException { system.checkClientTrusted(chain, authType); }
                @Override public void checkServerTrusted(X509Certificate[] chain, String authType)
                    throws CertificateException {
                    try { system.checkServerTrusted(chain, authType); }
                    catch (CertificateException oldRoots) { bundle.checkServerTrusted(chain, authType); }
                }
                @Override public X509Certificate[] getAcceptedIssuers() {
                    X509Certificate[] original = system.getAcceptedIssuers();
                    X509Certificate[] added = bundle.getAcceptedIssuers();
                    X509Certificate[] all = Arrays.copyOf(original, original.length + added.length);
                    System.arraycopy(added, 0, all, original.length, added.length);
                    return all;
                }
            };
            SSLContext ssl = SSLContext.getInstance("TLS");
            ssl.init(null, new TrustManager[] {combined}, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(
                new LegacyTls(ssl.getSocketFactory()));
            installed = true;
        } catch (Exception error) {
            Log.w("ScreenlightTV", "Could not enable legacy TLS", error);
        }
    }

    private static X509TrustManager trustManager(TrustManagerFactory factory) {
        for (TrustManager manager : factory.getTrustManagers()) {
            if (manager instanceof X509TrustManager) return (X509TrustManager) manager;
        }
        throw new IllegalStateException("No X.509 trust manager");
    }

    private Socket configure(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket ssl = (SSLSocket) socket;
            if (Arrays.asList(ssl.getSupportedProtocols()).contains("TLSv1.2")) {
                ssl.setEnabledProtocols(new String[] {"TLSv1.2"});
            }
        }
        return socket;
    }

    @Override public String[] getDefaultCipherSuites() { return delegate.getDefaultCipherSuites(); }
    @Override public String[] getSupportedCipherSuites() { return delegate.getSupportedCipherSuites(); }
    @Override public Socket createSocket(Socket socket, String host, int port, boolean close) throws IOException {
        return configure(delegate.createSocket(socket, host, port, close));
    }
    @Override public Socket createSocket(String host, int port) throws IOException {
        return configure(delegate.createSocket(host, port));
    }
    @Override public Socket createSocket(String host, int port, InetAddress local, int localPort) throws IOException {
        return configure(delegate.createSocket(host, port, local, localPort));
    }
    @Override public Socket createSocket(InetAddress host, int port) throws IOException {
        return configure(delegate.createSocket(host, port));
    }
    @Override public Socket createSocket(InetAddress host, int port, InetAddress local, int localPort) throws IOException {
        return configure(delegate.createSocket(host, port, local, localPort));
    }
}
