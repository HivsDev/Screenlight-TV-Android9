package com.screenlight.tv;

import android.app.Activity;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.MediaController;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.VideoView;
import org.json.JSONArray;
import org.json.JSONObject;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class TvPlayerActivity extends Activity {
    private static final String TAG = "ScreenlightTV";
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final ExecutorService resolver = Executors.newSingleThreadExecutor();
    private final List<Candidate> candidates = new ArrayList<>();
    private FrameLayout root;
    private VideoView systemPlayer;
    private View ijkPlayer;
    private Method ijkSetPath;
    private Method ijkStop;
    private View exoView;
    private Object exoPlayer;
    private Class<?> exoPlayerType;
    private MediaController.MediaPlayerControl control;
    private int currentEngine = -1;
    private int engineGeneration;
    private String currentUrl;
    private int lastProgressMs;
    private long lastProgressAt;
    private TextView title;
    private TextView status;
    private LinearLayout seekOverlay;
    private ProgressBar seekProgress;
    private TextView seekTime;
    private LinearLayout menuPanel;
    private LinearLayout menuControls;
    private LinearLayout menuTabs;
    private LinearLayout menuContent;
    private ProgressBar menuProgress;
    private TextView menuTime;
    private TextView playPauseButton;
    private final List<List<View>> menuRows = new ArrayList<>();
    private int menuTab;
    private final float[] speeds = {0.75f, 1f, 1.25f, 1.5f, 2f};
    private int speedIndex = 1;
    private int videoLayout = 1;
    private int systemVideoWidth;
    private int systemVideoHeight;
    private ArrayList<String> urls;
    private ArrayList<String> names;
    private JSONArray sources;
    private int selectedSource;
    private int episodeIndex;
    private int attemptIndex;
    private int playGeneration;
    private static final long STARTUP_TIMEOUT_MS = 35000;
    private static final long BUFFER_TIMEOUT_MS = 45000;
    private static final long SEEK_TIMEOUT_MS = 25000;
    private long seekStartedAt;
    private int seekObservedPosition;
    private boolean retriedSeek;
    private boolean backgrounded;
    private boolean playbackAdvanced;
    private int confirmedPositionMs = -1;
    private long engineStartedAt;
    private String titlePrefix;
    private boolean paused;
    private boolean preparedHandled;
    private boolean exhausted;
    private boolean seeking;
    private int seekPreviewMs = -1;
    private int seekTargetMs;
    private int resumePositionMs;
    private int videoId;
    private long lastSavedAt;
    private Candidate sourceSwitchFallback;
    private Candidate lastSuccessfulCandidate;

    private static final class Candidate {
        final String name;
        final String url;
        final String parser;
        final int sourceIndex;
        Candidate(String name, String url, String parser, int sourceIndex) {
            this.name = name;
            this.url = url;
            this.parser = parser;
            this.sourceIndex = sourceIndex;
        }
        int priority() {
            if (url.startsWith("http://") || url.startsWith("https://")) return 0;
            if (parser.contains("resolve_play_url")) return 1;
            return 2;
        }
    }

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        LegacyTls.install(this);
        setTitle("暮光TV");
        getWindow().getDecorView().setSystemUiVisibility(5894 | 1024 | 512);
        getWindow().addFlags(128);
        root = new FrameLayout(this);
        root.setBackgroundColor(Color.BLACK);
        root.setFocusableInTouchMode(true);
        if (android.os.Build.VERSION.SDK_INT >= 26) root.setDefaultFocusHighlightEnabled(false);
        setContentView(root);
        videoLayout = Math.max(0, Math.min(2, getPreferences(0).getInt("video_layout", 1)));
        systemPlayer = new VideoView(this);
        systemPlayer.setOnErrorListener((media, what, extra) -> {
            handlePlaybackError(1, what, extra);
            return true;
        });
        systemPlayer.setOnPreparedListener(media -> {
            systemVideoWidth = media.getVideoWidth();
            systemVideoHeight = media.getVideoHeight();
            applyVideoLayout();
            handlePrepared(1);
        });
        systemPlayer.setOnCompletionListener(media -> handleCompletion(1));
        root.addView(systemPlayer, new FrameLayout.LayoutParams(-1, -1));
        systemPlayer.setVisibility(View.GONE);
        initIjkPlayer();
        initExoView();
        title = new TextView(this);
        title.setTextSize(20);
        title.setTextColor(Color.WHITE);
        title.setPadding(dp(22), dp(12), dp(22), dp(12));
        title.setBackgroundColor(0xD0181D40);
        root.addView(title, new FrameLayout.LayoutParams(-1, dp(54), Gravity.TOP));
        status = new TextView(this);
        status.setTextSize(17);
        status.setTextColor(Color.WHITE);
        status.setPadding(dp(22), dp(12), dp(22), dp(12));
        status.setBackgroundColor(0xD0181D40);
        root.addView(status, new FrameLayout.LayoutParams(-1, dp(52), Gravity.BOTTOM));
        seekOverlay = timeline(false);
        FrameLayout.LayoutParams seekLp = new FrameLayout.LayoutParams(-1, dp(46), Gravity.BOTTOM);
        seekLp.bottomMargin = dp(52);
        root.addView(seekOverlay, seekLp);
        seekProgress = (ProgressBar) seekOverlay.getChildAt(0);
        seekTime = (TextView) seekOverlay.getChildAt(1);
        urls = getIntent().getStringArrayListExtra("episode_urls");
        names = getIntent().getStringArrayListExtra("episode_names");
        if (urls == null) urls = new ArrayList<>();
        if (names == null) names = new ArrayList<>();
        episodeIndex = getIntent().getIntExtra("episode_index", 0);
        selectedSource = getIntent().getIntExtra("source_index", 0);
        videoId = getIntent().getIntExtra("video_id", 0);
        try { sources = new JSONArray(getIntent().getStringExtra("sources")); }
        catch (Exception error) { sources = new JSONArray(); }
        String fullTitle = getIntent().getStringExtra("title");
        if (fullTitle == null) fullTitle = "播放";
        int separator = fullTitle.indexOf(" · ");
        titlePrefix = separator < 0 ? fullTitle : fullTitle.substring(0, separator);
        createMenu();
        playEpisode(episodeIndex, getIntent().getIntExtra("resume_ms", 0));
        handler.postDelayed(ticker, 1000);
    }

    private void initIjkPlayer() {
        try {
            Class<?> type = Class.forName("tv.danmaku.ijk.media.example.widget.media.IjkVideoView");
            View view = (View) type.getConstructor(android.content.Context.class).newInstance(this);
            Class<?> errorType = Class.forName("tv.danmaku.ijk.media.player.IMediaPlayer$OnErrorListener");
            Class<?> preparedType = Class.forName("tv.danmaku.ijk.media.player.IMediaPlayer$OnPreparedListener");
            Class<?> completionType = Class.forName("tv.danmaku.ijk.media.player.IMediaPlayer$OnCompletionListener");
            Object onError = Proxy.newProxyInstance(type.getClassLoader(), new Class<?>[] { errorType },
                (proxy, method, args) -> {
                    if ("onError".equals(method.getName())) {
                        int what = (Integer) args[1], extra = (Integer) args[2];
                        handler.post(() -> handlePlaybackError(0, what, extra));
                        return true;
                    }
                    return null;
                });
            Object onPrepared = Proxy.newProxyInstance(type.getClassLoader(), new Class<?>[] { preparedType },
                (proxy, method, args) -> {
                    if ("onPrepared".equals(method.getName())) handler.post(() -> handlePrepared(0));
                    return null;
                });
            Object onCompletion = Proxy.newProxyInstance(type.getClassLoader(), new Class<?>[] { completionType },
                (proxy, method, args) -> {
                    if ("onCompletion".equals(method.getName())) handler.post(() -> handleCompletion(0));
                    return null;
                });
            type.getMethod("setOnErrorListener", errorType).invoke(view, onError);
            type.getMethod("setOnPreparedListener", preparedType).invoke(view, onPrepared);
            type.getMethod("setOnCompletionListener", completionType).invoke(view, onCompletion);
            ijkSetPath = type.getMethod("setVideoPath", String.class);
            ijkStop = type.getMethod("stopPlayback");
            ijkPlayer = view;
            root.addView(view, new FrameLayout.LayoutParams(-1, -1));
            view.setVisibility(View.GONE);
        } catch (Throwable error) {
            Log.w(TAG, "IJK player unavailable", error);
            ijkPlayer = null;
        }
    }

    private void initExoView() {
        try {
            Class<?> type = Class.forName("com.google.android.exoplayer2.ui.PlayerView");
            exoView = (View) type.getConstructor(android.content.Context.class).newInstance(this);
            type.getMethod("setUseController", boolean.class).invoke(exoView, false);
            type.getMethod("setResizeMode", int.class).invoke(exoView, videoLayout == 0 ? 0 : videoLayout == 1 ? 4 : 3);
            root.addView(exoView, new FrameLayout.LayoutParams(-1, -1));
            exoView.setVisibility(View.GONE);
        } catch (Throwable error) {
            Log.w(TAG, "ExoPlayer view unavailable", error);
            exoView = null;
        }
    }

    private void startExoPlayer(String url, int engineTask) throws Exception {
        exoPlayerType = Class.forName("com.google.android.exoplayer2.SimpleExoPlayer");
        Class<?> playerType = Class.forName("com.google.android.exoplayer2.Player");
        Class<?> mediaSourceType = Class.forName("com.google.android.exoplayer2.source.MediaSource");
        Class<?> dataFactoryType = Class.forName("com.google.android.exoplayer2.upstream.DataSource$Factory");
        Class<?> dataSourceType = Class.forName("com.google.android.exoplayer2.upstream.DefaultDataSourceFactory");
        Object dataSource = dataSourceType.getConstructor(android.content.Context.class, String.class)
            .newInstance(this, "ScreenlightTV/1.6");
        String sourceType = Uri.parse(url).getPath().toLowerCase(java.util.Locale.US).contains(".m3u8")
            ? "com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory"
            : "com.google.android.exoplayer2.source.ExtractorMediaSource$Factory";
        Class<?> factoryType = Class.forName(sourceType);
        Object factory = factoryType.getConstructor(dataFactoryType).newInstance(dataSource);
        Object mediaSource = factoryType.getMethod("createMediaSource", Uri.class).invoke(factory, Uri.parse(url));
        Class<?> renderersType = Class.forName("com.google.android.exoplayer2.RenderersFactory");
        Class<?> selectorType = Class.forName("com.google.android.exoplayer2.trackselection.TrackSelector");
        Class<?> loadControlType = Class.forName("com.google.android.exoplayer2.LoadControl");
        Object renderers = Class.forName("com.google.android.exoplayer2.DefaultRenderersFactory")
            .getConstructor(android.content.Context.class).newInstance(this);
        Object selector = Class.forName("com.google.android.exoplayer2.trackselection.DefaultTrackSelector")
            .getConstructor().newInstance();
        Class<?> bufferBuilder = Class.forName("com.google.android.exoplayer2.DefaultLoadControl$Builder");
        Object builder = bufferBuilder.getConstructor().newInstance();
        bufferBuilder.getMethod("setBufferDurationsMs", int.class, int.class, int.class, int.class)
            .invoke(builder, 30000, 75000, 2500, 5000);
        bufferBuilder.getMethod("setTargetBufferBytes", int.class).invoke(builder, 16 * 1024 * 1024);
        Object loadControl = bufferBuilder.getMethod("createDefaultLoadControl").invoke(builder);
        exoPlayer = Class.forName("com.google.android.exoplayer2.ExoPlayerFactory")
            .getMethod("newSimpleInstance", android.content.Context.class, renderersType, selectorType, loadControlType)
            .invoke(null, this, renderers, selector, loadControl);
        Class<?> listenerType = Class.forName("com.google.android.exoplayer2.Player$EventListener");
        Object listener = Proxy.newProxyInstance(listenerType.getClassLoader(), new Class<?>[] { listenerType },
            (proxy, method, args) -> {
                if ("equals".equals(method.getName())) return proxy == args[0];
                if ("hashCode".equals(method.getName())) return System.identityHashCode(proxy);
                if ("toString".equals(method.getName())) return "ScreenlightExoListener";
                if ("onPlayerStateChanged".equals(method.getName())) {
                    int state = (Integer) args[1];
                    handler.post(() -> {
                        if (engineTask != engineGeneration || currentEngine != 2) return;
                        if (state == 3) handlePrepared(2);
                        else if (state == 4) handleCompletion(2);
                    });
                } else if ("onPlayerError".equals(method.getName())) {
                    Throwable cause = (Throwable) args[0];
                    Log.w(TAG, "ExoPlayer failed: " + currentSource(), cause);
                    handler.post(() -> {
                        if (engineTask == engineGeneration && currentEngine == 2)
                            handlePlaybackError(2, -1, 0);
                    });
                }
                return null;
            });
        exoPlayerType.getMethod("addListener", listenerType).invoke(exoPlayer, listener);
        exoView.getClass().getMethod("setPlayer", playerType).invoke(exoView, exoPlayer);
        control = new MediaController.MediaPlayerControl() {
            private Object call(String name, Class<?>[] signature, Object... args) {
                if (exoPlayer == null) return null;
                try { return exoPlayerType.getMethod(name, signature).invoke(exoPlayer, args); }
                catch (Exception error) { Log.w(TAG, "ExoPlayer control failed: " + name, error); return null; }
            }
            @Override public void start() { call("setPlayWhenReady", new Class<?>[] { boolean.class }, true); }
            @Override public void pause() { call("setPlayWhenReady", new Class<?>[] { boolean.class }, false); }
            @Override public int getDuration() { Object value = call("getDuration", new Class<?>[0]); return value instanceof Long ? (int) Math.max(0, (Long) value) : 0; }
            @Override public int getCurrentPosition() { Object value = call("getCurrentPosition", new Class<?>[0]); return value instanceof Long ? (int) Math.max(0, (Long) value) : 0; }
            @Override public void seekTo(int position) { call("seekTo", new Class<?>[] { long.class }, (long) position); }
            @Override public boolean isPlaying() {
                Object ready = call("getPlayWhenReady", new Class<?>[0]);
                Object state = call("getPlaybackState", new Class<?>[0]);
                return Boolean.TRUE.equals(ready) && Integer.valueOf(3).equals(state);
            }
            @Override public int getBufferPercentage() { return 0; }
            @Override public boolean canPause() { return true; }
            @Override public boolean canSeekBackward() { return true; }
            @Override public boolean canSeekForward() { return true; }
            @Override public int getAudioSessionId() { return 0; }
        };
        exoPlayerType.getMethod("prepare", mediaSourceType).invoke(exoPlayer, mediaSource);
        applySpeed();
        if (!paused && !backgrounded) control.start();
    }

    private void applySpeed() {
        try {
            if (currentEngine == 2 && exoPlayer != null) {
                Class<?> parameters = Class.forName("com.google.android.exoplayer2.PlaybackParameters");
                Object value = parameters.getConstructor(float.class).newInstance(speeds[speedIndex]);
                exoPlayerType.getMethod("setPlaybackParameters", parameters).invoke(exoPlayer, value);
            } else if (currentEngine == 0 && ijkPlayer != null) {
                ijkPlayer.getClass().getMethod("setSpeed", float.class).invoke(ijkPlayer, speeds[speedIndex]);
            }
        } catch (Exception error) { Log.w(TAG, "Playback speed unavailable", error); }
    }

    private void applyVideoLayout() {
        try {
            if (exoView != null)
                exoView.getClass().getMethod("setResizeMode", int.class)
                    .invoke(exoView, videoLayout == 0 ? 0 : videoLayout == 1 ? 4 : 3);
            if (ijkPlayer != null)
                ijkPlayer.getClass().getMethod("toggleAspectRatio", int.class)
                    .invoke(ijkPlayer, videoLayout == 0 ? 0 : videoLayout == 1 ? 1 : 3);
        } catch (Exception error) { Log.w(TAG, "Video layout unavailable", error); }
        if (systemPlayer != null && root.getWidth() > 0 && root.getHeight() > 0) {
            int width = root.getWidth(), height = root.getHeight();
            if (videoLayout != 2 && systemVideoWidth > 0 && systemVideoHeight > 0) {
                float scale = videoLayout == 0
                    ? Math.min((float) width / systemVideoWidth, (float) height / systemVideoHeight)
                    : Math.max((float) width / systemVideoWidth, (float) height / systemVideoHeight);
                width = Math.round(systemVideoWidth * scale);
                height = Math.round(systemVideoHeight * scale);
            }
            systemPlayer.setLayoutParams(new FrameLayout.LayoutParams(width, height, Gravity.CENTER));
        }
    }

    private LinearLayout timeline(boolean inMenu) {
        LinearLayout line = new LinearLayout(this);
        line.setGravity(Gravity.CENTER_VERTICAL);
        line.setPadding(dp(22), 0, dp(22), 0);
        if (!inMenu) line.setBackgroundColor(0xD0181D40);
        ProgressBar progress = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        progress.setMax(1000);
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            progress.setProgressTintList(ColorStateList.valueOf(0xFF6FDDE5));
            progress.setProgressBackgroundTintList(ColorStateList.valueOf(0xFF52606D));
        }
        line.addView(progress, new LinearLayout.LayoutParams(0, dp(8), 1));
        TextView time = new TextView(this);
        time.setTextColor(Color.WHITE);
        time.setTextSize(16);
        time.setGravity(Gravity.END | Gravity.CENTER_VERTICAL);
        time.setText("00:00 / --:--");
        LinearLayout.LayoutParams timeLp = new LinearLayout.LayoutParams(dp(140), -1);
        timeLp.leftMargin = dp(16);
        line.addView(time, timeLp);
        return line;
    }

    private void updateTimeline() {
        int duration = control == null ? 0 : Math.max(0, control.getDuration());
        int position = seekPreviewMs >= 0 ? seekPreviewMs : seeking ? seekTargetMs
            : control == null ? 0 : Math.max(0, control.getCurrentPosition());
        String label = format(position / 1000) + " / " + (duration > 0 ? format(duration / 1000) : "--:--");
        int progress = duration > 0 ? (int) Math.min(1000, (long) position * 1000 / duration) : 0;
        seekProgress.setProgress(progress);
        seekTime.setText(label);
        if (menuProgress != null) menuProgress.setProgress(progress);
        if (menuTime != null) menuTime.setText(label);
    }

    private void createMenu() {
        menuPanel = new LinearLayout(this);
        menuPanel.setOrientation(LinearLayout.VERTICAL);
        menuPanel.setPadding(dp(16), dp(12), dp(16), dp(16));
        GradientDrawable background = new GradientDrawable();
        background.setColor(0xF51A2530);
        background.setStroke(dp(2), 0xFF987AC3);
        menuPanel.setBackground(background);
        FrameLayout.LayoutParams panelLp = new FrameLayout.LayoutParams(-1, dp(340), Gravity.BOTTOM);
        root.addView(menuPanel, panelLp);
        LinearLayout menuTimeline = timeline(true);
        menuPanel.addView(menuTimeline, new LinearLayout.LayoutParams(-1, dp(42)));
        menuProgress = (ProgressBar) menuTimeline.getChildAt(0);
        menuTime = (TextView) menuTimeline.getChildAt(1);
        menuControls = new LinearLayout(this);
        menuPanel.addView(menuControls, new LinearLayout.LayoutParams(-1, dp(50)));
        menuTabs = new LinearLayout(this);
        LinearLayout.LayoutParams tabsLp = new LinearLayout.LayoutParams(-1, dp(50));
        tabsLp.topMargin = dp(8);
        menuPanel.addView(menuTabs, tabsLp);
        ScrollView scroller = new ScrollView(this);
        scroller.setFillViewport(true);
        scroller.setVerticalScrollBarEnabled(false);
        menuContent = new LinearLayout(this);
        menuContent.setOrientation(LinearLayout.VERTICAL);
        scroller.addView(menuContent);
        menuPanel.addView(scroller, new LinearLayout.LayoutParams(-1, 0, 1));
        menuPanel.setVisibility(View.GONE);
    }

    private TextView menuButton(String text, boolean selected) {
        TextView button = new TextView(this);
        button.setText(text);
        button.setTextSize(16);
        button.setTextColor(Color.WHITE);
        button.setGravity(Gravity.CENTER);
        button.setSingleLine(true);
        button.setEllipsize(android.text.TextUtils.TruncateAt.END);
        button.setPadding(dp(10), 0, dp(10), 0);
        button.setFocusable(true);
        button.setClickable(true);
        if (android.os.Build.VERSION.SDK_INT >= 26) button.setDefaultFocusHighlightEnabled(false);
        button.setTag(selected);
        styleMenuButton(button, false);
        return button;
    }

    private void styleMenuButton(View view, boolean focused) {
        boolean selected = Boolean.TRUE.equals(view.getTag());
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(focused ? 0xFF364A55 : selected ? 0xFF3B364F : 0xFF232C37);
        bg.setCornerRadius(dp(4));
        bg.setStroke(dp(2), focused ? 0xFF6FDDE5 : selected ? 0xFFA988DA : 0xFF485864);
        view.setBackground(bg);
        if (view instanceof TextView)
            ((TextView) view).setTextColor(focused ? Color.WHITE : selected ? 0xFF6FDDE5 : Color.WHITE);
    }

    private void showMenu(int tab) { showMenu(tab, false, false); }

    private void showMenu(int tab, boolean focusTab) { showMenu(tab, focusTab, false); }

    private void showMenu(int tab, boolean focusTab, boolean focusOption) {
        menuTab = tab;
        menuRows.clear();
        menuControls.removeAllViews();
        menuTabs.removeAllViews();
        menuContent.removeAllViews();
        List<View> controlRow = new ArrayList<>();
        String[] controls = {paused || exhausted ? "播放" : "停止", "上一集", "下一集", "选集"};
        for (int i = 0; i < controls.length; i++) {
            final int action = i;
            TextView button = menuButton(controls[i], false);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(46), 1);
            lp.rightMargin = dp(10);
            menuControls.addView(button, lp);
            button.setOnClickListener(v -> {
                if (action == 0) {
                    togglePlayback();
                    button.setText(paused || exhausted ? "播放" : "停止");
                } else if (action == 1 || action == 2) {
                    int next = episodeIndex + (action == 1 ? -1 : 1);
                    if (next < 0 || next >= urls.size()) {
                        Toast.makeText(this, action == 1 ? "已经是第一集" : "已经是最后一集", Toast.LENGTH_SHORT).show();
                    } else {
                        hideMenu();
                        playEpisode(next);
                    }
                } else showMenu(0, false, true);
            });
            controlRow.add(button);
            if (i == 0) playPauseButton = button;
        }
        menuRows.add(controlRow);
        String[] labels = {"选集", "线路 / 清晰度", "倍速", "画面"};
        List<View> tabRow = new ArrayList<>();
        for (int i = 0; i < labels.length; i++) {
            final int chosen = i;
            TextView button = menuButton(labels[i], i == tab);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(dp(i == 1 ? 172 : 94), dp(44));
            lp.rightMargin = dp(10);
            menuTabs.addView(button, lp);
            button.setOnClickListener(v -> showMenu(chosen, true));
            tabRow.add(button);
        }
        menuRows.add(tabRow);
        int focusIndex = 0;
        if (tab == 0) {
            for (int start = 0; start < urls.size(); start += 6) {
                LinearLayout row = new LinearLayout(this);
                LinearLayout.LayoutParams rowLp = new LinearLayout.LayoutParams(-1, dp(52));
                rowLp.topMargin = dp(10);
                menuContent.addView(row, rowLp);
                List<View> focusRow = new ArrayList<>();
                for (int j = start; j < Math.min(start + 6, urls.size()); j++) {
                    final int episode = j;
                    String label = j < names.size() ? names.get(j) : "第" + (j + 1) + "集";
                    TextView button = menuButton(label, j == episodeIndex);
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(46), 1);
                    lp.rightMargin = dp(10);
                    row.addView(button, lp);
                    button.setOnClickListener(v -> { hideMenu(); playEpisode(episode); });
                    focusRow.add(button);
                }
                menuRows.add(focusRow);
            }
            focusIndex = episodeIndex;
        } else if (tab == 1) {
            for (int start = 0; start < sources.length(); start += 4) {
                LinearLayout row = new LinearLayout(this);
                LinearLayout.LayoutParams rowLp = new LinearLayout.LayoutParams(-1, dp(52));
                rowLp.topMargin = dp(10);
                menuContent.addView(row, rowLp);
                List<View> focusRow = new ArrayList<>();
                for (int j = start; j < Math.min(start + 4, sources.length()); j++) {
                    JSONObject source = sources.optJSONObject(j);
                    if (source == null) continue;
                    final int sourceIndex = j;
                    TextView button = menuButton(source.optString("name", "线路" + (j + 1)), j == selectedSource);
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(46), 1);
                    lp.rightMargin = dp(10);
                    row.addView(button, lp);
                    button.setOnClickListener(v -> selectSource(sourceIndex));
                    focusRow.add(button);
                }
                if (!focusRow.isEmpty()) menuRows.add(focusRow);
            }
            focusIndex = selectedSource;
        } else if (tab == 2) {
            LinearLayout row = new LinearLayout(this);
            LinearLayout.LayoutParams rowLp = new LinearLayout.LayoutParams(-1, dp(52));
            rowLp.topMargin = dp(10);
            menuContent.addView(row, rowLp);
            List<View> focusRow = new ArrayList<>();
            for (int i = 0; i < speeds.length; i++) {
                final int chosen = i;
                TextView button = menuButton(speeds[i] + "×", i == speedIndex);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(46), 1);
                lp.rightMargin = dp(10);
                row.addView(button, lp);
                button.setOnClickListener(v -> {
                    if (currentEngine == 1 && chosen != 1) {
                        status.setText("当前播放器仅支持 1× 倍速");
                        showOverlay();
                        return;
                    }
                    speedIndex = chosen;
                    applySpeed();
                    hideMenu();
                    status.setText("播放速度 " + speeds[chosen] + "×");
                    showOverlay();
                });
                focusRow.add(button);
            }
            menuRows.add(focusRow);
            focusIndex = speedIndex;
        } else {
            LinearLayout row = new LinearLayout(this);
            LinearLayout.LayoutParams rowLp = new LinearLayout.LayoutParams(-1, dp(52));
            rowLp.topMargin = dp(10);
            menuContent.addView(row, rowLp);
            List<View> focusRow = new ArrayList<>();
            String[] modes = {"原比例居中", "等比铺满", "拉伸全屏"};
            for (int i = 0; i < modes.length; i++) {
                final int chosen = i;
                TextView button = menuButton(modes[i], i == videoLayout);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(46), 1);
                lp.rightMargin = dp(10);
                row.addView(button, lp);
                button.setOnClickListener(v -> {
                    videoLayout = chosen;
                    getPreferences(0).edit().putInt("video_layout", chosen).apply();
                    applyVideoLayout();
                    hideMenu();
                    status.setText("画面：" + modes[chosen]);
                    showOverlay();
                });
                focusRow.add(button);
            }
            menuRows.add(focusRow);
            focusIndex = videoLayout;
        }
        wireMenuFocus();
        FrameLayout.LayoutParams panelLp = (FrameLayout.LayoutParams) menuPanel.getLayoutParams();
        int preferredHeight = dp(180 + Math.max(1, menuRows.size() - 2) * 62);
        int screenLimit = root.getHeight() > 0 ? root.getHeight() * 64 / 100 : dp(380);
        panelLp.height = Math.min(preferredHeight, screenLimit);
        menuPanel.setLayoutParams(panelLp);
        menuPanel.setVisibility(View.VISIBLE);
        seekOverlay.setVisibility(View.GONE);
        updateTimeline();
        int columns = tab == 0 ? 6 : tab == 1 ? 4 : tab == 2 ? speeds.length : 3;
        int row = Math.min(menuRows.size() - 1, 2 + focusIndex / columns);
        if (focusTab) tabRow.get(tab).requestFocus();
        else if (focusOption && row >= 2 && !menuRows.get(row).isEmpty())
            menuRows.get(row).get(Math.min(focusIndex % columns, menuRows.get(row).size() - 1)).requestFocus();
        else controlRow.get(0).requestFocus();
    }

    private void wireMenuFocus() {
        for (int r = 0; r < menuRows.size(); r++) {
            List<View> row = menuRows.get(r);
            for (int c = 0; c < row.size(); c++) {
                View view = row.get(c);
                view.setOnFocusChangeListener((v, focused) -> styleMenuButton(v, focused));
            }
        }
    }

    private void moveMenuFocus(int code) {
        View focused = getCurrentFocus();
        for (int r = 0; r < menuRows.size(); r++) {
            List<View> row = menuRows.get(r);
            int c = row.indexOf(focused);
            if (c < 0) continue;
            int nextRow = r, nextColumn = c;
            if (code == KeyEvent.KEYCODE_DPAD_LEFT) nextColumn--;
            else if (code == KeyEvent.KEYCODE_DPAD_RIGHT) nextColumn++;
            else if (code == KeyEvent.KEYCODE_DPAD_UP) nextRow--;
            else if (code == KeyEvent.KEYCODE_DPAD_DOWN) nextRow++;
            if (nextRow < 0 || nextRow >= menuRows.size()) return;
            List<View> destination = menuRows.get(nextRow);
            if (destination.isEmpty() || nextRow == r && (nextColumn < 0 || nextColumn >= destination.size())) return;
            destination.get(Math.max(0, Math.min(nextColumn, destination.size() - 1))).requestFocus();
            return;
        }
        if (!menuRows.isEmpty() && !menuRows.get(0).isEmpty()) menuRows.get(0).get(0).requestFocus();
    }

    private void hideMenu() {
        menuPanel.setVisibility(View.GONE);
        root.requestFocus();
        showOverlay();
    }

    private void selectSource(int index) {
        JSONObject source = sources.optJSONObject(index);
        if (source == null) return;
        Candidate playing = control != null && control.isPlaying() && currentUrl != null
            ? new Candidate(currentSource(), currentUrl, "", currentSourceIndex()) : null;
        String oldName = episodeIndex < names.size() ? names.get(episodeIndex) : "";
        ArrayList<String> newUrls = new ArrayList<>();
        ArrayList<String> newNames = new ArrayList<>();
        for (String entry : source.optString("url").split("#")) {
            String[] parts = entry.split("\\$", 2);
            String url = (parts.length == 2 ? parts[1] : parts[0]).replace("&amp;", "&");
            if (url.isEmpty()) continue;
            newUrls.add(url);
            newNames.add(parts.length == 2 ? parts[0] : "播放");
        }
        if (newUrls.isEmpty()) return;
        int position = Math.max(0, confirmedPositionMs);
        savePlayback();
        lastSuccessfulCandidate = null;
        selectedSource = index;
        urls = newUrls;
        names = newNames;
        int match = newNames.indexOf(oldName);
        hideMenu();
        sourceSwitchFallback = playing;
        playEpisode(match >= 0 ? match : Math.min(episodeIndex, newUrls.size() - 1), position);
    }

    private void handlePrepared(int engine) {
        if (engine != currentEngine || preparedHandled) return;
        preparedHandled = true;
        lastProgressMs = -1;
        lastProgressAt = SystemClock.uptimeMillis();
        if (engine == 0) applySpeed();
        if (resumePositionMs > 0) applySeek(resumePositionMs);
        else status.setText("正在播放 · " + currentSource());
        showOverlay();
    }

    private void handlePlaybackError(int engine, int what, int extra) {
        if (engine != currentEngine) return;
        Log.w(TAG, "Playback failed: " + what + "/" + extra + ", source " + currentSource()
            + ", engine " + engine);
        if (seeking && retrySeek()) return;
        tryNextEngine();
    }

    private void handleCompletion(int engine) {
        if (engine != currentEngine || control == null) return;
        int duration = control.getDuration();
        int position = control.getCurrentPosition();
        if (duration > 0 && position + 30000 < duration) {
            Log.w(TAG, "Playback ended early: " + position + "/" + duration);
            if (!seeking) resumePositionMs = Math.max(position, confirmedPositionMs);
            if (seeking && retrySeek()) return;
            tryNextEngine();
        } else {
            exhausted = true;
            savePlayback(0);
            status.setText("播放结束");
            showOverlay();
        }
    }

    private void playEpisode(int index) {
        playEpisode(index, 0, currentSourceIndex());
    }

    private void playEpisode(int index, int resumeMs) {
        playEpisode(index, resumeMs, selectedSource);
    }

    private void playEpisode(int index, int resumeMs, int preferredSource) {
        if (index < 0 || index >= urls.size()) return;
        if (!exhausted) savePlayback();
        lastSuccessfulCandidate = null;
        confirmedPositionMs = -1;
        retriedSeek = false;
        episodeIndex = index;
        playGeneration++;
        exhausted = false;
        paused = false;
        seeking = false;
        seekPreviewMs = -1;
        seekTargetMs = 0;
        resumePositionMs = resumeMs;
        handler.removeCallbacks(commitSeek);
        String episode = index < names.size() ? names.get(index) : "播放";
        title.setText(titlePrefix + " · " + episode);
        updateTimeline();
        candidates.clear();
        Set<String> seen = new HashSet<>();
        Candidate selected = sourceEpisode(preferredSource, episode, index);
        if (selected != null) {
            candidates.add(selected);
            seen.add(selected.url);
        }
        List<Candidate> alternatives = new ArrayList<>();
        for (int i = 0; i < sources.length(); i++) {
            if (i == preferredSource) continue;
            Candidate candidate = sourceEpisode(i, episode, index);
            if (candidate != null && seen.add(candidate.url)) alternatives.add(candidate);
        }
        Collections.sort(alternatives, new Comparator<Candidate>() {
            @Override public int compare(Candidate left, Candidate right) {
                return left.priority() - right.priority();
            }
        });
        candidates.addAll(alternatives);
        if (sourceSwitchFallback != null) {
            Candidate fallback = sourceSwitchFallback;
            sourceSwitchFallback = null;
            if (seen.add(fallback.url)) candidates.add(fallback);
        }
        if (candidates.isEmpty()) {
            String initial = getIntent().getStringExtra("url");
            if (initial != null && !initial.isEmpty())
                candidates.add(new Candidate("当前线路", initial, getIntent().getStringExtra("parse"), selectedSource));
        }
        attemptIndex = -1;
        nextCandidate();
    }

    private Candidate sourceEpisode(int sourceIndex, String episode, int index) {
        JSONObject source = sources.optJSONObject(sourceIndex);
        if (source == null) return null;
        String list = source.optString("url");
        if (list.isEmpty()) return null;
        String[] entries = list.split("#");
        int match = -1;
        for (int i = 0; i < entries.length; i++) {
            String[] parts = entries[i].split("\\$", 2);
            if (parts.length == 2 && episode.equals(parts[0])) { match = i; break; }
        }
        if (match < 0 && index < entries.length &&
            (sourceIndex == selectedSource || entries.length == urls.size())) match = index;
        if (match < 0 && entries.length == 1 && urls.size() == 1) match = 0;
        if (match < 0) return null;
        String[] parts = entries[match].split("\\$", 2);
        String url = (parts.length == 2 ? parts[1] : parts[0]).replace("&amp;", "&");
        if (url.isEmpty()) return null;
        return new Candidate(source.optString("name", "线路" + (sourceIndex + 1)),
            url, source.optString("parse_api"), sourceIndex);
    }

    private void nextCandidate() {
        savePlayback();
        lastSuccessfulCandidate = null;
        final int generation = ++playGeneration;
        seeking = false;
        seekPreviewMs = -1;
        handler.removeCallbacks(commitSeek);
        int previousEngine = currentEngine;
        currentEngine = -1;
        engineGeneration++;
        stopEngine(previousEngine);
        control = null;
        lastProgressAt = 0;
        if (++attemptIndex >= candidates.size()) {
            exhausted = true;
            status.setText("播放中断：当前集已尝试 " + candidates.size() + " 条线路");
            showOverlay();
            return;
        }
        Candidate candidate = candidates.get(attemptIndex);
        status.setText("正在连接 · " + candidate.name + "（" + (attemptIndex + 1) + "/" + candidates.size() + "）");
        showOverlay();
        if (candidate.url.startsWith("http://") || candidate.url.startsWith("https://")) {
            startVideo(candidate.url, generation);
            return;
        }
        if (candidate.parser == null || candidate.parser.isEmpty()) {
            handler.post(() -> { if (generation == playGeneration) nextCandidate(); });
            return;
        }
        resolver.execute(() -> {
            try {
                String endpoint = candidate.parser + URLEncoder.encode(candidate.url, "UTF-8");
                String body = new String(TvApi.download(endpoint, false, 100_000), StandardCharsets.UTF_8);
                String resolved = new JSONObject(body).optString("url");
                if (!(resolved.startsWith("http://") || resolved.startsWith("https://")))
                    throw new Exception("Parser returned no media URL");
                handler.post(() -> { if (generation == playGeneration) startVideo(resolved, generation); });
            } catch (Exception error) {
                Log.w(TAG, "Source resolution failed: " + candidate.name + ", " + error.getClass().getSimpleName());
                handler.post(() -> { if (generation == playGeneration) nextCandidate(); });
            }
        });
    }

    private void startVideo(String url, int generation) {
        if (generation != playGeneration) return;
        currentUrl = url;
        startEngine(exoView != null ? 2 : ijkPlayer != null && url.startsWith("http://") ? 0 : 1);
    }

    private void startEngine(int engine) {
        int previousEngine = currentEngine;
        currentEngine = engine;
        int engineTask = ++engineGeneration;
        preparedHandled = false;
        playbackAdvanced = false;
        seeking = false;
        engineStartedAt = SystemClock.uptimeMillis();
        stopEngine(previousEngine);
        if (ijkPlayer != null) ijkPlayer.setVisibility(engine == 0 ? View.VISIBLE : View.GONE);
        systemPlayer.setVisibility(engine == 1 ? View.VISIBLE : View.GONE);
        if (exoView != null) exoView.setVisibility(engine == 2 ? View.VISIBLE : View.GONE);
        applyVideoLayout();
        control = engine == 0 ? (MediaController.MediaPlayerControl) ijkPlayer : engine == 1 ? systemPlayer : null;
        lastProgressAt = engineStartedAt;
        lastProgressMs = -1;
        try {
            if (engine == 0) ijkSetPath.invoke(ijkPlayer, currentUrl);
            else if (engine == 1) systemPlayer.setVideoPath(currentUrl);
            else startExoPlayer(currentUrl, engineTask);
            if (paused || backgrounded) control.pause();
            else if (engine != 2) control.start();
        } catch (Throwable error) {
            Log.w(TAG, "Playback setup failed: " + currentSource() + ", engine " + engine, error);
            tryNextEngine();
        }
    }

    private void tryNextEngine() {
        if (!seeking && confirmedPositionMs >= 0) resumePositionMs = confirmedPositionMs;
        if (currentEngine == 0 || currentEngine == 2) {
            status.setText("正在切换播放器 · " + currentSource());
            showOverlay();
            startEngine(1);
        } else nextCandidate();
    }

    private void stopEngine(int engine) {
        try {
            if (engine == 0 && ijkPlayer != null) ijkStop.invoke(ijkPlayer);
            else if (engine == 1) systemPlayer.stopPlayback();
            else if (engine == 2 && exoPlayer != null) {
                exoView.getClass().getMethod("setPlayer", Class.forName("com.google.android.exoplayer2.Player"))
                    .invoke(exoView, new Object[] { null });
                exoPlayerType.getMethod("release").invoke(exoPlayer);
                exoPlayer = null;
            }
        } catch (Exception error) { Log.w(TAG, "Could not stop player", error); }
    }

    private final Runnable commitSeek = () -> {
        if (seekPreviewMs < 0 || seeking || paused || backgrounded || !preparedHandled) return;
        int target = seekPreviewMs;
        seekPreviewMs = -1;
        retriedSeek = false;
        applySeek(target);
    };

    private void applySeek(int target) {
        if (control == null) return;
        int duration = control.getDuration();
        seekTargetMs = duration > 0 ? Math.min(target, Math.max(0, duration - 3000)) : target;
        resumePositionMs = seekTargetMs;
        seeking = true;
        seekStartedAt = SystemClock.uptimeMillis();
        seekObservedPosition = -1;
        status.setText("正在跳转至 " + format(seekTargetMs / 1000) + " · " + currentSource());
        showOverlay();
        control.seekTo(seekTargetMs);
    }

    private boolean retrySeek() {
        if (retriedSeek || currentEngine < 0 || currentUrl == null) return false;
        retriedSeek = true;
        Log.w(TAG, "Retrying seek on current source at " + seekTargetMs);
        status.setText("正在重试跳转 · " + currentSource());
        showOverlay();
        startEngine(currentEngine);
        return true;
    }

    private String currentSource() {
        return attemptIndex >= 0 && attemptIndex < candidates.size()
            ? candidates.get(attemptIndex).name : "未知线路";
    }

    private int currentSourceIndex() {
        return lastSuccessfulCandidate != null ? lastSuccessfulCandidate.sourceIndex : selectedSource;
    }

    private void savePlayback() {
        if (!exhausted && confirmedPositionMs >= 0) savePlayback(confirmedPositionMs);
    }

    private void savePlayback(int positionMs) {
        if (videoId <= 0 || lastSuccessfulCandidate == null || positionMs < 0) return;
        String episode = episodeIndex < names.size() ? names.get(episodeIndex) : "播放";
        PlaybackState.save(this, videoId, lastSuccessfulCandidate.sourceIndex,
            lastSuccessfulCandidate.name, episodeIndex, episode, positionMs);
        lastSavedAt = SystemClock.uptimeMillis();
    }

    private final Runnable ticker = new Runnable() {
        @Override public void run() {
            updateTimeline();
            if (control != null && !paused && !backgrounded && !exhausted) monitorPlayback();
            handler.postDelayed(this, 1000);
        }
    };

    private void monitorPlayback() {
        long now = SystemClock.uptimeMillis();
        boolean playing = control.isPlaying();
        int position = Math.max(0, control.getCurrentPosition());
        if (seeking) {
            // Some players report the requested timestamp before decoding resumes.
            if (playing && seekObservedPosition >= 0 && position > seekObservedPosition + 100
                && Math.abs(position - seekTargetMs) <= 10000) {
                seeking = false;
                resumePositionMs = 0;
                lastProgressMs = -1;
                lastProgressAt = now;
                confirmProgress(position);
                if (seekPreviewMs >= 0) handler.post(commitSeek);
            } else {
                seekObservedPosition = playing ? position : -1;
                if (now - seekStartedAt >= SEEK_TIMEOUT_MS && !retrySeek()) tryNextEngine();
                return;
            }
        }
        if (preparedHandled && playing) {
            if (lastProgressMs >= 0 && position > lastProgressMs + 100) {
                lastProgressAt = now;
                confirmProgress(position);
            }
            if (lastProgressMs < 0 || position != lastProgressMs) lastProgressMs = position;
            if (seekPreviewMs < 0) status.setText(format(position / 1000) + " / "
                + format(Math.max(0, control.getDuration()) / 1000) + " · " + currentSource());
        }
        long timeout = preparedHandled || control.getDuration() > 0 ? BUFFER_TIMEOUT_MS : STARTUP_TIMEOUT_MS;
        long lastActivity = lastProgressAt > 0 ? lastProgressAt : engineStartedAt;
        if (now - lastActivity >= timeout) {
            Log.w(TAG, "Playback timed out: " + currentSource() + ", engine " + currentEngine);
            tryNextEngine();
        }
    }

    private void confirmProgress(int position) {
        if (attemptIndex < 0 || attemptIndex >= candidates.size()) return;
        lastSuccessfulCandidate = candidates.get(attemptIndex);
        confirmedPositionMs = position;
        if (!playbackAdvanced || SystemClock.uptimeMillis() - lastSavedAt >= 3000) savePlayback();
        playbackAdvanced = true;
    }

    private static String format(int seconds) {
        return String.format(java.util.Locale.US, "%02d:%02d", seconds / 60, seconds % 60);
    }

    private void showOverlay() {
        title.setVisibility(View.VISIBLE);
        status.setVisibility(View.VISIBLE);
        if (menuPanel == null || menuPanel.getVisibility() != View.VISIBLE)
            seekOverlay.setVisibility(View.VISIBLE);
        updateTimeline();
        handler.removeCallbacks(hideOverlay);
        handler.postDelayed(hideOverlay, 4500);
    }

    private final Runnable hideOverlay = () -> {
        if (!paused && control != null && control.isPlaying()) {
            title.setVisibility(View.GONE);
            status.setVisibility(View.GONE);
            seekOverlay.setVisibility(View.GONE);
        }
    };

    private void togglePlayback() {
        if (exhausted) {
            playEpisode(episodeIndex);
        } else if (control != null) {
            if (paused) {
                control.start();
                paused = false;
                lastProgressAt = seekStartedAt = SystemClock.uptimeMillis();
                if (seekPreviewMs >= 0) handler.post(commitSeek);
                status.setText("继续播放 · " + currentSource());
            } else {
                control.pause();
                paused = true;
                savePlayback();
                status.setText("已停止 · " + currentSource());
            }
            showOverlay();
        }
        if (playPauseButton != null) playPauseButton.setText(paused || exhausted ? "播放" : "停止");
    }

    @Override public boolean dispatchKeyEvent(KeyEvent event) {
        if (menuPanel != null && menuPanel.getVisibility() == View.VISIBLE) {
            int code = event.getKeyCode();
            if (event.getAction() != KeyEvent.ACTION_DOWN && event.getAction() != KeyEvent.ACTION_UP)
                return super.dispatchKeyEvent(event);
            if (code == KeyEvent.KEYCODE_BACK) { hideMenu(); return true; }
            if (code == KeyEvent.KEYCODE_DPAD_CENTER || code == KeyEvent.KEYCODE_ENTER) {
                if (event.getAction() == KeyEvent.ACTION_DOWN && event.getRepeatCount() == 0) {
                    View focused = getCurrentFocus();
                    if (focused != null) focused.performClick();
                }
                return true;
            }
            if (code == KeyEvent.KEYCODE_DPAD_LEFT || code == KeyEvent.KEYCODE_DPAD_RIGHT
                || code == KeyEvent.KEYCODE_DPAD_UP || code == KeyEvent.KEYCODE_DPAD_DOWN) {
                if (event.getAction() == KeyEvent.ACTION_DOWN) moveMenuFocus(code);
                return true;
            }
        }
        return super.dispatchKeyEvent(event);
    }

    @Override public boolean onKeyDown(int code, KeyEvent event) {
        if (menuPanel.getVisibility() == View.VISIBLE) {
            if (code == KeyEvent.KEYCODE_BACK) { hideMenu(); return true; }
            if (code == KeyEvent.KEYCODE_DPAD_CENTER || code == KeyEvent.KEYCODE_ENTER) {
                View focused = getCurrentFocus();
                if (focused != null) focused.performClick();
                return true;
            }
            return true;
        }
        if (code == KeyEvent.KEYCODE_DPAD_CENTER || code == KeyEvent.KEYCODE_ENTER || code == KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE) {
            togglePlayback();
            return true;
        }
        if (code == KeyEvent.KEYCODE_DPAD_LEFT || code == KeyEvent.KEYCODE_DPAD_RIGHT) {
            if (control != null && (preparedHandled || seekPreviewMs >= 0 || seeking)) {
                int duration = control.getDuration();
                if (duration <= 0) { showOverlay(); return true; }
                int delta = code == KeyEvent.KEYCODE_DPAD_RIGHT ? 10000 : -10000;
                int base = seekPreviewMs >= 0 ? seekPreviewMs : seeking ? seekTargetMs : control.getCurrentPosition();
                seekPreviewMs = Math.max(0, Math.min(Math.max(0, duration - 3000), base + delta));
                status.setText("跳转至 " + format(seekPreviewMs / 1000) + " · " + currentSource());
                updateTimeline();
                handler.removeCallbacks(commitSeek);
                handler.postDelayed(commitSeek, 450);
                showOverlay();
            }
            return true;
        }
        if (code == KeyEvent.KEYCODE_DPAD_DOWN) {
            showMenu(0);
            return true;
        }
        if (code == KeyEvent.KEYCODE_DPAD_UP) {
            showOverlay();
            return true;
        }
        return super.onKeyDown(code, event);
    }

    @Override public void onBackPressed() {
        if (menuPanel.getVisibility() == View.VISIBLE) hideMenu();
        else { savePlayback(); super.onBackPressed(); }
    }

    @Override protected void onResume() {
        super.onResume();
        if (!backgrounded) return;
        backgrounded = false;
        lastProgressAt = seekStartedAt = SystemClock.uptimeMillis();
        if (!paused && !exhausted && control != null) control.start();
        if (seekPreviewMs >= 0) handler.post(commitSeek);
    }

    @Override protected void onPause() {
        backgrounded = true;
        savePlayback();
        if (control != null) control.pause();
        super.onPause();
    }

    @Override protected void onDestroy() {
        savePlayback();
        playGeneration++;
        resolver.shutdownNow();
        handler.removeCallbacks(commitSeek);
        handler.removeCallbacksAndMessages(null);
        int engine = currentEngine;
        currentEngine = -1;
        stopEngine(engine);
        super.onDestroy();
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }
}
