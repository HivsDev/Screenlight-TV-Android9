.class public Lcom/shenma/tvlauncher/fragment/AppFragment;
.super Lcom/shenma/tvlauncher/fragment/BaseFragment;
.source "AppFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final SHOW_NEXT_IMG:I

.field animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

.field private app_fls:[Landroid/widget/FrameLayout;

.field private app_iv_0:Landroid/widget/ImageSwitcher;

.field public app_typeLogs:[Landroid/widget/ImageView;

.field private appbgs:[Landroid/widget/ImageView;

.field private bigImageIndexDef:I

.field private currentIndex:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/RecAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private imgurls:[Ljava/lang/String;

.field private mErrListener:Lcom/android/volley/Response$ErrorListener;

.field private mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

.field private mHandler:Landroid/os/Handler;

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mScrollTask:Ljava/lang/Runnable;

.field private mSucListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/domain/Upload;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shenma/tvlauncher/domain/RecAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private smallImageIndexDef:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;-><init>()V

    .line 83
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->SHOW_NEXT_IMG:I

    .line 86
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$1;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mErrListener:Lcom/android/volley/Response$ErrorListener;

    .line 97
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$2;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mSucListener:Lcom/android/volley/Response$Listener;

    .line 105
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$3;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->bigImageIndexDef:I

    .line 123
    const/4 v1, 0x6

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->smallImageIndexDef:I

    .line 126
    iput v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 127
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$4;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mHandler:Landroid/os/Handler;

    .line 147
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->imgurls:[Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$5;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$5;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/fragment/AppFragment;)Landroid/widget/ImageSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_iv_0:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/fragment/AppFragment;)Lcom/android/volley/toolbox/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/fragment/AppFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->uploadInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/shenma/tvlauncher/fragment/AppFragment;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/fragment/AppFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/shenma/tvlauncher/fragment/AppFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    return p1
.end method

.method static synthetic access$208(Lcom/shenma/tvlauncher/fragment/AppFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/fragment/AppFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->imgurls:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/fragment/AppFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/fragment/AppFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/shenma/tvlauncher/fragment/AppFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;
    .param p1, "x1"    # Ljava/util/List;

    .line 80
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->data:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/fragment/AppFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->bigImageIndexDef:I

    return v0
.end method

.method static synthetic access$602(Lcom/shenma/tvlauncher/fragment/AppFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->bigImageIndexDef:I

    return p1
.end method

.method static synthetic access$608(Lcom/shenma/tvlauncher/fragment/AppFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->bigImageIndexDef:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->bigImageIndexDef:I

    return v0
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/fragment/AppFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/fragment/AppFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->smallImageIndexDef:I

    return v0
.end method

.method static synthetic access$802(Lcom/shenma/tvlauncher/fragment/AppFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->smallImageIndexDef:I

    return p1
.end method

.method static synthetic access$808(Lcom/shenma/tvlauncher/fragment/AppFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 80
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->smallImageIndexDef:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->smallImageIndexDef:I

    return v0
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/fragment/AppFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->installApk(Ljava/lang/String;)V

    return-void
.end method

.method private createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 290
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$8;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$8;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    return-object v0
.end method

.method private createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/domain/RecApp;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/AppFragment$9;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V

    return-object v0
.end method

.method private init()V
    .locals 0

    .line 363
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->loadViewLayout()V

    .line 364
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->findViewById()V

    .line 365
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->setListener()V

    .line 366
    return-void
.end method

.method private initData()V
    .locals 8

    .line 227
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mQueue:Lcom/android/volley/RequestQueue;

    .line 228
    invoke-static {}, Lcom/shenma/tvlauncher/application/MyVolley;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 229
    new-instance v0, Lcom/shenma/tvlauncher/fragment/AppFragment$7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->RECAPPS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/shenma/tvlauncher/domain/RecApp;

    .line 231
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v6

    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/fragment/AppFragment$7;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 253
    .local v0, "mRecApps":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/domain/RecApp;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 254
    return-void
.end method

.method private initscheduledExecutorService()V
    .locals 8

    .line 894
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 896
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xa

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 898
    return-void
.end method

.method private installApk(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 700
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/utils/Utils;->getUninatllApkInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 703
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 704
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    const-string v2, "application/vnd.android.package-archive"

    .line 706
    .local v2, "type":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startActivity(Landroid/content/Intent;)V

    .line 708
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "type":Ljava/lang/String;
    goto :goto_0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const v1, 0x7f0e0083

    const v2, 0x7f070140

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 711
    :goto_0
    return-void
.end method

.method private showLoseFocusAinimation(I)V
    .locals 9
    .param p1, "paramInt"    # I

    .line 863
    const v7, 0x3f8ccccd    # 1.1f

    .line 864
    .local v7, "f1":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 865
    .local v8, "f2":F
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    move v3, v7

    move v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->setAttributs(FFFFJ)V

    .line 866
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 867
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 878
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 879
    return-void
.end method

.method private showOnFocusAnimation(I)V
    .locals 9
    .param p1, "paramInt"    # I

    .line 832
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 833
    const/high16 v0, 0x3f800000    # 1.0f

    .line 834
    .local v0, "f1":F
    const v8, 0x3f8ccccd    # 1.1f

    .line 835
    .local v8, "f2":F
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f8ccccd    # 1.1f

    const-wide/16 v6, 0xc8

    move v4, v0

    move v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->setAttributs(FFFFJ)V

    .line 836
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 837
    .local v1, "mAnimation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/shenma/tvlauncher/fragment/AppFragment$11;

    invoke-direct {v2, p0, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment$11;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 854
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 855
    return-void
.end method

.method private shutdownScheduledExecutorService()V
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 885
    :cond_0
    return-void
.end method

.method private startCheckLoaclApk(Ljava/lang/String;)Z
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .line 675
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shenma/tvlauncher/application/MyApplication;->PUBLIC_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 677
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 678
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 679
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 680
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 681
    .local v6, "fName":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shenma/tvlauncher/application/MyApplication;->PUBLIC_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->installApk(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    const/4 v1, 0x1

    return v1

    .line 679
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "fName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 689
    .end local v2    # "files":[Ljava/io/File;
    :cond_1
    goto :goto_1

    .line 687
    :catch_0
    move-exception v2

    .line 688
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method private startDownloadApk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->context:Landroid/content/Context;

    const v1, 0x7f0e0082

    const v2, 0x7f070140

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 636
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/fragment/AppFragment$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment$10;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 665
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 666
    return-void
.end method

.method private startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "apkurl"    # Ljava/lang/String;
    .param p2, "packName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 611
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->packLst:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 612
    .local v1, "pack":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 615
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 616
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startActivity(Landroid/content/Intent;)V

    .line 617
    return-void

    .line 619
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pack":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 621
    :cond_1
    invoke-direct {p0, p3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startCheckLoaclApk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 623
    invoke-direct {p0, p2, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startDownloadApk(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_2
    return-void
.end method

.method private startScheduledExecutorService()V
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->initscheduledExecutorService()V

    .line 891
    :cond_0
    return-void
.end method

.method private uploadInfo(Ljava/lang/String;)V
    .locals 14
    .param p1, "packName"    # Ljava/lang/String;

    .line 192
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 193
    .local v0, "VERSION_RELEASE":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 194
    .local v1, "MODEL":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 195
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "DeviceId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "devicecode":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&devicecode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&packname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    .line 198
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    const-string v6, " "

    const-string v7, "%20"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "params------>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "zhouchuan"

    invoke-static {v6, v5}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v5, Lcom/shenma/tvlauncher/fragment/AppFragment$6;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->UPLOAD_URL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->params:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/shenma/tvlauncher/domain/Upload;

    iget-object v12, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mSucListener:Lcom/android/volley/Response$Listener;

    iget-object v13, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mErrListener:Lcom/android/volley/Response$ErrorListener;

    const/4 v9, 0x1

    move-object v7, v5

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/shenma/tvlauncher/fragment/AppFragment$6;-><init>(Lcom/shenma/tvlauncher/fragment/AppFragment;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 223
    .local v5, "Upload":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/domain/Upload;>;"
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v6, v5}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 224
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 15

    .line 401
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v2, 0x7f080021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 402
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v3, 0x7f080025

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 403
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v4, 0x7f080026

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 404
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v5, 0x7f080027

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 405
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v6, 0x7f080028

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 406
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v7, 0x7f080029

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 407
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v8, 0x7f08002a

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    .line 408
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v9, 0x7f08002b

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    .line 409
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v10, 0x7f08002c

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    .line 410
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v11, 0x7f080022

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    .line 411
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v12, 0x7f080023

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/16 v12, 0xa

    aput-object v1, v0, v12

    .line 412
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v13, 0x7f080024

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/16 v13, 0xb

    aput-object v1, v0, v13

    .line 414
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_iv_0:Landroid/widget/ImageSwitcher;

    .line 416
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f08002f

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 417
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f080033

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 418
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f080034

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 419
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f080035

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 420
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f080036

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 421
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f080037

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 422
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f080038

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v8

    .line 423
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f080039

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v9

    .line 424
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f08003a

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v10

    .line 425
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f080030

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v11

    .line 426
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f080031

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v12

    .line 427
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f080032

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v13

    .line 430
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v14, 0x7f080014

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 431
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 432
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 433
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 434
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v2, 0x7f08001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 435
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 436
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v2, 0x7f08001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v8

    .line 437
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v2, 0x7f08001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v9

    .line 438
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v2, 0x7f08001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v10

    .line 439
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v11

    .line 440
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v12

    .line 441
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v13

    .line 442
    return-void
.end method

.method protected loadViewLayout()V
    .locals 2

    .line 393
    const/16 v0, 0xc

    new-array v1, v0, [Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_fls:[Landroid/widget/FrameLayout;

    .line 394
    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    .line 395
    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    .line 396
    new-instance v0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    .line 397
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 462
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080032

    if-eq v0, v1, :cond_0

    .line 463
    return-void

    .line 464
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "/"

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 516
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 517
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 518
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 519
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 520
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 522
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    .line 521
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-direct {p0, v0, v3, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    goto/16 :goto_0

    .line 507
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 508
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 509
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 510
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 511
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 513
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    .line 512
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-direct {p0, v0, v3, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    goto/16 :goto_0

    .line 498
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 499
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 500
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 501
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 502
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 504
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    .line 503
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-direct {p0, v0, v3, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    goto/16 :goto_0

    .line 588
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 589
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 590
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 591
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 592
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 594
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    .line 593
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-direct {p0, v0, v3, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 579
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 580
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 581
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 582
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 583
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 585
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    .line 584
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-direct {p0, v0, v3, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    goto/16 :goto_0

    .line 570
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 571
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 572
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 573
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 574
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 576
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    .line 575
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-direct {p0, v0, v3, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    goto/16 :goto_0

    .line 561
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 562
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 563
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 564
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 565
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 567
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    .line 566
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-direct {p0, v0, v3, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    goto/16 :goto_0

    .line 552
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 553
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 554
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 555
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 556
    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 558
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    .line 557
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-direct {p0, v0, v3, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    goto/16 :goto_0

    .line 495
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->context:Landroid/content/Context;

    const-class v2, Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startActivity(Landroid/content/Intent;)V

    .line 496
    goto/16 :goto_0

    .line 534
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 535
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 536
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 537
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 538
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 540
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    .line 539
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-direct {p0, v0, v3, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    goto/16 :goto_0

    .line 525
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 526
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 527
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 528
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 529
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 531
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    .line 530
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-direct {p0, v0, v3, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    goto :goto_0

    .line 543
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 544
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 545
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getPackname()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 546
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 547
    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->map:Ljava/util/Map;

    .line 549
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjapk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    .line 548
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-direct {p0, v0, v3, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    nop

    .line 597
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/HomeActivity;->overridePendingTransition(II)V

    .line 599
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08002f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 163
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 169
    if-nez p2, :cond_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    if-nez v0, :cond_1

    .line 173
    const v0, 0x7f0a0018

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    .line 174
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->init()V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 177
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 178
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 180
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->data:Ljava/util/List;

    if-nez v0, :cond_3

    .line 181
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->initData()V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 389
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onDestroy()V

    .line 390
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 347
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onDetach()V

    .line 349
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 351
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 352
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    nop

    .line 359
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 354
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, "paramInt":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 799
    :pswitch_1
    const/16 v0, 0x8

    .line 802
    goto/16 :goto_0

    .line 794
    :pswitch_2
    const/4 v0, 0x7

    .line 797
    goto/16 :goto_0

    .line 789
    :pswitch_3
    const/4 v0, 0x6

    .line 792
    goto/16 :goto_0

    .line 778
    :pswitch_4
    const/4 v0, 0x5

    .line 780
    if-eqz p2, :cond_0

    .line 781
    const/4 v1, 0x5

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 782
    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 783
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    goto/16 :goto_0

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startScheduledExecutorService()V

    .line 787
    goto/16 :goto_0

    .line 767
    :pswitch_5
    const/4 v0, 0x4

    .line 769
    if-eqz p2, :cond_1

    .line 770
    const/4 v1, 0x4

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 771
    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 772
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    goto/16 :goto_0

    .line 774
    :cond_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startScheduledExecutorService()V

    .line 776
    goto/16 :goto_0

    .line 756
    :pswitch_6
    const/4 v0, 0x3

    .line 758
    if-eqz p2, :cond_2

    .line 759
    const/4 v1, 0x3

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 760
    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 761
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    goto :goto_0

    .line 763
    :cond_2
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startScheduledExecutorService()V

    .line 765
    goto :goto_0

    .line 745
    :pswitch_7
    const/4 v0, 0x2

    .line 747
    if-eqz p2, :cond_3

    .line 748
    const/4 v1, 0x2

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 749
    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 750
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    goto :goto_0

    .line 752
    :cond_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startScheduledExecutorService()V

    .line 754
    goto :goto_0

    .line 734
    :pswitch_8
    const/4 v0, 0x1

    .line 736
    if-eqz p2, :cond_4

    .line 737
    const/4 v1, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 738
    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 739
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    goto :goto_0

    .line 741
    :cond_4
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startScheduledExecutorService()V

    .line 743
    goto :goto_0

    .line 809
    :pswitch_9
    const/16 v0, 0xb

    goto :goto_0

    .line 804
    :pswitch_a
    const/16 v0, 0x9

    .line 807
    goto :goto_0

    .line 723
    :pswitch_b
    const/4 v0, 0x0

    .line 725
    if-eqz p2, :cond_5

    .line 726
    iput v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->currentIndex:I

    .line 727
    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mScrollTask:Ljava/lang/Runnable;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 728
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    goto :goto_0

    .line 730
    :cond_5
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->startScheduledExecutorService()V

    .line 732
    goto :goto_0

    .line 721
    :pswitch_c
    nop

    .line 815
    :goto_0
    if-eqz p2, :cond_6

    .line 816
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->showOnFocusAnimation(I)V

    .line 817
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 818
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 821
    :cond_6
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->showLoseFocusAinimation(I)V

    .line 824
    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f08002e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .line 372
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onResume()V

    .line 373
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 377
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->initscheduledExecutorService()V

    .line 378
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onStart()V

    .line 379
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 383
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->shutdownScheduledExecutorService()V

    .line 384
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onStop()V

    .line 385
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_iv_0:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 446
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_iv_0:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 448
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_iv_0:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->appbgs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
