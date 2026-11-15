.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 18
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 59
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 60
    .local v2, "notFoundException":Lcom/google/zxing/NotFoundException;
    const/4 v3, 0x0

    .line 61
    .local v3, "formatException":Lcom/google/zxing/FormatException;
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    move-object v4, v0

    .line 62
    .local v4, "detector":Lcom/google/zxing/aztec/detector/Detector;
    const/4 v5, 0x0

    .line 63
    .local v5, "points":[Lcom/google/zxing/ResultPoint;
    const/4 v6, 0x0

    .line 65
    .local v6, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v4, v7}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v9, v8

    .line 66
    .local v9, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    move-object v9, v0

    :try_start_1
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object v5, v0

    .line 67
    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v0, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v0

    .end local v9    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    goto :goto_2

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    goto :goto_1

    .line 71
    :catch_2
    move-exception v0

    move-object v9, v8

    .local v9, "e":Lcom/google/zxing/FormatException;
    :goto_0
    move-object v3, v0

    goto :goto_3

    .line 69
    .end local v9    # "e":Lcom/google/zxing/FormatException;
    :catch_3
    move-exception v0

    move-object v9, v8

    .local v9, "e":Lcom/google/zxing/NotFoundException;
    :goto_1
    move-object v2, v0

    .line 72
    .end local v9    # "e":Lcom/google/zxing/NotFoundException;
    :goto_2
    nop

    .line 73
    :goto_3
    if-nez v6, :cond_2

    .line 75
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v4, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0

    .line 76
    .local v9, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    move-object v9, v0

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object v5, v0

    .line 77
    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v0, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/zxing/FormatException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v6, v0

    .line 86
    .end local v9    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    goto :goto_5

    .line 78
    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    .line 79
    .local v0, "e":Lcom/google/zxing/ReaderException;
    :goto_4
    if-nez v2, :cond_1

    .line 82
    if-eqz v3, :cond_0

    .line 83
    throw v3

    .line 85
    :cond_0
    throw v0

    .line 80
    :cond_1
    throw v2

    .line 89
    .end local v0    # "e":Lcom/google/zxing/ReaderException;
    :cond_2
    :goto_5
    if-eqz v1, :cond_4

    .line 90
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPointCallback;

    .line 91
    .local v9, "rpcb":Lcom/google/zxing/ResultPointCallback;
    move-object v9, v0

    if-eqz v0, :cond_4

    .line 92
    array-length v0, v5

    :goto_6
    if-ge v7, v0, :cond_3

    aget-object v10, v5, v7

    .line 93
    .local v10, "point":Lcom/google/zxing/ResultPoint;
    invoke-interface {v9, v10}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 92
    .end local v10    # "point":Lcom/google/zxing/ResultPoint;
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_3
    move-object v0, v5

    goto :goto_7

    .line 98
    .end local v9    # "rpcb":Lcom/google/zxing/ResultPointCallback;
    :cond_4
    move-object v0, v8

    :goto_7
    new-instance v7, Lcom/google/zxing/Result;

    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v11

    .line 99
    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v12

    .line 100
    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getNumBits()I

    move-result v13

    sget-object v15, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v10, v7

    move-object v14, v5

    invoke-direct/range {v10 .. v17}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 105
    .local v7, "result":Lcom/google/zxing/Result;
    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v9

    .line 106
    .local v0, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v0, v9

    if-eqz v9, :cond_5

    .line 107
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v7, v9, v0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 109
    :cond_5
    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v8, "ecLevel":Ljava/lang/String;
    move-object v8, v9

    if-eqz v9, :cond_6

    .line 111
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v7, v9, v8}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 114
    :cond_6
    return-object v7
.end method

.method public reset()V
    .locals 0

    .line 120
    return-void
.end method
