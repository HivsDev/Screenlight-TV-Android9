.class public final Lcom/google/android/exoplayer2/extractor/ts/LatmReader;
.super Ljava/lang/Object;
.source "LatmReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final INITIAL_BUFFER_SIZE:I = 0x400

.field private static final STATE_FINDING_SYNC_1:I = 0x0

.field private static final STATE_FINDING_SYNC_2:I = 0x1

.field private static final STATE_READING_HEADER:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3

.field private static final SYNC_BYTE_FIRST:I = 0x56

.field private static final SYNC_BYTE_SECOND:I = 0xe0


# instance fields
.field private audioMuxVersionA:I

.field private bytesRead:I

.field private channelCount:I

.field private format:Lcom/google/android/exoplayer2/Format;

.field private formatId:Ljava/lang/String;

.field private frameLengthType:I

.field private final language:Ljava/lang/String;

.field private numSubframes:I

.field private otherDataLenBits:J

.field private otherDataPresent:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private final sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private sampleDurationUs:J

.field private sampleRateHz:I

.field private sampleSize:I

.field private secondHeaderByte:I

.field private state:I

.field private streamMuxRead:Z

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 80
    return-void
.end method

.method private static latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J
    .locals 3
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 306
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 307
    .local v0, "bytesForValue":I
    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method private parseAudioMuxElement(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .locals 4
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 155
    .local v0, "useSameStreamMux":Z
    if-nez v0, :cond_0

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseStreamMuxConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    if-nez v1, :cond_1

    .line 159
    return-void

    .line 162
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    if-nez v1, :cond_4

    .line 163
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->numSubframes:I

    if-nez v1, :cond_3

    .line 166
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parsePayloadLengthInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    .line 167
    .local v1, "muxSlotLengthBytes":I
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parsePayloadMux(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 168
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v2, :cond_2

    .line 169
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    long-to-int v3, v2

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 171
    .end local v1    # "muxSlotLengthBytes":I
    :cond_2
    nop

    .line 174
    return-void

    .line 164
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v1

    .line 172
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v1
.end method

.method private parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 3
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 261
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    .line 262
    .local v0, "bitsLeft":I
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Landroid/util/Pair;

    move-result-object v1

    .line 263
    .local v1, "config":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleRateHz:I

    .line 264
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->channelCount:I

    .line 265
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    sub-int v2, v0, v2

    return v2
.end method

.method private parseFrameLength(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .locals 4
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 238
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    .line 239
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x6

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x7

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 253
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 254
    goto :goto_1

    .line 249
    :cond_2
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 250
    goto :goto_1

    .line 244
    :cond_3
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 245
    goto :goto_1

    .line 241
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 242
    nop

    .line 258
    :goto_1
    return-void
.end method

.method private parsePayloadLengthInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 3
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "muxSlotLengthBytes":I
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    if-nez v1, :cond_1

    .line 274
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 275
    .local v1, "tmp":I
    add-int/2addr v0, v1

    .line 276
    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    .line 277
    return v0

    .line 279
    .end local v1    # "tmp":I
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    goto :goto_1

    :goto_0
    throw v1

    :goto_1
    goto :goto_0
.end method

.method private parsePayloadMux(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V
    .locals 10
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p2, "muxLengthBytes"    # I

    .line 285
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v0

    .line 286
    .local v0, "bitPosition":I
    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    shr-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    mul-int/lit8 v2, p2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits([BII)V

    .line 293
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v1, v2, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 296
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v7, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 297
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDurationUs:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    .line 298
    return-void
.end method

.method private parseStreamMuxConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .locals 22
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 181
    .local v3, "audioMuxVersion":I
    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    .line 182
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    if-nez v5, :cond_9

    .line 183
    if-ne v3, v2, :cond_1

    .line 184
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    .line 186
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 189
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->numSubframes:I

    .line 190
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 191
    .local v5, "numProgram":I
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 192
    .local v6, "numLayer":I
    if-nez v5, :cond_7

    if-nez v6, :cond_7

    .line 195
    const/16 v7, 0x8

    if-nez v3, :cond_3

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v8

    .line 197
    .local v8, "startPosition":I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v9

    .line 198
    .local v9, "readBits":I
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 199
    add-int/lit8 v10, v9, 0x7

    div-int/2addr v10, v7

    new-array v10, v10, [B

    .line 200
    .local v10, "initData":[B
    invoke-virtual {v1, v10, v4, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits([BII)V

    .line 201
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->channelCount:I

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleRateHz:I

    .line 203
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 201
    const-string v16, "audio/mp4a-latm"

    move/from16 v17, v12

    move-object/from16 v12, v16

    move/from16 v16, v4

    move-object/from16 v21, v7

    invoke-static/range {v11 .. v21}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 204
    .local v4, "format":Lcom/google/android/exoplayer2/Format;
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 205
    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->format:Lcom/google/android/exoplayer2/Format;

    .line 206
    const-wide/32 v11, 0x3d090000

    iget v7, v4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v13, v7

    div-long/2addr v11, v13

    iput-wide v11, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDurationUs:J

    .line 207
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v7, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 209
    .end local v4    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v8    # "startPosition":I
    .end local v9    # "readBits":I
    .end local v10    # "initData":[B
    :cond_2
    goto :goto_1

    .line 210
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    move-result-wide v7

    long-to-int v4, v7

    .line 211
    .local v4, "ascLen":I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v7

    .line 212
    .local v7, "bitsRead":I
    sub-int v8, v4, v7

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 214
    .end local v4    # "ascLen":I
    .end local v7    # "bitsRead":I
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseFrameLength(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    .line 216
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    .line 217
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v4, :cond_5

    .line 218
    if-ne v3, v2, :cond_4

    .line 219
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    goto :goto_2

    .line 223
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 224
    .local v2, "otherDataLenEsc":Z
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    .line 225
    if-nez v2, :cond_4

    .line 228
    .end local v2    # "otherDataLenEsc":Z
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 229
    .local v2, "crcCheckPresent":Z
    if-eqz v2, :cond_6

    .line 230
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 232
    .end local v2    # "crcCheckPresent":Z
    .end local v5    # "numProgram":I
    .end local v6    # "numLayer":I
    :cond_6
    nop

    .line 235
    return-void

    .line 193
    .restart local v5    # "numProgram":I
    .restart local v6    # "numLayer":I
    :cond_7
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v2

    .line 187
    .end local v5    # "numProgram":I
    .end local v6    # "numLayer":I
    :cond_8
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v2

    .line 233
    :cond_9
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method private resetBufferForSize(I)V
    .locals 2
    .param p1, "newSize"    # I

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([B)V

    .line 303
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 6
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_7

    .line 104
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 130
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    .line 131
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    if-ne v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 133
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioMuxElement(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    .line 134
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_0

    .line 138
    .end local v0    # "bytesToRead":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 120
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->secondHeaderByte:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    .line 121
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 122
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->resetBufferForSize(I)V

    .line 124
    :cond_3
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    .line 125
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    .line 126
    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 112
    .local v0, "secondByte":I
    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_5

    .line 113
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->secondHeaderByte:I

    .line 114
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_0

    .line 115
    :cond_5
    if-eq v0, v1, :cond_0

    .line 116
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_0

    .line 106
    .end local v0    # "secondByte":I
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 107
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    .line 141
    :cond_7
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 90
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 91
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 92
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 146
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .line 97
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    .line 98
    return-void
.end method

.method public seek()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    .line 85
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    .line 86
    return-void
.end method
