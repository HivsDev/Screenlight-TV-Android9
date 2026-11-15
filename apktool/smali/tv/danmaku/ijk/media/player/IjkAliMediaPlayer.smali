.class public Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
.super Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;
.source "IjkAliMediaPlayer.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected audioSessionId:I

.field private deviceId:Ljava/lang/String;

.field protected isLooping:Z

.field protected isPreparing:Z

.field protected isPreview:Z

.field private isWaitOnSeekComplete:Z

.field protected mAppContext:Landroid/content/Context;

.field private mCurrentPosition:J

.field protected mDataSource:Ljava/lang/String;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mInternalPlayer:Lcom/aliyun/player/AliPlayer;

.field protected mMediaSource:Lcom/aliyun/player/source/UrlSource;

.field private mPlayState:I

.field protected mSurface:Landroid/view/Surface;

.field private mVideoBufferedPosition:J

.field protected mVideoHeight:I

.field protected mVideoWidth:I

.field private netSpeedLong:J

.field private onCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

.field private onErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

.field private onInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

.field private onLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private onPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private onRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

.field private onSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

.field private onStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private onVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 40
    const-class v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mHeaders:Ljava/util/Map;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoBufferedPosition:J

    .line 54
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mCurrentPosition:J

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isWaitOnSeekComplete:Z

    .line 239
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->audioSessionId:I

    .line 276
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isLooping:Z

    .line 426
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isPreview:Z

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isPreparing:Z

    .line 471
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$2;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$2;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 481
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$3;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$3;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 487
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$4;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$4;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 495
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$5;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$5;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 506
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->netSpeedLong:J

    .line 543
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$6;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$6;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 563
    const/4 v0, -0x1

    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mPlayState:I

    .line 565
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$7;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$7;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 574
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$8;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$8;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 582
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$9;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$9;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 593
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$10;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$10;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mAppContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    .line 38
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    .line 38
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$1000(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;Lcom/aliyun/player/bean/InfoBean;)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
    .param p1, "x1"    # Lcom/aliyun/player/bean/InfoBean;

    .line 38
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->sourceVideoPlayerInfo(Lcom/aliyun/player/bean/InfoBean;)V

    return-void
.end method

