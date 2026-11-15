package com.tg666.tv;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.text.TextUtils;
import android.util.LruCache;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.content.Context;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONObject;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class TvActivity extends Activity {
    private static final int BG = Color.rgb(15, 20, 26);
    private static final int PANEL = Color.rgb(35, 44, 55);
    private static final int FG = Color.rgb(241, 246, 247);
    private static final int MUTED = Color.rgb(166, 185, 192);
    private static final int ACCENT = Color.rgb(111, 221, 229);
    private static final int VIOLET = Color.rgb(169, 136, 218);
    private final Handler main = new Handler(Looper.getMainLooper());
    private final ExecutorService jobs = Executors.newFixedThreadPool(4);
    private final LruCache<String, Bitmap> images = new LruCache<String, Bitmap>(12 * 1024 * 1024) {
        @Override protected int sizeOf(String key, Bitmap value) { return value.getByteCount(); }
    };
    private final List<List<View>> focusRows = new ArrayList<>();
    private final List<View> navViews = new ArrayList<>();
    private LinearLayout page;
    private LinearLayout content;
    private ScrollView scroll;
    private TvApi api;
    private JSONArray homeSections;
    private JSONArray categoryDefinitions;
    private JSONArray rankDefinitions;
    private JSONArray categoryVideos;
    private JSONArray rankVideos;
    private final int[] filterSelection = new int[5];
    private String[][] filterOptions;
    private int currentCategory = -1;
    private int categoryPage = 1;
    private int categoryPageCount = 1;
    private int categoryTotal;
    private int currentRank;
    private int rankPage = 1;
    private JSONObject detailInfo;
    private JSONArray detailSources;
    private int sourceIndex;
    private int activeNav;
    private String mode = "home";
    private String previousMode = "home";
    private int previousNav;
    private int generation;
    private String searchText = "";
    private JSONArray searchResults;

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        setTitle("暮光TV");
        getWindow().getDecorView().setSystemUiVisibility(5894 | 1024 | 512);
        page = new LinearLayout(this);
        page.setOrientation(LinearLayout.VERTICAL);
        page.setBackgroundColor(BG);
        setContentView(page);
        buildNav();
        scroll = new ScrollView(this);
        scroll.setFillViewport(true);
        scroll.setVerticalScrollBarEnabled(false);
        page.addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1));
        content = new LinearLayout(this);
        content.setPadding(dp(26), dp(12), dp(26), dp(32));
        content.setOrientation(LinearLayout.VERTICAL);
        scroll.addView(content);
        showHome();
    }

    private void buildNav() {
        HorizontalScrollView navScroll = new HorizontalScrollView(this);
        navScroll.setHorizontalScrollBarEnabled(false);
        navScroll.setFillViewport(true);
        page.addView(navScroll, new LinearLayout.LayoutParams(-1, dp(58)));
        LinearLayout bar = new LinearLayout(this);
        bar.setGravity(Gravity.CENTER_VERTICAL);
        bar.setPadding(dp(26), 0, dp(26), 0);
        bar.setBackgroundColor(Color.rgb(23, 31, 41));
        navScroll.addView(bar, new HorizontalScrollView.LayoutParams(-2, -1));
        ImageView logo = new ImageView(this);
        logo.setImageResource(getApplicationInfo().icon);
        LinearLayout.LayoutParams logoLp = new LinearLayout.LayoutParams(dp(38), dp(38));
        logoLp.rightMargin = dp(9);
        bar.addView(logo, logoLp);
        TextView brand = label("暮光TV", 21, FG);
        brand.setTypeface(null, 1);
        LinearLayout.LayoutParams brandLp = new LinearLayout.LayoutParams(dp(125), -2);
        bar.addView(brand, brandLp);
        String[] names = {"首页", "电影", "电视剧", "综艺", "动漫", "短剧", "排行", "搜索", "最近观看"};
        for (int i = 0; i < names.length; i++) {
            final int index = i;
            TextView item = button(names[i], i == 0);
            item.setGravity(Gravity.CENTER);
            item.setMinWidth(dp(i == 8 ? 94 : 66));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-2, dp(42));
            lp.rightMargin = dp(4);
            bar.addView(item, lp);
            item.setOnClickListener(v -> switchNav(index));
            navViews.add(item);
        }
    }

    private void switchNav(int index) {
        activeNav = index;
        updateNav();
        if (index == 0) showHome();
        else if (index <= 5) showCategory(index);
        else if (index == 6) showRanking();
        else if (index == 7) { searchText = ""; searchResults = null; showSearch(); }
        else showHistory();
    }

    private void updateNav() {
        for (int i = 0; i < navViews.size(); i++) style(navViews.get(i), navViews.get(i).hasFocus(), i == activeNav);
    }

    private void begin(String nextMode) {
        mode = nextMode;
        generation++;
        content.removeAllViews();
        scroll.scrollTo(0, 0);
        focusRows.clear();
        focusRows.add(new ArrayList<>(navViews));
        updateNav();
    }

    private void showHome() {
        begin("home");
        if (homeSections != null) {
            renderHome(homeSections);
            return;
        }
        status("正在加载首页…");
        int task = generation;
        jobs.execute(() -> {
            try {
                if (api == null) api = new TvApi(this);
                JSONObject payload = api.get("index_video");
                if (payload.optInt("code") != 1) throw new Exception(payload.optString("msg", "首页暂不可用"));
                JSONArray sections = payload.getJSONArray("data");
                main.post(() -> { if (task == generation) { homeSections = sections; renderHome(sections); } });
            } catch (Exception error) { main.post(() -> { if (task == generation) errorState("首页加载失败", this::showHome); }); }
        });
    }

    private void renderHome(JSONArray sections) {
        content.removeAllViews();
        focusRows.subList(1, focusRows.size()).clear();
        for (int i = 0; i < sections.length(); i++) {
            JSONObject section = sections.optJSONObject(i);
            if (section == null) continue;
            JSONArray videos = section.optJSONArray("vlist");
            if (videos == null || videos.length() == 0) continue;
            heading(section.optString("name", "推荐"));
            HorizontalScrollView rowScroll = new HorizontalScrollView(this);
            rowScroll.setHorizontalScrollBarEnabled(false);
            LinearLayout row = new LinearLayout(this);
            rowScroll.addView(row);
            content.addView(rowScroll, bottomMargin(-1, -2, dp(24)));
            List<View> focus = new ArrayList<>();
            int cardWidth = posterCardWidth(posterColumns());
            int posterWidth = cardWidth - dp(8);
            for (int j = 0; j < videos.length(); j++) {
                JSONObject video = videos.optJSONObject(j);
                if (video == null) continue;
                View card = poster(video, posterWidth, posterImageHeight(posterWidth));
                LinearLayout.LayoutParams cardLp = new LinearLayout.LayoutParams(cardWidth, -2);
                if (j + 1 < videos.length()) cardLp.rightMargin = dp(12);
                row.addView(card, cardLp);
                focus.add(card);
            }
            focusRows.add(focus);
        }
        wireFocus();
        if (getResources().getDisplayMetrics().heightPixels < dp(450)) navViews.get(0).requestFocus();
        else if (focusRows.size() > 1 && !focusRows.get(1).isEmpty()) focusRows.get(1).get(0).requestFocus();
    }

    private void showCategory(int category) {
        if (currentCategory != category) {
            currentCategory = category;
            categoryPage = 1;
            categoryPageCount = 1;
            categoryTotal = 0;
            categoryVideos = null;
            filterOptions = null;
            for (int i = 0; i < filterSelection.length; i++) filterSelection[i] = 0;
        }
        begin("category");
        if (filterOptions != null) {
            if (categoryVideos != null) renderCategoryPage(6, 0, null);
            else requestCategory(1, 0);
            return;
        }
        status("正在加载筛选…");
        int task = generation;
        jobs.execute(() -> {
            try {
                if (api == null) api = new TvApi(this);
                if (categoryDefinitions == null) categoryDefinitions = api.get("nav").getJSONArray("data");
                JSONObject definition = null;
                for (int i = 0; i < categoryDefinitions.length(); i++) {
                    JSONObject entry = categoryDefinitions.optJSONObject(i);
                    if (entry != null && entry.optInt("type_id") == category) { definition = entry; break; }
                }
                if (definition == null) throw new Exception("分类不可用");
                String[][] options = buildFilterOptions(definition.optJSONObject("type_extend"));
                main.post(() -> { if (task == generation) { filterOptions = options; requestCategory(1, 0); } });
            } catch (Exception error) { main.post(() -> { if (task == generation) errorState("分类加载失败", () -> showCategory(category)); }); }
        });
    }

    private static String[][] buildFilterOptions(JSONObject extend) {
        String[][] options = new String[5][];
        options[0] = new String[] {"最新", "最热", "好评"};
        String[] keys = {"class", "area", "lang", "year"};
        for (int i = 0; i < keys.length; i++) {
            LinkedHashSet<String> values = new LinkedHashSet<>();
            values.add("全部");
            String raw = extend == null ? "" : extend.optString(keys[i]);
            for (String item : raw.split(",")) if (!item.trim().isEmpty()) values.add(item.trim());
            options[i + 1] = values.toArray(new String[0]);
        }
        return options;
    }

    private void requestCategory(int focusRow, int focusCol) {
        categoryVideos = null;
        int task = ++generation;
        renderCategoryPage(focusRow, focusCol, "正在加载影片…");
        jobs.execute(() -> {
            try {
                if (api == null) api = new TvApi(this);
                String[] keys = {"class", "area", "lang", "year"};
                String[] order = {"time", "hits", "score"};
                StringBuilder route = new StringBuilder("video?tid=").append(currentCategory)
                    .append("&pg=").append(categoryPage).append("&order=").append(order[filterSelection[0]]);
                for (int i = 1; i < filterOptions.length; i++) {
                    if (filterSelection[i] > 0) route.append("&").append(keys[i - 1]).append("=")
                        .append(URLEncoder.encode(filterOptions[i][filterSelection[i]], "UTF-8"));
                }
                JSONObject payload = api.get(route.toString());
                if (payload.optInt("code") != 1) throw new Exception("分类服务不可用");
                JSONArray videos = payload.optJSONArray("data");
                int pages = Math.max(1, payload.optInt("pagecount", 1));
                int total = payload.optInt("total", videos == null ? 0 : videos.length());
                main.post(() -> { if (task == generation) {
                    categoryVideos = videos == null ? new JSONArray() : videos;
                    categoryPageCount = pages;
                    categoryTotal = total;
                    renderCategoryPage(focusRow, focusCol, null);
                } });
            } catch (Exception error) {
                main.post(() -> { if (task == generation) renderCategoryPage(focusRow, focusCol, "加载失败，请重试"); });
            }
        });
    }

    private void renderCategoryPage(int focusRow, int focusCol, String message) {
        content.removeAllViews();
        focusRows.subList(1, focusRows.size()).clear();
        String[] names = {"", "电影", "电视剧", "综艺", "动漫", "短剧"};
        heading(names[currentCategory] + (categoryTotal > 0 ? "  ·  " + categoryTotal : ""));
        String[] labels = {"排序", "类型", "地区", "语言", "年份"};
        for (int r = 0; r < filterOptions.length; r++) {
            final int filter = r;
            LinearLayout line = new LinearLayout(this);
            line.setGravity(Gravity.CENTER_VERTICAL);
            content.addView(line, bottomMargin(-1, dp(35), dp(4)));
            TextView label = label(labels[r], 14, MUTED);
            line.addView(label, new LinearLayout.LayoutParams(dp(65), -1));
            HorizontalScrollView horizontal = new HorizontalScrollView(this);
            horizontal.setHorizontalScrollBarEnabled(false);
            line.addView(horizontal, new LinearLayout.LayoutParams(0, -1, 1));
            LinearLayout choices = new LinearLayout(this);
            horizontal.addView(choices);
            List<View> focus = new ArrayList<>();
            for (int c = 0; c < filterOptions[r].length; c++) {
                final int choice = c;
                TextView option = button(filterOptions[r][c], c == filterSelection[r]);
                option.setGravity(Gravity.CENTER);
                option.setMinWidth(dp(64));
                option.setOnClickListener(v -> {
                    if (filterSelection[filter] == choice) return;
                    filterSelection[filter] = choice;
                    categoryPage = 1;
                    categoryPageCount = 1;
                    categoryTotal = 0;
                    requestCategory(filter + 1, choice);
                });
                choices.addView(option, bottomMargin(-2, dp(32), 0));
                focus.add(option);
            }
            focusRows.add(focus);
        }
        if (message != null) {
            status(message);
            if (categoryVideos == null && !message.startsWith("正在")) {
                TextView retry = button("重试", false);
                retry.setOnClickListener(v -> requestCategory(6, 0));
                content.addView(retry, bottomMargin(dp(100), dp(42), 0));
                List<View> row = new ArrayList<>(); row.add(retry); focusRows.add(row);
            }
        } else if (categoryVideos == null || categoryVideos.length() == 0) {
            status("暂无符合条件的影片");
        } else {
            appendPosterRows(categoryVideos, false);
            LinearLayout pager = new LinearLayout(this);
            pager.setGravity(Gravity.CENTER_VERTICAL);
            content.addView(pager, bottomMargin(-1, dp(48), 0));
            List<View> pageFocus = new ArrayList<>();
            if (categoryPage > 1) {
                TextView previous = button("上一页", false);
                previous.setOnClickListener(v -> { categoryPage--; scroll.scrollTo(0, 0); requestCategory(6, 0); });
                pager.addView(previous, bottomMargin(dp(98), dp(42), 0));
                pageFocus.add(previous);
            }
            pager.addView(label(categoryPage + " / " + categoryPageCount, 15, MUTED), bottomMargin(dp(105), dp(42), 0));
            if (categoryPage < categoryPageCount) {
                TextView next = button("下一页", false);
                next.setOnClickListener(v -> { categoryPage++; scroll.scrollTo(0, 0); requestCategory(6, 0); });
                pager.addView(next, bottomMargin(dp(98), dp(42), 0));
                pageFocus.add(next);
            }
            if (!pageFocus.isEmpty()) focusRows.add(pageFocus);
        }
        wireFocus();
        int row = Math.min(focusRow, focusRows.size() - 1);
        if (!focusRows.get(row).isEmpty()) focusRows.get(row).get(Math.min(focusCol, focusRows.get(row).size() - 1)).requestFocus();
    }

    private void showRanking() {
        begin("rank");
        if (rankDefinitions != null) { if (rankVideos != null) renderRanking(); else requestRank(); return; }
        status("正在加载榜单…");
        int task = generation;
        jobs.execute(() -> {
            try {
                if (api == null) api = new TvApi(this);
                JSONArray definitions = api.get("rank_list").getJSONArray("data");
                main.post(() -> { if (task == generation) { rankDefinitions = definitions; requestRank(); } });
            } catch (Exception error) { main.post(() -> { if (task == generation) errorState("榜单加载失败", this::showRanking); }); }
        });
    }

    private void requestRank() {
        rankVideos = null;
        int task = ++generation;
        renderRanking();
        jobs.execute(() -> {
            try {
                JSONObject definition = rankDefinitions.getJSONObject(currentRank);
                JSONObject payload = api.get("rank_video_list?id=" + definition.getInt("id"));
                if (payload.optInt("code") != 1) throw new Exception("榜单暂不可用");
                JSONArray videos = payload.optJSONArray("data");
                main.post(() -> { if (task == generation) { rankVideos = videos == null ? new JSONArray() : videos; renderRanking(); } });
            } catch (Exception error) { main.post(() -> { if (task == generation) errorState("榜单加载失败", this::requestRank); }); }
        });
    }

    private void renderRanking() {
        content.removeAllViews();
        focusRows.subList(1, focusRows.size()).clear();
        heading("排行");
        LinearLayout tabs = new LinearLayout(this);
        content.addView(tabs, bottomMargin(-1, dp(46), dp(12)));
        List<View> tabFocus = new ArrayList<>();
        for (int i = 0; i < rankDefinitions.length(); i++) {
            JSONObject definition = rankDefinitions.optJSONObject(i);
            if (definition == null) continue;
            final int index = i;
            TextView tab = button(definition.optString("name"), i == currentRank);
            tab.setGravity(Gravity.CENTER);
            tab.setOnClickListener(v -> { if (currentRank != index) { currentRank = index; rankPage = 1; requestRank(); } });
            tabs.addView(tab, bottomMargin(-2, dp(42), 0));
            tabFocus.add(tab);
        }
        focusRows.add(tabFocus);
        if (rankVideos == null) status("正在加载榜单…");
        else if (rankVideos.length() == 0) status("暂无榜单内容");
        else {
            int start = (rankPage - 1) * 30;
            JSONArray visible = new JSONArray();
            for (int i = start; i < Math.min(start + 30, rankVideos.length()); i++) visible.put(rankVideos.opt(i));
            appendPosterRows(visible, true, start);
            if (rankVideos.length() > 30) {
                LinearLayout pager = new LinearLayout(this);
                pager.setGravity(Gravity.CENTER_VERTICAL);
                content.addView(pager, bottomMargin(-1, dp(48), 0));
                List<View> pageFocus = new ArrayList<>();
                if (rankPage > 1) {
                    TextView previous = button("上一页", false);
                    previous.setOnClickListener(v -> { rankPage--; scroll.scrollTo(0, 0); renderRanking(); });
                    pager.addView(previous, bottomMargin(dp(98), dp(42), 0));
                    pageFocus.add(previous);
                }
                pager.addView(label(rankPage + " / " + ((rankVideos.length() + 29) / 30), 15, MUTED), bottomMargin(dp(105), dp(42), 0));
                if (start + 30 < rankVideos.length()) {
                    TextView next = button("下一页", false);
                    next.setOnClickListener(v -> { rankPage++; scroll.scrollTo(0, 0); renderRanking(); });
                    pager.addView(next, bottomMargin(dp(98), dp(42), 0));
                    pageFocus.add(next);
                }
                focusRows.add(pageFocus);
            }
        }
        wireFocus();
        if (!tabFocus.isEmpty()) tabFocus.get(Math.min(currentRank, tabFocus.size() - 1)).requestFocus();
    }

    private void appendPosterRows(JSONArray videos, boolean numbered) {
        appendPosterRows(videos, numbered, 0);
    }

    private void appendPosterRows(JSONArray videos, boolean numbered, int rankOffset) {
        int columns = posterColumns();
        int cardWidth = posterCardWidth(columns);
        int posterWidth = cardWidth - dp(8);
        for (int start = 0; start < videos.length(); start += columns) {
            LinearLayout row = new LinearLayout(this);
            content.addView(row, bottomMargin(-1, -2, dp(16)));
            List<View> focus = new ArrayList<>();
            for (int i = start; i < Math.min(start + columns, videos.length()); i++) {
                View card = poster(videos.optJSONObject(i), posterWidth, posterImageHeight(posterWidth),
                    numbered ? rankOffset + i + 1 : 0);
                LinearLayout.LayoutParams cardLp = new LinearLayout.LayoutParams(cardWidth, -2);
                if (i + 1 < Math.min(start + columns, videos.length())) cardLp.rightMargin = dp(12);
                row.addView(card, cardLp);
                focus.add(card);
            }
            focusRows.add(focus);
        }
    }

    private int posterCardWidth(int columns) {
        int usable = getResources().getDisplayMetrics().widthPixels - dp(68);
        return (usable - dp(12) * (columns - 1)) / columns;
    }

    private int posterImageHeight(int width) {
        return getResources().getDisplayMetrics().heightPixels < dp(450) ? width * 4 / 3 : width * 3 / 2;
    }

    private int posterColumns() {
        int usable = getResources().getDisplayMetrics().widthPixels - dp(52);
        return Math.min(6, Math.max(4, usable / dp(115)));
    }

    private void renderGrid(String title, JSONArray videos) {
        content.removeAllViews();
        focusRows.subList(1, focusRows.size()).clear();
        heading(title + "  ·  " + videos.length());
        if (videos.length() == 0) { status("暂无内容"); return; }
        appendPosterRows(videos, false);
        wireFocus();
        focusRows.get(1).get(0).requestFocus();
    }

    private void showSearch() {
        begin("search");
        heading("搜索");
        LinearLayout controls = new LinearLayout(this);
        controls.setGravity(Gravity.CENTER_VERTICAL);
        content.addView(controls, bottomMargin(-1, dp(62), dp(18)));
        EditText query = new EditText(this);
        query.setSingleLine(true);
        query.setTextColor(FG);
        query.setHintTextColor(MUTED);
        query.setTextSize(18);
        query.setHint("输入片名");
        query.setText("");
        query.setImeOptions(android.view.inputmethod.EditorInfo.IME_ACTION_SEARCH);
        query.setBackground(drawable(PANEL, MUTED, 4));
        query.setPadding(dp(14), 0, dp(14), 0);
        controls.addView(query, new LinearLayout.LayoutParams(0, dp(50), 1));
        TextView clear = button("清空", false);
        LinearLayout.LayoutParams clearLp = new LinearLayout.LayoutParams(dp(88), dp(50));
        clearLp.leftMargin = dp(12);
        controls.addView(clear, clearLp);
        clear.setGravity(Gravity.CENTER);
        clear.setOnClickListener(v -> { searchText = ""; searchResults = null; showSearch(); });
        TextView go = button("搜索", false);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(dp(100), dp(50));
        lp.leftMargin = dp(12);
        controls.addView(go, lp);
        go.setGravity(Gravity.CENTER);
        List<View> row = new ArrayList<>();
        row.add(query);
        row.add(clear);
        row.add(go);
        focusRows.add(row);
        wireFocus();
        go.setOnClickListener(v -> {
            String text = query.getText().toString().trim();
            if (text.isEmpty()) { query.requestFocus(); return; }
            ((InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE)).hideSoftInputFromWindow(query.getWindowToken(), 0);
            query.setText("");
            search(text);
        });
        query.setOnEditorActionListener((v, action, event) -> { go.performClick(); return true; });
        if (searchResults != null && !searchText.isEmpty()) renderSearchResults(searchText, searchResults);
        else query.requestFocus();
    }

    private void search(String text) {
        searchText = text;
        searchResults = null;
        status("正在搜索…");
        int task = generation;
        jobs.execute(() -> {
            JSONArray found = new JSONArray();
            try {
                if (api == null) api = new TvApi(this);
                String encoded = URLEncoder.encode(text, "UTF-8");
                JSONObject payload = api.get("search?text=" + encoded + "&page=1&limit=60");
                JSONArray list = payload.optJSONArray("data");
                if (list != null) for (int i = 0; i < list.length(); i++) found.put(list.opt(i));
            } catch (Exception ignored) { }
            if (found.length() == 0 && homeSections != null) {
                Set<Integer> ids = new HashSet<>();
                for (int s = 0; s < homeSections.length(); s++) {
                    JSONArray list = homeSections.optJSONObject(s).optJSONArray("vlist");
                    if (list == null) continue;
                    for (int i = 0; i < list.length(); i++) {
                        JSONObject item = list.optJSONObject(i);
                        if (item != null && item.optString("vod_name").toLowerCase().contains(text.toLowerCase()) && ids.add(item.optInt("vod_id"))) found.put(item);
                    }
                }
            }
            JSONArray result = found;
            main.post(() -> { if (task == generation) { searchResults = result; renderSearchResults(text, result); } });
        });
    }

    private void renderSearchResults(String text, JSONArray videos) {
        while (content.getChildCount() > 2) content.removeViewAt(2);
        focusRows.subList(2, focusRows.size()).clear();
        heading("搜索结果  ·  " + videos.length());
        if (videos.length() == 0) { status("未找到“" + text + "”"); return; }
        appendPosterRows(videos, false);
        wireFocus();
        focusRows.get(2).get(0).requestFocus();
    }

    private void showHistory() {
        begin("history");
        String stored = getSharedPreferences("tv", 0).getString("history", "[]");
        try { renderGrid("最近观看", new JSONArray(stored)); }
        catch (Exception ignored) { status("暂无观看记录"); }
    }

    private void openDetail(JSONObject video) {
        previousMode = mode;
        previousNav = activeNav;
        begin("detail");
        int id = video.optInt("vod_id");
        if (id <= 0) { errorState("影片信息不可用", this::onBackPressed); return; }
        heading(video.optString("vod_name"));
        status("正在加载详情…");
        remember(video);
        int task = generation;
        jobs.execute(() -> {
            try {
                if (api == null) api = new TvApi(this);
                JSONObject payload = api.get("video_detail?id=" + id);
                JSONObject info = payload.getJSONObject("data").getJSONObject("vod_info");
                main.post(() -> { if (task == generation) { detailInfo = info; detailSources = info.optJSONArray("vod_url_with_player"); sourceIndex = 0; renderDetail(); } });
            } catch (Exception error) { main.post(() -> { if (task == generation) errorState("详情加载失败", () -> openDetail(video)); }); }
        });
    }

    private void remember(JSONObject video) {
        try {
            JSONArray old = new JSONArray(getSharedPreferences("tv", 0).getString("history", "[]"));
            JSONArray updated = new JSONArray();
            updated.put(video);
            for (int i = 0; i < old.length() && updated.length() < 24; i++) {
                JSONObject item = old.optJSONObject(i);
                if (item != null && item.optInt("vod_id") != video.optInt("vod_id")) updated.put(item);
            }
            getSharedPreferences("tv", 0).edit().putString("history", updated.toString()).apply();
        } catch (Exception ignored) { }
    }

    private void renderDetail() {
        content.removeAllViews();
        focusRows.subList(1, focusRows.size()).clear();
        LinearLayout hero = new LinearLayout(this);
        hero.setGravity(Gravity.TOP);
        content.addView(hero, bottomMargin(-1, -2, dp(20)));
        ImageView poster = new ImageView(this);
        poster.setScaleType(ImageView.ScaleType.CENTER_CROP);
        poster.setBackgroundColor(PANEL);
        hero.addView(poster, bottomMargin(dp(172), dp(244), 0));
        loadImage(detailInfo.optString("vod_pic"), poster);
        LinearLayout meta = new LinearLayout(this);
        meta.setPadding(dp(24), 0, 0, 0);
        meta.setOrientation(LinearLayout.VERTICAL);
        hero.addView(meta, new LinearLayout.LayoutParams(0, -2, 1));
        TextView title = label(detailInfo.optString("vod_name"), 27, FG);
        title.setTypeface(null, 1);
        meta.addView(title);
        meta.addView(label(detailInfo.optString("vod_year") + "  ·  " + detailInfo.optString("vod_area") + "  ·  " + detailInfo.optString("vod_remarks"), 15, ACCENT));
        String description = detailInfo.optString("vod_blurb", detailInfo.optString("vod_content"));
        TextView synopsis = label(Html.fromHtml(Html.fromHtml(description).toString()).toString().trim(), 15, MUTED);
        synopsis.setMaxLines(6);
        synopsis.setEllipsize(TextUtils.TruncateAt.END);
        LinearLayout.LayoutParams synopsisLp = bottomMargin(-1, -2, 0);
        synopsisLp.topMargin = dp(16);
        meta.addView(synopsis, synopsisLp);
        heading("播放线路");
        HorizontalScrollView sourcesScroll = new HorizontalScrollView(this);
        sourcesScroll.setHorizontalScrollBarEnabled(false);
        LinearLayout sourcesRow = new LinearLayout(this);
        sourcesScroll.addView(sourcesRow);
        content.addView(sourcesScroll, bottomMargin(-1, -2, dp(14)));
        List<View> sourceFocus = new ArrayList<>();
        if (detailSources != null) {
            for (int i = 0; i < detailSources.length(); i++) {
                JSONObject source = detailSources.optJSONObject(i);
                if (source == null) continue;
                final int chosen = i;
                TextView sourceButton = button(source.optString("name", "线路" + (i + 1)), i == sourceIndex);
                sourceButton.setMaxWidth(dp(185));
                sourceButton.setSingleLine(true);
                sourceButton.setEllipsize(TextUtils.TruncateAt.END);
                sourceButton.setOnClickListener(v -> { sourceIndex = chosen; renderDetail(); });
                sourcesRow.addView(sourceButton, bottomMargin(-2, dp(42), 0));
                sourceFocus.add(sourceButton);
            }
        }
        focusRows.add(sourceFocus);
        heading("选集");
        if (detailSources == null || detailSources.length() == 0) { status("暂无播放线路"); wireFocus(); return; }
        JSONObject source = detailSources.optJSONObject(sourceIndex);
        String list = source == null ? "" : source.optString("url", "");
        String[] parts = list.split("#");
        final int columns = 6;
        for (int start = 0; start < parts.length; start += columns) {
            LinearLayout row = new LinearLayout(this);
            content.addView(row, bottomMargin(-1, -2, dp(10)));
            List<View> episodeFocus = new ArrayList<>();
            for (int i = start; i < Math.min(start + columns, parts.length); i++) {
                String[] entry = parts[i].split("\\$", 2);
                String episode = entry.length == 2 ? entry[0] : "播放";
                String url = entry.length == 2 ? entry[1] : entry[0];
                if (url.isEmpty()) continue;
                TextView play = button(episode, false);
                play.setGravity(Gravity.CENTER);
                play.setSingleLine(true);
                play.setEllipsize(TextUtils.TruncateAt.END);
                play.setOnClickListener(v -> openPlayer(url, episode, source));
                LinearLayout.LayoutParams playLp = parts.length == 1
                    ? new LinearLayout.LayoutParams(dp(180), dp(42))
                    : new LinearLayout.LayoutParams(0, dp(42), 1);
                playLp.rightMargin = dp(6);
                row.addView(play, playLp);
                episodeFocus.add(play);
            }
            if (parts.length > 1) {
                for (int i = episodeFocus.size(); i < columns; i++) {
                    View spacer = new View(this);
                    LinearLayout.LayoutParams spacerLp = new LinearLayout.LayoutParams(0, dp(42), 1);
                    spacerLp.rightMargin = dp(6);
                    row.addView(spacer, spacerLp);
                }
            }
            if (!episodeFocus.isEmpty()) focusRows.add(episodeFocus);
        }
        wireFocus();
        if (focusRows.size() > 2 && !focusRows.get(2).isEmpty()) focusRows.get(2).get(0).requestFocus();
    }

    private void openPlayer(String rawUrl, String episode, JSONObject source) {
        launchPlayer(rawUrl, episode, source);
    }

    private void launchPlayer(String rawUrl, String episode, JSONObject source) {
        Intent intent = new Intent(this, TvPlayerActivity.class);
        intent.putExtra("url", rawUrl.replace("&amp;", "&"));
        intent.putExtra("title", detailInfo.optString("vod_name") + " · " + episode);
        intent.putExtra("parse", source == null ? "" : source.optString("parse_api"));
        intent.putExtra("sources", detailSources == null ? "[]" : detailSources.toString());
        intent.putExtra("source_index", sourceIndex);
        ArrayList<String> urls = new ArrayList<>();
        ArrayList<String> names = new ArrayList<>();
        int current = 0;
        if (source != null) {
            for (String item : source.optString("url").split("#")) {
                String[] entry = item.split("\\$", 2);
                String name = entry.length == 2 ? entry[0] : "播放";
                String url = (entry.length == 2 ? entry[1] : entry[0]).replace("&amp;", "&");
                if (url.equals(rawUrl)) current = urls.size();
                if (!url.isEmpty()) { urls.add(url); names.add(name); }
            }
        }
        if (urls.isEmpty() || !urls.contains(rawUrl)) {
            urls.clear();
            names.clear();
            urls.add(rawUrl);
            names.add(episode);
            current = 0;
        }
        intent.putStringArrayListExtra("episode_urls", urls);
        intent.putStringArrayListExtra("episode_names", names);
        intent.putExtra("episode_index", current);
        startActivity(intent);
    }

    private View poster(JSONObject video, int width, int imageHeight) {
        return poster(video, width, imageHeight, 0);
    }

    private View poster(JSONObject video, int width, int imageHeight, int rank) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dp(4), dp(4), dp(4), dp(5));
        card.setFocusable(true);
        card.setClickable(true);
        disableSystemFocus(card);
        style(card, false, false);
        ImageView image = new ImageView(this);
        image.setScaleType(ImageView.ScaleType.CENTER_CROP);
        image.setBackgroundColor(PANEL);
        card.addView(image, new LinearLayout.LayoutParams(width, imageHeight));
        TextView name = label(video == null ? "" : (rank > 0 ? rank + "  " : "") + video.optString("vod_name"), 14, FG);
        name.setMaxLines(2);
        name.setEllipsize(TextUtils.TruncateAt.END);
        card.addView(name, bottomMargin(width, dp(42), 0));
        TextView remark = label(video == null ? "" : video.optString("vod_remarks"), 11, MUTED);
        remark.setSingleLine(true);
        remark.setEllipsize(TextUtils.TruncateAt.END);
        card.addView(remark, new LinearLayout.LayoutParams(width, dp(20)));
        if (video != null) {
            loadImage(video.optString("vod_pic"), image);
            card.setOnClickListener(v -> openDetail(video));
        }
        return card;
    }

    private void loadImage(String url, ImageView target) {
        if (url == null || url.isEmpty()) return;
        Bitmap cached = images.get(url);
        if (cached != null) { target.setImageBitmap(cached); return; }
        jobs.execute(() -> {
            for (int attempt = 0; attempt < 2; attempt++) {
                try {
                    byte[] raw = TvApi.download(url, false, 2_500_000);
                    BitmapFactory.Options bounds = new BitmapFactory.Options();
                    bounds.inJustDecodeBounds = true;
                    BitmapFactory.decodeByteArray(raw, 0, raw.length, bounds);
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inPreferredConfig = Bitmap.Config.RGB_565;
                    options.inSampleSize = 1;
                    while (bounds.outWidth / options.inSampleSize > 350 || bounds.outHeight / options.inSampleSize > 500) options.inSampleSize *= 2;
                    Bitmap bitmap = BitmapFactory.decodeByteArray(raw, 0, raw.length, options);
                    if (bitmap != null) { images.put(url, bitmap); main.post(() -> target.setImageBitmap(bitmap)); break; }
                } catch (Exception ignored) { }
            }
        });
    }

    private void wireFocus() {
        for (int r = 0; r < focusRows.size(); r++) {
            List<View> row = focusRows.get(r);
            for (int c = 0; c < row.size(); c++) {
                final int rowIndex = r, colIndex = c;
                View view = row.get(c);
                if (!(view instanceof EditText)) view.setOnFocusChangeListener((v, focused) ->
                    style(v, focused, rowIndex == 0 ? colIndex == activeNav : Boolean.TRUE.equals(v.getTag())));
                view.setOnKeyListener((v, code, event) -> {
                    if (event.getAction() != KeyEvent.ACTION_DOWN) return false;
                    int nextRow = rowIndex, nextCol = colIndex;
                    if (code == KeyEvent.KEYCODE_DPAD_LEFT) nextCol--;
                    else if (code == KeyEvent.KEYCODE_DPAD_RIGHT) nextCol++;
                    else if (code == KeyEvent.KEYCODE_DPAD_UP) nextRow--;
                    else if (code == KeyEvent.KEYCODE_DPAD_DOWN) nextRow++;
                    else return false;
                    if (nextRow < 0 || nextRow >= focusRows.size()) return true;
                    List<View> destination = focusRows.get(nextRow);
                    if (destination.isEmpty()) return true;
                    nextCol = Math.max(0, Math.min(nextCol, destination.size() - 1));
                    if (nextRow == rowIndex && (colIndex == 0 && code == KeyEvent.KEYCODE_DPAD_LEFT || colIndex == destination.size() - 1 && code == KeyEvent.KEYCODE_DPAD_RIGHT)) return true;
                    destination.get(nextCol).requestFocus();
                    return true;
                });
            }
        }
    }

    private void heading(String text) {
        TextView title = label(text, 21, FG);
        title.setTypeface(null, 1);
        content.addView(title, bottomMargin(-1, dp(42), dp(8)));
    }

    private void status(String text) {
        TextView message = label(text, 17, MUTED);
        content.addView(message, bottomMargin(-1, dp(48), 0));
    }

    private void errorState(String text, Runnable retry) {
        content.removeAllViews();
        focusRows.subList(1, focusRows.size()).clear();
        heading(text);
        TextView button = button("重试", false);
        button.setOnClickListener(v -> retry.run());
        content.addView(button, bottomMargin(dp(110), dp(48), 0));
        List<View> row = new ArrayList<>(); row.add(button); focusRows.add(row);
        wireFocus(); button.requestFocus();
    }

    private TextView label(String text, int sp, int color) {
        TextView view = new TextView(this);
        view.setText(text);
        view.setTextSize(sp);
        view.setTextColor(color);
        view.setGravity(Gravity.CENTER_VERTICAL);
        return view;
    }

    private TextView button(String text, boolean selected) {
        TextView view = label(text, 15, FG);
        view.setPadding(dp(14), 0, dp(14), 0);
        view.setFocusable(true);
        view.setClickable(true);
        disableSystemFocus(view);
        view.setTag(selected);
        style(view, false, selected);
        return view;
    }

    private void style(View view, boolean focused, boolean selected) {
        view.setBackground(drawable(focused ? Color.rgb(54, 74, 85) : selected ? Color.rgb(59, 54, 79) : PANEL,
            focused ? ACCENT : selected ? VIOLET : Color.rgb(72, 88, 100), 4));
        if (view instanceof TextView) ((TextView) view).setTextColor(focused ? FG : selected ? ACCENT : FG);
    }

    private GradientDrawable drawable(int fill, int stroke, int radius) {
        GradientDrawable background = new GradientDrawable();
        background.setColor(fill);
        background.setCornerRadius(dp(radius));
        background.setStroke(dp(2), stroke);
        return background;
    }

    private void disableSystemFocus(View view) {
        if (android.os.Build.VERSION.SDK_INT >= 26) view.setDefaultFocusHighlightEnabled(false);
    }

    private LinearLayout.LayoutParams bottomMargin(int width, int height, int bottom) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(width, height);
        lp.bottomMargin = bottom;
        lp.rightMargin = dp(6);
        return lp;
    }

    private int dp(int value) { return (int) (value * getResources().getDisplayMetrics().density + 0.5f); }

    @Override public void onBackPressed() {
        if ("detail".equals(mode)) {
            activeNav = previousNav;
            if ("home".equals(previousMode)) showHome();
            else if ("category".equals(previousMode)) showCategory(activeNav);
            else if ("rank".equals(previousMode)) showRanking();
            else if ("search".equals(previousMode)) showSearch();
            else showHistory();
        } else if (!"home".equals(mode)) { activeNav = 0; showHome(); }
        else new AlertDialog.Builder(this).setMessage("退出暮光 TV？")
            .setNegativeButton("取消", null).setPositiveButton("退出", (d, which) -> finish()).show();
    }

    @Override protected void onDestroy() {
        generation++;
        jobs.shutdownNow();
        super.onDestroy();
    }
}
