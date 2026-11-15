.class public Lcom/shenma/tvlauncher/vod/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static Sp:Landroid/content/SharedPreferences;


# instance fields
.field private Api_url:Ljava/lang/String;

.field private BASE_HOST:Ljava/lang/String;

.field private SearchText:Landroid/widget/TextView;

.field private final TAG:Ljava/lang/String;

.field private VOD_URL:Ljava/lang/String;

.field private Voice_text:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private gv_search_result:Landroid/widget/GridView;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mDialog:Landroid/app/Dialog;

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mediaHandler:Landroid/os/Handler;

.field private name:Ljava/lang/String;

.field private pageindex:I

.field private sb:Ljava/lang/StringBuilder;

.field private search_keybord_input:Landroid/widget/EditText;

.field private searchtypeAdapter:Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

.field protected sp:Landroid/content/SharedPreferences;

.field private totalpage:I

.field private trystate:I

.field private tv_search:Landroid/widget/TextView;

.field private tv_search_empty_text:Landroid/widget/TextView;

.field private type:Ljava/lang/String;

.field private users_empower:Landroid/widget/ImageView;

.field private vipstate:I

.field private vodDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private vodpageindex:I

.field private vodtypeinfo:Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    const-string v0, "SearchActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->TAG:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->VOD_URL:Ljava/lang/String;

    .line 99
    const/4 v1, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    .line 107
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->type:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$1;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    .line 152
    const-string v0, "Trystate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->trystate:I

    .line 167
    const-string v0, ""

    const-string v1, "Api_url"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Api_url:Ljava/lang/String;

    .line 168
    const-string v1, "BASE_HOST"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->BASE_HOST:Ljava/lang/String;

    return-void
.end method

.method private GetMotion(I)V
    .locals 19
    .param p1, "position"    # I

    .line 575
    move-object/from16 v13, p0

    const-string/jumbo v14, "vip"

    const-string v15, ""

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 578
    .local v6, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, v13, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

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
    iget-object v0, v13, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v14, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "999999999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    const/4 v0, 0x0

    iput v0, v13, Lcom/shenma/tvlauncher/vod/SearchActivity;->vipstate:I
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 634
    :catch_0
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_3

    .line 579
    :cond_1
    :goto_1
    :try_start_2
    iput v2, v13, Lcom/shenma/tvlauncher/vod/SearchActivity;->vipstate:I

    .line 583
    :goto_2
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v13, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v13, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 584
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-static {v13, v0, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "User_url":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 586
    .local v8, "RC4KEY":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 587
    .local v9, "RSAKEY":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 588
    .local v10, "AESKEY":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 589
    .local v11, "AESIV":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 590
    .local v12, "Appkey":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v13, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 591
    .local v7, "miType":I
    new-instance v16, Lcom/shenma/tvlauncher/vod/SearchActivity$14;

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

    new-instance v5, Lcom/shenma/tvlauncher/vod/SearchActivity$12;

    move/from16 v2, p1

    invoke-direct {v5, v13, v2}, Lcom/shenma/tvlauncher/vod/SearchActivity$12;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;I)V

    new-instance v1, Lcom/shenma/tvlauncher/vod/SearchActivity$13;

    invoke-direct {v1, v13}, Lcom/shenma/tvlauncher/vod/SearchActivity$13;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
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
    invoke-direct/range {v1 .. v12}, Lcom/shenma/tvlauncher/vod/SearchActivity$14;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 632
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, v13, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    .line 633
    return-void

    .line 634
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

    .line 635
    .end local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .local v0, "ex":Ljava/text/ParseException;
    .restart local v18    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_3
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 636
    move-object/from16 v6, v18

    goto/16 :goto_0
.end method

.method private SearchText()V
    .locals 7

    .line 210
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 211
    new-instance v0, Lcom/shenma/tvlauncher/vod/SearchActivity$4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Api_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/api.php/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->BASE_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/SearchText"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/vod/SearchActivity$2;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$2;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    new-instance v6, Lcom/shenma/tvlauncher/vod/SearchActivity$3;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$3;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/shenma/tvlauncher/vod/SearchActivity$4;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 237
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->users_empower:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->gv_search_result:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/shenma/tvlauncher/vod/SearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 89
    iget v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodpageindex:I

    return v0
.end method

.method static synthetic access$1102(Lcom/shenma/tvlauncher/vod/SearchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .param p1, "x1"    # I

    .line 89
    iput p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodpageindex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/shenma/tvlauncher/vod/SearchActivity;)Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodtypeinfo:Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/shenma/tvlauncher/vod/SearchActivity;Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    .line 89
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodtypeinfo:Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/shenma/tvlauncher/vod/SearchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .param p1, "x1"    # I

    .line 89
    iput p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->totalpage:I

    return p1
