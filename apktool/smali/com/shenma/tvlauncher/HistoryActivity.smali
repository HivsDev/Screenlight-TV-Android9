.class public Lcom/shenma/tvlauncher/HistoryActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/HistoryActivity$MyAdapter;
    }
.end annotation


# static fields
.field public static Sp:Landroid/content/SharedPreferences;


# instance fields
.field private Albumls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/db/Album;",
            ">;"
        }
    .end annotation
.end field

.field private ISAPP:Ljava/lang/Boolean;

.field private final TAG:Ljava/lang/String;

.field private dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

.field private history_details_sum:Landroid/widget/TextView;

.field private history_grid:Landroid/widget/GridView;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private isDestroy:Ljava/lang/Boolean;

.field private ll_type_details:Landroid/widget/LinearLayout;

.field private mAdapter:Lcom/shenma/tvlauncher/HistoryActivity$MyAdapter;

.field private mPosition:I

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private final mediaHandler:Landroid/os/Handler;

.field private menulist:Landroid/widget/ListView;

.field private menupopupWindow:Landroid/widget/PopupWindow;

.field protected sp:Landroid/content/SharedPreferences;

.field private trystate:I

.field private tv_no_data:Landroid/widget/TextView;

.field private type_details_sum:Landroid/widget/TextView;

.field private userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

