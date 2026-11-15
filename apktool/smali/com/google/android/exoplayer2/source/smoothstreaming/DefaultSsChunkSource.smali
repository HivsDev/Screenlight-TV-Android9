.class public Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;
    }
.end annotation


# instance fields
.field private currentManifestChunkOffset:I

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final extractorWrappers:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private fatalError:Ljava/io/IOException;

.field private manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final streamElementIndex:I

.field private final trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;ILcom/google/android/exoplayer2/trackselection/TrackSelection;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;)V
    .locals 26
    .param p1, "manifestLoaderErrorThrower"    # Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .param p3, "streamElementIndex"    # I
    .param p4, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p5, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p6, "trackEncryptionBoxes"    # [Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 103
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 104
    iput v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->streamElementIndex:I

    .line 105
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 106
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 108
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v6, v6, v2

    .line 109
    .local v6, "streamElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iput-object v7, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 110
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 111
    invoke-interface {v3, v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v8

    .line 112
    .local v8, "manifestTrackIndex":I
    iget-object v9, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v14, v9, v8

    .line 113
    .local v14, "format":Lcom/google/android/exoplayer2/Format;
    iget v9, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    const/4 v9, 0x4

    const/16 v21, 0x4

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    const/16 v21, 0x0

    .line 114
    .local v21, "nalUnitLengthFieldLength":I
    :goto_1
    new-instance v24, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v11, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    iget-wide v12, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->timescale:J

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v17, v9

    move-object/from16 v9, v24

    move v10, v8

    move-object/from16 v25, v14

    .end local v14    # "format":Lcom/google/android/exoplayer2/Format;
    .local v25, "format":Lcom/google/android/exoplayer2/Format;
    move-wide v14, v15

    move-wide/from16 v16, v17

    move-object/from16 v18, v25

    move-object/from16 v20, p6

    invoke-direct/range {v9 .. v23}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 117
    .local v9, "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    new-instance v10, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, v9, v12}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 120
    .local v10, "extractor":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    new-instance v12, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget v13, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    move-object/from16 v14, v25

    .end local v25    # "format":Lcom/google/android/exoplayer2/Format;
    .restart local v14    # "format":Lcom/google/android/exoplayer2/Format;
    invoke-direct {v12, v10, v13, v14}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/Format;)V

    aput-object v12, v11, v7

    .line 110
    .end local v8    # "manifestTrackIndex":I
    .end local v9    # "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .end local v10    # "extractor":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
    .end local v14    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v21    # "nalUnitLengthFieldLength":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 122
    .end local v7    # "i":I
    :cond_1
    return-void
.end method

