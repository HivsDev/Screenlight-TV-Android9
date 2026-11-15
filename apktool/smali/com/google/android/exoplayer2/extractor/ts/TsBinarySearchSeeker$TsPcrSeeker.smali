.class final Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;
.super Ljava/lang/Object;
.source "TsBinarySearchSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TsPcrSeeker"
.end annotation


# instance fields
.field private final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final pcrPid:I

.field private final pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .locals 2
    .param p1, "pcrPid"    # I
    .param p2, "pcrTimestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrPid:I

    .line 72
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v1, 0x92e0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 74
    return-void
.end method

.method private searchForPcrValueInBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 24
    .param p1, "packetBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "targetPcrTimeUs"    # J
    .param p4, "bufferStartOffset"    # J

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    .line 93
    .local v4, "limit":I
    const-wide/16 v5, -0x1

    .line 94
    .local v5, "startOfLastPacketPosition":J
    const-wide/16 v7, -0x1

    .line 95
    .local v7, "endOfLastPacketPosition":J
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 97
    .local v9, "lastPcrTimeUsInRange":J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    const/16 v12, 0xbc

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v11, v12, :cond_5

    .line 98
    iget-object v11, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v12

    invoke-static {v11, v12, v4}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->findSyncBytePosition([BII)I

    move-result v11

    .line 100
    .local v11, "startOfPacket":I
    add-int/lit16 v12, v11, 0xbc

    .line 101
    .local v12, "endOfPacket":I
    if-le v12, v4, :cond_0

    .line 102
    move v15, v4

    move-wide/from16 v20, v5

    move-wide/from16 v16, v7

    goto :goto_2

    .line 104
    :cond_0
    iget v15, v0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrPid:I

    move-wide/from16 v16, v7

    .end local v7    # "endOfLastPacketPosition":J
    .local v16, "endOfLastPacketPosition":J
    invoke-static {v1, v11, v15}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J

    move-result-wide v7

    .line 105
    .local v7, "pcrValue":J
    cmp-long v15, v7, v13

    if-eqz v15, :cond_4

    .line 106
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v15, v7, v8}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v13

    .line 107
    .local v13, "pcrTimeUs":J
    cmp-long v15, v13, p2

    if-lez v15, :cond_2

    .line 108
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v15, v9, v18

    if-nez v15, :cond_1

    .line 110
    invoke-static {v13, v14, v2, v3}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v15

    return-object v15

    .line 113
    :cond_1
    add-long v18, v2, v5

    invoke-static/range {v18 .. v19}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v15

    return-object v15

    .line 116
    :cond_2
    const-wide/32 v18, 0x186a0

    add-long v18, v13, v18

    cmp-long v15, v18, p2

    if-lez v15, :cond_3

    .line 117
    move v15, v4

    move-wide/from16 v20, v5

    .end local v4    # "limit":I
    .end local v5    # "startOfLastPacketPosition":J
    .local v15, "limit":I
    .local v20, "startOfLastPacketPosition":J
    int-to-long v4, v11

    add-long/2addr v4, v2

    .line 118
    .local v4, "startOfPacketInStream":J
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v6

    return-object v6

    .line 121
    .end local v15    # "limit":I
    .end local v20    # "startOfLastPacketPosition":J
    .local v4, "limit":I
    .restart local v5    # "startOfLastPacketPosition":J
    :cond_3
    move v15, v4

    move-wide/from16 v20, v5

    .end local v4    # "limit":I
    .end local v5    # "startOfLastPacketPosition":J
    .restart local v15    # "limit":I
    .restart local v20    # "startOfLastPacketPosition":J
    move-wide v4, v13

    .line 122
    .end local v9    # "lastPcrTimeUsInRange":J
    .local v4, "lastPcrTimeUsInRange":J
    int-to-long v9, v11

    move-wide/from16 v22, v4

    move-wide v5, v9

    move-wide/from16 v9, v22

    .end local v20    # "startOfLastPacketPosition":J
    .local v9, "startOfLastPacketPosition":J
    goto :goto_1

    .line 105
    .end local v13    # "pcrTimeUs":J
    .end local v15    # "limit":I
    .local v4, "limit":I
    .restart local v5    # "startOfLastPacketPosition":J
    .local v9, "lastPcrTimeUsInRange":J
    :cond_4
    move v15, v4

    move-wide/from16 v20, v5

    .line 124
    .end local v4    # "limit":I
    .restart local v15    # "limit":I
    :goto_1
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 125
    int-to-long v7, v12

    .line 126
    .end local v11    # "startOfPacket":I
    .end local v12    # "endOfPacket":I
    .end local v16    # "endOfLastPacketPosition":J
    .local v7, "endOfLastPacketPosition":J
    move v4, v15

    goto :goto_0

    .line 97
    .end local v15    # "limit":I
    .restart local v4    # "limit":I
    :cond_5
    move v15, v4

    move-wide/from16 v20, v5

    move-wide/from16 v16, v7

    .line 128
    .end local v4    # "limit":I
    .end local v5    # "startOfLastPacketPosition":J
    .end local v7    # "endOfLastPacketPosition":J
    .restart local v15    # "limit":I
    .restart local v16    # "endOfLastPacketPosition":J
    .restart local v20    # "startOfLastPacketPosition":J
    :goto_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v9, v4

    if-eqz v6, :cond_6

    .line 129
    add-long v4, v2, v16

    .line 130
    .local v4, "endOfLastPacketPositionInStream":J
    invoke-static {v9, v10, v4, v5}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v6

    return-object v6

    .line 133
    .end local v4    # "endOfLastPacketPositionInStream":J
    :cond_6
    sget-object v4, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object v4
.end method


# virtual methods
.method public searchForTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 9
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "targetTimestamp"    # J
    .param p4, "outputFrameHolder"    # Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    .line 81
    .local v6, "inputPosition":J
    nop

    .line 82
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x92e0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    .line 83
    .local v8, "bytesToRead":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 86
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->searchForPcrValueInBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    return-object v0
.end method
