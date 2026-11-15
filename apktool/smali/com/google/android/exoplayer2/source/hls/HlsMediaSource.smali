.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final allowChunklessPreparation:Z

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private final extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final manifestUri:Landroid/net/Uri;

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final tag:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-string v0, "goog.exo.hls"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 14
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p3, "extractorFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p4, "minLoadableRetryCount"    # I
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "I",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    .local p7, "playlistParser":Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    move/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    new-instance v7, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    new-instance v8, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v8, v0}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    new-instance v9, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    move-object/from16 v12, p2

    move-object/from16 v13, p7

    invoke-direct {v9, v12, v3, v13}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZLjava/lang/Object;)V

    .line 369
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 370
    move-object v3, p0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    goto :goto_0

    .line 369
    :cond_0
    move-object v3, p0

    .line 372
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZLjava/lang/Object;)V
    .locals 0
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p3, "extractorFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p4, "compositeSequenceableLoaderFactory"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p5, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p6, "playlistTracker"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p7, "allowChunklessPreparation"    # Z
    .param p8, "tag"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 382
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->manifestUri:Landroid/net/Uri;

    .line 384
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 385
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 386
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 387
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 388
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 389
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->allowChunklessPreparation:Z

    .line 390
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->tag:Ljava/lang/Object;

    .line 391
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p4, "x3"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p5, "x4"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p6, "x5"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p7, "x6"    # Z
    .param p8, "x7"    # Ljava/lang/Object;
    .param p9, "x8"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$1;

    .line 53
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 8
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "minLoadableRetryCount"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 324
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;

    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    sget-object v3, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;->DEFAULT:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    new-instance v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 6
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 303
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 12
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 410
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v10

    .line 411
    .local v10, "eventDispatcher":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    new-instance v11, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->allowChunklessPreparation:Z

    move-object v0, v11

    move-object v6, v10

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Z)V

    return-object v11
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPrimaryPlaylistRefreshError()V

    .line 406
    return-void
.end method

.method public onPrimaryPlaylistRefreshed(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 32
    .param p1, "playlist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v3

    .line 440
    .local v10, "windowStartTimeMs":J
    :goto_0
    iget v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    iget v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v10

    .line 445
    .local v8, "presentationStartTimeMs":J
    :goto_2
    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    .line 446
    .local v14, "windowDefaultStartPositionUs":J
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 447
    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 448
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v16

    sub-long v23, v12, v16

    .line 449
    .local v23, "offsetFromInitialStartTimeUs":J
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v2, :cond_3

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v12, v23, v12

    goto :goto_3

    :cond_3
    move-wide v12, v3

    .line 451
    .local v12, "periodDurationUs":J
    :goto_3
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 452
    .local v2, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    cmp-long v5, v14, v3

    if-nez v5, :cond_5

    .line 453
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x0

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 454
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    :goto_4
    nop

    .end local v14    # "windowDefaultStartPositionUs":J
    .local v3, "windowDefaultStartPositionUs":J
    goto :goto_5

    .line 452
    .end local v3    # "windowDefaultStartPositionUs":J
    .restart local v14    # "windowDefaultStartPositionUs":J
    :cond_5
    move-wide v3, v14

    .line 456
    .end local v14    # "windowDefaultStartPositionUs":J
    .restart local v3    # "windowDefaultStartPositionUs":J
    :goto_5
    new-instance v5, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    const/16 v20, 0x1

    iget-boolean v7, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    xor-int/lit8 v21, v7, 0x1

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->tag:Ljava/lang/Object;

    move-object v7, v5

    move-wide/from16 v16, v23

    move-wide/from16 v18, v3

    move-object/from16 v22, v6

    invoke-direct/range {v7 .. v22}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJZZLjava/lang/Object;)V

    move-object v2, v5

    .line 467
    .end local v12    # "periodDurationUs":J
    .end local v23    # "offsetFromInitialStartTimeUs":J
    .local v2, "timeline":Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;
    move-wide v14, v3

    goto :goto_6

    .line 468
    .end local v2    # "timeline":Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;
    .end local v3    # "windowDefaultStartPositionUs":J
    .restart local v14    # "windowDefaultStartPositionUs":J
    :cond_6
    cmp-long v2, v14, v3

    if-nez v2, :cond_7

    .line 469
    const-wide/16 v14, 0x0

    .line 471
    :cond_7
    new-instance v2, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    const-wide/16 v25, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->tag:Ljava/lang/Object;

    move-object/from16 v16, v2

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    move-wide/from16 v21, v3

    move-wide/from16 v23, v5

    move-wide/from16 v27, v14

    move-object/from16 v31, v7

    invoke-direct/range {v16 .. v31}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJZZLjava/lang/Object;)V

    .line 483
    .restart local v2    # "timeline":Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;
    :goto_6
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/HlsManifest;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/exoplayer2/source/hls/HlsManifest;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 484
    return-void
.end method

.method public prepareSourceInternal(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 3
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p2, "isTopLevelSource"    # Z
    .param p3, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 398
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 399
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    .line 400
    .local v0, "eventDispatcher":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->manifestUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->start(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V

    .line 401
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 425
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->release()V

    .line 426
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->stop()V

    .line 431
    return-void
.end method