.method static synthetic access$1102(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
    .param p1, "x1"    # I

    .line 38
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mPlayState:I

    return p1
.end method

.method static synthetic access$1202(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isWaitOnSeekComplete:Z

    return p1
.end method

.method static synthetic access$200(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnRenderingStartListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    .line 38
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    return-object v0
.end method

.method static synthetic access$300(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    .line 38
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$400(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    .line 38
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    return-object v0
.end method

.method static synthetic access$500(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnStateChangedListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    .line 38
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    return-object v0
.end method

.method static synthetic access$600(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    .line 38
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$700(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    .line 38
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$800(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    .line 38
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$900(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    .line 38
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method private sourceVideoPlayerInfo(Lcom/aliyun/player/bean/InfoBean;)V
    .locals 6
    .param p1, "infoBean"    # Lcom/aliyun/player/bean/InfoBean;

    .line 512
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isWaitOnSeekComplete:Z

    if-eqz v0, :cond_0

    .line 513
    return-void

    .line 515
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object v0

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentDownloadSpeed:Lcom/aliyun/player/bean/InfoCode;

    if-ne v0, v1, :cond_1

    .line 517
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getExtraValue()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->netSpeedLong:J

    goto :goto_1

    .line 519
    :cond_1
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object v0

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->BufferedPosition:Lcom/aliyun/player/bean/InfoCode;

    if-ne v0, v1, :cond_3

    .line 521
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getExtraValue()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoBufferedPosition:J

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "percent":I
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 525
    iget-wide v1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoBufferedPosition:J

    long-to-float v1, v1

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v0, v1

    .line 528
    :cond_2
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mAppContext:Landroid/content/Context;

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->mt:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 529
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->notifyOnBufferingUpdate(I)V

    goto :goto_0

    .line 532
    .end local v0    # "percent":I
    :cond_3
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object v0

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    if-ne v0, v1, :cond_4

    .line 534
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getExtraValue()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mCurrentPosition:J

    goto :goto_1

    .line 532
    :cond_4
    :goto_0
    nop

    .line 536
    :goto_1
    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .line 243
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->audioSessionId:I

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 6

    .line 457
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x0

    return v0

    .line 460
    :cond_0
    const/4 v0, 0x0

    .line 461
    .local v0, "percent":I
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 462
    iget-wide v1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoBufferedPosition:J

    long-to-float v1, v1

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v0, v1

    .line 465
    :cond_1
    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 189
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 190
    const-wide/16 v0, 0x0

    return-wide v0

    .line 191
    :cond_0
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mCurrentPosition:J

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 196
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 197
    const-wide/16 v0, 0x0

    return-wide v0

    .line 198
    :cond_0
    invoke-interface {v0}, Lcom/aliyun/player/AliPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 1

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 539
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->netSpeedLong:J

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .line 453
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0}, Lcom/aliyun/player/AliPlayer;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .line 290
    const/4 v0, 0x0

    new-array v0, v0, [Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 155
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 150
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isLooping:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 160
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 161
    return v1

    .line 164
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mPlayState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isPreview()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isPreview:Z

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 140
    :cond_0
    invoke-interface {v0}, Lcom/aliyun/player/AliPlayer;->pause()V

    .line 141
    return-void
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->prepareAsyncInternal()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isWaitOnSeekComplete:Z

    .line 120
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t prepare a prepared player"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepareAsyncInternal()V
    .locals 2

    .line 300
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    return-void
.end method

.method public release()V
    .locals 1

    .line 228
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->reset()V

    .line 231
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 214
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->stop()V

    .line 216
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0}, Lcom/aliyun/player/AliPlayer;->release()V

    .line 217
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    .line 219
    :cond_0
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 220
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoWidth:I

    .line 222
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoHeight:I

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mPlayState:I

    .line 224
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "msec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->getDuration()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isWaitOnSeekComplete:Z

    .line 183
    iput-wide p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mCurrentPosition:J

    .line 184
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/AliPlayer;->seekTo(J)V

    .line 185
    return-void

    .line 179
    :cond_2
    :goto_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "streamtype"    # I

    .line 264
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 95
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/aliyun/player/source/UrlSource;

    invoke-direct {v0}, Lcom/aliyun/player/source/UrlSource;-><init>()V

    .line 97
    .local v0, "urlSource":Lcom/aliyun/player/source/UrlSource;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/player/source/UrlSource;->setUri(Ljava/lang/String;)V

    .line 98
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mMediaSource:Lcom/aliyun/player/source/UrlSource;

    .line 99
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 81
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 82
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 83
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 85
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 86
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 91
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 296
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->deviceId:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 66
    :goto_0
    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0
    .param p1, "keepInBackground"    # Z

    .line 269
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 254
    return-void
.end method

.method public setLooping(Z)V
    .locals 0
    .param p1, "looping"    # Z

    .line 280
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isLooping:Z

    .line 281
    return-void
.end method

.method public setPreview(Z)V
    .locals 0
    .param p1, "preview"    # Z

    .line 433
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isPreview:Z

    .line 434
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .line 146
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F
        .annotation build Landroid/support/annotation/Size;
            min = 0x0L
        .end annotation
    .end param

    .line 447
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0, p1}, Lcom/aliyun/player/AliPlayer;->setSpeed(F)V

    .line 450
    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 70
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 71
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 75
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0, p1}, Lcom/aliyun/player/AliPlayer;->setSurface(Landroid/view/Surface;)V

    .line 77
    :cond_1
    return-void
.end method

.method public setVolume(FF)V
    .locals 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 235
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    .line 236
    add-float v1, p1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/aliyun/player/AliPlayer;->setVolume(F)V

    .line 237
    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 274
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 126
    :cond_0
    invoke-interface {v0}, Lcom/aliyun/player/AliPlayer;->start()V

    .line 127
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 132
    return-void

    .line 133
    :cond_0
    invoke-interface {v0}, Lcom/aliyun/player/AliPlayer;->stop()V

    .line 134
    return-void
.end method
