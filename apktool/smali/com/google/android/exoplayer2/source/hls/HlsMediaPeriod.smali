.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final allowChunklessPreparation:Z

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private notifiedReadingStarted:Z

.field private pendingPrepareCount:I

.field private final playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Z)V
    .locals 2
    .param p1, "extractorFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p2, "playlistTracker"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p3, "dataSourceFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p4, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p6, "eventDispatcher"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .param p7, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p8, "compositeSequenceableLoaderFactory"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p9, "allowChunklessPreparation"    # Z

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 101
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 102
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 103
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 104
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 105
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 106
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 107
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 108
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    .line 109
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 110
    invoke-interface {p8, v1}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 111
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 112
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 113
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 114
    new-array v0, v0, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 115
    invoke-virtual {p6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodCreated()V

    .line 116
    return-void
.end method

.method private buildAndPrepareMainSampleStreamWrapper(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;J)V
    .locals 18
    .param p1, "masterPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .param p2, "positionUs"    # J

    .line 419
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 420
    .local v0, "selectedVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 421
    .local v9, "definiteVideoVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    .line 422
    .local v10, "definiteAudioOnlyVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v1, v2, :cond_3

    .line 423
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 424
    .local v2, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    .line 425
    .local v3, "format":Lcom/google/android/exoplayer2/Format;
    iget v4, v3, Lcom/google/android/exoplayer2/Format;->height:I

    if-gtz v4, :cond_1

    iget-object v4, v3, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v4, v11}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 427
    :cond_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 428
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 426
    :cond_1
    :goto_1
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .end local v2    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .end local v3    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 435
    move-object v0, v9

    move-object v13, v0

    goto :goto_3

    .line 436
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 439
    invoke-interface {v0, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 443
    :cond_5
    move-object v13, v0

    .end local v0    # "selectedVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .local v13, "selectedVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 444
    const/4 v14, 0x0

    new-array v0, v14, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 445
    .local v15, "variants":[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    aget-object v0, v15, v14

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 446
    .local v5, "codecs":Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v3, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormats:Ljava/util/List;

    move-object/from16 v0, p0

    move-object v2, v15

    move-object v12, v5

    .end local v5    # "codecs":Ljava/lang/String;
    .local v12, "codecs":Ljava/lang/String;
    move-wide/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    .line 448
    .local v0, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aput-object v0, v1, v14

    .line 449
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v1, :cond_10

    if-eqz v12, :cond_10

    .line 450
    invoke-static {v12, v11}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 451
    .local v1, "variantsContainVideoCodecs":Z
    :goto_4
    const/4 v2, 0x1

    invoke-static {v12, v2}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    .line 452
    .local v2, "variantsContainAudioCodecs":Z
    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v3, "muxedTrackGroups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/TrackGroup;>;"
    if-eqz v1, :cond_d

    .line 454
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/exoplayer2/Format;

    .line 455
    .local v4, "videoFormats":[Lcom/google/android/exoplayer2/Format;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    array-length v6, v4

    if-ge v5, v6, :cond_8

    .line 456
    aget-object v6, v15, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->deriveVideoFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    aput-object v6, v4, v5

    .line 455
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 458
    .end local v5    # "i":I
    :cond_8
    new-instance v5, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v5, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    if-eqz v2, :cond_b

    iget-object v5, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v5, :cond_a

    iget-object v5, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 461
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v16, v1

    goto :goto_8

    .line 462
    :cond_a
    :goto_7
    new-instance v5, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v6, 0x1

    new-array v11, v6, [Lcom/google/android/exoplayer2/Format;

    aget-object v6, v15, v14

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    move/from16 v16, v1

    .end local v1    # "variantsContainVideoCodecs":Z
    .local v16, "variantsContainVideoCodecs":Z
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 464
    invoke-static {v6, v1, v14}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->deriveAudioFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aput-object v1, v11, v14

    invoke-direct {v5, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    .line 462
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 460
    .end local v16    # "variantsContainVideoCodecs":Z
    .restart local v1    # "variantsContainVideoCodecs":Z
    :cond_b
    move/from16 v16, v1

    .line 469
    .end local v1    # "variantsContainVideoCodecs":Z
    .restart local v16    # "variantsContainVideoCodecs":Z
    :goto_8
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 470
    .local v1, "ccFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    if-eqz v1, :cond_c

    .line 471
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 472
    new-instance v6, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v11, 0x1

    new-array v14, v11, [Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/Format;

    const/16 v17, 0x0

    aput-object v11, v14, v17

    invoke-direct {v6, v14}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x0

    goto :goto_9

    .line 475
    .end local v1    # "ccFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v4    # "videoFormats":[Lcom/google/android/exoplayer2/Format;
    .end local v5    # "i":I
    :cond_c
    goto :goto_b

    .end local v16    # "variantsContainVideoCodecs":Z
    .local v1, "variantsContainVideoCodecs":Z
    :cond_d
    move/from16 v16, v1

    .end local v1    # "variantsContainVideoCodecs":Z
    .restart local v16    # "variantsContainVideoCodecs":Z
    if-eqz v2, :cond_f

    .line 477
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/Format;

    .line 478
    .local v1, "audioFormats":[Lcom/google/android/exoplayer2/Format;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    array-length v5, v1

    if-ge v4, v5, :cond_e

    .line 479
    aget-object v5, v15, v4

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    .line 480
    .local v5, "variantFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v6, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 481
    const/4 v11, 0x1

    invoke-static {v5, v6, v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->deriveAudioFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    aput-object v6, v1, v4

    .line 478
    .end local v5    # "variantFormat":Lcom/google/android/exoplayer2/Format;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 486
    .end local v4    # "i":I
    :cond_e
    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v1    # "audioFormats":[Lcom/google/android/exoplayer2/Format;
    nop

    .line 492
    :goto_b
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/google/android/exoplayer2/Format;

    const/4 v4, -0x1

    .line 494
    const/4 v6, 0x0

    const-string v11, "ID3"

    const-string v14, "application/id3"

    invoke-static {v11, v14, v6, v4, v6}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-direct {v1, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    .line 500
    .local v1, "id3TrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    new-array v5, v6, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 503
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    new-instance v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v11, 0x1

    new-array v11, v11, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v1, v11, v6

    invoke-direct {v5, v11}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 502
    invoke-virtual {v0, v4, v6, v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepareWithMasterPlaylistInfo(Lcom/google/android/exoplayer2/source/TrackGroupArray;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 506
    .end local v1    # "id3TrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v2    # "variantsContainAudioCodecs":Z
    .end local v3    # "muxedTrackGroups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/TrackGroup;>;"
    .end local v16    # "variantsContainVideoCodecs":Z
    goto :goto_c

    .line 489
    .restart local v2    # "variantsContainAudioCodecs":Z
    .restart local v3    # "muxedTrackGroups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/TrackGroup;>;"
    .restart local v16    # "variantsContainVideoCodecs":Z
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected codecs attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    .end local v2    # "variantsContainAudioCodecs":Z
    .end local v3    # "muxedTrackGroups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/TrackGroup;>;"
    .end local v16    # "variantsContainVideoCodecs":Z
    :cond_10
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 508
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 510
    :goto_c
    return-void
.end method

.method private buildAndPrepareSampleStreamWrappers(J)V
    .locals 18
    .param p1, "positionUs"    # J

    .line 345
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v8

    .line 346
    .local v8, "masterPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    iget-object v9, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 347
    .local v9, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    iget-object v10, v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    .line 349
    .local v10, "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v11, 0x1

    add-int/2addr v0, v11

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int v12, v0, v1

    .line 350
    .local v12, "wrapperCount":I
    new-array v0, v12, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v0, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 351
    iput v12, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 353
    move-wide/from16 v13, p1

    invoke-direct {v7, v8, v13, v14}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildAndPrepareMainSampleStreamWrapper(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;J)V

    .line 354
    const/4 v0, 0x1

    .line 359
    .local v0, "currentWrapperIndex":I
    const/4 v1, 0x0

    move/from16 v16, v0

    move v15, v1

    .end local v0    # "currentWrapperIndex":I
    .local v15, "i":I
    .local v16, "currentWrapperIndex":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    if-ge v15, v0, :cond_1

    .line 360
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 361
    .local v6, "audioRendition":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    const/4 v1, 0x1

    new-array v2, v11, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aput-object v6, v2, v5

    const/4 v3, 0x0

    .line 366
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 362
    move-object/from16 v0, p0

    move-object v11, v6

    move-object/from16 v17, v8

    const/4 v8, 0x0

    .end local v6    # "audioRendition":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .end local v8    # "masterPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .local v11, "audioRendition":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .local v17, "masterPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    move-wide/from16 v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    .line 368
    .local v0, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v2, v16, 0x1

    .end local v16    # "currentWrapperIndex":I
    .local v2, "currentWrapperIndex":I
    aput-object v0, v1, v16

    .line 369
    iget-object v1, v11, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    .line 370
    .local v1, "renditionFormat":Lcom/google/android/exoplayer2/Format;
    iget-boolean v3, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 371
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v6, Lcom/google/android/exoplayer2/source/TrackGroup;

    move-object/from16 v16, v1

    .end local v1    # "renditionFormat":Lcom/google/android/exoplayer2/Format;
    .local v16, "renditionFormat":Lcom/google/android/exoplayer2/Format;
    new-array v1, v4, [Lcom/google/android/exoplayer2/Format;

    iget-object v4, v11, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v4, v1, v8

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v6, v5, v8

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    sget-object v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, v3, v8, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepareWithMasterPlaylistInfo(Lcom/google/android/exoplayer2/source/TrackGroupArray;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    goto :goto_1

    .line 370
    .end local v16    # "renditionFormat":Lcom/google/android/exoplayer2/Format;
    .restart local v1    # "renditionFormat":Lcom/google/android/exoplayer2/Format;
    :cond_0
    move-object/from16 v16, v1

    .line 374
    .end local v1    # "renditionFormat":Lcom/google/android/exoplayer2/Format;
    .restart local v16    # "renditionFormat":Lcom/google/android/exoplayer2/Format;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 359
    .end local v0    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v11    # "audioRendition":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .end local v16    # "renditionFormat":Lcom/google/android/exoplayer2/Format;
    :goto_1
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v2

    move-object/from16 v8, v17

    const/4 v11, 0x1

    goto :goto_0

    .end local v2    # "currentWrapperIndex":I
    .end local v17    # "masterPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .restart local v8    # "masterPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .local v16, "currentWrapperIndex":I
    :cond_1
    move-object/from16 v17, v8

    const/4 v8, 0x0

    .line 379
    .end local v8    # "masterPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .end local v15    # "i":I
    .restart local v17    # "masterPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 380
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 381
    .local v15, "url":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    const/4 v1, 0x3

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aput-object v15, v2, v8

    const/4 v3, 0x0

    .line 383
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 382
    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    .line 384
    .restart local v0    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v2, v16, 0x1

    .end local v16    # "currentWrapperIndex":I
    .restart local v2    # "currentWrapperIndex":I
    aput-object v0, v1, v16

    .line 385
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v5, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v6, v3, [Lcom/google/android/exoplayer2/Format;

    iget-object v3, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v3, v6, v8

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v5, v4, v8

    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, v1, v8, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepareWithMasterPlaylistInfo(Lcom/google/android/exoplayer2/source/TrackGroupArray;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 379
    .end local v0    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v15    # "url":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v2

    goto :goto_2

    .line 390
    .end local v2    # "currentWrapperIndex":I
    .end local v11    # "i":I
    .restart local v16    # "currentWrapperIndex":I
    :cond_2
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v0, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 391
    return-void
.end method

.method private buildSampleStreamWrapper(I[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .locals 12
    .param p1, "trackType"    # I
    .param p2, "variants"    # [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p3, "muxedAudioFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;"
        }
    .end annotation

    .line 514
    .local p4, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    move-object v10, p0

    new-instance v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v2, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v4, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v5, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v6, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    move-object v0, v8

    move-object v3, p2

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V

    move-object v3, v8

    .line 523
    .local v3, "defaultChunkSource":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
    new-instance v11, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget-object v4, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v8, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v9, v10, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v0, v11

    move v1, p1

    move-object v2, p0

    move-wide/from16 v5, p5

    move-object v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;-><init>(ILcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V

    return-object v11
.end method

.method private static deriveAudioFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;
    .locals 19
    .param p0, "variantFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "mediaTagFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "isPrimaryTrackInVariant"    # Z

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    .line 555
    .local v2, "channelCount":I
    const/4 v3, 0x0

    .line 556
    .local v3, "selectionFlags":I
    const/4 v4, 0x0

    .line 557
    .local v4, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 558
    .local v5, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 559
    iget-object v6, v1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 560
    .local v6, "codecs":Ljava/lang/String;
    iget v2, v1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 561
    iget v3, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 562
    iget-object v4, v1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 563
    iget-object v5, v1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    goto :goto_0

    .line 565
    .end local v6    # "codecs":Ljava/lang/String;
    :cond_0
    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 566
    .restart local v6    # "codecs":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 567
    iget v2, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 568
    iget v3, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 569
    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 570
    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 573
    :cond_1
    :goto_0
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 574
    .local v18, "sampleMimeType":Ljava/lang/String;
    if-eqz p2, :cond_2

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move v12, v7

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    const/4 v12, -0x1

    .line 575
    .local v12, "bitrate":I
    :goto_1
    iget-object v7, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v8, v5

    move-object/from16 v10, v18

    move-object v11, v6

    move v13, v2

    move/from16 v16, v3

    move-object/from16 v17, v4

    invoke-static/range {v7 .. v17}, Lcom/google/android/exoplayer2/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    return-object v7
.end method

.method private static deriveVideoFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 13
    .param p0, "variantFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "codecs":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "sampleMimeType":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v8, p0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v9, p0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v10, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget v12, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    const/4 v11, 0x0

    move-object v5, v1

    move-object v6, v0

    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 5
    .param p1, "positionUs"    # J

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 243
    .local v4, "wrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 242
    .end local v4    # "wrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return v2

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(JZ)V
    .locals 4
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 229
    .local v3, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardBuffer(JZ)V

    .line 228
    .end local v3    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 288
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 137
    .local v3, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    .line 136
    .end local v3    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 1
    .param p1, "sampleStreamWrapper"    # Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 323
    return-void
.end method

.method public onPlaylistChanged()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 330
    return-void
.end method

.method public onPlaylistError(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)Z
    .locals 6
    .param p1, "url"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "blacklistDurationMs"    # J

    .line 334
    const/4 v0, 0x1

    .line 335
    .local v0, "noBlacklistingFailure":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 336
    .local v4, "streamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v4, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onPlaylistError(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)Z

    move-result v5

    and-int/2addr v0, v5

    .line 335
    .end local v4    # "streamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 339
    return v0
.end method

.method public onPlaylistRefreshRequired(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1
    .param p1, "url"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->refreshPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    .line 318
    return-void
.end method

.method public onPrepared()V
    .locals 11

    .line 295
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    if-lez v0, :cond_0

    .line 296
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x0

    .line 300
    .local v0, "totalTrackGroupCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    .end local v0    # "totalTrackGroupCount":I
    .local v4, "totalTrackGroupCount":I
    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v5, v1, v0

    .line 301
    .local v5, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v6

    iget v6, v6, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v4, v6

    .line 300
    .end local v5    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_1
    new-array v0, v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 304
    .local v0, "trackGroupArray":[Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v1, 0x0

    .line 305
    .local v1, "trackGroupIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v5, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v2, v3

    .line 306
    .local v6, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 307
    .local v7, "wrapperTrackGroupCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v7, :cond_2

    .line 308
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "trackGroupIndex":I
    .local v9, "trackGroupIndex":I
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    aput-object v10, v0, v1

    .line 307
    add-int/lit8 v8, v8, 0x1

    move v1, v9

    goto :goto_2

    .line 305
    .end local v6    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v7    # "wrapperTrackGroupCount":I
    .end local v8    # "j":I
    .end local v9    # "trackGroupIndex":I
    .restart local v1    # "trackGroupIndex":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 311
    :cond_3
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 312
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 313
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 129
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->addListener(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 131
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildAndPrepareSampleStreamWrappers(J)V

    .line 132
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 258
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->notifiedReadingStarted:Z

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->readingStarted()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->notifiedReadingStarted:Z

    .line 262
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 236
    return-void
.end method

.method public release()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->removeListener(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 121
    .local v3, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->release()V

    .line 120
    .end local v3    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodReleased()V

    .line 125
    return-void
.end method

.method public seekToUs(J)J
    .locals 4
    .param p1, "positionUs"    # J

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    if-lez v1, :cond_1

    .line 275
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    move-result v0

    .line 276
    .local v0, "forceReset":Z
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 277
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 280
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->reset()V

    .line 283
    .end local v0    # "forceReset":Z
    :cond_1
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 20
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    .line 151
    .local v3, "streamChildIndices":[I
    array-length v4, v1

    new-array v4, v4, [I

    .line 152
    .local v4, "selectionChildIndices":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_3

    .line 153
    aget-object v6, v2, v5

    const/4 v7, -0x1

    if-nez v6, :cond_0

    const/4 v6, -0x1

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v8, v2, v5

    .line 154
    invoke-virtual {v6, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_1
    aput v6, v3, v5

    .line 155
    aput v7, v4, v5

    .line 156
    aget-object v6, v1, v5

    if-eqz v6, :cond_2

    .line 157
    aget-object v6, v1, v5

    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    .line 158
    .local v6, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v10, v9

    if-ge v8, v10, :cond_2

    .line 159
    aget-object v9, v9, v8

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v9

    if-eq v9, v7, :cond_1

    .line 160
    aput v8, v4, v5

    .line 161
    goto :goto_3

    .line 158
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 152
    .end local v6    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v8    # "j":I
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 167
    .end local v5    # "i":I
    :cond_3
    const/4 v5, 0x0

    .line 168
    .local v5, "forceReset":Z
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 170
    array-length v6, v1

    new-array v6, v6, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 171
    .local v6, "newStreams":[Lcom/google/android/exoplayer2/source/SampleStream;
    array-length v7, v1

    new-array v7, v7, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 172
    .local v7, "childStreams":[Lcom/google/android/exoplayer2/source/SampleStream;
    array-length v8, v1

    new-array v15, v8, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 173
    .local v15, "childSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    const/4 v8, 0x0

    .line 174
    .local v8, "newEnabledSampleStreamWrapperCount":I
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v9, v9

    new-array v13, v9, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 176
    .local v13, "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    const/4 v9, 0x0

    move/from16 v16, v5

    move v14, v8

    move v5, v9

    .end local v8    # "newEnabledSampleStreamWrapperCount":I
    .local v5, "i":I
    .local v14, "newEnabledSampleStreamWrapperCount":I
    .local v16, "forceReset":Z
    :goto_4
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v8, v8

    const/4 v12, 0x0

    if-ge v5, v8, :cond_10

    .line 177
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_5
    array-length v9, v1

    if-ge v8, v9, :cond_6

    .line 178
    aget v9, v3, v8

    const/4 v10, 0x0

    if-ne v9, v5, :cond_4

    aget-object v9, v2, v8

    goto :goto_6

    :cond_4
    move-object v9, v10

    :goto_6
    aput-object v9, v7, v8

    .line 179
    aget v9, v4, v8

    if-ne v9, v5, :cond_5

    aget-object v10, v1, v8

    :cond_5
    aput-object v10, v15, v8

    .line 177
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 181
    .end local v8    # "j":I
    :cond_6
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v11, v8, v5

    .line 182
    .local v11, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-object v8, v11

    move-object v9, v15

    move-object/from16 v10, p2

    move-object v2, v11

    .end local v11    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .local v2, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-object v11, v7

    move-object/from16 v12, p4

    move-object/from16 v17, v2

    move-object/from16 v18, v13

    move v2, v14

    .end local v13    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v14    # "newEnabledSampleStreamWrapperCount":I
    .local v2, "newEnabledSampleStreamWrapperCount":I
    .local v17, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .local v18, "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-wide/from16 v13, p5

    move-object/from16 v19, v15

    .end local v15    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .local v19, "childSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    move/from16 v15, v16

    invoke-virtual/range {v8 .. v15}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJZ)Z

    move-result v8

    .line 184
    .local v8, "wasReset":Z
    const/4 v9, 0x0

    .line 185
    .local v9, "wrapperEnabled":Z
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_7
    array-length v11, v1

    const/4 v12, 0x1

    if-ge v10, v11, :cond_b

    .line 186
    aget v11, v4, v10

    if-ne v11, v5, :cond_8

    .line 188
    aget-object v11, v7, v10

    if-eqz v11, :cond_7

    goto :goto_8

    :cond_7
    const/4 v12, 0x0

    :goto_8
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 189
    aget-object v11, v7, v10

    aput-object v11, v6, v10

    .line 190
    const/4 v9, 0x1

    .line 191
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v12, v7, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 192
    :cond_8
    aget v11, v3, v10

    if-ne v11, v5, :cond_a

    .line 194
    aget-object v11, v7, v10

    if-nez v11, :cond_9

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :goto_9
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 185
    :cond_a
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 197
    .end local v10    # "j":I
    :cond_b
    if-eqz v9, :cond_e

    .line 198
    aput-object v17, v18, v2

    .line 199
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "newEnabledSampleStreamWrapperCount":I
    .restart local v14    # "newEnabledSampleStreamWrapperCount":I
    if-nez v2, :cond_d

    .line 202
    move-object/from16 v10, v17

    .end local v17    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .local v10, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 203
    if-nez v8, :cond_c

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v11, v2

    if-eqz v11, :cond_c

    const/4 v11, 0x0

    aget-object v2, v2, v11

    if-eq v10, v2, :cond_f

    .line 207
    :cond_c
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->reset()V

    .line 208
    const/4 v2, 0x1

    move/from16 v16, v2

    .end local v16    # "forceReset":Z
    .local v2, "forceReset":Z
    goto :goto_b

    .line 211
    .end local v2    # "forceReset":Z
    .end local v10    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v16    # "forceReset":Z
    .restart local v17    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_d
    move-object/from16 v10, v17

    const/4 v11, 0x0

    .end local v17    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v10    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    goto :goto_b

    .line 197
    .end local v10    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v14    # "newEnabledSampleStreamWrapperCount":I
    .local v2, "newEnabledSampleStreamWrapperCount":I
    .restart local v17    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_e
    move-object/from16 v10, v17

    .end local v17    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v10    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move v14, v2

    .line 176
    .end local v2    # "newEnabledSampleStreamWrapperCount":I
    .end local v8    # "wasReset":Z
    .end local v9    # "wrapperEnabled":Z
    .end local v10    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v14    # "newEnabledSampleStreamWrapperCount":I
    :cond_f
    :goto_b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p3

    move-object/from16 v13, v18

    move-object/from16 v15, v19

    goto/16 :goto_4

    .end local v18    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v19    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .restart local v13    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v15    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_10
    move-object/from16 v18, v13

    move v2, v14

    move-object/from16 v19, v15

    const/4 v11, 0x0

    .line 216
    .end local v5    # "i":I
    .end local v13    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v14    # "newEnabledSampleStreamWrapperCount":I
    .end local v15    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .restart local v2    # "newEnabledSampleStreamWrapperCount":I
    .restart local v18    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v19    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    array-length v5, v6

    move-object/from16 v8, p3

    invoke-static {v6, v11, v8, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    move-object/from16 v5, v18

    .end local v18    # "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .local v5, "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 220
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 221
    invoke-interface {v9, v10}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 223
    return-wide p5
.end method
