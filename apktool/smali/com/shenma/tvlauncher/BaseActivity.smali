.class public abstract Lcom/shenma/tvlauncher/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/BaseActivity$AutoStartReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private BroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected Port:I

.field protected SP:Landroid/content/SharedPreferences;

.field private Search:I

.field protected breathingAnimation:Landroid/view/animation/Animation;

.field protected context:Landroid/content/Context;

.field protected devicetype:Ljava/lang/String;

.field private displayCutout:Landroid/view/DisplayCutout;

.field protected exitDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

.field protected exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

.field protected from:Ljava/lang/String;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mHeight:I

.field protected mToast:Landroid/widget/Toast;

.field protected mWidth:I

.field private mediaHandler:Landroid/os/Handler;

.field protected netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

.field protected params:Ljava/lang/String;

.field protected screenSize:D

.field private server:Lnet/sunniwell/android/httpserver/HttpServer;

.field protected sp:Landroid/content/SharedPreferences;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->displayCutout:Landroid/view/DisplayCutout;

    .line 98
    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    .line 99
    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    .line 103
    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    .line 105
    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    .line 106
    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    new-instance v0, Lcom/shenma/tvlauncher/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/BaseActivity$1;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mediaHandler:Landroid/os/Handler;

    .line 128
    const/16 v0, 0x26fa

    iput v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/BaseActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/BaseActivity;

    .line 79
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mediaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/BaseActivity;)Lnet/sunniwell/android/httpserver/HttpServer;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/BaseActivity;

    .line 79
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/BaseActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/BaseActivity;

    .line 79
    iget v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->Search:I

    return v0
.end method

.method private showVolumeToast(III)V
    .locals 6
    .param p1, "resId"    # I
    .param p2, "max"    # I
    .param p3, "current"    # I

    .line 409
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 410
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    const v2, 0x7f080054

    const v3, 0x7f080053

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    .line 412
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0a0041

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 416
    .local v3, "center_image":Landroid/widget/ImageView;
    nop

    .line 417
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 418
    .local v2, "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 419
    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 420
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    iget-object v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 422
    .end local v2    # "center_progress":Landroid/widget/ProgressBar;
    .end local v3    # "center_image":Landroid/widget/ImageView;
    goto :goto_0

    .line 423
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 425
    .restart local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 426
    .restart local v3    # "center_image":Landroid/widget/ImageView;
    nop

    .line 427
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 428
    .restart local v2    # "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 429
    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 430
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    .end local v2    # "center_progress":Landroid/widget/ProgressBar;
    .end local v3    # "center_image":Landroid/widget/ImageView;
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 433
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 434
    iget-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 435
    return-void
.end method


