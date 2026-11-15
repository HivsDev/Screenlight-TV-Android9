.class public Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
.super Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;
.source "IjkExoMediaPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IjkExoMediaPlayer"


# instance fields
.field private audioSessionId:I

.field private callback:Ljava/lang/Runnable;

.field public handler:Landroid/os/Handler;

.field private isBuffering:Z

.field private isCache:Z

.field private isLooping:Z

.field private isPrepareing:Z

.field private isPreview:Z

.field private lastReportedPlayWhenReady:Z

.field private lastReportedPlaybackState:I

.field private mAppContext:Landroid/content/Context;

.field private mCacheDir:Ljava/io/File;

.field private mDataSource:Ljava/lang/String;

.field private mEventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

.field private mExoSourceManager:Ltv/danmaku/ijk/media/exo/ExoSourceManager;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private mSurface:Landroid/view/Surface;

.field private mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private renderersFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mHeaders:Ljava/util/Map;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isPrepareing:Z

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isBuffering:Z

    .line 89
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isLooping:Z

    .line 93
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isPreview:Z

    .line 97
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isCache:Z

    .line 107
    iput v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->audioSessionId:I

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    .line 115
    iput v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->lastReportedPlaybackState:I

    .line 116
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->newInstance(Landroid/content/Context;Ljava/util/Map;)Ltv/danmaku/ijk/media/exo/ExoSourceManager;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mExoSourceManager:Ltv/danmaku/ijk/media/exo/ExoSourceManager;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->handler:Landroid/os/Handler;

    .line 118
    return-void
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    .line 72
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method

.method static synthetic access$200(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    .line 72
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;I)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    .param p1, "x1"    # I

    .line 72
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnBufferingUpdate(I)V

    return-void
.end method

