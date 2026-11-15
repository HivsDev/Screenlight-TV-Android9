.class final Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;


# static fields
.field private static final TAG:Ljava/lang/String; = "VbriSeeker"


# instance fields
.field private final dataEndPosition:J

.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJJ)V
    .locals 0
    .param p1, "timesUs"    # [J
    .param p2, "positions"    # [J
    .param p3, "durationUs"    # J
    .param p5, "dataEndPosition"    # J

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 102
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    .line 103
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->durationUs:J

    .line 104
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->dataEndPosition:J

    .line 105
    return-void
.end method

.method public static create(JJLcom/google/android/exoplayer2/extractor/MpegAudioHeader;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;
    .locals 23
    .param p0, "inputLength"    # J
    .param p2, "position"    # J
    .param p4, "mpegAudioHeader"    # Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;
    .param p5, "frame"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 48
    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 49
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 50
    .local v4, "numFrames":I
    const/4 v5, 0x0

    if-gtz v4, :cond_0

    .line 51
    return-object v5

    .line 53
    :cond_0
    iget v6, v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    .line 54
    .local v6, "sampleRate":I
    int-to-long v7, v4

    const-wide/32 v9, 0xf4240

    const/16 v11, 0x7d00

    if-lt v6, v11, :cond_1

    const/16 v11, 0x480

    goto :goto_0

    :cond_1
    const/16 v11, 0x240

    :goto_0
    int-to-long v11, v11

    mul-long v9, v9, v11

    int-to-long v11, v6

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 56
    .local v7, "durationUs":J
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 57
    .local v9, "entryCount":I
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 58
    .local v10, "scale":I
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 59
    .local v11, "entrySize":I
    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 61
    iget v13, v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    int-to-long v13, v13

    move/from16 v20, v6

    .end local v6    # "sampleRate":I
    .local v20, "sampleRate":I
    add-long v5, p2, v13

    .line 63
    .local v5, "minPosition":J
    new-array v14, v9, [J

    .line 64
    .local v14, "timesUs":[J
    new-array v13, v9, [J

    .line 65
    .local v13, "positions":[J
    const/16 v16, 0x0

    move-object/from16 v18, v13

    move/from16 v15, v16

    move-wide/from16 v12, p2

    .end local v13    # "positions":[J
    .end local p2    # "position":J
    .local v12, "position":J
    .local v15, "index":I
    .local v18, "positions":[J
    :goto_1
    if-ge v15, v9, :cond_6

    .line 66
    int-to-long v2, v15

    mul-long v2, v2, v7

    move-wide/from16 v21, v7

    .end local v7    # "durationUs":J
    .local v21, "durationUs":J
    int-to-long v7, v9

    div-long/2addr v2, v7

    aput-wide v2, v14, v15

    .line 69
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    aput-wide v2, v18, v15

    .line 71
    const/4 v2, 0x1

    if-eq v11, v2, :cond_5

    const/4 v2, 0x2

    if-eq v11, v2, :cond_4

    const/4 v3, 0x3

    if-eq v11, v3, :cond_3

    const/4 v3, 0x4

    if-eq v11, v3, :cond_2

    .line 85
    const/4 v3, 0x0

    return-object v3

    .line 82
    :cond_2
    const/4 v3, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 83
    .local v7, "segmentSize":I
    goto :goto_2

    .line 79
    .end local v7    # "segmentSize":I
    :cond_3
    const/4 v3, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7

    .line 80
    .restart local v7    # "segmentSize":I
    goto :goto_2

    .line 76
    .end local v7    # "segmentSize":I
    :cond_4
    const/4 v3, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 77
    .restart local v7    # "segmentSize":I
    goto :goto_2

    .line 73
    .end local v7    # "segmentSize":I
    :cond_5
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 74
    .restart local v7    # "segmentSize":I
    nop

    .line 87
    :goto_2
    mul-int v8, v7, v10

    int-to-long v2, v8

    add-long/2addr v12, v2

    .line 65
    .end local v7    # "segmentSize":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-wide/from16 v7, v21

    goto :goto_1

    .end local v21    # "durationUs":J
    .local v7, "durationUs":J
    :cond_6
    move-wide/from16 v21, v7

    .line 89
    .end local v7    # "durationUs":J
    .end local v15    # "index":I
    .restart local v21    # "durationUs":J
    const-wide/16 v2, -0x1

    cmp-long v7, v0, v2

    if-eqz v7, :cond_7

    cmp-long v2, v0, v12

    if-eqz v2, :cond_7

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VBRI data size mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VbriSeeker"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_7
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;

    move-wide v7, v12

    move-object/from16 v3, v18

    .end local v12    # "position":J
    .end local v18    # "positions":[J
    .local v3, "positions":[J
    .local v7, "position":J
    move-object v13, v2

    move-object v12, v14

    .end local v14    # "timesUs":[J
    .local v12, "timesUs":[J
    move-object v15, v3

    move-wide/from16 v16, v21

    move-wide/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;-><init>([J[JJJ)V

    return-object v2
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 8
    .param p1, "timeUs"    # J

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 115
    .local v0, "tableIndex":I
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 116
    .local v2, "seekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    iget-wide v3, v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    array-length v4, v3

    sub-int/2addr v4, v1

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    add-int/lit8 v4, v0, 0x1

    aget-wide v4, v3, v4

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v6, v3, v6

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 120
    .local v1, "nextSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    new-instance v3, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v3, v2, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v3

    .line 117
    .end local v1    # "nextSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    :cond_1
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v1
.end method

.method public getTimeUs(J)J
    .locals 3
    .param p1, "position"    # J

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public isSeekable()Z
    .locals 1

    .line 109
    const/4 v0, 0x1

    return v0
.end method