.field private vipstate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 70
    const-string v0, "HistoryActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->TAG:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->Albumls:Ljava/util/List;

    .line 75
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->ISAPP:Ljava/lang/Boolean;

    .line 80
    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->mAdapter:Lcom/shenma/tvlauncher/HistoryActivity$MyAdapter;

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->mPosition:I

    .line 85
    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->isDestroy:Ljava/lang/Boolean;

    .line 90
    const-string v1, "Trystate"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->trystate:I

    .line 92
    new-instance v0, Lcom/shenma/tvlauncher/HistoryActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/HistoryActivity$1;-><init>(Lcom/shenma/tvlauncher/HistoryActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->mediaHandler:Landroid/os/Handler;

    return-void
.end method

.method private GetMotion(I)V
    .locals 19
    .param p1, "position"    # I

    .line 372
    move-object/from16 v13, p0

    const-string/jumbo v14, "vip"

    const-string v15, ""

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 375
    .local v6, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, v13, Lcom/shenma/tvlauncher/HistoryActivity;->sp:Landroid/content/SharedPreferences;

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
    iget-object v0, v13, Lcom/shenma/tvlauncher/HistoryActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v14, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "999999999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    const/4 v0, 0x0

    iput v0, v13, Lcom/shenma/tvlauncher/HistoryActivity;->vipstate:I
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 430
    :catch_0
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_3

    .line 376
    :cond_1
    :goto_1
    :try_start_2
    iput v2, v13, Lcom/shenma/tvlauncher/HistoryActivity;->vipstate:I

    .line 380
    :goto_2
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v13, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v13, Lcom/shenma/tvlauncher/HistoryActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 381
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-static {v13, v0, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "User_url":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 383
    .local v8, "RC4KEY":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 384
    .local v9, "RSAKEY":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 385
    .local v10, "AESKEY":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 386
    .local v11, "AESIV":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 387
    .local v12, "Appkey":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v13, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 388
    .local v7, "miType":I
    new-instance v16, Lcom/shenma/tvlauncher/HistoryActivity$9;

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

    new-instance v5, Lcom/shenma/tvlauncher/HistoryActivity$7;

    move/from16 v2, p1

    invoke-direct {v5, v13, v2}, Lcom/shenma/tvlauncher/HistoryActivity$7;-><init>(Lcom/shenma/tvlauncher/HistoryActivity;I)V

    new-instance v1, Lcom/shenma/tvlauncher/HistoryActivity$8;

    invoke-direct {v1, v13}, Lcom/shenma/tvlauncher/HistoryActivity$8;-><init>(Lcom/shenma/tvlauncher/HistoryActivity;)V
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
    invoke-direct/range {v1 .. v12}, Lcom/shenma/tvlauncher/HistoryActivity$9;-><init>(Lcom/shenma/tvlauncher/HistoryActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 428
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, v13, Lcom/shenma/tvlauncher/HistoryActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    .line 429
    return-void

    .line 430
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

    .line 431
    .end local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .local v0, "ex":Ljava/text/ParseException;
    .restart local v18    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_3
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 432
    move-object/from16 v6, v18

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/HistoryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 69
    iget v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/shenma/tvlauncher/HistoryActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HistoryActivity;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/HistoryActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->ISAPP:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/HistoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HistoryActivity;->showMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/HistoryActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HistoryActivity;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/HistoryActivity;->GetMotion(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/HistoryActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->mediaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/HistoryActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/HistoryActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->Albumls:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/shenma/tvlauncher/HistoryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HistoryActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->Albumls:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/HistoryActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/HistoryActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/HistoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HistoryActivity;->hideMenu()V

    return-void
.end method

.method private hideMenu()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 231
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 5

    .line 160
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->ISAPP:Ljava/lang/Boolean;

    .line 161
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->Albumls:Ljava/util/List;

    .line 163
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->Albumls:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->history_details_sum:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0e0096

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HistoryActivity;->Albumls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0e001a

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->tv_no_data:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    new-instance v1, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryActivity;->Albumls:Ljava/util/List;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HistoryActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HistoryActivity;->ISAPP:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/nostra13/universalimageloader/core/ImageLoader;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    .line 176
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->history_grid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->history_grid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->history_grid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    return-void

    .line 164
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->tv_no_data:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->tv_no_data:Landroid/widget/TextView;

    const v1, 0x7f0e0035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->clearDatas()V

    .line 168
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->notifyDataSetChanged()V

    .line 169
    return-void

    .line 171
    :cond_3
    return-void
.end method

.method private showMenu()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lcom/shenma/tvlauncher/HistoryActivity$MyAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getUserData(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Lcom/shenma/tvlauncher/HistoryActivity$MyAdapter;-><init>(Lcom/shenma/tvlauncher/HistoryActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->mAdapter:Lcom/shenma/tvlauncher/HistoryActivity$MyAdapter;

    .line 219
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menulist:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryActivity;->mAdapter:Lcom/shenma/tvlauncher/HistoryActivity$MyAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f0f0001

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 221
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryActivity;->ll_type_details:Landroid/widget/LinearLayout;

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 222
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06024f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/HistoryActivity;->mHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public GetMotionResponse(Ljava/lang/String;I)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 442
    move-object/from16 v1, p0

    move/from16 v2, p2

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 449
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 450
    .local v8, "code":I
    const/16 v9, 0xc8

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    const-string/jumbo v13, "vip"

    if-ne v8, v9, :cond_3

    .line 451
    :try_start_2
    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v9, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 452
    .local v9, "miType":I
    const/4 v14, 0x0

    .line 453
    .local v14, "msg":Lorg/json/JSONObject;
    const-string v15, "msg"

    if-ne v9, v12, :cond_0

    .line 454
    :try_start_3
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v11

    goto :goto_0

    .line 455
    :cond_0
    if-ne v9, v10, :cond_1

    .line 456
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v11

    goto :goto_0

    .line 457
    :cond_1
    if-ne v9, v11, :cond_2

    .line 458
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15, v3}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v11

    .line 460
    :cond_2
    :goto_0
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 461
    .local v11, "vip":Ljava/lang/String;
    const-string v15, "Try"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 462
    .local v15, "Try":I
    const-string v10, "Clientmode"

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 463
    .local v10, "Clientmode":I
    iput v15, v1, Lcom/shenma/tvlauncher/HistoryActivity;->trystate:I

    .line 464
    iget-object v12, v1, Lcom/shenma/tvlauncher/HistoryActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 465
    sget-object v12, Lcom/shenma/tvlauncher/HistoryActivity;->Sp:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "Submission_method"

    .line 466
    invoke-interface {v12, v13, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "Trystate"

    .line 467
    invoke-interface {v12, v13, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 468
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 469
    nop

    .end local v9    # "miType":I
    .end local v10    # "Clientmode":I
    .end local v11    # "vip":Ljava/lang/String;
    .end local v14    # "msg":Lorg/json/JSONObject;
    .end local v15    # "Try":I
    goto/16 :goto_1

    :cond_3
    const/16 v9, 0x7f

    const-string v10, "ckinfo"

    const-string v12, "fen"

    const-string v14, "passWord"

    const-string/jumbo v15, "userName"

    if-ne v8, v9, :cond_4

    .line 470
    :try_start_4
    iget-object v9, v1, Lcom/shenma/tvlauncher/HistoryActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 471
    iget-object v9, v1, Lcom/shenma/tvlauncher/HistoryActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 472
    return-void

    .line 473
    :cond_4
    const/16 v11, 0x72

    if-ne v8, v11, :cond_5

    .line 474
    iget-object v9, v1, Lcom/shenma/tvlauncher/HistoryActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 475
    iget-object v9, v1, Lcom/shenma/tvlauncher/HistoryActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 476
    return-void

    .line 477
    :cond_5
    const/16 v11, 0x7d

    if-ne v8, v11, :cond_6

    .line 478
    iget-object v9, v1, Lcom/shenma/tvlauncher/HistoryActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x7

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 479
    iget-object v9, v1, Lcom/shenma/tvlauncher/HistoryActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 480
    return-void

    .line 481
    :cond_6
    if-ne v8, v9, :cond_7

    .line 482
    iget-object v9, v1, Lcom/shenma/tvlauncher/HistoryActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 483
    iget-object v9, v1, Lcom/shenma/tvlauncher/HistoryActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 484
    return-void

    .line 485
    :cond_7
    const/16 v9, 0xc9

    if-ne v8, v9, :cond_8

    .line 486
    iget-object v9, v1, Lcom/shenma/tvlauncher/HistoryActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 487
    return-void

    .line 489
    :cond_8
    :goto_1
    iget v9, v1, Lcom/shenma/tvlauncher/HistoryActivity;->vipstate:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_a

    iget v9, v1, Lcom/shenma/tvlauncher/HistoryActivity;->trystate:I

    if-ne v9, v10, :cond_9

    goto :goto_2

    .line 497
    :cond_9
    iget-object v9, v1, Lcom/shenma/tvlauncher/HistoryActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 490
    :cond_a
    :goto_2
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {v9, v1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "vodtype"

    iget-object v11, v1, Lcom/shenma/tvlauncher/HistoryActivity;->Albumls:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string/jumbo v10, "vodstate"

    iget-object v11, v1, Lcom/shenma/tvlauncher/HistoryActivity;->Albumls:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumState()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v10, "nextlink"

    iget-object v11, v1, Lcom/shenma/tvlauncher/HistoryActivity;->Albumls:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/db/Album;->getNextLink()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-virtual {v1, v9}, Lcom/shenma/tvlauncher/HistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 495
    const/high16 v10, 0x10a0000

    const v11, 0x10a0001

    invoke-virtual {v1, v10, v11}, Lcom/shenma/tvlauncher/HistoryActivity;->overridePendingTransition(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 496
    .end local v9    # "intent":Landroid/content/Intent;
    nop

    .line 502
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v8    # "code":I
    :goto_3
    goto :goto_5

    .line 500
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v7, p1

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 255
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 256
    .local v0, "keyCode":I
    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HistoryActivity;->hideMenu()V

    .line 261
    :goto_0
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected findViewById()V
    .locals 3

    .line 244
    const v0, 0x7f0802fc

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07015b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 245
    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->history_details_sum:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f08029e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->tv_no_data:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->history_grid:Landroid/widget/GridView;

    .line 248
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->history_grid:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 249
    const v0, 0x7f08012f

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->ll_type_details:Landroid/widget/LinearLayout;

    .line 250
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 234
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryActivity;->findViewById()V

    .line 235
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryActivity;->loadViewLayout()V

    .line 236
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryActivity;->setListener()V

    .line 237
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 240
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryActivity;->onCreateMenu()V

    .line 241
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 149
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/HistoryActivity;->setContentView(I)V

    .line 151
    new-instance v0, Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/dao/VodDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    .line 152
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryActivity;->initView()V

    .line 153
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HistoryActivity;->initData()V

    .line 154
    const/4 v0, 0x0

    const-string v1, "shenma"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/HistoryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->sp:Landroid/content/SharedPreferences;

    .line 155
    const-string v1, "initData"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/HistoryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/HistoryActivity;->Sp:Landroid/content/SharedPreferences;

    .line 156
    return-void
.end method

.method public onCreateMenu()V
    .locals 3

    .line 268
    const v0, 0x7f0a0038

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, "menuView":Landroid/view/View;
    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menulist:Landroid/widget/ListView;

    .line 270
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 271
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 272
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 273
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 274
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/HistoryActivity$5;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/HistoryActivity$5;-><init>(Lcom/shenma/tvlauncher/HistoryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 289
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/HistoryActivity$6;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/HistoryActivity$6;-><init>(Lcom/shenma/tvlauncher/HistoryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 329
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 135
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->isDestroy:Ljava/lang/Boolean;

    .line 137
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/HistoryActivity;->overridePendingTransition(II)V

    .line 139
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 143
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 144
    invoke-direct {p0}, Lcom/shenma/tvlauncher/HistoryActivity;->initData()V

    .line 145
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->history_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/HistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/HistoryActivity$2;-><init>(Lcom/shenma/tvlauncher/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 191
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->history_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/HistoryActivity$3;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/HistoryActivity$3;-><init>(Lcom/shenma/tvlauncher/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity;->history_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/HistoryActivity$4;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/HistoryActivity$4;-><init>(Lcom/shenma/tvlauncher/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 211
    return-void
.end method