.method static synthetic access$400(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    .line 72
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->callback:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .line 332
    iget v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->audioSessionId:I

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 453
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x0

    return v0

    .line 455
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .line 402
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mCacheDir:Ljava/io/File;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 276
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 277
    const-wide/16 v0, 0x0

    return-wide v0

    .line 278
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 283
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 284
    const-wide/16 v0, 0x0

    return-wide v0

    .line 285
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExoSourceManager()Ltv/danmaku/ijk/media/exo/ExoSourceManager;
    .locals 1

    .line 424
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mExoSourceManager:Ltv/danmaku/ijk/media/exo/ExoSourceManager;

    return-object v0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 1

    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaSource()Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 1

    .line 416
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 446
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    return v0
.end method

.method public getTotalRxBytes(Landroid/app/Activity;)J
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 498
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getTrackGroup()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v0, "trackInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    .line 465
    .local v1, "mappedTrackInfo":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    if-nez v1, :cond_0

    .line 466
    return-object v0

    .line 468
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 469
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 470
    .local v3, "trackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    iget v4, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-eqz v4, :cond_4

    .line 472
    iget-object v4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 483
    goto :goto_2

    .line 480
    :cond_1
    const/4 v4, 0x3

    .line 481
    .local v4, "trackType":I
    goto :goto_1

    .line 477
    .end local v4    # "trackType":I
    :cond_2
    const/4 v4, 0x2

    .line 478
    .restart local v4    # "trackType":I
    goto :goto_1

    .line 474
    .end local v4    # "trackType":I
    :cond_3
    const/4 v4, 0x1

    .line 475
    .restart local v4    # "trackType":I
    nop

    .line 485
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .end local v3    # "trackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .end local v4    # "trackType":I
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 488
    .end local v2    # "i":I
    :cond_5
    return-object v0
.end method

.method public bridge synthetic getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .line 72
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;
    .locals 1

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 248
    iget v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 243
    iget v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public isCache()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isCache:Z

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isLooping:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 253
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 254
    return v1

    .line 255
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    .line 256
    .local v0, "state":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 263
    return v1

    .line 259
    :cond_1
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    return v1
.end method

.method public isPreview()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isPreview:Z

    return v0
.end method

.method public onLoadingChanged(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .line 514
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 599
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 1
    .param p1, "error"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 587
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->release()V

    .line 588
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnError(II)Z

    .line 589
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 11
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .line 521
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->lastReportedPlayWhenReady:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->lastReportedPlaybackState:I

    if-eq v0, p2, :cond_a

    .line 522
    :cond_0
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isBuffering:Z

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 523
    if-eq p2, v3, :cond_1

    if-eq p2, v2, :cond_1

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iput v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    .line 527
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    iput v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    .line 528
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 529
    .local v0, "videoFormat":Lcom/google/android/exoplayer2/Format;
    iget v5, v0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 530
    .local v5, "videoSampleWidth":I
    iget v6, v0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 531
    .local v6, "videoSampleHeight":I
    iget v7, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    div-int v8, v7, v5

    .line 532
    .local v8, "videoSarNum":I
    iget v9, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    div-int v10, v9, v6

    .line 534
    .local v10, "videoSarDen":I
    invoke-virtual {p0, v7, v9, v4, v4}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    .line 535
    const/16 v7, 0x2be

    iget-object v9, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v9

    invoke-virtual {p0, v7, v9}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnInfo(II)Z

    .line 536
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isBuffering:Z

    .line 541
    .end local v0    # "videoFormat":Lcom/google/android/exoplayer2/Format;
    .end local v5    # "videoSampleWidth":I
    .end local v6    # "videoSampleHeight":I
    .end local v8    # "videoSarNum":I
    .end local v10    # "videoSarDen":I
    :cond_2
    :goto_0
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isPrepareing:Z

    if-eqz v0, :cond_4

    .line 542
    if-eq p2, v3, :cond_3

    goto :goto_1

    .line 544
    :cond_3
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnPrepared()V

    .line 545
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isPrepareing:Z

    .line 550
    :cond_4
    :goto_1
    if-eq p2, v4, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_5

    goto :goto_2

    .line 565
    :cond_5
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnCompletion()V

    .line 566
    goto :goto_2

    .line 563
    :cond_6
    goto :goto_2

    .line 555
    :cond_7
    const/16 v0, 0x2bd

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnInfo(II)Z

    .line 556
    iput-boolean v4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isBuffering:Z

    .line 557
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->callback:Ljava/lang/Runnable;

    if-nez v0, :cond_8

    .line 558
    new-instance v0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;-><init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$1;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->callback:Ljava/lang/Runnable;

    .line 560
    :cond_8
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    goto :goto_2

    .line 552
    :cond_9
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnCompletion()V

    .line 553
    nop

    .line 571
    :cond_a
    :goto_2
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->lastReportedPlayWhenReady:Z

    .line 572
    iput p2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->lastReportedPlaybackState:I

    .line 573
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 594
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .line 578
    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    .line 604
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0
    .param p1, "shuffleModeEnabled"    # Z

    .line 583
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;
    .param p3, "reason"    # I

    .line 504
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0
    .param p1, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "trackSelections"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 509
    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 221
    return-void

    .line 222
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 223
    return-void
.end method

.method public prepareAsync()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_4

    .line 170
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 172
    .local v0, "videoTrackSelectionFactory":Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 173
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 175
    new-instance v1, Lcom/google/android/exoplayer2/util/EventLogger;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

    .line 177
    sget-object v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 179
    .local v1, "preferExtensionDecoders":Z
    const/4 v2, 0x1

    .line 180
    .local v2, "useExtensionRenderers":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 181
    if-eqz v1, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 182
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v4, 0x0

    :goto_0
    nop

    .line 185
    .local v4, "extensionRendererMode":I
    new-instance v5, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object v6, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->renderersFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    .line 186
    new-instance v5, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 187
    .local v5, "loadControl":Lcom/google/android/exoplayer2/DefaultLoadControl;
    iget-object v6, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->renderersFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object v7, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    const/4 v8, 0x0

    invoke-static {v8, v6, v7, v5}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v6

    iput-object v6, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 188
    iget-object v6, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v6, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 189
    iget-object v6, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 191
    iget-object v6, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v6, :cond_2

    .line 192
    iget-object v7, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 194
    :cond_2
    iget-object v6, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 195
    iget-object v6, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 196
    iget-object v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->callback:Ljava/lang/Runnable;

    if-nez v3, :cond_3

    .line 197
    new-instance v3, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;

    invoke-direct {v3, p0, v8}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;-><init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$1;)V

    iput-object v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->callback:Ljava/lang/Runnable;

    .line 199
    :cond_3
    return-void

    .line 169
    .end local v0    # "videoTrackSelectionFactory":Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .end local v1    # "preferExtensionDecoders":Z
    .end local v2    # "useExtensionRenderers":Z
    .end local v4    # "extensionRendererMode":I
    .end local v5    # "loadControl":Lcom/google/android/exoplayer2/DefaultLoadControl;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t prepare a prepared player"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 1

    .line 363
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->reset()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

    .line 367
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 300
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 302
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 303
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 304
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 307
    :cond_0
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 308
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    .line 310
    iput v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    .line 311
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "msec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 270
    return-void

    .line 271
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 272
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "streamtype"    # I

    .line 354
    return-void
.end method

.method public setCache(Z)V
    .locals 0
    .param p1, "cache"    # Z

    .line 398
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isCache:Z

    .line 399
    return-void
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 412
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mCacheDir:Ljava/io/File;

    .line 413
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 137
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mExoSourceManager:Ltv/danmaku/ijk/media/exo/ExoSourceManager;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Ljava/lang/String;

    iget-boolean v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isPreview:Z

    iget-boolean v4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isCache:Z

    iget-boolean v5, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isLooping:Z

    iget-object v6, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mCacheDir:Ljava/io/File;

    invoke-virtual/range {v1 .. v6}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getMediaSource(Ljava/lang/String;ZZZLjava/io/File;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 139
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

    .line 143
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 144
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 145
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 147
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 148
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 153
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .line 122
    if-nez p1, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 126
    :goto_0
    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0
    .param p1, "keepInBackground"    # Z

    .line 359
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 344
    return-void
.end method

.method public setLooping(Z)V
    .locals 0
    .param p1, "looping"    # Z

    .line 317
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isLooping:Z

    .line 318
    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 420
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 421
    return-void
.end method

.method public setPreview(Z)V
    .locals 0
    .param p1, "preview"    # Z

    .line 380
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->isPreview:Z

    .line 381
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .line 233
    return-void
.end method

.method public setSpeed(FF)V
    .locals 2
    .param p1, "speed"    # F
        .annotation build Landroid/support/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .param p2, "pitch"    # F
        .annotation build Landroid/support/annotation/Size;
            min = 0x0L
        .end annotation
    .end param

    .line 434
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 435
    .local v0, "playbackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 436
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 130
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 131
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 133
    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 327
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    add-float v1, p1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    .line 328
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 228
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 207
    return-void

    .line 208
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 209
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 214
    return-void

    .line 215
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 216
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 370
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 371
    return-void
.end method
