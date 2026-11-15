.class public Lcom/shenma/tvlauncher/HomeActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/HomeActivity$WindowMessageID;,
        Lcom/shenma/tvlauncher/HomeActivity$UiID;
    }
.end annotation


# static fields
.field protected static ISTV:Ljava/lang/Boolean;

.field public static homeFrom:Ljava/lang/String;

.field public static homeParams:Ljava/lang/String;

.field public static lib:Ljava/lang/String;

.field private static titile_position:I


# instance fields
.field private En:Ljava/lang/String;

.field private Logo_url:Ljava/lang/String;

.field private Mac:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private PWD:Ljava/lang/String;

.field public RequestQueue:Lcom/android/volley/RequestQueue;

.field private final TAG:Ljava/lang/String;

.field private adapter:Lcom/shenma/tvlauncher/adapter/FragAdapter;

.field private app_nshow:Ljava/lang/String;

.field private app_nurl:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private category:Ljava/lang/String;

.field private categorypwd:Ljava/lang/String;

.field private compel:I

.field private countSize:F

.field private currentSize:F

.field public fl_main:Landroid/widget/FrameLayout;

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private fromXDelta:F

.field private gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

.field private gongGaoRoot:Landroid/widget/LinearLayout;

.field private homeHandler:Landroid/os/Handler;

.field private home_clear:Landroid/widget/LinearLayout;

.field private home_collect:Landroid/widget/LinearLayout;

.field private home_play_set:Landroid/widget/LinearLayout;

.field private home_top_record:Landroid/widget/ImageView;

.field private home_top_records:Landroid/widget/LinearLayout;

.field private home_top_search:Landroid/widget/ImageView;

.field private home_top_searchs:Landroid/widget/LinearLayout;

.field private home_user:Landroid/widget/LinearLayout;

.field private home_wallpaper:Landroid/widget/LinearLayout;

.field private isHasFouse:Ljava/lang/Boolean;

.field private isRunning:Z

.field private iv_net_state:Landroid/widget/ImageView;

.field private iv_titile:Landroid/widget/ImageView;

.field private live:I

.field private ll_rb:Landroid/widget/LinearLayout;

.field private logo:Landroid/widget/ImageView;

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

.field private mDialog:Landroid/app/Dialog;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field private mWallReceiver:Landroid/content/BroadcastReceiver;

.field private mediaHandler:Landroid/os/Handler;

.field private mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

.field private noticeState:Z

.field public packLst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private password:Ljava/lang/String;

.field private player_download_url:Ljava/lang/String;

.field private player_name:Ljava/lang/String;

.field private player_update:Ljava/lang/String;

.field private player_zip_md5:Ljava/lang/String;

.field private rb_Internet:Landroid/widget/RadioButton;

.field private rb_bm_tvplay:Landroid/widget/RadioButton;

.field private rb_recommend:Landroid/widget/RadioButton;

.field private rb_settings:Landroid/widget/RadioButton;

.field private rb_video_type:Landroid/widget/RadioButton;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

.field private rg_video_type_bottom:Landroid/widget/RadioGroup;

.field private rl_bg:Landroid/widget/RelativeLayout;

.field private search:I

.field private searchport:I

.field private sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

.field protected technology:Ljava/lang/String;

.field private tf:Lcom/shenma/tvlauncher/fragment/TVFragment;

.field private time_colon:Landroid/widget/TextView;

.field private title_group:Landroid/widget/RadioGroup;

.field private tv_main_date:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_update_msg:Landroid/widget/TextView;

.field private username:Ljava/lang/String;

.field private vpager:Landroid/support/v4/view/ViewPager;

.field public whiteBorder:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/HomeActivity;->titile_position:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 114
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 119
    const-string v0, "HomeActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->TAG:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    .line 125
    const-string v1, ""

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->technology:Ljava/lang/String;

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->isRunning:Z

    .line 161
    new-instance v2, Lcom/shenma/tvlauncher/HomeActivity$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/HomeActivity$1;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->homeHandler:Landroid/os/Handler;

    .line 169
    new-instance v2, Lcom/shenma/tvlauncher/HomeActivity$2;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/HomeActivity$2;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;

    .line 220
    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->PWD:Ljava/lang/String;

    .line 224
    const-string v0, "live"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->live:I

    .line 225
    const-string v0, "search"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->search:I

    .line 226
    const-string v0, "searchport"

    const/16 v1, 0x26fa

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->searchport:I

    .line 235
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/HomeActivity$3;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 264
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$4;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/HomeActivity$4;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$5;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/HomeActivity$5;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mWallReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->noticeState:Z

    return-void
.end method

.method private AutoMacRegister()V
    .locals 21

    .line 1155
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1156
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1157
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1158
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1159
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1160
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1161
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1162
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 1163
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/HomeActivity$23;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=user_reg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$21;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/HomeActivity$21;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$22;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/HomeActivity$22;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity$23;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1204
    return-void
.end method

.method private AutoRegister()V
    .locals 21

    .line 1014
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1015
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1016
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1017
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1018
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1019
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1020
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1021
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 1022
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/HomeActivity$17;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=user_reg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$15;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/HomeActivity$15;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$16;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/HomeActivity$16;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity$17;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1063
    return-void
.end method

.method private MacLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "rc4data"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;

    .line 1085
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1086
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$20;

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$18;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity$18;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v6, Lcom/shenma/tvlauncher/HomeActivity$19;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/HomeActivity$19;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/shenma/tvlauncher/HomeActivity$20;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1113
    return-void
.end method

