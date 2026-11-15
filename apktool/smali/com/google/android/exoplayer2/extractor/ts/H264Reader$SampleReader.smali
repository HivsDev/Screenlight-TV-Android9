.class final Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80

.field private static final NAL_UNIT_TYPE_AUD:I = 0x9

.field private static final NAL_UNIT_TYPE_IDR:I = 0x5

.field private static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field private static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

.field private buffer:[B

.field private bufferLength:I

.field private final detectAccessUnits:Z

.field private isFilling:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private nalUnitType:I

.field private final output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final pps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;",
            ">;"
        }
    .end annotation
.end field

.field private previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private final sps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;ZZ)V
    .locals 3
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .param p2, "allowNonIdrKeyframes"    # Z
    .param p3, "detectAccessUnits"    # Z

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 265
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 266
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 267
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 268
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 269
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lcom/google/android/exoplayer2/extractor/ts/H264Reader$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 270
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lcom/google/android/exoplayer2/extractor/ts/H264Reader$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 271
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 272
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    .line 273
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->reset()V

    .line 274
    return-void
.end method

.method private outputSample(I)V
    .locals 8
    .param p1, "offset"    # I

    .line 451
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 452
    .local v3, "flags":I
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v4

    long-to-int v7, v0

    .line 453
    .local v7, "size":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const/4 v6, 0x0

    move v4, v7

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 454
    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 34
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 320
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v2, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    sub-int v2, p3, v1

    .line 324
    .local v2, "readLength":I
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v4, v3

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    .line 325
    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 327
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 330
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8, v6}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->reset([BII)V

    .line 331
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 332
    return-void

    .line 334
    :cond_2
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 335
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 336
    .local v3, "nalRefIdc":I
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 340
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-nez v4, :cond_3

    .line 341
    return-void

    .line 343
    :cond_3
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 344
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-nez v4, :cond_4

    .line 345
    return-void

    .line 347
    :cond_4
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 348
    .local v4, "sliceType":I
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-nez v9, :cond_5

    .line 350
    iput-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 351
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    .line 352
    return-void

    .line 354
    :cond_5
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v9

    if-nez v9, :cond_6

    .line 355
    return-void

    .line 357
    :cond_6
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 358
    .local v15, "picParameterSetId":I
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_7

    .line 360
    iput-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 361
    return-void

    .line 363
    :cond_7
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    .line 364
    .local v14, "ppsData":Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v10, v14, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    .line 365
    .local v13, "spsData":Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    iget-boolean v9, v13, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v9, :cond_9

    .line 366
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v9, v7}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 367
    return-void

    .line 369
    :cond_8
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v9, v7}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 371
    :cond_9
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v9, v13, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 372
    return-void

    .line 374
    :cond_a
    const/4 v7, 0x0

    .line 375
    .local v7, "fieldPicFlag":Z
    const/4 v9, 0x0

    .line 376
    .local v9, "bottomFieldFlagPresent":Z
    const/4 v10, 0x0

    .line 377
    .local v10, "bottomFieldFlag":Z
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v12, v13, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v24

    .line 378
    .local v24, "frameNum":I
    iget-boolean v11, v13, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    const/4 v12, 0x1

    if-nez v11, :cond_e

    .line 379
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v11

    if-nez v11, :cond_b

    .line 380
    return-void

    .line 382
    :cond_b
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    .line 383
    if-eqz v7, :cond_d

    .line 384
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v11

    if-nez v11, :cond_c

    .line 385
    return-void

    .line 387
    :cond_c
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    .line 388
    const/4 v9, 0x1

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_0

    .line 383
    :cond_d
    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_0

    .line 378
    :cond_e
    move/from16 v25, v9

    move/from16 v26, v10

    .line 391
    .end local v9    # "bottomFieldFlagPresent":Z
    .end local v10    # "bottomFieldFlag":Z
    .local v25, "bottomFieldFlagPresent":Z
    .local v26, "bottomFieldFlag":Z
    :goto_0
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v9, v6, :cond_f

    const/4 v6, 0x1

    goto :goto_1

    :cond_f
    const/4 v6, 0x0

    .line 392
    .local v6, "idrPicFlag":Z
    :goto_1
    const/4 v9, 0x0

    .line 393
    .local v9, "idrPicId":I
    if-eqz v6, :cond_11

    .line 394
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v10

    if-nez v10, :cond_10

    .line 395
    return-void

    .line 397
    :cond_10
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    move/from16 v27, v9

    goto :goto_2

    .line 393
    :cond_11
    move/from16 v27, v9

    .line 399
    .end local v9    # "idrPicId":I
    .local v27, "idrPicId":I
    :goto_2
    const/4 v9, 0x0

    .line 400
    .local v9, "picOrderCntLsb":I
    const/4 v10, 0x0

    .line 401
    .local v10, "deltaPicOrderCntBottom":I
    const/4 v11, 0x0

    .line 402
    .local v11, "deltaPicOrderCnt0":I
    const/16 v16, 0x0

    .line 403
    .local v16, "deltaPicOrderCnt1":I
    iget v8, v13, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v8, :cond_15

    .line 404
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v12, v13, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v8, v12}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v8

    if-nez v8, :cond_12

    .line 405
    return-void

    .line 407
    :cond_12
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v12, v13, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v8, v12}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 408
    .end local v9    # "picOrderCntLsb":I
    .local v8, "picOrderCntLsb":I
    iget-boolean v9, v14, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v9, :cond_14

    if-nez v7, :cond_14

    .line 409
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v9

    if-nez v9, :cond_13

    .line 410
    return-void

    .line 412
    :cond_13
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v9

    move/from16 v28, v9

    move/from16 v29, v11

    move/from16 v30, v16

    .end local v10    # "deltaPicOrderCntBottom":I
    .local v9, "deltaPicOrderCntBottom":I
    goto :goto_3

    .line 427
    .end local v9    # "deltaPicOrderCntBottom":I
    .restart local v10    # "deltaPicOrderCntBottom":I
    :cond_14
    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v16

    goto :goto_3

    .line 414
    .end local v8    # "picOrderCntLsb":I
    .local v9, "picOrderCntLsb":I
    :cond_15
    iget v8, v13, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v8, v12, :cond_19

    iget-boolean v8, v13, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v8, :cond_19

    .line 416
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v8

    if-nez v8, :cond_16

    .line 417
    return-void

    .line 419
    :cond_16
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v8

    .line 420
    .end local v11    # "deltaPicOrderCnt0":I
    .local v8, "deltaPicOrderCnt0":I
    iget-boolean v11, v14, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v11, :cond_18

    if-nez v7, :cond_18

    .line 421
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v11

    if-nez v11, :cond_17

    .line 422
    return-void

    .line 424
    :cond_17
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v11

    move/from16 v29, v8

    move v8, v9

    move/from16 v28, v10

    move/from16 v30, v11

    .end local v16    # "deltaPicOrderCnt1":I
    .local v11, "deltaPicOrderCnt1":I
    goto :goto_3

    .line 427
    .end local v11    # "deltaPicOrderCnt1":I
    .restart local v16    # "deltaPicOrderCnt1":I
    :cond_18
    move/from16 v29, v8

    move v8, v9

    move/from16 v28, v10

    move/from16 v30, v16

    goto :goto_3

    .end local v8    # "deltaPicOrderCnt0":I
    .local v11, "deltaPicOrderCnt0":I
    :cond_19
    move v8, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v16

    .end local v9    # "picOrderCntLsb":I
    .end local v10    # "deltaPicOrderCntBottom":I
    .end local v11    # "deltaPicOrderCnt0":I
    .end local v16    # "deltaPicOrderCnt1":I
    .local v8, "picOrderCntLsb":I
    .local v28, "deltaPicOrderCntBottom":I
    .local v29, "deltaPicOrderCnt0":I
    .local v30, "deltaPicOrderCnt1":I
    :goto_3
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    move-object v10, v13

    move v11, v3

    move v12, v4

    move-object/from16 v31, v13

    .end local v13    # "spsData":Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .local v31, "spsData":Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    move/from16 v13, v24

    move-object/from16 v32, v14

    .end local v14    # "ppsData":Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    .local v32, "ppsData":Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    move v14, v15

    move/from16 v33, v15

    .end local v15    # "picParameterSetId":I
    .local v33, "picParameterSetId":I
    move v15, v7

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v6

    move/from16 v19, v27

    move/from16 v20, v8

    move/from16 v21, v28

    move/from16 v22, v29

    move/from16 v23, v30

    invoke-virtual/range {v9 .. v23}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setAll(Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    .line 430
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 431
    return-void
.end method

.method public endNalUnit(JI)V
    .locals 5
    .param p1, "position"    # J
    .param p3, "offset"    # I

    .line 434
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 435
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->access$100(Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_1

    .line 438
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long v3, p1, v3

    long-to-int v0, v3

    .line 439
    .local v0, "nalUnitLength":I
    add-int v3, p3, v0

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->outputSample(I)V

    .line 441
    .end local v0    # "nalUnitLength":I
    :cond_1
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    .line 442
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    .line 443
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 444
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 446
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz v4, :cond_3

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 447
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 448
    return-void
.end method

.method public needsSpsPps()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    return v0
.end method

.method public putPps(Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;)V
    .locals 2
    .param p1, "ppsData"    # Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 286
    return-void
.end method

.method public putSps(Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;)V
    .locals 2
    .param p1, "spsData"    # Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 282
    return-void
.end method

.method public reset()V
    .locals 1

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 290
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    .line 292
    return-void
.end method

.method public startNalUnit(JIJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "type"    # I
    .param p4, "pesTimeUs"    # J

    .line 295
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 296
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    .line 297
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 298
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 304
    .local v0, "newSliceHeader":Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 305
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 306
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    .line 307
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 308
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 310
    .end local v0    # "newSliceHeader":Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    :cond_2
    return-void
.end method
