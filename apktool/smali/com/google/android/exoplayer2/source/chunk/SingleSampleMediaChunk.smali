.class public final Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private loadCompleted:Z

.field private nextLoadPosition:J

.field private final sampleFormat:Lcom/google/android/exoplayer2/Format;

.field private final trackType:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJILcom/google/android/exoplayer2/Format;)V
    .locals 16
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "chunkIndex"    # J
    .param p12, "trackType"    # I
    .param p13, "sampleFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 63
    move-object/from16 v14, p0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v14, p10

    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 74
    move/from16 v1, p12

    iput v1, v0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->trackType:I

    .line 75
    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    .line 76
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    .line 89
    return-void
.end method

.method public isLoadCompleted()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 94
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v2

    .line 97
    .local v2, "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :try_start_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v3

    .line 98
    .local v3, "length":J
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 99
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    add-long/2addr v3, v5

    .line 101
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    move-object v5, v0

    move-wide v9, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V

    .line 103
    .local v0, "extractorInput":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->getOutput()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-result-object v5

    .line 104
    .local v5, "output":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 105
    const/4 v6, 0x0

    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->trackType:I

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v6

    .line 106
    .local v6, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v6, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 108
    const/4 v7, 0x0

    move v14, v7

    .line 109
    .local v14, "result":I
    :goto_0
    const/4 v7, -0x1

    const/4 v15, 0x1

    if-eq v14, v7, :cond_1

    .line 110
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    int-to-long v9, v14

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    .line 111
    const v7, 0x7fffffff

    invoke-interface {v6, v0, v7, v15}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v7

    move v14, v7

    goto :goto_0

    .line 113
    :cond_1
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    long-to-int v13, v7

    .line 114
    .local v13, "sampleSize":I
    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->startTimeUs:J

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v7, v6

    move v11, v13

    move/from16 v17, v13

    .end local v13    # "sampleSize":I
    .local v17, "sampleSize":I
    move-object/from16 v13, v16

    invoke-interface/range {v7 .. v13}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v0    # "extractorInput":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .end local v3    # "length":J
    .end local v5    # "output":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;
    .end local v6    # "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .end local v14    # "result":I
    .end local v17    # "sampleSize":I
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 117
    nop

    .line 118
    iput-boolean v15, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    .line 119
    return-void

    .line 116
    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 117
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
