.class public final Lcom/google/android/exoplayer2/extractor/ts/H262Reader;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_RATE_VALUES:[D

.field private static final START_EXTENSION:I = 0xb5

.field private static final START_GROUP:I = 0xb8

.field private static final START_PICTURE:I = 0x0

.field private static final START_SEQUENCE_HEADER:I = 0xb3

.field private static final START_USER_DATA:I = 0xb2


# instance fields
.field private final csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

.field private formatId:Ljava/lang/String;

.field private frameDurationUs:J

.field private hasOutputFormat:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private sampleHasPicture:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private startedFirstSample:Z

.field private totalBytesWritten:J

.field private final userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V
    .locals 3
    .param p1, "userDataReader"    # Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    .line 79
    if-eqz p1, :cond_0

    .line 80
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0xb2

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 84
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 86
    :goto_0
    return-void
.end method

.method private static parseCsdBuffer(Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;
    .locals 23
    .param p0, "csdBuffer"    # Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;
    .param p1, "formatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 219
    .local v1, "csdData":[B
    const/4 v2, 0x4

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    .line 220
    .local v3, "firstByte":I
    const/4 v4, 0x5

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    .line 221
    .local v5, "secondByte":I
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    .line 222
    .local v6, "thirdByte":I
    shl-int/lit8 v7, v3, 0x4

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    .line 223
    .local v7, "width":I
    and-int/lit8 v8, v5, 0xf

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v6

    .line 225
    .local v8, "height":I
    const/high16 v9, 0x3f800000    # 1.0f

    .line 226
    .local v9, "pixelWidthHeightRatio":F
    const/16 v21, 0x7

    aget-byte v10, v1, v21

    and-int/lit16 v10, v10, 0xf0

    shr-int/lit8 v15, v10, 0x4

    .line 227
    .local v15, "aspectRatioCode":I
    const/4 v10, 0x2

    if-eq v15, v10, :cond_2

    const/4 v10, 0x3

    if-eq v15, v10, :cond_1

    if-eq v15, v2, :cond_0

    move v2, v9

    goto :goto_0

    .line 235
    :cond_0
    mul-int/lit8 v2, v8, 0x79

    int-to-float v2, v2

    mul-int/lit8 v10, v7, 0x64

    int-to-float v10, v10

    div-float/2addr v2, v10

    .line 236
    .end local v9    # "pixelWidthHeightRatio":F
    .local v2, "pixelWidthHeightRatio":F
    goto :goto_0

    .line 232
    .end local v2    # "pixelWidthHeightRatio":F
    .restart local v9    # "pixelWidthHeightRatio":F
    :cond_1
    mul-int/lit8 v2, v8, 0x10

    int-to-float v2, v2

    mul-int/lit8 v10, v7, 0x9

    int-to-float v10, v10

    div-float/2addr v2, v10

    .line 233
    .end local v9    # "pixelWidthHeightRatio":F
    .restart local v2    # "pixelWidthHeightRatio":F
    goto :goto_0

    .line 229
    .end local v2    # "pixelWidthHeightRatio":F
    .restart local v9    # "pixelWidthHeightRatio":F
    :cond_2
    mul-int/lit8 v2, v8, 0x4

    int-to-float v2, v2

    mul-int/lit8 v10, v7, 0x3

    int-to-float v10, v10

    div-float/2addr v2, v10

    .line 230
    .end local v9    # "pixelWidthHeightRatio":F
    .restart local v2    # "pixelWidthHeightRatio":F
    nop

    .line 242
    :goto_0
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    .line 244
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, -0x1

    const/16 v20, 0x0

    .line 242
    const-string/jumbo v10, "video/mpeg2"

    move-object/from16 v9, p1

    move v14, v7

    move/from16 v22, v15

    .end local v15    # "aspectRatioCode":I
    .local v22, "aspectRatioCode":I
    move v15, v8

    move/from16 v19, v2

    invoke-static/range {v9 .. v20}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 246
    .local v9, "format":Lcom/google/android/exoplayer2/Format;
    const-wide/16 v10, 0x0

    .line 247
    .local v10, "frameDurationUs":J
    aget-byte v12, v1, v21

    and-int/lit8 v12, v12, 0xf

    add-int/lit8 v12, v12, -0x1

    .line 248
    .local v12, "frameRateCodeMinusOne":I
    if-ltz v12, :cond_4

    sget-object v13, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    array-length v14, v13

    if-ge v12, v14, :cond_4

    .line 249
    aget-wide v14, v13, v12

    .line 250
    .local v14, "frameRate":D
    iget v13, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    .line 251
    .local v13, "sequenceExtensionPosition":I
    add-int/lit8 v16, v13, 0x9

    aget-byte v16, v1, v16

    and-int/lit8 v16, v16, 0x60

    shr-int/lit8 v4, v16, 0x5

    .line 252
    .local v4, "frameRateExtensionN":I
    add-int/lit8 v16, v13, 0x9

    aget-byte v16, v1, v16

    and-int/lit8 v0, v16, 0x1f

    .line 253
    .local v0, "frameRateExtensionD":I
    if-eq v4, v0, :cond_3

    .line 254
    move-object/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "csdData":[B
    .end local v2    # "pixelWidthHeightRatio":F
    .local v16, "csdData":[B
    .local v17, "pixelWidthHeightRatio":F
    int-to-double v1, v4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double v1, v1, v18

    move/from16 v18, v3

    .end local v3    # "firstByte":I
    .local v18, "firstByte":I
    add-int/lit8 v3, v0, 0x1

    move/from16 v19, v4

    .end local v4    # "frameRateExtensionN":I
    .local v19, "frameRateExtensionN":I
    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    mul-double v14, v14, v1

    goto :goto_1

    .line 253
    .end local v16    # "csdData":[B
    .end local v17    # "pixelWidthHeightRatio":F
    .end local v18    # "firstByte":I
    .end local v19    # "frameRateExtensionN":I
    .restart local v1    # "csdData":[B
    .restart local v2    # "pixelWidthHeightRatio":F
    .restart local v3    # "firstByte":I
    .restart local v4    # "frameRateExtensionN":I
    :cond_3
    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    .line 256
    .end local v1    # "csdData":[B
    .end local v2    # "pixelWidthHeightRatio":F
    .end local v3    # "firstByte":I
    .end local v4    # "frameRateExtensionN":I
    .restart local v16    # "csdData":[B
    .restart local v17    # "pixelWidthHeightRatio":F
    .restart local v18    # "firstByte":I
    .restart local v19    # "frameRateExtensionN":I
    :goto_1
    const-wide v1, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v14

    double-to-long v10, v1

    goto :goto_2

    .line 248
    .end local v0    # "frameRateExtensionD":I
    .end local v13    # "sequenceExtensionPosition":I
    .end local v14    # "frameRate":D
    .end local v16    # "csdData":[B
    .end local v17    # "pixelWidthHeightRatio":F
    .end local v18    # "firstByte":I
    .end local v19    # "frameRateExtensionN":I
    .restart local v1    # "csdData":[B
    .restart local v2    # "pixelWidthHeightRatio":F
    .restart local v3    # "firstByte":I
    :cond_4
    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    .line 259
    .end local v1    # "csdData":[B
    .end local v2    # "pixelWidthHeightRatio":F
    .end local v3    # "firstByte":I
    .restart local v16    # "csdData":[B
    .restart local v17    # "pixelWidthHeightRatio":F
    .restart local v18    # "firstByte":I
    :goto_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 18
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 116
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 117
    .local v2, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    .line 118
    .local v3, "limit":I
    iget-object v4, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 121
    .local v4, "dataArray":[B
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 122
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 125
    :goto_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v4, v2, v3, v5}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v5

    .line 127
    .local v5, "startCodeOffset":I
    if-ne v5, v3, :cond_2

    .line 129
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v6, :cond_0

    .line 130
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v6, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 132
    :cond_0
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    if-eqz v6, :cond_1

    .line 133
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v6, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 135
    :cond_1
    return-void

    .line 139
    :cond_2
    iget-object v6, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v7, v5, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    .line 142
    .local v6, "startCodeValue":I
    sub-int v7, v5, v2

    .line 144
    .local v7, "lengthToStartCode":I
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    const/4 v10, 0x1

    if-nez v8, :cond_5

    .line 145
    if-lez v7, :cond_3

    .line 146
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v8, v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 150
    :cond_3
    if-gez v7, :cond_4

    neg-int v8, v7

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 151
    .local v8, "bytesAlreadyPassed":I
    :goto_1
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v11, v6, v8}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 153
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->parseCsdBuffer(Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v11

    .line 154
    .local v11, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/Format;Ljava/lang/Long;>;"
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v12, v13}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 155
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->frameDurationUs:J

    .line 156
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    .line 159
    .end local v8    # "bytesAlreadyPassed":I
    .end local v11    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/Format;Ljava/lang/Long;>;"
    :cond_5
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    if-eqz v8, :cond_8

    .line 160
    const/4 v8, 0x0

    .line 161
    .restart local v8    # "bytesAlreadyPassed":I
    if-lez v7, :cond_6

    .line 162
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v11, v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_2

    .line 164
    :cond_6
    neg-int v8, v7

    .line 167
    :goto_2
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 168
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v12, v12, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v11

    .line 169
    .local v11, "unescapedLength":I
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v13, v13, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v12, v13, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 170
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    iget-wide v13, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 173
    .end local v11    # "unescapedLength":I
    :cond_7
    const/16 v11, 0xb2

    if-ne v6, v11, :cond_8

    iget-object v11, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v12, v5, 0x2

    aget-byte v11, v11, v12

    if-ne v11, v10, :cond_8

    .line 174
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v11, v6}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 177
    .end local v8    # "bytesAlreadyPassed":I
    :cond_8
    if-eqz v6, :cond_b

    const/16 v8, 0xb3

    if-ne v6, v8, :cond_9

    goto :goto_4

    .line 195
    :cond_9
    const/16 v8, 0xb8

    if-ne v6, v8, :cond_a

    .line 196
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    goto :goto_8

    .line 195
    :cond_a
    :goto_3
    goto :goto_8

    .line 178
    :cond_b
    :goto_4
    sub-int v8, v3, v5

    .line 179
    .local v8, "bytesWrittenPastStartCode":I
    iget-boolean v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v11, :cond_c

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleHasPicture:Z

    if-eqz v11, :cond_c

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v11, :cond_c

    .line 181
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 182
    .local v14, "flags":I
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->samplePosition:J

    sub-long/2addr v11, v9

    long-to-int v9, v11

    sub-int/2addr v9, v8

    .line 183
    .local v9, "size":I
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleTimeUs:J

    const/16 v17, 0x0

    move v15, v9

    move/from16 v16, v8

    invoke-interface/range {v11 .. v17}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 185
    .end local v9    # "size":I
    .end local v14    # "flags":I
    :cond_c
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v9, :cond_e

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleHasPicture:Z

    if-eqz v9, :cond_d

    goto :goto_5

    :cond_d
    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_7

    .line 187
    :cond_e
    :goto_5
    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v11, v8

    sub-long/2addr v9, v11

    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->samplePosition:J

    .line 188
    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->pesTimeUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v9, v11

    if-eqz v13, :cond_f

    goto :goto_6

    :cond_f
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v9, :cond_10

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-wide v13, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->frameDurationUs:J

    add-long/2addr v9, v13

    goto :goto_6

    :cond_10
    const-wide/16 v9, 0x0

    :goto_6
    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleTimeUs:J

    .line 190
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 191
    iput-wide v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->pesTimeUs:J

    .line 192
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->startedFirstSample:Z

    .line 194
    :goto_7
    if-nez v6, :cond_11

    const/4 v9, 0x1

    :cond_11
    iput-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleHasPicture:Z

    .end local v8    # "bytesWrittenPastStartCode":I
    goto :goto_3

    .line 199
    :goto_8
    add-int/lit8 v2, v5, 0x3

    .line 200
    .end local v5    # "startCodeOffset":I
    .end local v6    # "startCodeValue":I
    .end local v7    # "lengthToStartCode":I
    goto/16 :goto_0
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 101
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 102
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    .line 103
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 107
    :cond_0
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 206
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .line 111
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->pesTimeUs:J

    .line 112
    return-void
.end method

.method public seek()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->reset()V

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 95
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->startedFirstSample:Z

    .line 97
    return-void
.end method
