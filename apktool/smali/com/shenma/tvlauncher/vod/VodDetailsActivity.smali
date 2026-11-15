.class public Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
.super Landroid/app/Activity;
.source "VodDetailsActivity.java"


# static fields
.field public static Sd:Landroid/content/SharedPreferences;

.field public static Sp:Landroid/content/SharedPreferences;

.field public static now_source:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Api_url:Ljava/lang/String;

.field private BASE_HOST:Ljava/lang/String;

.field public G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation
.end field

.field private Same_source_search:I

.field private final TAG:Ljava/lang/String;

.field private aboutlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private album:Lcom/shenma/tvlauncher/vod/db/Album;

.field private albumPic:Ljava/lang/String;

.field private albums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/db/Album;",
            ">;"
        }
    .end annotation
.end field

.field private b_details_choose:Landroid/widget/Button;

.field private b_details_colection:Landroid/widget/Button;

.field private b_details_favicon:Landroid/widget/Button;

.field private b_details_introduce:Landroid/widget/Button;

.field private b_details_play:Landroid/widget/Button;

.field private b_details_replay:Landroid/widget/Button;

.field private b_details_search:Landroid/widget/Button;

.field private bg_Adapter:Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomGridAdapter;

.field private bl_Adapter:Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;

.field private context:Landroid/content/Context;

.field private dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

.field private details_key_arts:Landroid/widget/LinearLayout;

.field private details_key_grid:Landroid/widget/GridView;

.field private details_key_list:Landroid/widget/ListView;

.field private details_key_list_and_grid:Landroid/widget/ImageView;

.field private details_key_lists:Landroid/widget/GridView;

.field private details_recommend:Landroid/widget/LinearLayout;

.field private details_video_introduce:Landroid/widget/LinearLayout;

.field private domain:Ljava/lang/String;

.field private gv_lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gv_postion:I

.field private gv_recommend_grid:Landroid/widget/GridView;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private iv_details_poster:Landroid/widget/ImageView;

.field public j0:I

.field public lv_lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mediaHandler:Landroid/os/Handler;

.field private nextlink:Ljava/lang/String;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private rbHeigth:I

.field private rbWidth:I

.field private remember_source:I

.field private rg_video_details_resources:Landroid/widget/RadioGroup;

.field private sourceId:Ljava/lang/String;

.field protected sp:Landroid/content/SharedPreferences;

.field private top_type:Ljava/lang/String;

.field private trystate:I

.field private tv_details_actors:Landroid/widget/TextView;

.field private tv_details_area:Landroid/widget/TextView;

.field private tv_details_director:Landroid/widget/TextView;

.field private tv_details_name:Landroid/widget/TextView;

.field private tv_details_playTimes:Landroid/widget/TextView;

.field private tv_details_rate:Landroid/widget/TextView;

.field private tv_details_type:Landroid/widget/TextView;

.field private tv_details_video_introduce:Landroid/widget/TextView;

.field private tv_details_year:Landroid/widget/TextView;

.field private videoId:Ljava/lang/String;

.field private vipstate:I

.field private vodDetailsAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

.field private vodname:Ljava/lang/String;

.field private vodstate:Ljava/lang/String;

.field private vodtype:Ljava/lang/String;

.field private xuanjinumber:I

.field private xuanjitype:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 104
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    const-string v0, "VodDetailsActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->TAG:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodtype:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodstate:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    .line 135
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sourceId:Ljava/lang/String;

    .line 136
    const/4 v1, 0x0

    iput v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_postion:I

    .line 137
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->aboutlist:Ljava/util/ArrayList;

    .line 141
    const/16 v0, 0x5a

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rbWidth:I

    .line 142
    const/16 v0, 0x24

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rbHeigth:I

    .line 147
    const-string v0, "Trystate"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->trystate:I

    .line 148
    const-string/jumbo v0, "xuanjitype"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjitype:I

    .line 149
    const-string/jumbo v0, "xuanjinumber"

    const/16 v2, 0x14

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjinumber:I

    .line 150
    const-string v0, "remember_source"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->remember_source:I

    .line 151
    const-string v0, "Same_source_search"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Same_source_search:I

    .line 152
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    .line 191
    const-string v0, ""

    const-string v1, "Api_url"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Api_url:Ljava/lang/String;

    .line 192
    const-string v1, "BASE_HOST"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->BASE_HOST:Ljava/lang/String;

    return-void
