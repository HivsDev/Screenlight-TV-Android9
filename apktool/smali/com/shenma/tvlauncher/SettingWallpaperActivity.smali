.class public Lcom/shenma/tvlauncher/SettingWallpaperActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "SettingWallpaperActivity.java"


# instance fields
.field private Api_url:Ljava/lang/String;

.field private BASE_HOST:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/WallpaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field private errorListener:Lcom/android/volley/Response$ErrorListener;

.field private listener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/domain/Wallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private pageindex:I

.field private position:I

.field private totalpage:I

.field private vodpageindex:I

.field private wallpaper_gv:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->position:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->pageindex:I

    .line 67
    new-instance v0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$1;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->listener:Lcom/android/volley/Response$Listener;

    .line 77
    new-instance v0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$2;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->errorListener:Lcom/android/volley/Response$ErrorListener;

    .line 88
    const-string v0, ""

    const-string v1, "Api_url"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->Api_url:Ljava/lang/String;

    .line 89
    const-string v1, "BASE_HOST"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->BASE_HOST:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    .line 58
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/shenma/tvlauncher/SettingWallpaperActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingWallpaperActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->data:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    .line 58
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    .line 58
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->pageDown()V

    return-void
.end method

.method static synthetic access$302(Lcom/shenma/tvlauncher/SettingWallpaperActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingWallpaperActivity;
    .param p1, "x1"    # I

    .line 58
    iput p1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->position:I

    return p1
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/SettingWallpaperActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingWallpaperActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method private initData()V
    .locals 8

    .line 106
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 107
    new-instance v0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->Api_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/api.php/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->BASE_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/wallpaper/?page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->pageindex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/shenma/tvlauncher/domain/Wallpaper;

    iget-object v6, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->listener:Lcom/android/volley/Response$Listener;

    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->errorListener:Lcom/android/volley/Response$ErrorListener;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$3;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 129
    .local v0, "mWallpaper":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/domain/Wallpaper;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 130
    return-void
.end method

.method private pageDown()V
    .locals 2

    .line 209
    iget v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->pageindex:I

    iget v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->totalpage:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->vodpageindex:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->pageindex:I

    .line 213
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->initData()V

    .line 214
    return-void

    .line 210
    :cond_1
    :goto_0
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "com.hd.changewallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string/jumbo v1, "wallpaperFileName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    return-void
.end method

.method private startCheckLoaclFile(Ljava/lang/String;)Z
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 237
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 239
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 240
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "fName":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 243
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->sendBroadcast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const/4 v1, 0x1

    return v1

    .line 239
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "fName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 250
    .end local v2    # "files":[Ljava/io/File;
    :cond_1
    goto :goto_1

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method private startDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/SettingWallpaperActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$7;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 300
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 1

    .line 139
    const v0, 0x7f0802ff

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    .line 140
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->findViewById()V

    .line 101
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->setListener()V

    .line 102
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->initData()V

    .line 103
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 93
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->initView()V

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 218
    iget v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->data:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/domain/WallpaperInfo;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->getSkinpath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->data:Ljava/util/List;

    iget v2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/WallpaperInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->getSkinpath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "wallpaperFileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->data:Ljava/util/List;

    iget v2, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/WallpaperInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->getSkinpath()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "wallpaperPath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->startCheckLoaclFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->startDownload(Ljava/lang/String;)V

    .line 225
    .end local v0    # "wallpaperFileName":Ljava/lang/String;
    .end local v1    # "wallpaperPath":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 226
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 144
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->context:Landroid/content/Context;

    const v2, 0x7f01000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 145
    .local v0, "lac":Landroid/view/animation/LayoutAnimationController;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 146
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 147
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 148
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    new-instance v2, Lcom/shenma/tvlauncher/SettingWallpaperActivity$4;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$4;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 163
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    new-instance v2, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 194
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->wallpaper_gv:Landroid/widget/GridView;

    new-instance v2, Lcom/shenma/tvlauncher/SettingWallpaperActivity$6;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$6;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    return-void
.end method