.end method

.method static synthetic access$1402(Lcom/shenma/tvlauncher/vod/SearchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .param p1, "x1"    # I

    .line 89
    iput p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/shenma/tvlauncher/vod/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->search_keybord_input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/shenma/tvlauncher/vod/SearchActivity;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .param p1, "x1"    # Ljava/lang/StringBuilder;

    .line 89
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 89
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->readyToSearch()V

    return-void
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/vod/SearchActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->GetMotion(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 89
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageDown()V

    return-void
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/shenma/tvlauncher/vod/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 89
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodDatas:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/vod/SearchActivity;)Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->searchtypeAdapter:Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/shenma/tvlauncher/vod/SearchActivity;Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;)Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    .line 89
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->searchtypeAdapter:Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    return-object p1
.end method

.method private createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 533
    new-instance v0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$11;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    return-object v0
.end method

.method private createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;",
            ">;"
        }
    .end annotation

    .line 494
    new-instance v0, Lcom/shenma/tvlauncher/vod/SearchActivity$10;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$10;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    return-object v0
.end method

.method private findViewById()V
    .locals 5

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    .line 259
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->SearchText:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->search_keybord_input:Landroid/widget/EditText;

    .line 261
    const v1, 0x7f0801d0

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->tv_search:Landroid/widget/TextView;

    .line 262
    const v1, 0x7f0801cb

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->tv_search_empty_text:Landroid/widget/TextView;

    .line 264
    const v1, 0x7f0801ce

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 265
    .local v1, "ScrollView":Landroid/view/View;
    const v2, 0x7f0801d5

    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->gv_search_result:Landroid/widget/GridView;

    .line 266
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->gv_search_result:Landroid/widget/GridView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 271
    .local v0, "phoneEd":Landroid/widget/EditText;
    new-instance v2, Lcom/shenma/tvlauncher/vod/SearchActivity$5;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$5;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 289
    return-void
.end method

.method private getVoice()V
    .locals 21

    .line 758
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 759
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 760
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 761
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 762
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 763
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 764
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 765
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 766
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/vod/SearchActivity$18;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=voice_text"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/vod/SearchActivity$16;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/vod/SearchActivity$16;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/SearchActivity$17;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/vod/SearchActivity$17;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/vod/SearchActivity$18;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 809
    return-void
.end method