.end method

.method private GetMotion(I)V
    .locals 19
    .param p1, "position"    # I

    .line 1165
    move-object/from16 v13, p0

    const-string/jumbo v14, "vip"

    const-string v15, ""

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 1168
    .local v6, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v14, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x1

    cmp-long v7, v0, v4

    if-ltz v7, :cond_1

    :try_start_1
    iget-object v0, v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v14, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "999999999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1171
    :cond_0
    const/4 v0, 0x0

    iput v0, v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vipstate:I
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1223
    :catch_0
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_3

    .line 1169
    :cond_1
    :goto_1
    :try_start_2
    iput v2, v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vipstate:I

    .line 1173
    :goto_2
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v13, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1174
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-static {v13, v0, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, "User_url":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1176
    .local v8, "RC4KEY":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1177
    .local v9, "RSAKEY":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1178
    .local v10, "AESKEY":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1179
    .local v11, "AESIV":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1180
    .local v12, "Appkey":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v13, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 1181
    .local v7, "miType":I
    new-instance v16, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$18;

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/api.php?app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&act=motion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$16;

    move/from16 v2, p1

    invoke-direct {v5, v13, v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$16;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$17;

    invoke-direct {v1, v13}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$17;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v18, v6

    .end local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .local v18, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v6, v17

    :try_start_3
    invoke-direct/range {v1 .. v12}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$18;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 1221
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1222
    return-void

    .line 1223
    .end local v0    # "User_url":Ljava/lang/String;
    .end local v1    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v7    # "miType":I
    .end local v8    # "RC4KEY":Ljava/lang/String;
    .end local v9    # "RSAKEY":Ljava/lang/String;
    .end local v10    # "AESKEY":Ljava/lang/String;
    .end local v11    # "AESIV":Ljava/lang/String;
    .end local v12    # "Appkey":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v18    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :catch_2
    move-exception v0

    move-object/from16 v18, v6

    .line 1224
    .end local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .local v0, "ex":Ljava/text/ParseException;
    .restart local v18    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_3
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1225
    move-object/from16 v6, v18

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_postion:I

    return v0
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # I

    .line 104
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_postion:I

    return p1
.end method

.method static synthetic access$1100(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sourceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/db/Album;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Lcom/shenma/tvlauncher/vod/db/Album;)Lcom/shenma/tvlauncher/vod/db/Album;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/vod/db/Album;

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_arts:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_video_introduce:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_recommend:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_favicon:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_colection:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_choose:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->bl_Adapter:Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_replay:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->top_type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albums:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albums:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_play:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_director:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_type:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_actors:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_area:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_video_introduce:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rg_video_details_resources:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->iv_details_poster:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_year:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_playTimes:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_rate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->aboutlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->aboutlist:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodDetailsAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;)Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodDetailsAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->remember_source:I

    return v0
.end method

.method static synthetic access$3800(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rbHeigth:I

    return v0
.end method

.method static synthetic access$3900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_recommend_grid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->domain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # I

    .line 104
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->GetMotion(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->domain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albumPic:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albumPic:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodtype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodstate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodstate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->videoId:Ljava/lang/String;

    return-object p1
.end method

.method private createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 1137
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$15;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$15;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    return-object v0
.end method

.method private createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;",
            ">;"
        }
    .end annotation

    .line 863
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    return-object v0
.end method

.method private initData()V
    .locals 4

    .line 271
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vodtype"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodtype:Ljava/lang/String;

    .line 273
    const-string/jumbo v1, "vodstate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodstate:Ljava/lang/String;

    .line 274
    const-string v1, "nextlink"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    .line 275
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 276
    const v2, 0x7f070096

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 279
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 281
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(I)V

    .line 282
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 283
    return-void
.end method

.method private initView()V
    .locals 2

    .line 287
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0604b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rbWidth:I

    .line 288
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rbHeigth:I

    .line 289
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById()V

    .line 290
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->loadViewLayout()V

    .line 291
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->setListener()V

    .line 292
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->processLogic()V

    .line 293
    return-void
.end method


# virtual methods
.method protected CreateBottomLayout()V
    .locals 10

    .line 362
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjitype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 363
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjinumber:I

    .local v0, "number":I
    goto :goto_0

    .line 365
    .end local v0    # "number":I
    :cond_0
    const/16 v0, 0x4e20

    .line 367
    .restart local v0    # "number":I
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    .line 368
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 369
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    .line 370
    .local v3, "list2":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v4, "arrayList":Ljava/util/ArrayList;
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 372
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v5, v0

    .line 373
    .local v5, "size":I
    const/4 v6, 0x0

    .line 374
    .local v6, "i":I
    :goto_1
    const-string v7, "-"

    if-ge v6, v5, :cond_1

    .line 375
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v8, "sb":Ljava/lang/StringBuilder;
    mul-int v9, v6, v0

    add-int/2addr v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    add-int/lit8 v6, v6, 0x1

    .line 379
    mul-int v7, v6, v0

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 382
    :cond_1
    mul-int v8, v6, v0

    add-int/2addr v8, v1

    .line 383
    .local v8, "i2":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-gt v8, v9, :cond_2

    .line 384
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_2
    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_lists:Ljava/util/List;

    .line 387
    new-instance v7, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomGridAdapter;

    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_lists:Ljava/util/List;

    invoke-direct {v7, p0, v9}, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v7, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->bg_Adapter:Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomGridAdapter;

    .line 388
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_grid:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->bg_Adapter:Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomGridAdapter;

    invoke-virtual {v7, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 389
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    const/4 v9, 0x0

    invoke-static {v7, v9, v0}, Lcom/shenma/tvlauncher/utils/Utils;->getVideolvDatas(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lv_lists:Ljava/util/List;

    .line 391
    iget v7, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjitype:I

    if-ne v7, v1, :cond_3

    .line 392
    new-instance v1, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lv_lists:Ljava/util/List;

    invoke-direct {v1, p0, v7, v9}, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->bl_Adapter:Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;

    .line 393
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_list:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->bl_Adapter:Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 395
    :cond_3
    new-instance v7, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;

    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lv_lists:Ljava/util/List;

    invoke-direct {v7, p0, v9, v1}, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v7, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->bl_Adapter:Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;

    .line 396
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_lists:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->bl_Adapter:Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 400
    .end local v3    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    .end local v4    # "arrayList":Ljava/util/ArrayList;
    .end local v5    # "size":I
    .end local v6    # "i":I
    .end local v8    # "i2":I
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_grid:Landroid/widget/GridView;

    new-instance v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$2;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 412
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_list:Landroid/widget/ListView;

    new-instance v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 461
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_lists:Landroid/widget/GridView;

    new-instance v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$4;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$4;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 509
    return-void
.end method

.method public GetMotionResponse(Ljava/lang/String;I)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 1235
    move-object/from16 v1, p0

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1236
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1237
    .local v4, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1238
    .local v5, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1241
    .local v2, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v6, p1

    :try_start_1
    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1242
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v7, "code"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1243
    .local v7, "code":I
    const/16 v8, 0xc8

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string/jumbo v11, "vip"

    const/4 v12, 0x0

    if-ne v7, v8, :cond_3

    .line 1244
    :try_start_2
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v8, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1245
    .local v8, "miType":I
    const/4 v13, 0x0

    .line 1246
    .local v13, "msg":Lorg/json/JSONObject;
    const-string v14, "msg"

    if-ne v8, v10, :cond_0

    .line 1247
    :try_start_3
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    goto :goto_0

    .line 1248
    :cond_0
    if-ne v8, v9, :cond_1

    .line 1249
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    goto :goto_0

    .line 1250
    :cond_1
    const/4 v15, 0x3

    if-ne v8, v15, :cond_2

    .line 1251
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14, v2}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    .line 1253
    :cond_2
    :goto_0
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1254
    .local v14, "vip":Ljava/lang/String;
    const-string v15, "Try"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 1255
    .local v15, "Try":I
    const-string v9, "Clientmode"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 1256
    .local v9, "Clientmode":I
    iput v15, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->trystate:I

    .line 1257
    iget-object v10, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v11, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1258
    sget-object v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Sp:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Submission_method"

    .line 1259
    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Trystate"

    .line 1260
    invoke-interface {v10, v11, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1261
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1262
    nop

    .end local v8    # "miType":I
    .end local v9    # "Clientmode":I
    .end local v13    # "msg":Lorg/json/JSONObject;
    .end local v14    # "vip":Ljava/lang/String;
    .end local v15    # "Try":I
    goto/16 :goto_1

    :cond_3
    const/16 v8, 0x7f

    const-string v9, "ckinfo"

    const-string v10, "fen"

    const-string v13, "passWord"

    const-string/jumbo v14, "userName"

    if-ne v7, v8, :cond_4

    .line 1263
    :try_start_4
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v15, 0x6

    invoke-virtual {v8, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1264
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v13, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1265
    return-void

    .line 1266
    :cond_4
    const/16 v15, 0x72

    if-ne v7, v15, :cond_5

    .line 1267
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v15, 0x7

    invoke-virtual {v8, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1268
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v13, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1269
    return-void

    .line 1270
    :cond_5
    const/16 v15, 0x7d

    if-ne v7, v15, :cond_6

    .line 1271
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1272
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v13, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1273
    return-void

    .line 1274
    :cond_6
    if-ne v7, v8, :cond_7

    .line 1275
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v15, 0x9

    invoke-virtual {v8, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1276
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v13, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1277
    return-void

    .line 1278
    :cond_7
    const/16 v8, 0xc9

    const/16 v9, 0xa

    if-ne v7, v8, :cond_8

    .line 1279
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1280
    return-void

    .line 1281
    :cond_8
    const/16 v8, 0x6a

    if-ne v7, v8, :cond_9

    .line 1282
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1283
    return-void

    .line 1286
    :cond_9
    :goto_1
    iget v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vipstate:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_b

    iget v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->trystate:I

    if-ne v8, v9, :cond_a

    goto :goto_2

    .line 1294
    :cond_a
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move/from16 v9, p2

    goto :goto_4

    .line 1287
    :cond_b
    :goto_2
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->aboutlist:Ljava/util/ArrayList;

    if-eqz v8, :cond_c

    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->aboutlist:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_c

    .line 1288
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->aboutlist:Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move/from16 v9, p2

    :try_start_5
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getNextlink()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    .line 1289
    iput-object v12, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    .line 1290
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->initView()V

    goto :goto_3

    .line 1287
    :cond_c
    move/from16 v9, p2

    .line 1292
    :goto_3
    const/high16 v8, 0x10a0000

    const v10, 0x10a0001

    invoke-virtual {v1, v8, v10}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->overridePendingTransition(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1299
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v7    # "code":I
    :goto_4
    goto :goto_7

    .line 1297
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v6, p1

    :goto_5
    move/from16 v9, p2

    .line 1298
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1300
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method protected closeProgressDialog()V
    .locals 0

    .line 1160
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1161
    return-void
.end method

.method public final fillRadioGroup(Ljava/lang/String;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .line 781
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 782
    sget-object v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 783
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->top_type:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    .local v2, "size":I
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->j0:I

    if-ge v1, v3, :cond_3

    .line 784
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v1, "arrayList":Ljava/util/ArrayList;
    sget-object v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 786
    const/4 v3, 0x0

    .local v3, "i3":I
    :goto_1
    iget v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->j0:I

    if-gt v3, v4, :cond_2

    .line 787
    if-ge v2, v3, :cond_1

    .line 788
    new-instance v4, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;-><init>()V

    .line 789
    .local v4, "vodUrlList":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    const-string v5, "*"

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->setUrl(Ljava/lang/String;)V

    .line 790
    const/16 v5, 0xa

    if-ge v3, v5, :cond_0

    .line 791
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "\u7b2c0"

    .local v6, "str2":Ljava/lang/String;
    goto :goto_2

    .line 794
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "str2":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "\u7b2c"

    .line 797
    .restart local v6    # "str2":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 799
    const-string/jumbo v7, "\u96c6"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->setTitle(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    .end local v4    # "vodUrlList":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "str2":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 804
    .end local v3    # "i3":I
    :cond_2
    sget-object v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v3, v1}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->setList(Ljava/util/List;)V

    .line 806
    .end local v1    # "arrayList":Ljava/util/ArrayList;
    .end local v2    # "size":I
    :cond_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 807
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    sget-object v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 781
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 810
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method protected findViewById()V
    .locals 4

    .line 297
    const v0, 0x7f0800f4

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->iv_details_poster:Landroid/widget/ImageView;

    .line 298
    const v0, 0x7f08025e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_name:Landroid/widget/TextView;

    .line 299
    const v0, 0x7f080263

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_year:Landroid/widget/TextView;

    .line 300
    const v0, 0x7f080260

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_rate:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f08025d

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_director:Landroid/widget/TextView;

    .line 302
    const v0, 0x7f080261

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_type:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f08025b

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_actors:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f08025f

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_playTimes:Landroid/widget/TextView;

    .line 305
    const v0, 0x7f08025c

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_area:Landroid/widget/TextView;

    .line 306
    const v0, 0x7f080262

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_video_introduce:Landroid/widget/TextView;

    .line 307
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_replay:Landroid/widget/Button;

    .line 308
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_play:Landroid/widget/Button;

    .line 309
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_choose:Landroid/widget/Button;

    .line 310
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_favicon:Landroid/widget/Button;

    .line 311
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_colection:Landroid/widget/Button;

    .line 312
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_introduce:Landroid/widget/Button;

    .line 314
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_search:Landroid/widget/Button;

    .line 315
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Same_source_search:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_search:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    :cond_0
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_recommend:Landroid/widget/LinearLayout;

    .line 320
    const v0, 0x7f0801b4

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_recommend_grid:Landroid/widget/GridView;

    .line 321
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_recommend_grid:Landroid/widget/GridView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 322
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_arts:Landroid/widget/LinearLayout;

    .line 323
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_video_introduce:Landroid/widget/LinearLayout;

    .line 325
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_list:Landroid/widget/ListView;

    .line 326
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_list:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 328
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_lists:Landroid/widget/GridView;

    .line 329
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_lists:Landroid/widget/GridView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 331
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_list_and_grid:Landroid/widget/ImageView;

    .line 333
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_grid:Landroid/widget/GridView;

    .line 334
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_grid:Landroid/widget/GridView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjitype:I

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 337
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_lists:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_list:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_list_and_grid:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_grid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 343
    :goto_0
    const v0, 0x7f0801ba

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rg_video_details_resources:Landroid/widget/RadioGroup;

    .line 344
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodtype:Ljava/lang/String;

    const-string v1, "MOVIE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_favicon:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_choose:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_colection:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_choose:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 352
    :goto_1
    return-void
.end method

.method protected getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V
    .locals 8
    .param p1, "reqVo"    # Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    .line 830
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->showProgressDialog()V

    .line 831
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 832
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$13;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    const-class v5, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;

    .line 834
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v6

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$13;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 857
    .local v0, "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 859
    .end local v0    # "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;>;"
    :cond_0
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 357
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_arts:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_video_introduce:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->finish()V

    goto :goto_1

    .line 517
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_video_introduce:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_arts:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_recommend:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 523
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 200
    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->setContentView(I)V

    .line 201
    iput-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->context:Landroid/content/Context;

    .line 202
    new-instance v0, Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/dao/VodDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    .line 203
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->initData()V

    .line 204
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->initView()V

    .line 205
    const/4 v0, 0x0

    const-string v1, "shenma"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    .line 206
    const-string v1, "initData"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Sp:Landroid/content/SharedPreferences;

    .line 207
    const-string v1, "TempData"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Sd:Landroid/content/SharedPreferences;

    .line 208
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 244
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 248
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 237
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->videoId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 256
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAlbumById(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albums:Ljava/util/List;

    .line 257
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albums:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albums:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/db/Album;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodtype:Ljava/lang/String;

    const-string v2, "LIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_replay:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_replay:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 266
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 267
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 216
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 223
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->closeProgressDialog()V

    .line 224
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 227
    :cond_0
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->overridePendingTransition(II)V

    .line 229
    return-void
.end method

.method protected processLogic()V
    .locals 3

    .line 814
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/domain/RequestVo;-><init>()V

    .line 815
    .local v0, "vo":Lcom/shenma/tvlauncher/vod/domain/RequestVo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->context:Landroid/content/Context;

    .line 816
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Api_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/api.php/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->BASE_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/vod/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    .line 820
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V

    .line 822
    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_play:Landroid/widget/Button;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_replay:Landroid/widget/Button;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$6;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_choose:Landroid/widget/Button;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_favicon:Landroid/widget/Button;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_colection:Landroid/widget/Button;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_introduce:Landroid/widget/Button;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$10;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$10;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_search:Landroid/widget/Button;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rg_video_details_resources:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 775
    return-void
.end method

.method protected showProgressDialog()V
    .locals 1

    .line 1155
    const v0, 0x7f0e0192

    invoke-static {p0, v0}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1156
    return-void
.end method
