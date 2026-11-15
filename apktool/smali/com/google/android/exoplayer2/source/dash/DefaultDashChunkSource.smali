.class public Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;,
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;,
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
    }
.end annotation


# instance fields
.field private final adaptationSetIndices:[I

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final elapsedRealtimeOffsetMs:J

.field private fatalError:Ljava/io/IOException;

.field private liveEdgeTimeUs:J

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final maxSegmentsPerLoad:I

.field private missingLastSegment:Z

.field private periodIndex:I

.field private final playerTrackEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

.field private final trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

.field private final trackType:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/google/android/exoplayer2/trackselection/TrackSelection;ILcom/google/android/exoplayer2/upstream/DataSource;JIZZLcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;)V
    .locals 23
    .param p1, "manifestLoaderErrorThrower"    # Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "periodIndex"    # I
    .param p4, "adaptationSetIndices"    # [I
    .param p5, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p6, "trackType"    # I
    .param p7, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p8, "elapsedRealtimeOffsetMs"    # J
    .param p10, "maxSegmentsPerLoad"    # I
    .param p11, "enableEventMessageTrack"    # Z
    .param p12, "enableCea608Track"    # Z
    .param p13, "playerTrackEmsgHandler"    # Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 164
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 165
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndices:[I

    .line 166
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 167
    move/from16 v13, p6

    iput v13, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackType:I

    .line 168
    move-object/from16 v14, p7

    iput-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 169
    move/from16 v15, p3

    iput v15, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 170
    move-wide/from16 v11, p8

    iput-wide v11, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    .line 171
    move/from16 v10, p10

    iput v10, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    .line 172
    move-object/from16 v9, p13

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 174
    invoke-virtual/range {p2 .. p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v16

    .line 175
    .local v16, "periodDurationUs":J
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->liveEdgeTimeUs:J

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/ArrayList;

    move-result-object v8

    .line 178
    .local v8, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface/range {p5 .. p5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 179
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v5, v5

    if-ge v6, v5, :cond_0

    .line 180
    invoke-interface {v1, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 181
    .local v18, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v19, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-object/from16 v5, v19

    move/from16 v20, v6

    move-object/from16 v21, v7

    .end local v6    # "i":I
    .local v20, "i":I
    move-wide/from16 v6, v16

    move-object/from16 v22, v8

    .end local v8    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .local v22, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    move/from16 v8, p6

    move-object/from16 v9, v18

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v5 .. v12}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JILcom/google/android/exoplayer2/source/dash/manifest/Representation;ZZLcom/google/android/exoplayer2/extractor/TrackOutput;)V

    aput-object v19, v21, v20

    .line 179
    .end local v18    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    add-int/lit8 v6, v20, 0x1

    move-wide/from16 v11, p8

    move/from16 v10, p10

    move-object/from16 v9, p13

    move-object/from16 v8, v22

    .end local v20    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .end local v22    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .restart local v8    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_0
    move/from16 v20, v6

    move-object/from16 v22, v8

    .line 190
    .end local v6    # "i":I
    .end local v8    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .restart local v22    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    return-void
.end method

.method private getNowUnixTimeUs()J
    .locals 7

    .line 474
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    add-long/2addr v0, v4

    mul-long v0, v0, v2

    return-wide v0

    .line 477
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private getRepresentations()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 460
    .local v0, "manifestAdapationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v1, "representations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndices:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 462
    .local v5, "adaptationSetIndex":I
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 461
    .end local v5    # "adaptationSetIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 464
    :cond_0
    return-object v1
.end method

.method private getSegmentNum(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JJJ)J
    .locals 9
    .param p1, "representationHolder"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p2, "previousChunk"    # Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadPositionUs"    # J
    .param p5, "firstAvailableSegmentNum"    # J
    .param p7, "lastAvailableSegmentNum"    # J

    .line 450
    if-eqz p2, :cond_0

    .line 451
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide v0

    move-wide v3, v0

    move-object v0, p1

    move-wide v1, p3

    goto :goto_0

    .line 453
    :cond_0
    move-object v0, p1

    move-wide v1, p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)J

    move-result-wide v3

    .line 452
    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v3

    .line 450
    :goto_0
    return-wide v3
.end method

.method private resolveTimeToLiveEdgeUs(J)J
    .locals 5
    .param p1, "playbackPositionUs"    # J

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->liveEdgeTimeUs:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 483
    .local v0, "resolveTimeToLiveEdgePossible":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->liveEdgeTimeUs:J

    sub-long/2addr v1, p1

    :cond_1
    return-wide v1
.end method

.method private updateLiveEdgeTimeUs(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;J)V
    .locals 2
    .param p1, "representationHolder"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p2, "lastAvailableSegmentNum"    # J

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->liveEdgeTimeUs:J

    .line 471
    return-void
.end method


# virtual methods
.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 15
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 195
    move-wide/from16 v7, p1

    move-object v9, p0

    iget-object v0, v9, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v10, v0, v2

    .line 196
    .local v10, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v3, v10, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-eqz v3, :cond_1

    .line 197
    invoke-virtual {v10, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)J

    move-result-wide v11

    .line 198
    .local v11, "segmentNum":J
    invoke-virtual {v10, v11, v12}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v13

    .line 199
    .local v13, "firstSyncUs":J
    cmp-long v0, v13, v7

    if-gez v0, :cond_0

    .line 200
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    cmp-long v2, v11, v0

    if-gez v2, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr v0, v11

    .line 201
    invoke-virtual {v10, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_1

    :cond_0
    move-wide v5, v13

    .line 203
    .local v5, "secondSyncUs":J
    :goto_1
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move-wide v3, v13

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/util/Util;->resolveSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;JJ)J

    move-result-wide v0

    return-wide v0

    .line 195
    .end local v5    # "secondSyncUs":J
    .end local v10    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v11    # "segmentNum":J
    .end local v13    # "firstSyncUs":J
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_2
    return-wide v7
.end method

.method public getNextChunk(JJLjava/util/List;Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
    .locals 35
    .param p1, "playbackPositionUs"    # J
    .param p3, "loadPositionUs"    # J
    .param p6, "out"    # Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;",
            ")V"
        }
    .end annotation

    .line 250
    .local p5, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    move-object/from16 v15, p0

    move-object/from16 v12, p6

    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 251
    return-void

    .line 254
    :cond_0
    sub-long v16, p3, p1

    .line 255
    .local v16, "bufferedDurationUs":J
    invoke-direct/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v18

    .line 256
    .local v18, "timeToLiveEdgeUs":J
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 257
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    iget-object v2, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 258
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-long v13, v0, p3

    .line 261
    .local v13, "presentationPositionUs":J
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0, v13, v14}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maybeRefreshManifestBeforeLoadingNextChunk(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    return-void

    .line 267
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getNowUnixTimeUs()J

    move-result-wide v10

    .line 268
    .local v10, "nowUnixTimeUs":J
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object/from16 v7, p5

    goto :goto_0

    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move-object/from16 v7, p5

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    :goto_0
    move-object v2, v0

    .line 269
    .local v2, "previous":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    new-array v8, v0, [Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    .line 270
    .local v8, "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_1
    array-length v0, v8

    if-ge v5, v0, :cond_5

    .line 271
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v6, v0, v5

    .line 272
    .local v6, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v0, :cond_3

    .line 273
    sget-object v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    aput-object v0, v8, v5

    move/from16 v30, v5

    move-object/from16 v32, v8

    goto :goto_2

    .line 275
    :cond_3
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 276
    invoke-virtual {v6, v0, v1, v10, v11}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;IJ)J

    move-result-wide v26

    .line 277
    .local v26, "firstAvailableSegmentNum":J
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 278
    invoke-virtual {v6, v0, v1, v10, v11}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getLastAvailableSegmentNum(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;IJ)J

    move-result-wide v28

    .line 279
    .local v28, "lastAvailableSegmentNum":J
    nop

    .line 280
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v3, p3

    move/from16 v30, v5

    move-object/from16 v31, v6

    .end local v5    # "i":I
    .end local v6    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .local v30, "i":I
    .local v31, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    move-wide/from16 v5, v26

    move-object/from16 v32, v8

    .end local v8    # "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .local v32, "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    move-wide/from16 v7, v28

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getSegmentNum(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JJJ)J

    move-result-wide v0

    .line 286
    .local v0, "segmentNum":J
    cmp-long v3, v0, v26

    if-gez v3, :cond_4

    .line 287
    sget-object v3, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    aput-object v3, v32, v30

    goto :goto_2

    .line 289
    :cond_4
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;

    move-object/from16 v20, v3

    move-object/from16 v21, v31

    move-wide/from16 v22, v0

    move-wide/from16 v24, v28

    invoke-direct/range {v20 .. v25}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;-><init>(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;JJ)V

    aput-object v3, v32, v30

    .line 270
    .end local v0    # "segmentNum":J
    .end local v26    # "firstAvailableSegmentNum":J
    .end local v28    # "lastAvailableSegmentNum":J
    .end local v31    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    :goto_2
    add-int/lit8 v5, v30, 0x1

    move-object/from16 v7, p5

    move-object/from16 v8, v32

    .end local v30    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .end local v32    # "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .restart local v8    # "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    :cond_5
    move/from16 v30, v5

    move-object/from16 v32, v8

    .line 296
    .end local v5    # "i":I
    .end local v8    # "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .restart local v32    # "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v4, p1

    move-wide/from16 v6, v16

    const/4 v0, 0x1

    move-wide/from16 v8, v18

    move-wide/from16 v33, v10

    .end local v10    # "nowUnixTimeUs":J
    .local v33, "nowUnixTimeUs":J
    move-object/from16 v10, p5

    move-object/from16 v11, v32

    invoke-interface/range {v3 .. v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V

    .line 299
    iget-object v1, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 300
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v3

    aget-object v1, v1, v3

    .line 302
    .local v1, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-eqz v3, :cond_9

    .line 303
    iget-object v11, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 304
    .local v11, "selectedRepresentation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    const/4 v3, 0x0

    .line 305
    .local v3, "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    const/4 v4, 0x0

    .line 306
    .local v4, "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    if-nez v5, :cond_6

    .line 307
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_3

    .line 306
    :cond_6
    move-object/from16 v20, v3

    .line 309
    .end local v3    # "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v20, "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :goto_3
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v3, :cond_7

    .line 310
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    move-object/from16 v21, v3

    .end local v4    # "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v3, "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    goto :goto_4

    .line 309
    .end local v3    # "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v4    # "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_7
    move-object/from16 v21, v4

    .line 312
    .end local v4    # "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v21, "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :goto_4
    if-nez v20, :cond_8

    if-eqz v21, :cond_9

    .line 314
    :cond_8
    iget-object v5, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 315
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v7

    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 316
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v8

    .line 314
    move-object/from16 v3, p0

    move-object v4, v1

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->newInitializationChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 317
    return-void

    .line 321
    .end local v11    # "selectedRepresentation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .end local v20    # "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v21    # "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()I

    move-result v3

    const/16 v20, 0x0

    if-nez v3, :cond_c

    .line 323
    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v3, :cond_b

    iget v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    iget-object v4, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    sub-int/2addr v4, v0

    if-ge v3, v4, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_5
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 324
    return-void

    .line 327
    :cond_c
    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v4, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 328
    move-wide/from16 v10, v33

    .end local v33    # "nowUnixTimeUs":J
    .restart local v10    # "nowUnixTimeUs":J
    invoke-virtual {v1, v3, v4, v10, v11}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;IJ)J

    move-result-wide v21

    .line 329
    .local v21, "firstAvailableSegmentNum":J
    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v4, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 330
    invoke-virtual {v1, v3, v4, v10, v11}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getLastAvailableSegmentNum(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;IJ)J

    move-result-wide v8

    .line 332
    .local v8, "lastAvailableSegmentNum":J
    invoke-direct {v15, v1, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->updateLiveEdgeTimeUs(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;J)V

    .line 334
    nop

    .line 335
    move-object/from16 v3, p0

    move-object v4, v1

    move-object v5, v2

    move-wide/from16 v6, p3

    move-wide/from16 v23, v8

    .end local v8    # "lastAvailableSegmentNum":J
    .local v23, "lastAvailableSegmentNum":J
    move-wide/from16 v8, v21

    move-wide/from16 v25, v10

    .end local v10    # "nowUnixTimeUs":J
    .local v25, "nowUnixTimeUs":J
    move-wide/from16 v10, v23

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getSegmentNum(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JJJ)J

    move-result-wide v10

    .line 341
    .local v10, "segmentNum":J
    cmp-long v3, v10, v21

    if-gez v3, :cond_d

    .line 343
    new-instance v0, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 344
    return-void

    .line 346
    :cond_d
    cmp-long v3, v10, v23

    if-gtz v3, :cond_13

    iget-boolean v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    if-eqz v3, :cond_e

    cmp-long v3, v10, v23

    if-ltz v3, :cond_e

    move-object/from16 v31, v1

    move-wide/from16 v33, v10

    move-object v1, v12

    move-wide/from16 v29, v13

    goto/16 :goto_8

    .line 354
    :cond_e
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->access$000(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;)J

    move-result-wide v27

    .line 355
    .local v27, "periodDurationUs":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v27, v3

    if-eqz v5, :cond_f

    .line 356
    invoke-virtual {v1, v10, v11}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v5

    cmp-long v7, v5, v27

    if-ltz v7, :cond_f

    .line 358
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 359
    return-void

    .line 362
    :cond_f
    iget v5, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    int-to-long v5, v5

    sub-long v8, v23, v10

    const-wide/16 v29, 0x1

    add-long v8, v8, v29

    .line 363
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    .line 364
    .local v6, "maxSegmentCount":I
    cmp-long v5, v27, v3

    if-eqz v5, :cond_11

    .line 365
    :goto_6
    if-le v6, v0, :cond_10

    int-to-long v7, v6

    add-long/2addr v7, v10

    sub-long v7, v7, v29

    .line 366
    invoke-virtual {v1, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v7

    cmp-long v5, v7, v27

    if-ltz v5, :cond_10

    .line 370
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 374
    :cond_10
    move v0, v6

    goto :goto_7

    .line 364
    :cond_11
    move v0, v6

    .line 374
    .end local v6    # "maxSegmentCount":I
    .local v0, "maxSegmentCount":I
    :goto_7
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    move-wide/from16 v3, p3

    :cond_12
    move-wide/from16 v29, v13

    .end local v13    # "presentationPositionUs":J
    .local v29, "presentationPositionUs":J
    move-wide v13, v3

    .line 375
    .local v13, "seekTimeUs":J
    iget-object v5, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget v6, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackType:I

    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 380
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 381
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v8

    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 382
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v9

    .line 376
    move-object/from16 v3, p0

    move-object v4, v1

    move-wide/from16 v33, v10

    .end local v10    # "segmentNum":J
    .local v33, "segmentNum":J
    move-object/from16 v31, v1

    move-object v1, v12

    .end local v1    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .restart local v31    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    move v12, v0

    invoke-virtual/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->newMediaChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JIJ)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 386
    return-void

    .line 346
    .end local v0    # "maxSegmentCount":I
    .end local v27    # "periodDurationUs":J
    .end local v29    # "presentationPositionUs":J
    .end local v31    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v33    # "segmentNum":J
    .restart local v1    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .restart local v10    # "segmentNum":J
    .local v13, "presentationPositionUs":J
    :cond_13
    move-object/from16 v31, v1

    move-wide/from16 v33, v10

    move-object v1, v12

    move-wide/from16 v29, v13

    .line 350
    .end local v1    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v10    # "segmentNum":J
    .end local v13    # "presentationPositionUs":J
    .restart local v29    # "presentationPositionUs":J
    .restart local v31    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .restart local v33    # "segmentNum":J
    :goto_8
    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v3, :cond_15

    iget v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    iget-object v4, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    sub-int/2addr v4, v0

    if-ge v3, v4, :cond_14

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    :cond_15
    :goto_9
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 351
    return-void
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .locals 2
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 238
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    return v0

    .line 239
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 234
    return-void

    .line 230
    :cond_0
    throw v0
.end method

.method protected newInitializationChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .locals 13
    .param p1, "representationHolder"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "initializationUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p7, "indexUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 495
    move-object v0, p1

    move-object/from16 v1, p6

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    .line 496
    .local v2, "baseUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 499
    move-object/from16 v3, p7

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v4

    .line 500
    .local v4, "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v4, :cond_1

    .line 501
    move-object/from16 v4, p6

    goto :goto_0

    .line 504
    .end local v4    # "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_0
    move-object/from16 v3, p7

    move-object/from16 v4, p7

    .line 506
    .restart local v4    # "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_1
    :goto_0
    new-instance v12, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-wide v7, v4, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v9, v4, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 507
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v11

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v7, v12

    .line 508
    .local v7, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v12, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object v5, v12

    move-object v6, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object v12
.end method

.method protected newMediaChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JIJ)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .locals 34
    .param p1, "representationHolder"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "firstSegmentNum"    # J
    .param p9, "maxSegmentCount"    # I
    .param p10, "seekTimeUs"    # J

    .line 522
    move-object/from16 v0, p1

    move-wide/from16 v14, p7

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 523
    .local v13, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    invoke-virtual {v0, v14, v15}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v21

    .line 524
    .local v21, "startTimeUs":J
    invoke-virtual {v0, v14, v15}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v11

    .line 525
    .local v11, "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    iget-object v12, v13, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    .line 526
    .local v12, "baseUrl":Ljava/lang/String;
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-nez v1, :cond_0

    .line 527
    invoke-virtual {v0, v14, v15}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v16

    .line 528
    .local v16, "endTimeUs":J
    new-instance v8, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-wide v3, v11, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v5, v11, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 529
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v3, v8

    .line 530
    .local v3, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v18, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, v21

    move-wide/from16 v9, v16

    move-object/from16 v19, v11

    move-object v15, v12

    .end local v11    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v12    # "baseUrl":Ljava/lang/String;
    .local v15, "baseUrl":Ljava/lang/String;
    .local v19, "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    move-wide/from16 v11, p7

    move-object v14, v13

    .end local v13    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .local v14, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    move/from16 v13, p3

    move-object/from16 v23, v14

    .end local v14    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .local v23, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    move-object/from16 v14, p4

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJILcom/google/android/exoplayer2/Format;)V

    return-object v18

    .line 533
    .end local v3    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v15    # "baseUrl":Ljava/lang/String;
    .end local v16    # "endTimeUs":J
    .end local v19    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v23    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v11    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v12    # "baseUrl":Ljava/lang/String;
    .restart local v13    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_0
    move-object/from16 v19, v11

    move-object v15, v12

    move-object/from16 v23, v13

    .end local v11    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v12    # "baseUrl":Ljava/lang/String;
    .end local v13    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v15    # "baseUrl":Ljava/lang/String;
    .restart local v19    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v23    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    const/4 v1, 0x1

    .line 534
    .local v1, "segmentCount":I
    const/4 v2, 0x1

    move v12, v1

    .end local v1    # "segmentCount":I
    .end local v19    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v2, "i":I
    .restart local v11    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v12, "segmentCount":I
    :goto_0
    move/from16 v9, p9

    if-ge v2, v9, :cond_2

    .line 535
    int-to-long v3, v2

    add-long v3, p7, v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    .line 536
    .local v1, "nextSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    invoke-virtual {v11, v1, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    .line 537
    .local v3, "mergedSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v3, :cond_1

    .line 539
    goto :goto_1

    .line 541
    :cond_1
    move-object v11, v3

    .line 542
    nop

    .end local v1    # "nextSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v3    # "mergedSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    add-int/lit8 v12, v12, 0x1

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    .end local v2    # "i":I
    :cond_2
    :goto_1
    int-to-long v1, v12

    add-long v1, p7, v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v24

    .line 545
    .local v24, "endTimeUs":J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->access$000(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;)J

    move-result-wide v26

    .line 546
    .local v26, "periodDurationUs":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v26, v1

    if-eqz v3, :cond_3

    cmp-long v3, v26, v24

    if-gtz v3, :cond_3

    move-wide/from16 v13, v26

    goto :goto_2

    :cond_3
    move-wide v13, v1

    .line 550
    .local v13, "clippedEndTimeUs":J
    :goto_2
    new-instance v8, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v11, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-wide v3, v11, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v5, v11, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 551
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v3, v8

    .line 552
    .local v3, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    move-object/from16 v10, v23

    .end local v23    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .local v10, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-wide v1, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    neg-long v7, v1

    .local v7, "sampleOffsetUs":J
    move-wide/from16 v18, v7

    .line 553
    new-instance v23, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;

    move-object/from16 v1, v23

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v20, v2

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v28, v7

    .end local v7    # "sampleOffsetUs":J
    .local v28, "sampleOffsetUs":J
    move-wide/from16 v7, v21

    move-object/from16 v30, v10

    .end local v10    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .local v30, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    move-wide/from16 v9, v24

    move-object/from16 v31, v11

    move/from16 v32, v12

    .end local v11    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v12    # "segmentCount":I
    .local v31, "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v32, "segmentCount":I
    move-wide/from16 v11, p10

    move-object/from16 v33, v15

    .end local v15    # "baseUrl":Ljava/lang/String;
    .local v33, "baseUrl":Ljava/lang/String;
    move-wide/from16 v15, p7

    move/from16 v17, v32

    invoke-direct/range {v1 .. v20}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object v23
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 9
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 390
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    if-eqz v0, :cond_0

    .line 391
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    .line 392
    .local v0, "initializationChunk":Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 393
    .local v1, "trackIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v2, v2, v1

    .line 397
    .local v2, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v3, :cond_0

    .line 398
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v3

    .line 399
    .local v3, "seekMap":Lcom/google/android/exoplayer2/extractor/SeekMap;
    if-eqz v3, :cond_0

    .line 400
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v5, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;

    move-object v6, v3

    check-cast v6, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v7, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;J)V

    .line 401
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->copyWithNewSegmentIndex(Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v5

    aput-object v5, v4, v1

    .line 408
    .end local v0    # "initializationChunk":Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    .end local v1    # "trackIndex":I
    .end local v2    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v3    # "seekMap":Lcom/google/android/exoplayer2/extractor/SeekMap;
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 411
    :cond_1
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;J)Z
    .locals 9
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "cancelable"    # Z
    .param p3, "e"    # Ljava/lang/Exception;
    .param p4, "blacklistDurationMs"    # J

    .line 416
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 417
    return v0

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maybeRefreshManifestOnLoadingError(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    return v2

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    if-eqz v1, :cond_2

    instance-of v1, p3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v1, :cond_2

    move-object v1, p3

    check-cast v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v1, v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v3, 0x194

    if-ne v1, v3, :cond_2

    .line 427
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 428
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    aget-object v1, v1, v3

    .line 429
    .local v1, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()I

    move-result v3

    .line 430
    .local v3, "segmentCount":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_2

    .line 431
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()J

    move-result-wide v4

    int-to-long v6, v3

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 432
    .local v4, "lastAvailableSegmentNum":J
    move-object v6, p1

    check-cast v6, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_2

    .line 433
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    .line 434
    return v2

    .line 438
    .end local v1    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v3    # "segmentCount":I
    .end local v4    # "lastAvailableSegmentNum":J
    :cond_2
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p4, v3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 439
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    invoke-interface {v1, v3, p4, p5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->blacklist(IJ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 438
    :goto_0
    return v0
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 7
    .param p1, "newManifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "newPeriodIndex"    # I

    .line 213
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 214
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v0

    .line 216
    .local v0, "periodDurationUs":J
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/ArrayList;

    move-result-object v2

    .line 217
    .local v2, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 218
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 219
    .local v4, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v6, v6, v3

    .line 220
    invoke-virtual {v6, v0, v1, v4}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->copyWithNewRepresentation(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v6

    aput-object v6, v5, v3
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v4    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "periodDurationUs":J
    .end local v2    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 225
    .end local v0    # "e":Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
    :goto_1
    return-void
.end method