.method private initIntent()V
    .locals 3

    .line 340
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->type:Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->findLastIndexOfSeparators(Ljava/lang/String;[C)I

    move-result v0

    .line 345
    .local v0, "lastColonIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->readyToSearch(Ljava/lang/String;)V

    .line 350
    .end local v0    # "lastColonIndex":I
    :cond_1
    return-void

    :array_0
    .array-data 2
        0x26s
        0x3as
        -0xe6s
        0x3bs
        -0xe5s
    .end array-data
.end method

.method private initView()V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById()V

    .line 200
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->loadViewLayout()V

    .line 201
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->setListener()V

    .line 202
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->SearchText()V

    .line 203
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getVoice()V

    .line 204
    return-void
.end method

.method private loadViewLayout()V
    .locals 0

    .line 293
    return-void
.end method

.method private pageDown()V
    .locals 3

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageindex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "....vodpageindex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodpageindex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "joychang"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    iget v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->totalpage:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodpageindex:I

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u9875\u6570==="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->processLogic()V

    .line 429
    return-void

    .line 425
    :cond_1
    :goto_0
    return-void
.end method

.method private readyToSearch()V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->search_keybord_input:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u641c\u7d22===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "joychang"

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->SearchDatas(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method private readyToSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 411
    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 412
    .local v0, "searchInput":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->SearchDatas(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method private setListener()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->gv_search_result:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/SearchActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$6;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->gv_search_result:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/SearchActivity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$7;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 326
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->gv_search_result:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/SearchActivity$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$8;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 335
    return-void
.end method

.method private showUserDialogempower()V
    .locals 4

    .line 726
    new-instance v0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 727
    .local v0, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    const v2, 0x7f0a0016

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 728
    .local v1, "mView":Landroid/view/View;
    const v2, 0x7f0802cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->users_empower:Landroid/widget/ImageView;

    .line 729
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 730
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 731
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->users_empower:Landroid/widget/ImageView;

    new-instance v3, Lcom/shenma/tvlauncher/vod/SearchActivity$15;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/SearchActivity$15;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mDialog:Landroid/app/Dialog;

    .line 742
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 743
    return-void
.end method

.method private showvoice()V
    .locals 4

    .line 747
    new-instance v0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 748
    .local v0, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    const v2, 0x7f0a0017

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 749
    .local v1, "mView":Landroid/view/View;
    const v2, 0x7f0802fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 750
    .local v2, "voice_text":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Voice_text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 752
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mDialog:Landroid/app/Dialog;

    .line 753
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 754
    return-void
.end method


# virtual methods
.method public GetMotionResponse(Ljava/lang/String;I)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 646
    move-object/from16 v1, p0

    move/from16 v2, p2

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 647
    .local v4, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 648
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 649
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 653
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    .local v8, "code":I
    const/16 v9, 0xc8

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string/jumbo v12, "vip"

    if-ne v8, v9, :cond_3

    .line 655
    :try_start_2
    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v9, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 656
    .local v9, "miType":I
    const/4 v13, 0x0

    .line 657
    .local v13, "msg":Lorg/json/JSONObject;
    const-string v14, "msg"

    if-ne v9, v11, :cond_0

    .line 658
    :try_start_3
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    goto :goto_0

    .line 659
    :cond_0
    if-ne v9, v10, :cond_1

    .line 660
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    goto :goto_0

    .line 661
    :cond_1
    const/4 v15, 0x3

    if-ne v9, v15, :cond_2

    .line 662
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14, v3}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    .line 664
    :cond_2
    :goto_0
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 665
    .local v14, "vip":Ljava/lang/String;
    const-string v15, "Try"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 666
    .local v15, "Try":I
    const-string v10, "Clientmode"

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 667
    .local v10, "Clientmode":I
    iput v15, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->trystate:I

    .line 668
    iget-object v11, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11, v12, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 669
    sget-object v11, Lcom/shenma/tvlauncher/vod/SearchActivity;->Sp:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "Submission_method"

    .line 670
    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "Trystate"

    .line 671
    invoke-interface {v11, v12, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 672
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 673
    nop

    .end local v9    # "miType":I
    .end local v10    # "Clientmode":I
    .end local v13    # "msg":Lorg/json/JSONObject;
    .end local v14    # "vip":Ljava/lang/String;
    .end local v15    # "Try":I
    goto/16 :goto_1

    :cond_3
    const/16 v9, 0x7f

    const-string v10, "ckinfo"

    const-string v11, "fen"

    const-string v13, "passWord"

    const-string/jumbo v14, "userName"

    if-ne v8, v9, :cond_4

    .line 674
    :try_start_4
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v15, 0x6

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 675
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 676
    return-void

    .line 677
    :cond_4
    const/16 v15, 0x72

    if-ne v8, v15, :cond_5

    .line 678
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v15, 0x7

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 679
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 680
    return-void

    .line 681
    :cond_5
    const/16 v15, 0x7d

    if-ne v8, v15, :cond_6

    .line 682
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 683
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 684
    return-void

    .line 685
    :cond_6
    if-ne v8, v9, :cond_7

    .line 686
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v15, 0x9

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 687
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 688
    return-void

    .line 689
    :cond_7
    const/16 v9, 0xc9

    const/16 v10, 0xa

    if-ne v8, v9, :cond_8

    .line 690
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 691
    return-void

    .line 692
    :cond_8
    const/16 v9, 0x6a

    if-ne v8, v9, :cond_9

    .line 693
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 694
    return-void

    .line 697
    :cond_9
    :goto_1
    iget v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->vipstate:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->trystate:I

    if-ne v9, v10, :cond_a

    goto :goto_2

    .line 709
    :cond_a
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 698
    :cond_b
    :goto_2
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {v9, v1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 699
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v10, 0x4000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 700
    iget-object v10, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->type:Ljava/lang/String;

    const-string v11, "ALL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string/jumbo v11, "vodtype"

    if-eqz v10, :cond_c

    .line 701
    :try_start_5
    iget-object v10, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodDatas:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v10}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 703
    :cond_c
    iget-object v10, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->type:Ljava/lang/String;

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    :goto_3
    const-string v10, "nextlink"

    iget-object v11, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodDatas:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getNextlink()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    invoke-virtual {v1, v9}, Lcom/shenma/tvlauncher/vod/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 707
    const/high16 v10, 0x10a0000

    const v11, 0x10a0001

    invoke-virtual {v1, v10, v11}, Lcom/shenma/tvlauncher/vod/SearchActivity;->overridePendingTransition(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 708
    .end local v9    # "intent":Landroid/content/Intent;
    nop

    .line 714
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v8    # "code":I
    :goto_4
    goto :goto_6

    .line 712
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v7, p1

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 715
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method protected SearchDatas(Ljava/lang/String;)V
    .locals 3
    .param p1, "filter"    # Ljava/lang/String;

    .line 446
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/domain/RequestVo;-><init>()V

    .line 447
    .local v0, "vo":Lcom/shenma/tvlauncher/vod/domain/RequestVo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->context:Landroid/content/Context;

    .line 448
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->vodDatas:Ljava/util/ArrayList;

    .line 449
    const/4 v1, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Api_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/api.php/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->BASE_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/vod/?ac=list&zm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->VOD_URL:Ljava/lang/String;

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->VOD_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u641c\u7d22VOD_URL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->VOD_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "joychang"

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V

    .line 454
    return-void
.end method

.method public SearchTextResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .line 245
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 247
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 248
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->SearchText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 254
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public VodGongGaoError(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 840
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    .line 843
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 846
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    .line 849
    instance-of v0, p1, Lcom/android/volley/ServerError;

    .line 853
    return-void
.end method

.method public VodGongGaoResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .line 813
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 815
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 816
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 819
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 820
    .local v5, "code":I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 821
    .local v6, "msg":Ljava/lang/String;
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_2

    .line 822
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    .local v7, "miType":I
    const-string v9, "UTF-8"

    if-ne v7, v8, :cond_0

    .line 824
    :try_start_1
    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Voice_text:Ljava/lang/String;

    goto :goto_0

    .line 825
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 826
    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Voice_text:Ljava/lang/String;

    goto :goto_0

    .line 827
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 828
    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Voice_text:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 834
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "miType":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 832
    :catch_0
    move-exception v4

    .line 833
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 835
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected closeProgressDialog()V
    .locals 0

    .line 570
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 571
    return-void
.end method

.method public doClick(Landroid/view/View;)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 360
    .local v0, "tag":I
    const v1, 0x7f0801cc

    if-ne v0, v1, :cond_0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    .line 362
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->readyToSearch()V

    goto/16 :goto_2

    .line 364
    :cond_0
    const v1, 0x7f0801cd

    if-ne v0, v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 368
    :cond_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->readyToSearch()V

    goto/16 :goto_2

    .line 370
    :cond_2
    const v1, 0x7f0801d4

    if-ne v0, v1, :cond_4

    .line 371
    const-string v1, "MOVIE"

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->type:Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->search_keybord_input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 373
    .local v1, "text":Landroid/text/Editable;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 374
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "search":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    .line 376
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .end local v2    # "search":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->readyToSearch()V

    .line 379
    .end local v1    # "text":Landroid/text/Editable;
    goto :goto_2

    :cond_4
    const v1, 0x7f0801d3

    const/16 v2, 0x26fa

    const-string v3, "port"

    if-eq v0, v1, :cond_8

    const v1, 0x7f0801d2

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 388
    :cond_5
    const v1, 0x7f0801cf

    if-ne v0, v1, :cond_7

    .line 389
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->isPortAvailable(I)Z

    move-result v1

    .line 390
    .local v1, "portAvailable":Z
    if-nez v1, :cond_6

    .line 391
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Voice_text:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 392
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->showvoice()V

    .line 395
    .end local v1    # "portAvailable":Z
    :cond_6
    goto :goto_2

    .line 396
    :cond_7
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 397
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->readyToSearch()V

    goto :goto_2

    .line 380
    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->isPortAvailable(I)Z

    move-result v1

    .line 381
    .restart local v1    # "portAvailable":Z
    if-eqz v1, :cond_9

    .line 382
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    const v3, 0x7f0e0038

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07013e

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 386
    :cond_9
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->showUserDialogempower()V

    .line 388
    .end local v1    # "portAvailable":Z
    :goto_1
    nop

    .line 399
    :goto_2
    return-void
.end method

.method protected getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V
    .locals 9
    .param p1, "reqVo"    # Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    .line 463
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->showProgressDialog()V

    .line 464
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 465
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v8, Lcom/shenma/tvlauncher/vod/SearchActivity$9;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    const-class v5, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v6

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/vod/SearchActivity$9;-><init>(Lcom/shenma/tvlauncher/vod/SearchActivity;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v8}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 490
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 354
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->setContentView(I)V

    .line 179
    iput-object p0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    .line 180
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->initIntent()V

    .line 181
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->initView()V

    .line 182
    const/4 v0, 0x0

    const-string v1, "shenma"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    .line 183
    const-string v1, "initData"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/vod/SearchActivity;->Sp:Landroid/content/SharedPreferences;

    .line 184
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 194
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->overridePendingTransition(II)V

    .line 195
    return-void
.end method

.method protected processLogic()V
    .locals 3

    .line 435
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/domain/RequestVo;-><init>()V

    .line 436
    .local v0, "vo":Lcom/shenma/tvlauncher/vod/domain/RequestVo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->context:Landroid/content/Context;

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->VOD_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->pageindex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bbf\u95ee:::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity;->VOD_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "joychang"

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V

    .line 440
    return-void
.end method

.method protected showProgressDialog()V
    .locals 1

    .line 563
    const v0, 0x7f0e0192

    invoke-static {p0, v0}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 564
    return-void
.end method