.method private UpdateDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "remark"    # Ljava/lang/String;
    .param p2, "updateurl"    # Ljava/lang/String;

    .line 2233
    new-instance v0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2234
    .local v0, "builder":Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setTitle(I)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2235
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2236
    .local v1, "remarks":[Ljava/lang/String;
    const-string v2, ""

    .line 2237
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 2238
    array-length v4, v1

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    .line 2239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2240
    goto :goto_1

    .line 2242
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2237
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2246
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2247
    iget v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->compel:I

    const v4, 0x7f0e005f

    if-ne v3, v5, :cond_2

    .line 2248
    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity$50;

    invoke-direct {v3, p0, p2}, Lcom/shenma/tvlauncher/HomeActivity$50;-><init>(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2256
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->create()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/view/HomeDialog;->show()V

    goto :goto_2

    .line 2258
    :cond_2
    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity$51;

    invoke-direct {v3, p0, p2}, Lcom/shenma/tvlauncher/HomeActivity$51;-><init>(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2266
    const v3, 0x7f0e0060

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$52;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/HomeActivity$52;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v0, v3, v4}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2273
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/view/HomeDialog;->shows()V

    .line 2275
    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/HomeActivity;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .param p1, "x1"    # Landroid/os/Message;

    .line 114
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/HomeActivity;->onMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/HomeActivity;->changeBackImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->Mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->En:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->En:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->Name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->Name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->PWD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->PWD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/shenma/tvlauncher/HomeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->live:I

    return v0
.end method

.method static synthetic access$1800(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->showUserDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/RecommendFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->app_nshow:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/SettingFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/TopicFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/shenma/tvlauncher/HomeActivity;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .param p1, "x1"    # Landroid/view/animation/AnimationSet;

    .line 114
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/shenma/tvlauncher/HomeActivity;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .param p1, "x1"    # Landroid/view/animation/TranslateAnimation;

    .line 114
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/shenma/tvlauncher/HomeActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    return v0
.end method

.method static synthetic access$2402(Lcom/shenma/tvlauncher/HomeActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .param p1, "x1"    # F

    .line 114
    iput p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    return p1
.end method

.method static synthetic access$2500(Lcom/shenma/tvlauncher/HomeActivity;Landroid/view/animation/AnimationSet;Landroid/view/animation/TranslateAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .param p1, "x1"    # Landroid/view/animation/AnimationSet;
    .param p2, "x2"    # Landroid/view/animation/TranslateAnimation;

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/HomeActivity;->initAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/TranslateAnimation;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_titile:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2702(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 114
    sput p0, Lcom/shenma/tvlauncher/HomeActivity;->titile_position:I

    return p0
.end method

.method static synthetic access$2802(Lcom/shenma/tvlauncher/HomeActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 114
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->categorypwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->app_nurl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/HomeActivity;->UpdateDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->logoloadImg()V

    return-void
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->notice()V

    return-void
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_download_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->homeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_net_state:Landroid/widget/ImageView;

    return-object v0
.end method

.method private accountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "rc4data"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;

    .line 876
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 877
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$11;

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$9;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity$9;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v6, Lcom/shenma/tvlauncher/HomeActivity$10;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/HomeActivity$10;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/shenma/tvlauncher/HomeActivity$11;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 904
    return-void
.end method

.method private changeBackImage(Ljava/lang/String;)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .line 2289
    if-nez p1, :cond_0

    .line 2290
    return-void

    .line 2291
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2292
    const/4 v0, 0x0

    .line 2293
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "open_blur"

    const-string/jumbo v3, "\u5173"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u5f00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_4

    .line 2295
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2296
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_blur"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2297
    if-nez v0, :cond_3

    .line 2299
    const/4 v1, 0x0

    const/4 v3, 0x7

    :try_start_0
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2300
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2301
    .local v5, "tempBmp":Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 2302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2303
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v5, v6

    .line 2304
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2307
    :cond_1
    invoke-static {v5, v3, v1}, Lcom/shenma/tvlauncher/utils/BlurUtils;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    .line 2308
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2309
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2308
    invoke-virtual {v6, v7, v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2323
    .end local v5    # "tempBmp":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 2310
    :catch_0
    move-exception v5

    .line 2311
    .local v5, "oom":Ljava/lang/OutOfMemoryError;
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->clearAllImageCache()V

    .line 2312
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2313
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2314
    .local v6, "tempBmp":Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 2315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2316
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2317
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2320
    :cond_2
    invoke-static {v6, v3, v1}, Lcom/shenma/tvlauncher/utils/BlurUtils;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2321
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    .line 2322
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2321
    invoke-virtual {v1, v2, v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2325
    .end local v5    # "oom":Ljava/lang/OutOfMemoryError;
    .end local v6    # "tempBmp":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rl_bg:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 2329
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2330
    if-nez v0, :cond_5

    .line 2332
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    .line 2333
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2340
    goto :goto_1

    .line 2335
    :catch_1
    move-exception v1

    .line 2336
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->clearAllImageCache()V

    .line 2337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2338
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2342
    .end local v1    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rl_bg:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2346
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_6
    :goto_2
    return-void
.end method

.method private checkUpdate()V
    .locals 21

    .line 1224
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1225
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1226
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1227
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1228
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1229
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1230
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1231
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 1232
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/HomeActivity$26;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$24;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/HomeActivity$24;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$25;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/HomeActivity$25;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity$26;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1273
    return-void
.end method

.method private getGongGao()V
    .locals 21

    .line 406
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 407
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 408
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 409
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 410
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 411
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 412
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 413
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 414
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/HomeActivity$8;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=notices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$6;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/HomeActivity$6;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$7;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/HomeActivity$7;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity$8;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 457
    return-void
.end method

.method public static getIsTV()Z
    .locals 1

    .line 287
    sget-object v0, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private initAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/TranslateAnimation;)V
    .locals 2
    .param p1, "_AnimationSet"    # Landroid/view/animation/AnimationSet;
    .param p2, "_TranslateAnimation"    # Landroid/view/animation/TranslateAnimation;

    .line 2042
    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2043
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 2044
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 2045
    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2046
    return-void
.end method

.method private initData()V
    .locals 2

    .line 732
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->checkUpdate()V

    .line 733
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getGongGao()V

    .line 734
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->initLogin()V

    .line 735
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->initLogo()V

    .line 736
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->initNotice()V

    .line 737
    iget v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->search:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 738
    iget v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->searchport:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->start(I)V

    .line 740
    :cond_0
    return-void
.end method

.method private initLogin()V
    .locals 13

    .line 760
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "play_decode"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "play_ratio"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "play_core"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "live_core"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "play_jump"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "play_jump_end"

    aput-object v8, v1, v7

    .line 761
    .local v1, "keys":[Ljava/lang/String;
    new-array v8, v0, [Ljava/lang/String;

    const-string/jumbo v9, "\u786c\u89e3\u7801"

    aput-object v9, v8, v2

    const-string/jumbo v9, "\u5168\u5c4f\u62c9\u4f38"

    aput-object v9, v8, v3

    const-string v9, "IJK"

    aput-object v9, v8, v4

    const-string/jumbo v9, "\u81ea\u52a8"

    aput-object v9, v8, v5

    const-string v9, "0\u79d2"

    aput-object v9, v8, v6

    aput-object v9, v8, v7

    move-object v6, v8

    .line 762
    .local v6, "defaultValues":[Ljava/lang/String;
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 763
    .local v0, "sharedIntData":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v1

    const/4 v9, 0x0

    if-ge v7, v8, :cond_1

    .line 764
    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    aget-object v10, v1, v7

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 765
    .local v8, "value":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 766
    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    aget-object v10, v1, v7

    aget-object v11, v1, v7

    aget-object v12, v6, v7

    .line 767
    invoke-static {p0, v11, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 768
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 769
    if-nez v7, :cond_0

    .line 770
    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    aget v10, v0, v7

    .line 771
    const-string v11, "mIsHwDecode"

    invoke-interface {v9, v11, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 772
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 763
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 777
    .end local v7    # "i":I
    :cond_1
    const-string v7, "login_type"

    invoke-static {p0, v7, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 778
    .local v7, "login_type":I
    const-string v8, "passWord"

    const-string/jumbo v10, "userName"

    if-ne v7, v3, :cond_3

    .line 780
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    .line 781
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    .line 782
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 783
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    .line 784
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    .line 785
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 787
    :cond_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 789
    :cond_3
    if-eqz v7, :cond_6

    if-ne v7, v4, :cond_4

    goto :goto_1

    .line 796
    :cond_4
    if-ne v7, v5, :cond_7

    .line 798
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    .line 799
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    .line 800
    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/MacUtils;->getMac(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->Mac:Ljava/lang/String;

    .line 801
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 802
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->Mac:Ljava/lang/String;

    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    .line 803
    iput-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    .line 804
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 806
    :cond_5
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 791
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    .line 792
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    .line 793
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 794
    invoke-direct {p0, v3, v4, v2}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V

    .line 809
    :cond_7
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private initLogo()V
    .locals 3

    .line 744
    const-string v0, "Logo_url"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "logo_url":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 746
    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->Logo_url:Ljava/lang/String;

    .line 747
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 749
    :cond_0
    return-void
.end method

.method private initNotice()V
    .locals 21

    .line 2097
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 2098
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2099
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2100
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2101
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2102
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2103
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2104
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 2105
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/HomeActivity$47;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=notice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/HomeActivity$45;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/HomeActivity$45;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$46;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/HomeActivity$46;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/HomeActivity$47;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 2147
    return-void
.end method

.method private initTitle(I)V
    .locals 4
    .param p1, "position"    # I

    .line 711
    if-eqz p1, :cond_0

    .line 712
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    .line 715
    .local v0, "toX":F
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 716
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 717
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/HomeActivity;->initAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/TranslateAnimation;)V

    .line 718
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_titile:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 719
    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    .line 721
    .end local v0    # "toX":F
    :cond_0
    return-void
.end method

.method private logoloadImg()V
    .locals 2

    .line 753
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->Logo_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 754
    return-void
.end method

.method private markcodeLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "rc4data"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;

    .line 944
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 945
    new-instance v0, Lcom/shenma/tvlauncher/HomeActivity$14;

    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$12;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity$12;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    new-instance v6, Lcom/shenma/tvlauncher/HomeActivity$13;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/HomeActivity$13;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/shenma/tvlauncher/HomeActivity$14;-><init>(Lcom/shenma/tvlauncher/HomeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 972
    return-void
.end method

.method private notice()V
    .locals 3

    .line 2184
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2185
    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2186
    .local v0, "imageView":Landroid/widget/ImageView;
    const v1, 0x7f08014e

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2187
    .local v1, "notice_button":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2188
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2189
    new-instance v2, Lcom/shenma/tvlauncher/HomeActivity$48;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/HomeActivity$48;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2199
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "notice_button":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private onMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2054
    if-eqz p1, :cond_8

    .line 2055
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/16 v3, 0x10

    if-eq v0, v3, :cond_4

    const/16 v2, 0x12

    if-eq v0, v2, :cond_3

    const/16 v2, 0x13

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3ea

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 2084
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->currentSize:F

    .line 2085
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_update_msg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6b63\u5728\u4e0b\u8f7d\u66f4\u65b0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->currentSize:F

    iget v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->countSize:F

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2086
    iget v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->currentSize:F

    iget v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->countSize:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    .line 2087
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_update_msg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2081
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->countSize:F

    .line 2082
    goto :goto_1

    .line 2064
    :cond_2
    goto :goto_1

    .line 2067
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->installApk(Ljava/lang/String;)V

    .line 2068
    goto :goto_1

    .line 2060
    :cond_4
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2061
    goto :goto_1

    .line 2071
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_time:Landroid/widget/TextView;

    const-string v2, " "

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->getStringTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2072
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_main_date:Landroid/widget/TextView;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->getStringData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2073
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->time_colon:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 2074
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->time_colon:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2076
    :cond_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->time_colon:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2078
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->homeHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2079
    goto :goto_1

    .line 2057
    :cond_7
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5185\u90e8\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2093
    :cond_8
    :goto_1
    return-void
.end method

.method private registerNetworkReceiver()V
    .locals 2

    .line 695
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 696
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 697
    return-void
.end method

.method private registerPackageReceiver()V
    .locals 2

    .line 701
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 702
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    return-void
.end method

.method private registerWallpaperReceiver()V
    .locals 2

    .line 725
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 726
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "com.hd.changewallpaper"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mWallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 728
    return-void
.end method

.method private requestlogin(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 22
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 813
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 814
    .local v6, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 815
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 816
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 817
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 818
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 820
    .local v5, "Appkey":Ljava/lang/String;
    const-string v12, "&t="

    const-string v13, "&markcode="

    const-string v14, "&password="

    const-string v15, "account="

    const-string v11, "&"

    move-object/from16 v16, v9

    .end local v9    # "AESKEY":Ljava/lang/String;
    .local v16, "AESKEY":Ljava/lang/String;
    const-string v9, "&act=user_logon"

    move-object/from16 v17, v10

    .end local v10    # "AESIV":Ljava/lang/String;
    .local v17, "AESIV":Ljava/lang/String;
    const-string v10, "/api.php?app="

    if-nez v4, :cond_3

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    invoke-static/range {p0 .. p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 822
    .local v13, "logindate":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    move-object/from16 v19, v12

    const/4 v12, 0x1

    invoke-static {v1, v0, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 823
    .local v3, "miType":I
    if-ne v3, v12, :cond_0

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v20, v7

    .end local v7    # "RC4KEY":Ljava/lang/String;
    .local v20, "RC4KEY":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v21, v14

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v12, v7}, Lcom/shenma/tvlauncher/HomeActivity;->accountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v17

    move-object/from16 v17, v16

    goto/16 :goto_1

    .line 825
    .end local v20    # "RC4KEY":Ljava/lang/String;
    .restart local v7    # "RC4KEY":Ljava/lang/String;
    :cond_0
    move-object/from16 v20, v7

    move-object/from16 v21, v14

    .end local v7    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "RC4KEY":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    .line 827
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v8}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v0, v7, v12}, Lcom/shenma/tvlauncher/HomeActivity;->accountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 830
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    move-object/from16 v12, v17

    move-object/from16 v17, v16

    goto :goto_1

    .line 831
    :cond_1
    const/4 v7, 0x3

    if-ne v3, v7, :cond_2

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v16

    move-object/from16 v12, v17

    .end local v16    # "AESKEY":Ljava/lang/String;
    .end local v17    # "AESIV":Ljava/lang/String;
    .local v7, "AESKEY":Ljava/lang/String;
    .local v12, "AESIV":Ljava/lang/String;
    invoke-static {v7, v13, v12}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move/from16 v16, v3

    .end local v3    # "miType":I
    .local v16, "miType":I
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v17, v7

    .end local v7    # "AESKEY":Ljava/lang/String;
    .local v17, "AESKEY":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v14, v3}, Lcom/shenma/tvlauncher/HomeActivity;->accountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 831
    .end local v12    # "AESIV":Ljava/lang/String;
    .restart local v3    # "miType":I
    .local v16, "AESKEY":Ljava/lang/String;
    .local v17, "AESIV":Ljava/lang/String;
    :cond_2
    move-object/from16 v12, v17

    move-object/from16 v17, v16

    move/from16 v16, v3

    .end local v3    # "miType":I
    .restart local v12    # "AESIV":Ljava/lang/String;
    .local v16, "miType":I
    .local v17, "AESKEY":Ljava/lang/String;
    goto :goto_1

    .line 820
    .end local v12    # "AESIV":Ljava/lang/String;
    .end local v13    # "logindate":Ljava/lang/String;
    .end local v20    # "RC4KEY":Ljava/lang/String;
    .local v7, "RC4KEY":Ljava/lang/String;
    .local v16, "AESKEY":Ljava/lang/String;
    .local v17, "AESIV":Ljava/lang/String;
    :cond_3
    move-object/from16 v20, v7

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    move-object/from16 v21, v14

    move-object/from16 v12, v17

    move-object/from16 v17, v16

    .line 839
    .end local v7    # "RC4KEY":Ljava/lang/String;
    .end local v16    # "AESKEY":Ljava/lang/String;
    .restart local v12    # "AESIV":Ljava/lang/String;
    .local v17, "AESKEY":Ljava/lang/String;
    .restart local v20    # "RC4KEY":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    if-ne v4, v3, :cond_7

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 841
    .local v14, "logindate":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v1, v0, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 842
    .local v7, "miType":I
    if-ne v7, v13, :cond_4

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v3

    move-object/from16 v13, v20

    .end local v20    # "RC4KEY":Ljava/lang/String;
    .local v13, "RC4KEY":Ljava/lang/String;
    invoke-static {v14, v13}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v13    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "RC4KEY":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcom/shenma/tvlauncher/HomeActivity;->markcodeLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v17

    goto/16 :goto_3

    .line 844
    :cond_4
    move-object/from16 v21, v3

    const/4 v2, 0x2

    if-ne v7, v2, :cond_5

    .line 846
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v8}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->markcodeLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 847
    :catch_1
    move-exception v0

    .line 848
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 849
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    move-object/from16 v2, v17

    goto :goto_3

    .line 850
    :cond_5
    const/4 v2, 0x3

    if-ne v7, v2, :cond_6

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v17

    .end local v17    # "AESKEY":Ljava/lang/String;
    .local v2, "AESKEY":Ljava/lang/String;
    invoke-static {v2, v14, v12}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    move/from16 v16, v7

    .end local v7    # "miType":I
    .local v16, "miType":I
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v3, v7}, Lcom/shenma/tvlauncher/HomeActivity;->markcodeLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 850
    .end local v2    # "AESKEY":Ljava/lang/String;
    .end local v16    # "miType":I
    .restart local v7    # "miType":I
    .restart local v17    # "AESKEY":Ljava/lang/String;
    :cond_6
    move/from16 v16, v7

    move-object/from16 v2, v17

    .end local v7    # "miType":I
    .end local v17    # "AESKEY":Ljava/lang/String;
    .restart local v2    # "AESKEY":Ljava/lang/String;
    .restart local v16    # "miType":I
    goto :goto_3

    .line 839
    .end local v2    # "AESKEY":Ljava/lang/String;
    .end local v14    # "logindate":Ljava/lang/String;
    .end local v16    # "miType":I
    .restart local v17    # "AESKEY":Ljava/lang/String;
    :cond_7
    move-object/from16 v2, v17

    .line 857
    .end local v17    # "AESKEY":Ljava/lang/String;
    .restart local v2    # "AESKEY":Ljava/lang/String;
    :goto_3
    const/4 v3, 0x2

    if-ne v4, v3, :cond_a

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 859
    .local v13, "logindate":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-static {v1, v0, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    .line 860
    .local v15, "miType":I
    if-ne v15, v14, :cond_8

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, v20

    .end local v20    # "RC4KEY":Ljava/lang/String;
    .local v14, "RC4KEY":Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v9, v3}, Lcom/shenma/tvlauncher/HomeActivity;->MacLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 862
    .end local v14    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "RC4KEY":Ljava/lang/String;
    :cond_8
    move-object/from16 v14, v20

    .end local v20    # "RC4KEY":Ljava/lang/String;
    .restart local v14    # "RC4KEY":Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v15, v3, :cond_9

    .line 864
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v8}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v0, v3, v9}, Lcom/shenma/tvlauncher/HomeActivity;->MacLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 865
    :catch_2
    move-exception v0

    .line 866
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 867
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_5

    .line 868
    :cond_9
    const/4 v3, 0x3

    if-ne v15, v3, :cond_b

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v13, v12}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v0, v3, v9}, Lcom/shenma/tvlauncher/HomeActivity;->MacLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 857
    .end local v13    # "logindate":Ljava/lang/String;
    .end local v14    # "RC4KEY":Ljava/lang/String;
    .end local v15    # "miType":I
    .restart local v20    # "RC4KEY":Ljava/lang/String;
    :cond_a
    move-object/from16 v7, p2

    move-object/from16 v14, v20

    .line 872
    .end local v20    # "RC4KEY":Ljava/lang/String;
    .restart local v14    # "RC4KEY":Ljava/lang/String;
    :cond_b
    :goto_5
    return-void
.end method

.method private runTime()V
    .locals 2

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shenma/tvlauncher/view/MyServices;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 394
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shenma/tvlauncher/view/JSONService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 395
    return-void
.end method

.method private showUserDialog()V
    .locals 7

    .line 2372
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    .local v0, "User_url":Ljava/lang/String;
    new-instance v2, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2374
    .local v2, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const v4, 0x7f0a0072

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2375
    .local v3, "mView":Landroid/view/View;
    const v4, 0x7f080003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2376
    .local v4, "Categorypwd":Landroid/widget/TextView;
    const-string v5, "Pwd_text"

    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2377
    const v1, 0x7f0802c8

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2378
    .local v1, "user_pwd_et":Landroid/widget/EditText;
    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 2379
    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$54;

    invoke-direct {v5, p0, v1}, Lcom/shenma/tvlauncher/HomeActivity$54;-><init>(Lcom/shenma/tvlauncher/HomeActivity;Landroid/widget/EditText;)V

    const-string/jumbo v6, "\u786e\u5b9a"

    invoke-virtual {v2, v6, v5}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 2427
    new-instance v5, Lcom/shenma/tvlauncher/HomeActivity$55;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/HomeActivity$55;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    const v6, 0x7f0e0139

    invoke-virtual {v2, v6, v5}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 2433
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->create()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->mDialog:Landroid/app/Dialog;

    .line 2434
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2435
    return-void
.end method


# virtual methods
.method public AccountResponse(Ljava/lang/String;)V
    .locals 21
    .param p1, "response"    # Ljava/lang/String;

    .line 909
    move-object/from16 v1, p0

    const-string v0, "Exit"

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 911
    .local v4, "RSAKEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v5, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 912
    .local v5, "AESKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v6, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 915
    .local v6, "jo":Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v9, 0xc8

    const-string v10, "ckinfo"

    const-string v11, "passWord"

    const-string/jumbo v12, "userName"

    const-string/jumbo v14, "vip"

    if-ne v8, v9, :cond_3

    .line 916
    :try_start_2
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 917
    .local v8, "miType":I
    const/4 v15, 0x0

    .line 918
    .local v15, "msg":Ljava/lang/String;
    const-string v13, "msg"

    if-ne v8, v9, :cond_0

    .line 919
    :try_start_3
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    goto :goto_0

    .line 936
    .end local v6    # "jo":Lorg/json/JSONObject;
    .end local v8    # "miType":I
    .end local v15    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    goto/16 :goto_2

    .line 920
    .restart local v6    # "jo":Lorg/json/JSONObject;
    .restart local v8    # "miType":I
    .restart local v15    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 921
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    goto :goto_0

    .line 922
    :cond_1
    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 923
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v3}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v15, v9

    .line 925
    :cond_2
    :goto_0
    :try_start_4
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 926
    .local v9, "jot":Lorg/json/JSONObject;
    new-instance v13, Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v17, v2

    .end local v2    # "RC4KEY":Ljava/lang/String;
    .local v17, "RC4KEY":Ljava/lang/String;
    :try_start_5
    const-string v2, "info"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v13

    .line 927
    .local v2, "job":Lorg/json/JSONObject;
    const-string v13, "token"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 928
    .local v13, "ck":Ljava/lang/String;
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    .line 929
    .local v18, "vip":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v19, v16

    .line 930
    .local v19, "Exit":I
    move-object/from16 v16, v2

    .end local v2    # "job":Lorg/json/JSONObject;
    .local v16, "job":Lorg/json/JSONObject;
    iget-object v2, v1, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v20, v3

    const/4 v3, 0x2

    .end local v3    # "AESIV":Ljava/lang/String;
    .local v20, "AESIV":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 931
    iget-object v2, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    invoke-interface {v2, v12, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-interface {v2, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v10, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v3, v18

    .end local v18    # "vip":Ljava/lang/String;
    .local v3, "vip":Ljava/lang/String;
    invoke-interface {v2, v14, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move/from16 v10, v19

    .end local v19    # "Exit":I
    .local v10, "Exit":I
    invoke-interface {v2, v0, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 932
    return-void

    .line 936
    .end local v6    # "jo":Lorg/json/JSONObject;
    .end local v8    # "miType":I
    .end local v9    # "jot":Lorg/json/JSONObject;
    .end local v10    # "Exit":I
    .end local v13    # "ck":Ljava/lang/String;
    .end local v15    # "msg":Ljava/lang/String;
    .end local v16    # "job":Lorg/json/JSONObject;
    .end local v20    # "AESIV":Ljava/lang/String;
    .local v3, "AESIV":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v20, v3

    .end local v3    # "AESIV":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    goto :goto_2

    .line 934
    .end local v17    # "RC4KEY":Ljava/lang/String;
    .end local v20    # "AESIV":Ljava/lang/String;
    .local v2, "RC4KEY":Ljava/lang/String;
    .restart local v3    # "AESIV":Ljava/lang/String;
    .restart local v6    # "jo":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v20, v3

    .end local v2    # "RC4KEY":Ljava/lang/String;
    .end local v3    # "AESIV":Ljava/lang/String;
    .restart local v17    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    iget-object v0, v1, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 935
    iget-object v0, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v12, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "fen"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 938
    nop

    .end local v6    # "jo":Lorg/json/JSONObject;
    goto :goto_3

    .line 936
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v17    # "RC4KEY":Ljava/lang/String;
    .end local v20    # "AESIV":Ljava/lang/String;
    .restart local v2    # "RC4KEY":Ljava/lang/String;
    .restart local v3    # "AESIV":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    move-object/from16 v7, p1

    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v20, v3

    .line 937
    .end local v2    # "RC4KEY":Ljava/lang/String;
    .end local v3    # "AESIV":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "AESIV":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 939
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public CheckUpdateResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .line 1279
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1280
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1281
    .local v1, "code":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v2, "jot":Lorg/json/JSONObject;
    const-string v3, "app_bb"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1283
    .local v3, "app_bb":Ljava/lang/Double;
    const-string v4, "app_nshow"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->app_nshow:Ljava/lang/String;

    .line 1284
    const-string v4, "app_nurl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->app_nurl:Ljava/lang/String;

    .line 1285
    const-string v4, "compel"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->compel:I

    .line 1288
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    .local v4, "value":D
    const-string v6, "200"

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v9, v4, v7

    if-gez v9, :cond_0

    .line 1292
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->app_nshow:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1293
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1308
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->f:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1309
    .local v7, "exten":Lorg/json/JSONObject;
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->u:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_name:Ljava/lang/String;

    .line 1310
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->ev:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_update:Ljava/lang/String;

    .line 1311
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->sr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_zip_md5:Ljava/lang/String;

    .line 1312
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->kw:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_download_url:Ljava/lang/String;

    .line 1314
    if-eqz p1, :cond_1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_update:Ljava/lang/String;

    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1315
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_download_url:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1316
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_zip_md5:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/files/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity;->player_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/shenma/tvlauncher/utils/Utils;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1317
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1323
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "jot":Lorg/json/JSONObject;
    .end local v3    # "app_bb":Ljava/lang/Double;
    .end local v4    # "value":D
    .end local v7    # "exten":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1324
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public LoginResponse(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .line 2439
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2440
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2441
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2442
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2445
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2446
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 2447
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 2448
    const-string v6, "200"

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->PWD:Ljava/lang/String;

    .line 2449
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->En:Ljava/lang/String;

    const-string v7, "LIVE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2450
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2451
    .local v6, "mIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v8, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2452
    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2453
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 2454
    return-void

    .line 2456
    .end local v6    # "mIntent":Landroid/content/Intent;
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2457
    .local v6, "pBundle":Landroid/os/Bundle;
    const-string v7, "TYPE"

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->En:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    const-string v7, "TYPENAME"

    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->Name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    const-class v7, Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {p0, v7, v6}, Lcom/shenma/tvlauncher/HomeActivity;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 2460
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 2461
    .end local v6    # "pBundle":Landroid/os/Bundle;
    goto :goto_0

    .line 2462
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->PWD:Ljava/lang/String;

    .line 2463
    const v6, 0x7f0e0119

    const v7, 0x7f07013e

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2468
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    :goto_0
    goto :goto_1

    .line 2466
    :catch_0
    move-exception v4

    .line 2467
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 2469
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public MacResponse(Ljava/lang/String;)V
    .locals 21
    .param p1, "response"    # Ljava/lang/String;

    .line 1118
    move-object/from16 v1, p0

    const-string v0, "Exit"

    const-string v2, "code"

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1119
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1120
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1121
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1123
    .local v4, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v7, "jo":Lorg/json/JSONObject;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v10, 0xc8

    const-string v11, "ckinfo"

    const-string v12, "passWord"

    const-string/jumbo v13, "userName"

    const-string/jumbo v14, "vip"

    if-ne v9, v10, :cond_3

    .line 1126
    :try_start_2
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v1, v2, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1127
    .local v2, "miType":I
    const/4 v10, 0x0

    .line 1128
    .local v10, "msg":Ljava/lang/String;
    const-string v15, "msg"

    if-ne v2, v9, :cond_0

    .line 1129
    :try_start_3
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    goto :goto_0

    .line 1148
    .end local v2    # "miType":I
    .end local v7    # "jo":Lorg/json/JSONObject;
    .end local v10    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v20, v3

    goto/16 :goto_2

    .line 1130
    .restart local v2    # "miType":I
    .restart local v7    # "jo":Lorg/json/JSONObject;
    .restart local v10    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    if-ne v2, v9, :cond_1

    .line 1131
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    goto :goto_0

    .line 1132
    :cond_1
    const/4 v9, 0x3

    if-ne v2, v9, :cond_2

    .line 1133
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v4}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v10, v9

    .line 1135
    :cond_2
    :goto_0
    :try_start_4
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v9, "jot":Lorg/json/JSONObject;
    new-instance v15, Lorg/json/JSONObject;

    move/from16 v16, v2

    .end local v2    # "miType":I
    .local v16, "miType":I
    const-string v2, "info"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v15

    .line 1137
    .local v2, "job":Lorg/json/JSONObject;
    const-string v15, "token"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1138
    .local v15, "ck":Ljava/lang/String;
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1139
    .local v18, "vip":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v19, v17

    .line 1140
    .local v19, "Exit":I
    move-object/from16 v17, v2

    .end local v2    # "job":Lorg/json/JSONObject;
    .local v17, "job":Lorg/json/JSONObject;
    iget-object v2, v1, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v20, v3

    const/4 v3, 0x2

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .local v20, "RC4KEY":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1141
    iget-object v2, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    invoke-interface {v2, v13, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-interface {v2, v12, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v3, v18

    .end local v18    # "vip":Ljava/lang/String;
    .local v3, "vip":Ljava/lang/String;
    invoke-interface {v2, v14, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move/from16 v11, v19

    .end local v19    # "Exit":I
    .local v11, "Exit":I
    invoke-interface {v2, v0, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1142
    return-void

    .line 1143
    .end local v9    # "jot":Lorg/json/JSONObject;
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "Exit":I
    .end local v15    # "ck":Ljava/lang/String;
    .end local v16    # "miType":I
    .end local v17    # "job":Lorg/json/JSONObject;
    .end local v20    # "RC4KEY":Ljava/lang/String;
    .local v3, "RC4KEY":Ljava/lang/String;
    :cond_3
    move-object/from16 v20, v3

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "RC4KEY":Ljava/lang/String;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x7a

    if-ne v0, v2, :cond_4

    .line 1145
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/HomeActivity;->AutoMacRegister()V

    .line 1147
    :cond_4
    iget-object v0, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v13, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "fen"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1150
    nop

    .end local v7    # "jo":Lorg/json/JSONObject;
    goto :goto_3

    .line 1148
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v20    # "RC4KEY":Ljava/lang/String;
    .restart local v3    # "RC4KEY":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v8, p1

    :goto_1
    move-object/from16 v20, v3

    .line 1149
    .end local v3    # "RC4KEY":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "RC4KEY":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1151
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public MarkcodeResponse(Ljava/lang/String;)V
    .locals 21
    .param p1, "response"    # Ljava/lang/String;

    .line 977
    move-object/from16 v1, p0

    const-string v0, "Exit"

    const-string v2, "code"

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 978
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 979
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 980
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 982
    .local v4, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 984
    .local v7, "jo":Lorg/json/JSONObject;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v10, 0xc8

    const-string v11, "ckinfo"

    const-string v12, "passWord"

    const-string/jumbo v13, "userName"

    const-string/jumbo v14, "vip"

    if-ne v9, v10, :cond_3

    .line 985
    :try_start_2
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v1, v2, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 986
    .local v2, "miType":I
    const/4 v10, 0x0

    .line 987
    .local v10, "msg":Ljava/lang/String;
    const-string v15, "msg"

    if-ne v2, v9, :cond_0

    .line 988
    :try_start_3
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    goto :goto_0

    .line 1007
    .end local v2    # "miType":I
    .end local v7    # "jo":Lorg/json/JSONObject;
    .end local v10    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v20, v3

    goto/16 :goto_2

    .line 989
    .restart local v2    # "miType":I
    .restart local v7    # "jo":Lorg/json/JSONObject;
    .restart local v10    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    if-ne v2, v9, :cond_1

    .line 990
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    goto :goto_0

    .line 991
    :cond_1
    const/4 v9, 0x3

    if-ne v2, v9, :cond_2

    .line 992
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v4}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v10, v9

    .line 994
    :cond_2
    :goto_0
    :try_start_4
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 995
    .local v9, "jot":Lorg/json/JSONObject;
    new-instance v15, Lorg/json/JSONObject;

    move/from16 v16, v2

    .end local v2    # "miType":I
    .local v16, "miType":I
    const-string v2, "info"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v15

    .line 996
    .local v2, "job":Lorg/json/JSONObject;
    const-string v15, "token"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 997
    .local v15, "ck":Ljava/lang/String;
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 998
    .local v18, "vip":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v19, v17

    .line 999
    .local v19, "Exit":I
    move-object/from16 v17, v2

    .end local v2    # "job":Lorg/json/JSONObject;
    .local v17, "job":Lorg/json/JSONObject;
    iget-object v2, v1, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v20, v3

    const/4 v3, 0x2

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .local v20, "RC4KEY":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1000
    iget-object v2, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    invoke-interface {v2, v13, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, v1, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    invoke-interface {v2, v12, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v3, v18

    .end local v18    # "vip":Ljava/lang/String;
    .local v3, "vip":Ljava/lang/String;
    invoke-interface {v2, v14, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move/from16 v11, v19

    .end local v19    # "Exit":I
    .local v11, "Exit":I
    invoke-interface {v2, v0, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1001
    return-void

    .line 1002
    .end local v9    # "jot":Lorg/json/JSONObject;
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "Exit":I
    .end local v15    # "ck":Ljava/lang/String;
    .end local v16    # "miType":I
    .end local v17    # "job":Lorg/json/JSONObject;
    .end local v20    # "RC4KEY":Ljava/lang/String;
    .local v3, "RC4KEY":Ljava/lang/String;
    :cond_3
    move-object/from16 v20, v3

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .restart local v20    # "RC4KEY":Ljava/lang/String;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x7a

    if-ne v0, v2, :cond_4

    .line 1004
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/HomeActivity;->AutoRegister()V

    .line 1006
    :cond_4
    iget-object v0, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v13, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "fen"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1009
    nop

    .end local v7    # "jo":Lorg/json/JSONObject;
    goto :goto_3

    .line 1007
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v20    # "RC4KEY":Ljava/lang/String;
    .restart local v3    # "RC4KEY":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v8, p1

    :goto_1
    move-object/from16 v20, v3

    .line 1008
    .end local v3    # "RC4KEY":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "RC4KEY":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1010
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public NoticeResponse(Ljava/lang/String;)V
    .locals 14
    .param p1, "response"    # Ljava/lang/String;

    .line 2151
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2152
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2153
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2154
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2157
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2158
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 2159
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 2160
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2161
    .local v6, "msg":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 2162
    .local v7, "miType":I
    const/4 v9, 0x0

    .line 2163
    .local v9, "jSON":Lorg/json/JSONObject;
    if-ne v7, v8, :cond_0

    .line 2164
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    goto :goto_0

    .line 2165
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 2166
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    goto :goto_0

    .line 2167
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 2168
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    .line 2170
    :cond_2
    :goto_0
    const-string/jumbo v8, "url"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2171
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 2172
    invoke-virtual {p0, v8}, Lcom/shenma/tvlauncher/HomeActivity;->returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 2173
    iget-object v10, p0, Lcom/shenma/tvlauncher/HomeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    const-wide/16 v12, 0xbb8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2179
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "miType":I
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "jSON":Lorg/json/JSONObject;
    :cond_3
    goto :goto_1

    .line 2177
    :catch_0
    move-exception v4

    .line 2178
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2180
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public RegisterMacResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .line 1211
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1212
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1213
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 1214
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :cond_0
    goto :goto_0

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1220
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public RequestError(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 2474
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    .line 2477
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 2480
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    .line 2483
    instance-of v0, p1, Lcom/android/volley/ServerError;

    .line 2487
    return-void
.end method

.method public RequestResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .line 461
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 468
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 469
    .local v5, "code":I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 470
    .local v6, "msg":Ljava/lang/String;
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 471
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGaoRoot:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 472
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .local v7, "miType":I
    const-string v9, "UTF-8"

    if-ne v7, v8, :cond_0

    .line 474
    :try_start_1
    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 475
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 476
    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 477
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 478
    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setMarqueeRepeatLimit(I)V

    .line 481
    iget-object v8, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->startScroll()V

    .line 482
    .end local v7    # "miType":I
    goto :goto_1

    .line 483
    :cond_3
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGaoRoot:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 486
    :catch_0
    move-exception v4

    .line 487
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public Response(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .line 1070
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1072
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 1073
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->password:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/shenma/tvlauncher/HomeActivity;->requestlogin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :cond_0
    goto :goto_0

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1079
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method protected findViewById()V
    .locals 10

    .line 1332
    const v0, 0x7f0801c6

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->rl_bg:Landroid/widget/RelativeLayout;

    .line 1333
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    const v1, 0x7f070011

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1334
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1336
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1338
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rl_bg:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1339
    const v1, 0x7f0800b8

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->fl_main:Landroid/widget/FrameLayout;

    .line 1340
    const v1, 0x7f080293

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_time:Landroid/widget/TextView;

    .line 1341
    const v1, 0x7f08020e

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->time_colon:Landroid/widget/TextView;

    .line 1342
    const v1, 0x7f0800fb

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_net_state:Landroid/widget/ImageView;

    .line 1343
    const v1, 0x7f080109

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_titile:Landroid/widget/ImageView;

    .line 1344
    const v1, 0x7f080164

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroid/support/v4/view/ViewPager;

    .line 1345
    const v1, 0x7f080210

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    .line 1346
    const v1, 0x7f08019a

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rb_recommend:Landroid/widget/RadioButton;

    .line 1347
    const v1, 0x7f08018e

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rb_Internet:Landroid/widget/RadioButton;

    .line 1348
    const v1, 0x7f0801a8

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rb_video_type:Landroid/widget/RadioButton;

    .line 1349
    const v1, 0x7f08019b

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rb_settings:Landroid/widget/RadioButton;

    .line 1350
    const v1, 0x7f0801bb

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->rg_video_type_bottom:Landroid/widget/RadioGroup;

    .line 1351
    const v1, 0x7f080292

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_main_date:Landroid/widget/TextView;

    .line 1352
    const v1, 0x7f08012d

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->ll_rb:Landroid/widget/LinearLayout;

    .line 1353
    const v1, 0x7f0802b4

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->tv_update_msg:Landroid/widget/TextView;

    .line 1354
    const v1, 0x7f0800cb

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGao:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    .line 1355
    const v1, 0x7f0800cc

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->gongGaoRoot:Landroid/widget/LinearLayout;

    .line 1356
    const v1, 0x7f080133

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->logo:Landroid/widget/ImageView;

    .line 1357
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "Interface_Style"

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1358
    .local v1, "Interface_Style":I
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-ne v1, v3, :cond_1

    goto/16 :goto_0

    .line 1361
    :cond_1
    if-ne v1, v5, :cond_2

    .line 1363
    const v6, 0x7f0800de

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_search:Landroid/widget/ImageView;

    .line 1364
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_search:Landroid/widget/ImageView;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$27;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$27;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1379
    const v6, 0x7f0800dc

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_record:Landroid/widget/ImageView;

    .line 1380
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_record:Landroid/widget/ImageView;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$28;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$28;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1394
    :cond_2
    if-ne v1, v4, :cond_3

    .line 1396
    const v6, 0x7f0800df

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_searchs:Landroid/widget/LinearLayout;

    .line 1397
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_searchs:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$29;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$29;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1412
    const v6, 0x7f0800dd

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_records:Landroid/widget/LinearLayout;

    .line 1413
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_top_records:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$30;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$30;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1427
    const v6, 0x7f0800e0

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_user:Landroid/widget/LinearLayout;

    .line 1428
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_user:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$31;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$31;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1436
    const v6, 0x7f0800da

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_collect:Landroid/widget/LinearLayout;

    .line 1437
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_collect:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$32;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$32;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1445
    const v6, 0x7f0800db

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_play_set:Landroid/widget/LinearLayout;

    .line 1446
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_play_set:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$33;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$33;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1454
    const v6, 0x7f0800d9

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_clear:Landroid/widget/LinearLayout;

    .line 1455
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_clear:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$34;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$34;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1463
    const v6, 0x7f0800e1

    invoke-virtual {p0, v6}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_wallpaper:Landroid/widget/LinearLayout;

    .line 1464
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->home_wallpaper:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$35;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/HomeActivity$35;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1473
    :cond_3
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    .line 1474
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1476
    .local v6, "args":Landroid/os/Bundle;
    const-string v7, "Topic"

    const-string v8, "num"

    if-eqz v1, :cond_9

    if-ne v1, v3, :cond_4

    goto/16 :goto_2

    .line 1504
    :cond_4
    if-ne v1, v5, :cond_6

    .line 1526
    invoke-static {p0, v7, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 1527
    .local v3, "Topic":I
    if-nez v3, :cond_5

    .line 1529
    new-instance v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 1530
    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1531
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1532
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1535
    :cond_5
    new-instance v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 1536
    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1537
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1538
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1539
    new-instance v4, Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/TopicFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    .line 1540
    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1541
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1542
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1545
    .end local v3    # "Topic":I
    :cond_6
    if-ne v1, v4, :cond_8

    .line 1547
    invoke-static {p0, v7, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 1548
    .restart local v3    # "Topic":I
    if-nez v3, :cond_7

    .line 1550
    new-instance v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 1551
    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1552
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1553
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1556
    :cond_7
    new-instance v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 1557
    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1558
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1559
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    new-instance v4, Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/TopicFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    .line 1561
    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1562
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1563
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1545
    .end local v3    # "Topic":I
    :cond_8
    :goto_1
    goto :goto_4

    .line 1478
    :cond_9
    :goto_2
    invoke-static {p0, v7, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 1479
    .restart local v3    # "Topic":I
    if-nez v3, :cond_a

    .line 1481
    new-instance v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 1482
    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1483
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1484
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    new-instance v4, Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/fragment/SettingFragment;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    .line 1486
    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1487
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1488
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1491
    :cond_a
    new-instance v7, Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {v7}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;-><init>()V

    iput-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 1492
    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1493
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v7, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1494
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity;->rf:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1495
    new-instance v7, Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-direct {v7}, Lcom/shenma/tvlauncher/fragment/TopicFragment;-><init>()V

    iput-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    .line 1496
    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1497
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-virtual {v7, v6}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1498
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v9, p0, Lcom/shenma/tvlauncher/HomeActivity;->mf:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    new-instance v7, Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-direct {v7}, Lcom/shenma/tvlauncher/fragment/SettingFragment;-><init>()V

    iput-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    .line 1500
    invoke-virtual {v6, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1501
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1502
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->sf:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    .end local v3    # "Topic":I
    :goto_3
    nop

    .line 1568
    :goto_4
    new-instance v3, Lcom/shenma/tvlauncher/adapter/FragAdapter;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->fragments:Ljava/util/List;

    invoke-direct {v3, v4, v7}, Lcom/shenma/tvlauncher/adapter/FragAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->adapter:Lcom/shenma/tvlauncher/adapter/FragAdapter;

    .line 1570
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->adapter:Lcom/shenma/tvlauncher/adapter/FragAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1571
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1572
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/shenma/tvlauncher/ui/DepthPageTransformer;

    invoke-direct {v3}, Lcom/shenma/tvlauncher/ui/DepthPageTransformer;-><init>()V

    invoke-virtual {v2, v5, v3}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 1574
    sget-object v2, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1576
    :try_start_0
    const-class v2, Landroid/support/v4/view/ViewPager;

    const-string v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1577
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1578
    new-instance v3, Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroid/support/v4/view/ViewPager;

    .line 1579
    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 1580
    .local v3, "scroller":Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1581
    const/16 v4, 0x2bc

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;->setmDuration(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "scroller":Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;
    goto :goto_5

    .line 1583
    :catch_0
    move-exception v2

    .line 1587
    :cond_b
    :goto_5
    return-void
.end method

.method public flyWhiteBorder(IIFF)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "paramFloat1"    # F
    .param p4, "paramFloat2"    # F

    .line 2357
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2358
    return-void

    .line 2359
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 2360
    .local v0, "mWidth":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 2361
    .local v1, "mheight":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 2362
    .local v2, "localViewPropertyAnimator":Landroid/view/ViewPropertyAnimator;
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2363
    int-to-float v3, p1

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 2364
    int-to-float v3, p2

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 2365
    invoke-virtual {v2, p3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 2366
    invoke-virtual {v2, p4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 2367
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2368
    return-void
.end method

.method protected initView()V
    .locals 4

    .line 660
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->loadViewLayout()V

    .line 661
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById()V

    .line 662
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->setListener()V

    .line 665
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->rb_recommend:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 668
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->registerNetworkReceiver()V

    .line 669
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->registerPackageReceiver()V

    .line 670
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->registerWallpaperReceiver()V

    .line 671
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->homeHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 672
    return-void
.end method

.method public initwhiteBorder()V
    .locals 4

    .line 1596
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    .line 1597
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->fl_main:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1600
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-string v1, "Interface_Style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1601
    .local v0, "Interface_Style":I
    if-nez v0, :cond_0

    goto :goto_0

    .line 1604
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1606
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 1608
    :cond_2
    nop

    .line 1612
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x80

    const/16 v3, 0x82

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1613
    .local v1, "layoutparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x2a

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1614
    const/16 v2, 0xb7

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1615
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1616
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1620
    return-void
.end method

.method protected installApk(Ljava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/lang/String;

    .line 680
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, "updateFile":Ljava/io/File;
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "chmod"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "604"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 683
    .local v1, "args2":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    nop

    .end local v1    # "args2":[Ljava/lang/String;
    goto :goto_0

    .line 684
    :catch_0
    move-exception v1

    .line 685
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 687
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 689
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 691
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 1328
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 400
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onAttachedToWindow()V

    .line 401
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->rl_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->AttachedToWindow()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 402
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 598
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onBackPressed()V

    .line 599
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 293
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 294
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Interface_Style"

    invoke-static {v0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 295
    .local v0, "Interface_Style":I
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v0, :cond_2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    if-ne v0, v3, :cond_1

    .line 307
    const v3, 0x7f0a0004

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/HomeActivity;->setContentView(I)V

    goto :goto_2

    .line 308
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 310
    const v3, 0x7f0a0005

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/HomeActivity;->setContentView(I)V

    goto :goto_2

    .line 297
    :cond_2
    :goto_0
    const-string v3, "Topic"

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 298
    .local v3, "Topic":I
    if-nez v3, :cond_3

    .line 300
    const v5, 0x7f0a0002

    invoke-virtual {p0, v5}, Lcom/shenma/tvlauncher/HomeActivity;->setContentView(I)V

    goto :goto_1

    .line 303
    :cond_3
    const v5, 0x7f0a0003

    invoke-virtual {p0, v5}, Lcom/shenma/tvlauncher/HomeActivity;->setContentView(I)V

    .line 305
    .end local v3    # "Topic":I
    :goto_1
    nop

    .line 314
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/application/MyApplication;

    .line 315
    .local v3, "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    invoke-virtual {v3}, Lcom/shenma/tvlauncher/application/MyApplication;->getTechnology()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->technology:Ljava/lang/String;

    .line 316
    invoke-static {}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->getInstance()Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    move-result-object v5

    iput-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    .line 317
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->from:Ljava/lang/String;

    sput-object v5, Lcom/shenma/tvlauncher/HomeActivity;->homeFrom:Ljava/lang/String;

    .line 318
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->params:Ljava/lang/String;

    sput-object v5, Lcom/shenma/tvlauncher/HomeActivity;->homeParams:Ljava/lang/String;

    .line 320
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->technology:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "MOBILE"

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    const-string v10, "TV"

    if-eqz v5, :cond_6

    .line 321
    iget-wide v11, p0, Lcom/shenma/tvlauncher/HomeActivity;->screenSize:D

    cmpl-double v5, v11, v8

    if-lez v5, :cond_5

    .line 322
    sput-object v4, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    .line 323
    iput-object v10, p0, Lcom/shenma/tvlauncher/HomeActivity;->devicetype:Ljava/lang/String;

    goto :goto_3

    .line 325
    :cond_5
    sput-object v2, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    .line 326
    iput-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->devicetype:Ljava/lang/String;

    goto :goto_3

    .line 329
    :cond_6
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity;->technology:Ljava/lang/String;

    if-eqz v5, :cond_8

    const-string v11, "null"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 330
    iget-wide v11, p0, Lcom/shenma/tvlauncher/HomeActivity;->screenSize:D

    cmpl-double v5, v11, v8

    if-lez v5, :cond_7

    .line 331
    sput-object v4, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    .line 332
    iput-object v10, p0, Lcom/shenma/tvlauncher/HomeActivity;->devicetype:Ljava/lang/String;

    goto :goto_3

    .line 334
    :cond_7
    sput-object v2, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    .line 335
    iput-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->devicetype:Ljava/lang/String;

    goto :goto_3

    .line 338
    :cond_8
    sput-object v4, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    .line 339
    iput-object v10, p0, Lcom/shenma/tvlauncher/HomeActivity;->devicetype:Ljava/lang/String;

    .line 342
    :goto_3
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 343
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "category"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->category:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->initView()V

    .line 345
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->initData()V

    .line 346
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HomeActivity;->runTime()V

    .line 348
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->initwhiteBorder()V

    .line 351
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 353
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/ComponentName;

    const-string v7, "com.shenma.tvlauncher.view.MyServices"

    invoke-direct {v5, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    .local v5, "myServicesComponent":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v4, v5, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 356
    .local v7, "myServicesInfo":Landroid/content/pm/ServiceInfo;
    iget-boolean v8, v7, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v8, :cond_b

    .line 363
    .end local v7    # "myServicesInfo":Landroid/content/pm/ServiceInfo;
    nop

    .line 365
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.shenma.tvlauncher.view.MyService"

    invoke-direct {v7, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 367
    .local v7, "myServiceComponent":Landroid/content/ComponentName;
    :try_start_1
    invoke-virtual {v4, v7, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    .line 368
    .local v8, "myServiceInfo":Landroid/content/pm/ServiceInfo;
    iget-boolean v9, v8, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_a

    .line 375
    .end local v8    # "myServiceInfo":Landroid/content/pm/ServiceInfo;
    nop

    .line 377
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.shenma.tvlauncher.view.JSONService"

    invoke-direct {v8, p0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    .local v8, "jsonServiceComponent":Landroid/content/ComponentName;
    :try_start_2
    invoke-virtual {v4, v8, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 380
    .local v1, "jsonServiceInfo":Landroid/content/pm/ServiceInfo;
    iget-boolean v9, v1, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v9, :cond_9

    .line 387
    .end local v1    # "jsonServiceInfo":Landroid/content/pm/ServiceInfo;
    nop

    .line 388
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/shenma/tvlauncher/HomeActivity;->lib:Ljava/lang/String;

    .line 389
    return-void

    .line 382
    .restart local v1    # "jsonServiceInfo":Landroid/content/pm/ServiceInfo;
    :cond_9
    :try_start_3
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "Interface_Style":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "myServicesComponent":Landroid/content/ComponentName;
    .end local v7    # "myServiceComponent":Landroid/content/ComponentName;
    .end local v8    # "jsonServiceComponent":Landroid/content/ComponentName;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v9
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 384
    .end local v1    # "jsonServiceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v0    # "Interface_Style":I
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "myServicesComponent":Landroid/content/ComponentName;
    .restart local v7    # "myServiceComponent":Landroid/content/ComponentName;
    .restart local v8    # "jsonServiceComponent":Landroid/content/ComponentName;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 370
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v8, "myServiceInfo":Landroid/content/pm/ServiceInfo;
    :cond_a
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "Interface_Style":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "myServicesComponent":Landroid/content/ComponentName;
    .end local v7    # "myServiceComponent":Landroid/content/ComponentName;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v1
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 372
    .end local v8    # "myServiceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v0    # "Interface_Style":I
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "myServicesComponent":Landroid/content/ComponentName;
    .restart local v7    # "myServiceComponent":Landroid/content/ComponentName;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catch_1
    move-exception v1

    .line 374
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 358
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v7, "myServicesInfo":Landroid/content/pm/ServiceInfo;
    :cond_b
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "Interface_Style":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "myServicesComponent":Landroid/content/ComponentName;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 360
    .end local v7    # "myServicesInfo":Landroid/content/pm/ServiceInfo;
    .restart local v0    # "Interface_Style":I
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "mApp":Lcom/shenma/tvlauncher/application/MyApplication;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "myServicesComponent":Landroid/content/ComponentName;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catch_2
    move-exception v1

    .line 362
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected onDestroy()V
    .locals 1

    .line 616
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 617
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 619
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 620
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mWallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 621
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 625
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 629
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 654
    invoke-super {p0, p1, p2}, Lcom/shenma/tvlauncher/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 631
    :cond_0
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 632
    .local v1, "value":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0e0084

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "bt":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->noticeState:Z

    if-eqz v4, :cond_3

    .line 634
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 635
    const v4, 0x7f08014d

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 636
    .local v4, "viewById":Landroid/view/View;
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->noticeState:Z

    .end local v4    # "viewById":Landroid/view/View;
    goto :goto_0

    .line 638
    :cond_1
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->isRunning:Z

    if-eqz v0, :cond_2

    .line 639
    invoke-virtual {p0, v3, p0}, Lcom/shenma/tvlauncher/HomeActivity;->showExitDialog(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 638
    :cond_2
    :goto_0
    goto :goto_1

    .line 645
    :cond_3
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->isRunning:Z

    if-eqz v0, :cond_4

    .line 646
    invoke-virtual {p0, v3, p0}, Lcom/shenma/tvlauncher/HomeActivity;->showExitDialog(Ljava/lang/String;Landroid/content/Context;)V

    .line 652
    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 1

    .line 589
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 590
    const-string v0, "HomeActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 591
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 593
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 517
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 519
    const-string v0, "titile_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shenma/tvlauncher/HomeActivity;->titile_position:I

    .line 520
    const-string v0, "fromXDelta"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 521
    .local v0, "toX":F
    sget v1, Lcom/shenma/tvlauncher/HomeActivity;->titile_position:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 522
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 523
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 525
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0, v1, v3}, Lcom/shenma/tvlauncher/HomeActivity;->initAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/TranslateAnimation;)V

    .line 526
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->iv_titile:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 527
    iput v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 531
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->fl_main:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 533
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    .line 536
    :cond_1
    const-string/jumbo v1, "wWidth"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 537
    .local v1, "wWidth":I
    const-string/jumbo v3, "wHeight"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 538
    .local v3, "wHeight":I
    const-string/jumbo v4, "wX"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 539
    .local v4, "wX":F
    const-string/jumbo v5, "wY"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    .line 540
    .local v5, "wY":F
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    .line 541
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->fl_main:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 542
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const/4 v7, 0x0

    const-string v8, "Interface_Style"

    invoke-static {v6, v8, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 543
    .local v6, "Interface_Style":I
    if-nez v6, :cond_2

    goto :goto_0

    .line 546
    :cond_2
    if-ne v6, v2, :cond_3

    goto :goto_0

    .line 549
    :cond_3
    const/4 v2, 0x2

    if-ne v6, v2, :cond_4

    goto :goto_0

    .line 552
    :cond_4
    nop

    .line 556
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 557
    .local v2, "layoutparams":Landroid/widget/FrameLayout$LayoutParams;
    float-to-int v7, v4

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 558
    float-to-int v7, v5

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 559
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 604
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 605
    const-string v0, "HomeActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 606
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 608
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HomeActivity;->queryInstalledApp()V

    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->isRunning:Z

    .line 611
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 495
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 496
    sget v0, Lcom/shenma/tvlauncher/HomeActivity;->titile_position:I

    const-string v1, "titile_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    iget v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    const-string v1, "fromXDelta"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 498
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 500
    .local v0, "wWidth":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 501
    .local v1, "wHeight":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    .line 502
    .local v2, "wX":F
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getY()F

    move-result v3

    .line 503
    .local v3, "wY":F
    const-string/jumbo v4, "wWidth"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    const-string/jumbo v4, "wX"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 505
    const-string/jumbo v4, "wHeight"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    const-string/jumbo v4, "wY"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 511
    .end local v0    # "wWidth":I
    .end local v1    # "wHeight":I
    .end local v2    # "wX":F
    .end local v3    # "wY":F
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 571
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 574
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 579
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 580
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 584
    :cond_0
    return-void
.end method

.method public queryInstalledApp()V
    .locals 2

    .line 2279
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity$53;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/HomeActivity$53;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2284
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2285
    return-void
.end method

.method public returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 2203
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity$49;

    invoke-direct {v1, p0, p1}, Lcom/shenma/tvlauncher/HomeActivity$49;-><init>(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2225
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2226
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected setListener()V
    .locals 18

    .line 1626
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string/jumbo v3, "wallpaperFileName"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1627
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1628
    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->changeBackImage(Ljava/lang/String;)V

    .line 1631
    :cond_0
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iput v3, v0, Lcom/shenma/tvlauncher/HomeActivity;->fromXDelta:F

    .line 1632
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    .line 1633
    .local v3, "j":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 1634
    move v6, v5

    .line 1635
    .local v6, "index":I
    iget-object v7, v0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v5}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1636
    .local v7, "v":Landroid/view/View;
    new-instance v8, Lcom/shenma/tvlauncher/HomeActivity$36;

    invoke-direct {v8, v0, v6}, Lcom/shenma/tvlauncher/HomeActivity$36;-><init>(Lcom/shenma/tvlauncher/HomeActivity;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1651
    new-instance v8, Lcom/shenma/tvlauncher/HomeActivity$37;

    invoke-direct {v8, v0, v6}, Lcom/shenma/tvlauncher/HomeActivity$37;-><init>(Lcom/shenma/tvlauncher/HomeActivity;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1633
    .end local v6    # "index":I
    .end local v7    # "v":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1666
    .end local v5    # "i":I
    :cond_1
    iget-object v5, v0, Lcom/shenma/tvlauncher/HomeActivity;->category:Ljava/lang/String;

    .line 1667
    .local v5, "json":Ljava/lang/String;
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$38;

    invoke-direct {v7, v0}, Lcom/shenma/tvlauncher/HomeActivity$38;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v7}, Lcom/shenma/tvlauncher/HomeActivity$38;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1668
    .local v6, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .local v7, "ii":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 1669
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 1670
    .local v8, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "type_en"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1671
    .local v9, "typeEn":Ljava/lang/String;
    const-string v10, "type_name"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1672
    .local v10, "typeName":Ljava/lang/String;
    const-string v11, "type_status"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    .line 1673
    .local v11, "typestatus":Ljava/lang/Number;
    const-string v12, "categorypwd"

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v0, Lcom/shenma/tvlauncher/HomeActivity;->categorypwd:Ljava/lang/String;

    .line 1674
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1675
    .local v12, "typeStatus":I
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060165

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1679
    .local v13, "width":I
    iget-object v14, v0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-string v15, "Interface_Style"

    invoke-static {v14, v15, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    .line 1680
    .local v14, "Interface_Style":I
    const/4 v15, 0x0

    .line 1682
    .local v15, "height":I
    const/4 v4, 0x3

    const/4 v2, 0x1

    if-eqz v14, :cond_4

    if-ne v14, v4, :cond_2

    const v2, 0x7f060286

    goto :goto_2

    .line 1684
    :cond_2
    if-ne v14, v2, :cond_3

    .line 1686
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v2, 0x7f060286

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    goto :goto_3

    .line 1687
    :cond_3
    const v2, 0x7f060286

    const/4 v4, 0x2

    if-ne v14, v4, :cond_5

    .line 1688
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    goto :goto_3

    .line 1682
    :cond_4
    const v2, 0x7f060286

    .line 1683
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1691
    :cond_5
    :goto_3
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v2, v13, v15}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 1693
    .local v2, "layoutParams":Landroid/widget/RadioGroup$LayoutParams;
    new-instance v4, Landroid/widget/RadioButton;

    invoke-direct {v4, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1694
    .local v4, "radioButton":Landroid/widget/RadioButton;
    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setId(I)V

    .line 1695
    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1696
    move-object/from16 v16, v1

    .end local v1    # "fileName":Ljava/lang/String;
    .local v16, "fileName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v17, v3

    .end local v3    # "j":I
    .local v17, "j":I
    const v3, 0x7f0601d3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v4, v3, v1}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 1697
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1698
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1699
    const v1, 0x106000d

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 1701
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1702
    const/16 v1, 0x11

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 1703
    const v1, 0x7fffffff

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setMarqueeRepeatLimit(I)V

    .line 1704
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setSingleLine(Z)V

    .line 1707
    if-eqz v14, :cond_9

    const/4 v3, 0x3

    if-ne v14, v3, :cond_6

    goto :goto_5

    .line 1711
    :cond_6
    if-ne v14, v1, :cond_7

    .line 1713
    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700a3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1714
    .local v1, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_4

    .line 1715
    :cond_7
    const/4 v1, 0x2

    if-ne v14, v1, :cond_8

    .line 1717
    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700a2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1718
    .restart local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 1715
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    :goto_4
    goto :goto_6

    .line 1709
    :cond_9
    :goto_5
    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070025

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1710
    .restart local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1711
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    nop

    .line 1720
    :goto_6
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 1728
    new-instance v1, Lcom/shenma/tvlauncher/HomeActivity$39;

    invoke-direct {v1, v0, v9, v10, v12}, Lcom/shenma/tvlauncher/HomeActivity$39;-><init>(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1833
    iget-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity;->rg_video_type_bottom:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1668
    .end local v2    # "layoutParams":Landroid/widget/RadioGroup$LayoutParams;
    .end local v4    # "radioButton":Landroid/widget/RadioButton;
    .end local v8    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "typeEn":Ljava/lang/String;
    .end local v10    # "typeName":Ljava/lang/String;
    .end local v11    # "typestatus":Ljava/lang/Number;
    .end local v12    # "typeStatus":I
    .end local v13    # "width":I
    .end local v14    # "Interface_Style":I
    .end local v15    # "height":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v16

    move/from16 v3, v17

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_1

    .end local v16    # "fileName":Ljava/lang/String;
    .end local v17    # "j":I
    .local v1, "fileName":Ljava/lang/String;
    .restart local v3    # "j":I
    :cond_a
    move-object/from16 v16, v1

    move/from16 v17, v3

    .line 1835
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v7    # "ii":I
    .restart local v16    # "fileName":Ljava/lang/String;
    .restart local v17    # "j":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 1836
    .local v1, "k":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_b

    .line 1837
    move v3, v2

    .line 1839
    .local v3, "paramInt":I
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity;->rg_video_type_bottom:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    new-instance v7, Lcom/shenma/tvlauncher/HomeActivity$40;

    invoke-direct {v7, v0, v3}, Lcom/shenma/tvlauncher/HomeActivity$40;-><init>(Lcom/shenma/tvlauncher/HomeActivity;I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1836
    .end local v3    # "paramInt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1923
    .end local v2    # "i":I
    :cond_b
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity$41;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity$41;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1931
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity;->title_group:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity$42;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity$42;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1939
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity$43;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity$43;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1949
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity;->vpager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/shenma/tvlauncher/HomeActivity$44;

    invoke-direct {v3, v0}, Lcom/shenma/tvlauncher/HomeActivity$44;-><init>(Lcom/shenma/tvlauncher/HomeActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2033
    return-void
.end method
