.class Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;
    }
.end annotation


# instance fields
.field private final encryptionDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private fatalError:Ljava/io/IOException;

.field private independentSegments:Z

.field private isTimestampMaster:Z

.field private liveEdgeInPeriodTimeUs:J

.field private final mediaDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private scratchSpace:[B

.field private seenExpectedPlaylistError:Z

.field private final timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private final trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

.field private final variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V
    .locals 4
    .param p1, "extractorFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p2, "playlistTracker"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p3, "variants"    # [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p4, "dataSourceFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p5, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "timestampAdjusterProvider"    # Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener;",
            "Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p7, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 138
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 139
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 140
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 141
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    .line 142
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    .line 143
    array-length v0, p3

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    .line 144
    .local v0, "variantFormats":[Lcom/google/android/exoplayer2/Format;
    array-length v1, p3

    new-array v1, v1, [I

    .line 145
    .local v1, "initialTrackSelection":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    .line 146
    aget-object v3, p3, v2

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v3, v0, v2

    .line 147
    aput v2, v1, v2

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x1

    invoke-interface {p4, v2}, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->mediaDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 150
    if-eqz p5, :cond_1

    .line 151
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->mediaDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v2, p5}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 153
    :cond_1
    const/4 v2, 0x3

    invoke-interface {p4, v2}, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 154
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 155
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 156
    return-void
.end method

.method private clearEncryptionData()V
    .locals 1

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 540
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    .line 541
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 542
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    .line 543
    return-void
.end method

.method private getChunkMediaSequence(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;ZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJ)J
    .locals 13
    .param p1, "previous"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "switchingVariant"    # Z
    .param p3, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p4, "startOfPlaylistInPeriodUs"    # J
    .param p6, "loadPositionUs"    # J

    .line 476
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getNextChunkIndex()J

    move-result-wide v3

    return-wide v3

    .line 477
    :cond_1
    :goto_0
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v3, p4, v3

    .line 478
    .local v3, "endOfPlaylistInPeriodUs":J
    if-eqz v1, :cond_3

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->independentSegments:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    goto :goto_2

    :cond_3
    :goto_1
    move-wide/from16 v5, p6

    .line 480
    .local v5, "targetPositionInPeriodUs":J
    :goto_2
    iget-boolean v7, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v7, :cond_4

    cmp-long v7, v5, v3

    if-ltz v7, :cond_4

    .line 482
    iget-wide v7, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object v9, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    return-wide v7

    .line 484
    :cond_4
    sub-long v7, v5, p4

    .line 485
    .local v7, "targetPositionInPlaylistUs":J
    iget-object v9, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 487
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 489
    invoke-interface {v11}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_6

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v11, 0x1

    .line 485
    :goto_4
    invoke-static {v9, v10, v12, v11}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v9

    int-to-long v9, v9

    iget-wide v11, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    add-long/2addr v9, v11

    return-wide v9
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 9
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "variantIndex"    # I
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;

    .line 513
    new-instance v8, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    move-object v2, v8

    .line 514
    .local v2, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v0, v0, p3

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    move-object v0, v8

    move v4, p4

    move-object v5, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;[BLjava/lang/String;)V

    return-object v8
.end method

.method private resolveTimeToLiveEdgeUs(J)J
    .locals 5
    .param p1, "playbackPositionUs"    # J

    .line 498
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 499
    .local v0, "resolveTimeToLiveEdgePossible":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    sub-long/2addr v1, p1

    goto :goto_1

    :cond_1
    move-wide v1, v2

    :goto_1
    return-wide v1
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 6
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "secretKey"    # [B

    .line 520
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "trimmedIv":Ljava/lang/String;
    goto :goto_0

    .line 523
    .end local v0    # "trimmedIv":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .line 526
    .restart local v0    # "trimmedIv":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 527
    .local v1, "ivData":[B
    new-array v3, v2, [B

    .line 528
    .local v3, "ivDataWithPadding":[B
    array-length v4, v1

    if-le v4, v2, :cond_1

    array-length v4, v1

    sub-int/2addr v4, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 529
    .local v2, "offset":I
    array-length v4, v3

    array-length v5, v1

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    array-length v5, v1

    sub-int/2addr v5, v2

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 532
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 533
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    .line 534
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 535
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    .line 536
    return-void
.end method

.method private updateLiveEdgeTimeUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 4
    .param p1, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 505
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    .line 509
    return-void
.end method


# virtual methods
.method public createMediaChunkIterators(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;J)[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .locals 16
    .param p1, "previous"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "loadPositionUs"    # J

    .line 428
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, v9, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 429
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    :goto_0
    move v10, v0

    .line 430
    .local v10, "oldVariantIndex":I
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    new-array v11, v0, [Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    .line 431
    .local v11, "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_1
    array-length v0, v11

    if-ge v12, v0, :cond_4

    .line 432
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, v12}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v13

    .line 433
    .local v13, "variantIndex":I
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v14, v0, v13

    .line 434
    .local v14, "variantUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v14}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    sget-object v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    aput-object v0, v11, v12

    .line 436
    goto :goto_3

    .line 438
    :cond_1
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v14}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v15

    .line 439
    .local v15, "playlist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    iget-wide v0, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 440
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 441
    .local v6, "startOfPlaylistInPeriodUs":J
    if-eq v13, v10, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 442
    .local v2, "switchingVariant":Z
    :goto_2
    nop

    .line 443
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v15

    move-wide v4, v6

    move-wide v8, v6

    .end local v6    # "startOfPlaylistInPeriodUs":J
    .local v8, "startOfPlaylistInPeriodUs":J
    move-wide/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getChunkMediaSequence(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;ZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJ)J

    move-result-wide v0

    .line 445
    .local v0, "chunkMediaSequence":J
    iget-wide v3, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_3

    .line 446
    sget-object v3, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    aput-object v3, v11, v12

    .line 447
    goto :goto_3

    .line 449
    :cond_3
    iget-wide v3, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v3, v0, v3

    long-to-int v4, v3

    .line 450
    .local v4, "chunkIndex":I
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;

    invoke-direct {v3, v15, v8, v9, v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JI)V

    aput-object v3, v11, v12

    .line 431
    .end local v0    # "chunkMediaSequence":J
    .end local v2    # "switchingVariant":Z
    .end local v4    # "chunkIndex":I
    .end local v8    # "startOfPlaylistInPeriodUs":J
    .end local v13    # "variantIndex":I
    .end local v14    # "variantUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .end local v15    # "playlist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    goto :goto_1

    .line 453
    .end local v12    # "i":I
    :cond_4
    return-object v11
.end method

.method public getNextChunk(JJLjava/util/List;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V
    .locals 52
    .param p1, "playbackPositionUs"    # J
    .param p3, "loadPositionUs"    # J
    .param p6, "out"    # Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            ">;",
            "Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;",
            ")V"
        }
    .end annotation

    .line 231
    .local p5, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;>;"
    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    move-object/from16 v11, p6

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    move-object/from16 v6, p5

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    move-object/from16 v6, p5

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    :goto_0
    move-object v7, v0

    .line 232
    .local v7, "previous":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    if-nez v7, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 233
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    :goto_1
    move v4, v0

    .line 234
    .local v4, "oldVariantIndex":I
    sub-long v0, v9, p1

    .line 235
    .local v0, "bufferedDurationUs":J
    invoke-direct/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v2

    .line 236
    .local v2, "timeToLiveEdgeUs":J
    if-eqz v7, :cond_3

    iget-boolean v5, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->independentSegments:Z

    if-nez v5, :cond_3

    .line 243
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getDurationUs()J

    move-result-wide v14

    .line 244
    .local v14, "subtractedDurationUs":J
    sub-long v12, v0, v14

    move-wide/from16 v16, v0

    .end local v0    # "bufferedDurationUs":J
    .local v16, "bufferedDurationUs":J
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 245
    .end local v16    # "bufferedDurationUs":J
    .local v12, "bufferedDurationUs":J
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v2, v16

    if-eqz v5, :cond_2

    .line 246
    sub-long v5, v2, v14

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide/from16 v37, v0

    .end local v2    # "timeToLiveEdgeUs":J
    .local v0, "timeToLiveEdgeUs":J
    goto :goto_2

    .line 245
    .end local v0    # "timeToLiveEdgeUs":J
    .restart local v2    # "timeToLiveEdgeUs":J
    :cond_2
    move-wide/from16 v37, v2

    goto :goto_2

    .line 236
    .end local v12    # "bufferedDurationUs":J
    .end local v14    # "subtractedDurationUs":J
    .local v0, "bufferedDurationUs":J
    :cond_3
    move-wide/from16 v16, v0

    .line 251
    .end local v0    # "bufferedDurationUs":J
    .restart local v16    # "bufferedDurationUs":J
    move-wide/from16 v37, v2

    move-wide/from16 v12, v16

    .end local v2    # "timeToLiveEdgeUs":J
    .end local v16    # "bufferedDurationUs":J
    .restart local v12    # "bufferedDurationUs":J
    .local v37, "timeToLiveEdgeUs":J
    :goto_2
    invoke-virtual {v8, v7, v9, v10}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->createMediaChunkIterators(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;J)[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    move-result-object v39

    .line 252
    .local v39, "mediaChunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    iget-object v14, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v15, p1

    move-wide/from16 v17, v12

    move-wide/from16 v19, v37

    move-object/from16 v21, p5

    move-object/from16 v22, v39

    invoke-interface/range {v14 .. v22}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V

    .line 254
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v14

    .line 256
    .local v14, "selectedVariantIndex":I
    if-eq v4, v14, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move/from16 v40, v0

    .line 257
    .local v40, "switchingVariant":Z
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v6, v0, v14

    .line 258
    .local v6, "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 259
    iput-object v6, v11, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 260
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne v1, v6, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    and-int/2addr v0, v15

    iput-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 261
    iput-object v6, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 263
    return-void

    .line 265
    :cond_6
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v5

    .line 266
    .local v5, "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    iget-boolean v0, v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    iput-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->independentSegments:Z

    .line 268
    invoke-direct {v8, v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->updateLiveEdgeTimeUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 271
    iget-wide v0, v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 272
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long v16, v0, v2

    .line 273
    .local v16, "startOfPlaylistInPeriodUs":J
    nop

    .line 274
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v40

    move-object v3, v5

    move/from16 v41, v4

    move-object v15, v5

    .end local v4    # "oldVariantIndex":I
    .end local v5    # "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .local v15, "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .local v41, "oldVariantIndex":I
    move-wide/from16 v4, v16

    move-object/from16 v19, v6

    move-object/from16 v42, v7

    .end local v6    # "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .end local v7    # "previous":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .local v19, "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .local v42, "previous":Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getChunkMediaSequence(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;ZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJ)J

    move-result-wide v0

    .line 276
    .local v0, "chunkMediaSequence":J
    iget-wide v2, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_8

    .line 277
    if-eqz v42, :cond_7

    if-eqz v40, :cond_7

    .line 280
    move/from16 v2, v41

    .line 281
    .end local v14    # "selectedVariantIndex":I
    .local v2, "selectedVariantIndex":I
    iget-object v3, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v3, v3, v2

    .line 282
    .end local v19    # "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .local v3, "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    iget-object v4, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v5

    .line 283
    .end local v15    # "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .restart local v5    # "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    iget-wide v6, v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v4, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 284
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v14

    sub-long v16, v6, v14

    .line 285
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getNextChunkIndex()J

    move-result-wide v0

    move-wide v6, v0

    move/from16 v43, v2

    move-object v14, v3

    move-object v15, v5

    move-wide/from16 v44, v16

    goto :goto_5

    .line 287
    .end local v2    # "selectedVariantIndex":I
    .end local v3    # "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .end local v5    # "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .restart local v14    # "selectedVariantIndex":I
    .restart local v15    # "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .restart local v19    # "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_7
    new-instance v2, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 288
    return-void

    .line 276
    :cond_8
    move-wide v6, v0

    move/from16 v43, v14

    move-wide/from16 v44, v16

    move-object/from16 v14, v19

    .line 292
    .end local v0    # "chunkMediaSequence":J
    .end local v16    # "startOfPlaylistInPeriodUs":J
    .end local v19    # "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .local v6, "chunkMediaSequence":J
    .local v14, "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .local v43, "selectedVariantIndex":I
    .local v44, "startOfPlaylistInPeriodUs":J
    :goto_5
    iget-wide v0, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v0, v6, v0

    long-to-int v5, v0

    .line 293
    .local v5, "chunkIndex":I
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v5, v0, :cond_b

    .line 294
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_9

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    goto :goto_7

    .line 297
    :cond_9
    const/4 v0, 0x1

    iput-object v14, v11, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 298
    iget-boolean v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne v2, v14, :cond_a

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_6
    and-int/2addr v0, v1

    iput-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 299
    iput-object v14, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 301
    :goto_7
    return-void

    .line 304
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 305
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 308
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 311
    .local v4, "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    iget-object v0, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 312
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v1, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 313
    .local v3, "keyUri":Landroid/net/Uri;
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 315
    iget-object v2, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 316
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v16

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v17

    .line 315
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v9, v3

    .end local v3    # "keyUri":Landroid/net/Uri;
    .local v9, "keyUri":Landroid/net/Uri;
    move/from16 v3, v43

    move-object v10, v4

    .end local v4    # "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .local v10, "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    move/from16 v4, v16

    move/from16 v46, v5

    .end local v5    # "chunkIndex":I
    .local v46, "chunkIndex":I
    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 317
    return-void

    .line 319
    .end local v9    # "keyUri":Landroid/net/Uri;
    .end local v10    # "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v46    # "chunkIndex":I
    .restart local v3    # "keyUri":Landroid/net/Uri;
    .restart local v4    # "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .restart local v5    # "chunkIndex":I
    :cond_c
    move-object v9, v3

    move-object v10, v4

    move/from16 v46, v5

    .end local v3    # "keyUri":Landroid/net/Uri;
    .end local v4    # "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v5    # "chunkIndex":I
    .restart local v9    # "keyUri":Landroid/net/Uri;
    .restart local v10    # "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .restart local v46    # "chunkIndex":I
    iget-object v0, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 320
    iget-object v0, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    invoke-direct {v8, v9, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 322
    .end local v9    # "keyUri":Landroid/net/Uri;
    :cond_d
    goto :goto_8

    .line 323
    .end local v10    # "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v46    # "chunkIndex":I
    .restart local v4    # "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .restart local v5    # "chunkIndex":I
    :cond_e
    move-object v10, v4

    move/from16 v46, v5

    .end local v4    # "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v5    # "chunkIndex":I
    .restart local v10    # "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .restart local v46    # "chunkIndex":I
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->clearEncryptionData()V

    .line 326
    :goto_8
    const/4 v0, 0x0

    .line 327
    .local v0, "initDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    iget-object v1, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 328
    .local v1, "initSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    if-eqz v1, :cond_f

    .line 329
    iget-object v2, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 330
    .local v2, "initSegmentUri":Landroid/net/Uri;
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    move-wide/from16 v47, v12

    .end local v12    # "bufferedDurationUs":J
    .local v47, "bufferedDurationUs":J
    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v12

    invoke-direct/range {v16 .. v22}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v0, v3

    goto :goto_9

    .line 328
    .end local v2    # "initSegmentUri":Landroid/net/Uri;
    .end local v47    # "bufferedDurationUs":J
    .restart local v12    # "bufferedDurationUs":J
    :cond_f
    move-wide/from16 v47, v12

    .line 335
    .end local v12    # "bufferedDurationUs":J
    .restart local v47    # "bufferedDurationUs":J
    :goto_9
    iget-wide v2, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long v2, v44, v2

    .local v2, "segmentStartTimeInPeriodUs":J
    move-wide/from16 v23, v2

    .line 336
    iget v4, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget v5, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    add-int/2addr v4, v5

    .local v4, "discontinuitySequence":I
    move/from16 v29, v4

    .line 338
    iget-object v5, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(I)Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    move-result-object v5

    .local v5, "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    move-object/from16 v32, v5

    .line 342
    iget-object v9, v15, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v12, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 343
    .local v9, "chunkUri":Landroid/net/Uri;
    new-instance v12, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move v13, v4

    move-object/from16 v49, v5

    .end local v4    # "discontinuitySequence":I
    .end local v5    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .local v13, "discontinuitySequence":I
    .local v49, "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    iget-wide v4, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    move/from16 v50, v13

    move-object/from16 v25, v14

    .end local v13    # "discontinuitySequence":I
    .end local v14    # "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .local v25, "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .local v50, "discontinuitySequence":I
    iget-wide v13, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/16 v22, 0x0

    move-object/from16 v16, v12

    move-object/from16 v17, v9

    move-wide/from16 v18, v4

    move-wide/from16 v20, v13

    invoke-direct/range {v16 .. v22}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object/from16 v17, v12

    .line 345
    .local v17, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-object/from16 v5, v25

    .end local v25    # "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .local v5, "selectedUrl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object v14, v4

    iget-object v12, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    move-object v13, v15

    .end local v15    # "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .local v13, "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    move-object v15, v12

    iget-object v12, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->mediaDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object/from16 v16, v12

    iget-object v12, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    move-object/from16 v20, v12

    iget-object v12, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 353
    invoke-interface {v12}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v21

    iget-object v12, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 354
    invoke-interface {v12}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v51, v13

    .end local v13    # "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .local v51, "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    iget-wide v12, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long v25, v2, v12

    iget-boolean v12, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->hasGapTag:Z

    move/from16 v30, v12

    iget-boolean v12, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->isTimestampMaster:Z

    move/from16 v31, v12

    iget-object v12, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v34, v12

    iget-object v12, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v35, v12

    iget-object v12, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v36, v12

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-wide/from16 v27, v6

    move-object/from16 v33, v42

    invoke-direct/range {v14 .. v36}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/util/List;ILjava/lang/Object;JJJIZZLcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;Lcom/google/android/exoplayer2/drm/DrmInitData;[B[B)V

    iput-object v4, v11, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 366
    return-void
.end method

.method public getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public getTrackSelection()Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    return-object v0
.end method

.method public maybeBlacklistTrack(Lcom/google/android/exoplayer2/source/chunk/Chunk;J)Z
    .locals 3
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "blacklistDurationMs"    # J

    .line 393
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 394
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v1

    .line 393
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->blacklist(IJ)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPlaylistRefreshError(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    .line 171
    :cond_0
    return-void

    .line 166
    :cond_1
    throw v0
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 4
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 375
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_0

    .line 376
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 377
    .local v0, "encryptionKeyChunk":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    .line 378
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    .line 379
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v3

    .line 378
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 381
    .end local v0    # "encryptionKeyChunk":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    :cond_0
    return-void
.end method

.method public onPlaylistError(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)Z
    .locals 8
    .param p1, "url"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "blacklistDurationMs"    # J

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    .line 407
    .local v0, "trackGroupIndex":I
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 408
    return v2

    .line 410
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v3

    .line 411
    .local v3, "trackSelectionIndex":I
    if-ne v3, v1, :cond_1

    .line 412
    return v2

    .line 414
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v5, 0x0

    if-ne v4, p1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    or-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 415
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v6

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 416
    invoke-interface {v1, v3, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->blacklist(IJ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    nop

    .line 415
    :goto_2
    return v2
.end method

.method public reset()V
    .locals 1

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 201
    return-void
.end method

.method public selectTracks(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V
    .locals 0
    .param p1, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 186
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 187
    return-void
.end method

.method public setIsTimestampMaster(Z)V
    .locals 0
    .param p1, "isTimestampMaster"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->isTimestampMaster:Z

    .line 211
    return-void
.end method