.method private static newMediaChunk(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;Ljava/lang/String;IJJJILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    .locals 23
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cacheKey"    # Ljava/lang/String;
    .param p4, "chunkIndex"    # I
    .param p5, "chunkStartTimeUs"    # J
    .param p7, "chunkEndTimeUs"    # J
    .param p9, "chunkSeekTimeUs"    # J
    .param p11, "trackSelectionReason"    # I
    .param p12, "trackSelectionData"    # Ljava/lang/Object;
    .param p13, "extractorWrapper"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v19, p13

    .line 278
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v14, 0x0

    const-wide/16 v16, -0x1

    move-object v12, v0

    move-object/from16 v13, p2

    move-object/from16 v18, p3

    invoke-direct/range {v12 .. v18}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v2, v0

    .line 281
    .local v2, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    move-wide/from16 v17, p5

    .line 282
    .local v17, "sampleOffsetUs":J
    new-instance v20, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;

    move-object/from16 v0, v20

    move/from16 v12, p4

    int-to-long v14, v12

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v12, v21

    const/16 v16, 0x1

    invoke-direct/range {v0 .. v19}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object v20
.end method

.method private resolveTimeToLiveEdgeUs(J)J
    .locals 6
    .param p1, "playbackPositionUs"    # J

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v0, :cond_0

    .line 300
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->streamElementIndex:I

    aget-object v0, v0, v1

    .line 304
    .local v0, "currentElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    iget v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v1, v1, -0x1

    .line 305
    .local v1, "lastChunkIndex":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v2

    .line 306
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 307
    .local v2, "lastChunkEndTimeUs":J
    sub-long v4, v2, p1

    return-wide v4
.end method


# virtual methods
.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 11
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->streamElementIndex:I

    aget-object v0, v0, v1

    .line 127
    .local v0, "streamElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkIndex(J)I

    move-result v1

    .line 128
    .local v1, "chunkIndex":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v9

    .line 129
    .local v9, "firstSyncUs":J
    cmp-long v2, v9, p1

    if-gez v2, :cond_0

    iget v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 131
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v2

    move-wide v7, v2

    goto :goto_0

    :cond_0
    move-wide v7, v9

    .line 133
    .local v7, "secondSyncUs":J
    :goto_0
    move-wide v2, p1

    move-object v4, p3

    move-wide v5, v9

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/util/Util;->resolveSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public final getNextChunk(JJLjava/util/List;Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
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

    .line 184
    .local p5, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v4, :cond_0

    .line 185
    return-void

    .line 188
    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->streamElementIndex:I

    aget-object v4, v4, v5

    .line 189
    .local v4, "streamElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    iget v5, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-nez v5, :cond_1

    .line 191
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    xor-int/lit8 v5, v5, 0x1

    iput-boolean v5, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 192
    return-void

    .line 196
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 197
    invoke-virtual {v4, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkIndex(J)I

    move-result v5

    move-object/from16 v15, p5

    .local v5, "chunkIndex":I
    goto :goto_0

    .line 199
    .end local v5    # "chunkIndex":I
    :cond_2
    nop

    .line 200
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v15, p5

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide v5

    iget v7, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    int-to-long v7, v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    .line 201
    .restart local v5    # "chunkIndex":I
    if-gez v5, :cond_3

    .line 203
    new-instance v6, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    .line 204
    return-void

    .line 208
    :cond_3
    :goto_0
    iget v6, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-lt v5, v6, :cond_4

    .line 210
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v6, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    xor-int/lit8 v6, v6, 0x1

    iput-boolean v6, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 211
    return-void

    .line 214
    :cond_4
    sub-long v16, v1, p1

    .line 215
    .local v16, "bufferedDurationUs":J
    invoke-direct/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v18

    .line 217
    .local v18, "timeToLiveEdgeUs":J
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v6

    new-array v14, v6, [Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    .line 218
    .local v14, "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v14

    if-ge v6, v7, :cond_5

    .line 219
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v7, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v7

    .line 220
    .local v7, "trackIndex":I
    new-instance v8, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;

    invoke-direct {v8, v4, v7, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;II)V

    aput-object v8, v14, v6

    .line 218
    .end local v7    # "trackIndex":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 222
    .end local v6    # "i":I
    :cond_5
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v7, p1

    move-wide/from16 v9, v16

    move-wide/from16 v11, v18

    move-object/from16 v13, p5

    move-object/from16 v20, v14

    .end local v14    # "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .local v20, "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    invoke-interface/range {v6 .. v14}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V

    .line 225
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    .line 226
    .local v6, "chunkStartTimeUs":J
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v8

    add-long/2addr v8, v6

    .line 227
    .local v8, "chunkEndTimeUs":J
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    move-wide/from16 v30, v1

    goto :goto_2

    :cond_6
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v30, v10

    .line 228
    .local v30, "chunkSeekTimeUs":J
    :goto_2
    iget v10, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v10, v5

    .line 230
    .local v10, "currentAbsoluteChunkIndex":I
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v11

    .line 231
    .local v11, "trackSelectionIndex":I
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    aget-object v12, v12, v11

    .line 233
    .local v12, "extractorWrapper":Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    iget-object v13, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v13, v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v13

    .line 234
    .local v13, "manifestTrackIndex":I
    invoke-virtual {v4, v13, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object v14

    .line 236
    .local v14, "uri":Landroid/net/Uri;
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 238
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v21

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    const/16 v24, 0x0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 246
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v32

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 247
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v33

    .line 237
    move-object/from16 v22, v1

    move-object/from16 v23, v14

    move/from16 v25, v10

    move-wide/from16 v26, v6

    move-wide/from16 v28, v8

    move-object/from16 v34, v12

    invoke-static/range {v21 .. v34}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->newMediaChunk(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;Ljava/lang/String;IJJJILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 249
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

    .line 172
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    return v0

    .line 173
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

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 168
    return-void

    .line 164
    :cond_0
    throw v0
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 0
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 254
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;J)Z
    .locals 3
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "cancelable"    # Z
    .param p3, "e"    # Ljava/lang/Exception;
    .param p4, "blacklistDurationMs"    # J

    .line 259
    if-eqz p2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p4, v0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 261
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    invoke-interface {v0, v1, p4, p5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->blacklist(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V
    .locals 9
    .param p1, "newManifest"    # Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->streamElementIndex:I

    aget-object v0, v0, v1

    .line 139
    .local v0, "currentElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    iget v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    .line 140
    .local v1, "currentElementChunkCount":I
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->streamElementIndex:I

    aget-object v2, v2, v3

    .line 141
    .local v2, "newElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    if-eqz v1, :cond_2

    iget v3, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-nez v3, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v3

    add-int/lit8 v5, v1, -0x1

    .line 146
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 147
    .local v3, "currentElementEndTimeUs":J
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v5

    .line 148
    .local v5, "newElementStartTimeUs":J
    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    .line 150
    iget v7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    goto :goto_1

    .line 153
    :cond_1
    iget v7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkIndex(J)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    goto :goto_1

    .line 143
    .end local v3    # "currentElementEndTimeUs":J
    .end local v5    # "newElementStartTimeUs":J
    :cond_2
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    .line 156
    :goto_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 157
    return-void
.end method
