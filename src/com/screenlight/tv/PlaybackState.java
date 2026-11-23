package com.screenlight.tv;

import android.content.Context;
import org.json.JSONArray;
import org.json.JSONObject;

final class PlaybackState {
    private PlaybackState() { }

    static JSONObject load(Context context, int videoId) {
        if (videoId <= 0) return new JSONObject();
        try {
            return new JSONObject(context.getSharedPreferences("tv", 0)
                .getString("playback_" + videoId, "{}"));
        } catch (Exception ignored) { return new JSONObject(); }
    }

    static void save(Context context, int videoId, int sourceIndex, String sourceName,
                     int episodeIndex, String episodeName, int positionMs) {
        if (videoId <= 0) return;
        try {
            JSONObject state = new JSONObject();
            state.put("source_index", sourceIndex);
            state.put("source_name", sourceName);
            state.put("episode_index", episodeIndex);
            state.put("episode_name", episodeName);
            state.put("position_ms", Math.max(0, positionMs));
            context.getSharedPreferences("tv", 0).edit()
                .putString("playback_" + videoId, state.toString()).apply();
        } catch (Exception ignored) { }
    }

    static int sourceIndex(JSONArray sources, JSONObject state) {
        if (sources == null || sources.length() == 0) return 0;
        String name = state.optString("source_name", "");
        if (!name.isEmpty()) {
            for (int i = 0; i < sources.length(); i++) {
                JSONObject source = sources.optJSONObject(i);
                if (source != null && name.equals(source.optString("name"))) return i;
            }
        }
        int index = state.optInt("source_index", 0);
        return index >= 0 && index < sources.length() ? index : 0;
    }

    static int episodeIndex(String[] entries, JSONObject state) {
        return episodeIndex(entries, state, true);
    }

    static int episodeIndex(String[] entries, JSONObject state, boolean encodedEntries) {
        int index = state.optInt("episode_index", 0);
        String name = state.optString("episode_name", "");
        if (index >= 0 && index < entries.length && name.equals(episodeName(entries[index], encodedEntries))) return index;
        if (!name.isEmpty()) {
            for (int i = 0; i < entries.length; i++) {
                if (name.equals(episodeName(entries[i], encodedEntries))) return i;
            }
        }
        return index >= 0 && index < entries.length ? index : 0;
    }

    private static String episodeName(String entry, boolean encoded) {
        if (!encoded) return entry;
        int separator = entry.indexOf('$');
        return separator < 0 ? "播放" : entry.substring(0, separator);
    }
}