# virtual methods
.method public final AttachedToWindow()I
    .locals 5

    .line 205
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 206
    .local v0, "applicationContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .local v2, "identifier":I
    if-gtz v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 207
    .end local v2    # "identifier":I
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public SearchIntent(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .line 664
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.example.MY_ACTION_FINISH_LIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v0, "localIntent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 667
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 668
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "TYPE"

    const-string v3, "ALL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    invoke-static {p1}, Lcom/shenma/tvlauncher/utils/Utils;->sanitizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NAME"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 671
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 672
    return-void
.end method

.method protected abstract findViewById()V
.end method

.method public finish()V
    .locals 2

    .line 469
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 470
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/BaseActivity;->overridePendingTransition(II)V

    .line 471
    return-void
.end method

.method protected handleFatalError()V
    .locals 1

    .line 441
    new-instance v0, Lcom/shenma/tvlauncher/BaseActivity$6;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/BaseActivity$6;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 449
    return-void
.end method

.method protected handleOutmemoryError()V
    .locals 1

    .line 455
    new-instance v0, Lcom/shenma/tvlauncher/BaseActivity$7;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/BaseActivity$7;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method protected abstract initView()V
.end method

.method protected abstract loadViewLayout()V
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 215
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onAttachedToWindow()V

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 219
    .local v0, "rootWindowInsets":Landroid/view/WindowInsets;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->displayCutout:Landroid/view/DisplayCutout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "rootWindowInsets":Landroid/view/WindowInsets;
    :cond_0
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 227
    .local v0, "attributes":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 228
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 230
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 233
    .end local v0    # "attributes":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/BaseActivity;->requestWindowFeature(I)Z

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/BaseActivity;->setRequestedOrientation(I)V

    .line 139
    iput-object p0, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    .line 140
    const-string v2, "shenma"

    invoke-virtual {p0, v2, v1}, Lcom/shenma/tvlauncher/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->sp:Landroid/content/SharedPreferences;

    .line 141
    const-string v2, "initData"

    invoke-virtual {p0, v2, v1}, Lcom/shenma/tvlauncher/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->SP:Landroid/content/SharedPreferences;

    .line 142
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    const v3, 0x7f010002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->breathingAnimation:Landroid/view/animation/Animation;

    .line 144
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    .line 145
    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 146
    .local v2, "manager":Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 147
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 148
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->mWidth:I

    .line 149
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->mHeight:I

    .line 151
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v8, v8

    .line 152
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 151
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 153
    .local v4, "diagonalPixels":D
    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x43200000    # 160.0f

    mul-float v6, v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v4, v6

    iput-wide v6, p0, Lcom/shenma/tvlauncher/BaseActivity;->screenSize:D

    .line 156
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/shenma/tvlauncher/BaseActivity;->version:Ljava/lang/String;

    .line 158
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/shenma/tvlauncher/BaseActivity;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&from="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/shenma/tvlauncher/BaseActivity;->from:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&devicetype="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/shenma/tvlauncher/BaseActivity;->devicetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "utf-8"

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Utils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/shenma/tvlauncher/BaseActivity;->params:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_0

    .line 159
    :catch_0
    move-exception v6

    .line 161
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 164
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    const-string v6, "Vpn_check"

    invoke-static {p0, v6, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_1

    .line 166
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->isVpnConnected()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/shenma/tvlauncher/utils/Utils;->isWifiProxy(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    :cond_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/BaseActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    :cond_1
    const-string v6, "Xp_check"

    invoke-static {p0, v6, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_3

    .line 173
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->checkXpFormMap()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->isHookByStack()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 174
    :cond_2
    iget-object v6, p0, Lcom/shenma/tvlauncher/BaseActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    :cond_3
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 180
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/shenma/tvlauncher/view/MyServices;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v7, "serviceIntent1":Landroid/content/Intent;
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/shenma/tvlauncher/view/MyService;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v8, "serviceIntent2":Landroid/content/Intent;
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/shenma/tvlauncher/view/JSONService;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v9, "serviceIntent3":Landroid/content/Intent;
    invoke-virtual {v6, v7, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    .line 185
    .local v10, "isService1Exist":Z
    :goto_1
    invoke-virtual {v6, v8, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    .line 186
    .local v11, "isService2Exist":Z
    :goto_2
    invoke-virtual {v6, v9, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    if-eqz v12, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 188
    .local v0, "isService3Exist":Z
    :goto_3
    if-eqz v10, :cond_7

    if-eqz v11, :cond_7

    if-eqz v0, :cond_7

    .line 193
    new-instance v12, Lcom/shenma/tvlauncher/BaseActivity$AutoStartReceiver;

    invoke-direct {v12, p0}, Lcom/shenma/tvlauncher/BaseActivity$AutoStartReceiver;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    iput-object v12, p0, Lcom/shenma/tvlauncher/BaseActivity;->BroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v12, "filter":Landroid/content/IntentFilter;
    const-string v13, "android.content.movie.search.Action"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v13, p0, Lcom/shenma/tvlauncher/BaseActivity;->BroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v13, v12}, Lcom/shenma/tvlauncher/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    const-string v13, "search"

    invoke-static {p0, v13, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->Search:I

    .line 199
    return-void

    .line 190
    .end local v12    # "filter":Landroid/content/IntentFilter;
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v12, "One of the services is missing"

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onDestroy()V
    .locals 1

    .line 262
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 264
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->BroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->BroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 272
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 274
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 278
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 280
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 256
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 258
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 284
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 287
    return-void
.end method

.method protected openActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 290
    .local p1, "pClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/shenma/tvlauncher/BaseActivity;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 291
    return-void
.end method

.method protected openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "pBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 294
    .local p1, "pClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 296
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 298
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 299
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/shenma/tvlauncher/BaseActivity;->overridePendingTransition(II)V

    .line 301
    return-void
.end method

.method protected openActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "pAction"    # Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/shenma/tvlauncher/BaseActivity;->openActivity(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 305
    return-void
.end method

.method protected openActivity(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "pAction"    # Ljava/lang/String;
    .param p2, "pBundle"    # Landroid/os/Bundle;

    .line 308
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 310
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 312
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 313
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/shenma/tvlauncher/BaseActivity;->overridePendingTransition(II)V

    .line 315
    return-void
.end method

.method protected abstract setListener()V
.end method

.method protected showExitDialog()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, "builder":Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;
    const v1, 0x7f0e00af

    new-instance v2, Lcom/shenma/tvlauncher/BaseActivity$2;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/BaseActivity$2;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;

    .line 351
    const v1, 0x7f0e00b0

    new-instance v2, Lcom/shenma/tvlauncher/BaseActivity$3;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/BaseActivity$3;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;

    .line 358
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;->create()Lcom/shenma/tvlauncher/view/ExitFullDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    .line 362
    .end local v0    # "builder":Lcom/shenma/tvlauncher/view/ExitFullDialog$Builder;
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/ExitFullDialog;->setCancelable(Z)V

    .line 363
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/ExitFullDialog;->setCanceledOnTouchOutside(Z)V

    .line 364
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->exitfullDialog:Lcom/shenma/tvlauncher/view/ExitFullDialog;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/ExitFullDialog;->show()V

    .line 365
    return-void
.end method

.method protected showExitDialog(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 374
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->SP:Landroid/content/SharedPreferences;

    const-string v1, "Exit_Message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "Message":Ljava/lang/String;
    new-instance v1, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    invoke-direct {v1, p2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    .local v1, "builder":Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    invoke-virtual {v1, p1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 377
    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 378
    new-instance v2, Lcom/shenma/tvlauncher/BaseActivity$4;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/BaseActivity$4;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    const v3, 0x7f0e00b0

    invoke-virtual {v1, v3, v2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 388
    new-instance v2, Lcom/shenma/tvlauncher/BaseActivity$5;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/BaseActivity$5;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    const v3, 0x7f0e00af

    invoke-virtual {v1, v3, v2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 395
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/HomeDialog;->shows()V

    .line 396
    return-void
.end method

.method protected showNetDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 324
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcom/shenma/tvlauncher/view/ExitDialog;

    invoke-direct {v0, p1}, Lcom/shenma/tvlauncher/view/ExitDialog;-><init>(Landroid/content/Context;)V

    .line 326
    .local v0, "exitDialog":Lcom/shenma/tvlauncher/view/ExitDialog;
    iput-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    .line 329
    .end local v0    # "exitDialog":Lcom/shenma/tvlauncher/view/ExitDialog;
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/ExitDialog;->setIsNet(Ljava/lang/Boolean;)V

    .line 330
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    const v2, 0x7f0e002c

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/ExitDialog;->setTitle(I)V

    .line 331
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    const-string/jumbo v2, "\u5f53\u524d\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u73b0\u5728\u8bbe\u7f6e\u7f51\u7edc\uff1f"

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/ExitDialog;->setMessage(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    const-string/jumbo v2, "\u597d\uff0c\u73b0\u5728\u8bbe\u7f6e"

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/ExitDialog;->setConfirm(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    const-string/jumbo v2, "\u7b97\u4e86\uff0c\u73b0\u5728\u4e0d\u7ba1"

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/ExitDialog;->setCancle(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/ExitDialog;->setCancelable(Z)V

    .line 335
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/ExitDialog;->setCanceledOnTouchOutside(Z)V

    .line 336
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->netDialog:Lcom/shenma/tvlauncher/view/ExitDialog;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/ExitDialog;->show()V

    .line 337
    return-void
.end method

.method public start(I)V
    .locals 5
    .param p1, "startPort"    # I

    .line 477
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Lnet/sunniwell/android/httpserver/HttpServer;->stop()V

    .line 480
    :cond_0
    const v0, 0xffff

    .line 481
    .local v0, "MAX_PORT":I
    move v1, p1

    .line 483
    .local v1, "port":I
    :goto_0
    const v2, 0xffff

    if-gt v1, v2, :cond_2

    .line 484
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->isPortAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    iput v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    .line 487
    :try_start_0
    new-instance v2, Lnet/sunniwell/android/httpserver/HttpServer;

    iget v3, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    invoke-direct {v2, v3}, Lnet/sunniwell/android/httpserver/HttpServer;-><init>(I)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    goto :goto_1

    .line 489
    :catch_0
    move-exception v2

    .line 491
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 495
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    if-eqz v2, :cond_3

    .line 503
    invoke-virtual {v2}, Lnet/sunniwell/android/httpserver/HttpServer;->getHttpRequestHandlerRegistry()Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    move-result-object v2

    .line 504
    .local v2, "registry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    new-instance v3, Lcom/shenma/tvlauncher/BaseActivity$8;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/BaseActivity$8;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    const-string v4, "/action"

    invoke-virtual {v2, v4, v3}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 554
    new-instance v3, Lcom/shenma/tvlauncher/utils/HttpStringHandler;

    iget-object v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/shenma/tvlauncher/utils/HttpStringHandler;-><init>(Landroid/content/Context;)V

    const-string v4, "*"

    invoke-virtual {v2, v4, v3}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 556
    iget-object v3, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-virtual {v3}, Lnet/sunniwell/android/httpserver/HttpServer;->start()V

    .line 559
    .end local v2    # "registry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget v3, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    const-string v4, "port"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 560
    return-void

    .line 501
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No available ports found within the range."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public startA(I)V
    .locals 5
    .param p1, "port"    # I

    .line 564
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Lnet/sunniwell/android/httpserver/HttpServer;->stop()V

    .line 570
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/shenma/tvlauncher/utils/Utils;->isPortAvailable(I)Z

    move-result v0

    .line 571
    .local v0, "portAvailable":Z
    if-eqz v0, :cond_1

    .line 572
    iput p1, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    .line 573
    new-instance v1, Lnet/sunniwell/android/httpserver/HttpServer;

    iget v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    invoke-direct {v1, v2}, Lnet/sunniwell/android/httpserver/HttpServer;-><init>(I)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    goto :goto_0

    .line 575
    :cond_1
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    .line 576
    new-instance v1, Lnet/sunniwell/android/httpserver/HttpServer;

    iget v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    invoke-direct {v1, v2}, Lnet/sunniwell/android/httpserver/HttpServer;-><init>(I)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    .line 579
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-virtual {v1}, Lnet/sunniwell/android/httpserver/HttpServer;->getHttpRequestHandlerRegistry()Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    move-result-object v1

    .line 580
    .local v1, "registry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    const-string v2, "/action"

    new-instance v3, Lcom/shenma/tvlauncher/BaseActivity$9;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/BaseActivity$9;-><init>(Lcom/shenma/tvlauncher/BaseActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 630
    const-string v2, "*"

    new-instance v3, Lcom/shenma/tvlauncher/utils/HttpStringHandler;

    iget-object v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/shenma/tvlauncher/utils/HttpStringHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 632
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-virtual {v2}, Lnet/sunniwell/android/httpserver/HttpServer;->start()V

    .line 634
    iget-object v2, p0, Lcom/shenma/tvlauncher/BaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "port"

    iget v4, p0, Lcom/shenma/tvlauncher/BaseActivity;->Port:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    nop

    .end local v0    # "portAvailable":Z
    .end local v1    # "registry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    goto :goto_1

    .line 636
    :catch_0
    move-exception v0

    .line 639
    :goto_1
    return-void
.end method
