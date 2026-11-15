.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field public static final DEFAULT_AZTEC_LAYERS:I = 0x0

.field public static final DEFAULT_EC_PERCENT:I = 0x21

.field private static final MAX_NB_BITS:I = 0x20

.field private static final MAX_NB_BITS_COMPACT:I = 0x4

.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .locals 7
    .param p0, "stuffedBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "wordSize"    # I
    .param p2, "totalWords"    # I

    .line 288
    new-array v0, p2, [I

    .line 291
    .local v0, "message":[I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    div-int/2addr v2, p1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 292
    const/4 v3, 0x0

    .line 293
    .local v3, "value":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, p1, :cond_1

    .line 294
    mul-int v5, v1, p1

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    sub-int v5, p1, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    shl-int v5, v6, v5

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_2
    or-int/2addr v3, v5

    .line 293
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 296
    .end local v4    # "j":I
    :cond_1
    aput v3, v0, v1

    .line 291
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_2
    return-object v0
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .locals 3
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "center"    # I
    .param p2, "size"    # I

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 205
    sub-int v1, p1, v0

    .local v1, "j":I
    :goto_1
    add-int v2, p1, v0

    if-gt v1, v2, :cond_0

    .line 206
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 207
    add-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 208
    sub-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 209
    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 212
    .end local v0    # "i":I
    :cond_1
    sub-int v0, p1, p2

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 213
    sub-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 214
    sub-int v0, p1, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 215
    add-int v0, p1, p2

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 216
    add-int v0, p1, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 217
    add-int v0, p1, p2

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 218
    return-void
.end method

.method private static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .locals 4
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "compact"    # Z
    .param p2, "matrixSize"    # I
    .param p3, "modeMessage"    # Lcom/google/zxing/common/BitArray;

    .line 235
    div-int/lit8 v0, p2, 0x2

    .line 236
    .local v0, "center":I
    if-eqz p1, :cond_5

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    .line 238
    add-int/lit8 v2, v0, -0x3

    add-int/2addr v2, v1

    .line 239
    .local v2, "offset":I
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 242
    :cond_0
    add-int/lit8 v3, v1, 0x7

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 245
    :cond_1
    rsub-int/lit8 v3, v1, 0x14

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 248
    :cond_2
    rsub-int/lit8 v3, v1, 0x1b

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 237
    .end local v2    # "offset":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_4
    return-void

    .line 253
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_a

    .line 254
    add-int/lit8 v2, v0, -0x5

    add-int/2addr v2, v1

    div-int/lit8 v3, v1, 0x5

    add-int/2addr v2, v3

    .line 255
    .restart local v2    # "offset":I
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 256
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 258
    :cond_6
    add-int/lit8 v3, v1, 0xa

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 259
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 261
    :cond_7
    rsub-int/lit8 v3, v1, 0x1d

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 262
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 264
    :cond_8
    rsub-int/lit8 v3, v1, 0x27

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 265
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 253
    .end local v2    # "offset":I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 269
    .end local v1    # "i":I
    :cond_a
    return-void
.end method

.method public static encode([B)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 2
    .param p0, "data"    # [B

    .line 51
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 25
    .param p0, "data"    # [B
    .param p1, "minECCPercent"    # I
    .param p2, "userSpecifiedLayers"    # I

    .line 65
    new-instance v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 68
    .local v3, "bits":Lcom/google/zxing/common/BitArray;
    move-object v3, v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x64

    const/16 v4, 0xb

    add-int/2addr v0, v4

    .line 69
    .local v0, "eccBits":I
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    add-int/2addr v5, v0

    .line 75
    .local v5, "totalSizeBits":I
    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p2, :cond_6

    .line 76
    if-gez p2, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 77
    .local v9, "compact":Z
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    move v11, v7

    .line 78
    .local v11, "layers":I
    move v11, v10

    if-eqz v9, :cond_1

    const/4 v6, 0x4

    :cond_1
    if-gt v10, v6, :cond_5

    .line 82
    invoke-static {v11, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v6

    .line 83
    .local v6, "totalBitsInLayer":I
    sget-object v10, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v10, v10, v11

    .line 84
    .local v10, "wordSize":I
    rem-int v12, v6, v10

    sub-int v12, v6, v12

    .line 85
    .local v12, "usableBitsInLayers":I
    invoke-static {v3, v10}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v13

    move-object v14, v2

    .line 86
    .local v14, "stuffedBits":Lcom/google/zxing/common/BitArray;
    move-object v14, v13

    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v13

    add-int/2addr v13, v0

    const-string v15, "Data to large for user specified layer"

    if-gt v13, v12, :cond_4

    .line 89
    if-eqz v9, :cond_3

    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v13

    shl-int/lit8 v4, v10, 0x6

    if-gt v13, v4, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v12    # "usableBitsInLayers":I
    :cond_3
    :goto_1
    move v13, v6

    move v4, v10

    goto/16 :goto_6

    .line 87
    .restart local v12    # "usableBitsInLayers":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    .end local v6    # "totalBitsInLayer":I
    .end local v10    # "wordSize":I
    .end local v12    # "usableBitsInLayers":I
    .end local v14    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v4, v8, [Ljava/lang/Object;

    .line 80
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    const-string v6, "Illegal value %s for layers"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    .end local v9    # "compact":Z
    .end local v11    # "layers":I
    :cond_6
    const/4 v4, 0x0

    .line 95
    .local v4, "wordSize":I
    const/4 v9, 0x0

    .line 99
    .local v9, "stuffedBits":Lcom/google/zxing/common/BitArray;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 100
    .local v10, "i":I
    :goto_2
    if-gt v10, v6, :cond_1d

    .line 103
    const/4 v13, 0x3

    if-gt v10, v13, :cond_7

    const/4 v13, 0x1

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    .line 104
    .local v11, "compact":Z
    :goto_3
    move v11, v13

    if-eqz v13, :cond_8

    add-int/lit8 v13, v10, 0x1

    goto :goto_4

    :cond_8
    move v13, v10

    .line 105
    .local v12, "layers":I
    :goto_4
    move v12, v13

    invoke-static {v13, v11}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v13

    .line 106
    .local v13, "totalBitsInLayer":I
    if-gt v5, v13, :cond_1c

    .line 111
    sget-object v14, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v15, v14, v12

    if-eq v4, v15, :cond_9

    .line 112
    aget v4, v14, v12

    .line 113
    invoke-static {v3, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v9

    move-object v14, v9

    goto :goto_5

    .line 111
    :cond_9
    move-object v14, v9

    .line 115
    .end local v9    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .restart local v14    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    :goto_5
    rem-int v9, v13, v4

    sub-int v9, v13, v9

    .line 116
    .local v9, "usableBitsInLayers":I
    if-eqz v11, :cond_a

    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v15

    shl-int/lit8 v6, v4, 0x6

    if-gt v15, v6, :cond_b

    .line 120
    :cond_a
    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    add-int/2addr v6, v0

    if-le v6, v9, :cond_c

    .line 99
    .end local v9    # "usableBitsInLayers":I
    :cond_b
    move/from16 v20, v0

    move-object/from16 v21, v3

    move/from16 v22, v5

    move-object v9, v14

    const/4 v5, 0x1

    move-object v3, v2

    goto/16 :goto_13

    .line 120
    .restart local v9    # "usableBitsInLayers":I
    :cond_c
    move v9, v11

    move v11, v12

    .line 125
    .end local v10    # "i":I
    .end local v12    # "layers":I
    .local v9, "compact":Z
    .local v11, "layers":I
    :goto_6
    invoke-static {v14, v13, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v6

    .line 128
    .local v6, "messageBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    div-int/2addr v10, v4

    .line 129
    .local v10, "messageSizeInWords":I
    invoke-static {v9, v11, v10}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v12

    .line 132
    .local v12, "modeMessage":Lcom/google/zxing/common/BitArray;
    if-eqz v9, :cond_d

    const/16 v15, 0xb

    goto :goto_7

    :cond_d
    const/16 v15, 0xe

    :goto_7
    shl-int/lit8 v16, v11, 0x2

    add-int v15, v15, v16

    .line 133
    .local v7, "baseMatrixSize":I
    move v7, v15

    new-array v15, v15, [I

    .line 135
    .local v15, "alignmentMap":[I
    if-eqz v9, :cond_f

    .line 137
    move/from16 v16, v7

    .line 138
    .local v16, "matrixSize":I
    const/16 v17, 0x0

    move/from16 v2, v17

    .local v2, "i":I
    :goto_8
    array-length v8, v15

    if-ge v2, v8, :cond_e

    .line 139
    aput v2, v15, v2

    .line 138
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x1

    goto :goto_8

    :cond_e
    move/from16 v20, v0

    move/from16 v0, v16

    .end local v2    # "i":I
    goto :goto_a

    .line 142
    .end local v16    # "matrixSize":I
    :cond_f
    add-int/lit8 v2, v7, 0x1

    div-int/lit8 v8, v7, 0x2

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v8, v8, 0xf

    const/16 v16, 0x2

    mul-int/lit8 v8, v8, 0x2

    add-int v16, v2, v8

    .line 143
    .restart local v16    # "matrixSize":I
    div-int/lit8 v2, v7, 0x2

    .line 144
    .local v2, "origCenter":I
    div-int/lit8 v8, v16, 0x2

    .line 145
    .local v8, "center":I
    const/16 v17, 0x0

    move/from16 v20, v0

    move/from16 v0, v17

    .local v0, "i":I
    .local v20, "eccBits":I
    :goto_9
    if-ge v0, v2, :cond_10

    .line 146
    div-int/lit8 v17, v0, 0xf

    add-int v17, v0, v17

    .line 147
    .local v17, "newOffset":I
    sub-int v21, v2, v0

    const/16 v19, 0x1

    add-int/lit8 v21, v21, -0x1

    sub-int v22, v8, v17

    add-int/lit8 v22, v22, -0x1

    aput v22, v15, v21

    .line 148
    add-int v21, v2, v0

    add-int v22, v8, v17

    add-int/lit8 v22, v22, 0x1

    aput v22, v15, v21

    .line 145
    .end local v17    # "newOffset":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_10
    move/from16 v0, v16

    .line 151
    .end local v2    # "origCenter":I
    .end local v8    # "center":I
    .end local v16    # "matrixSize":I
    .local v0, "matrixSize":I
    :goto_a
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 154
    .local v2, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v8, 0x0

    .local v8, "i":I
    const/16 v16, 0x0

    .local v16, "rowOffset":I
    :goto_b
    if-ge v8, v11, :cond_18

    .line 155
    sub-int v17, v11, v8

    const/16 v18, 0x2

    shl-int/lit8 v17, v17, 0x2

    if-eqz v9, :cond_11

    const/16 v21, 0x9

    goto :goto_c

    :cond_11
    const/16 v21, 0xc

    :goto_c
    add-int v1, v17, v21

    .line 156
    .local v1, "rowSize":I
    const/16 v17, 0x0

    move-object/from16 v21, v3

    move/from16 v3, v17

    .local v3, "j":I
    .local v21, "bits":Lcom/google/zxing/common/BitArray;
    :goto_d
    if-ge v3, v1, :cond_17

    .line 157
    shl-int/lit8 v17, v3, 0x1

    .line 158
    .local v17, "columnOffset":I
    const/16 v22, 0x0

    move/from16 v23, v4

    move/from16 v4, v22

    .local v4, "k":I
    .local v23, "wordSize":I
    :goto_e
    move/from16 v22, v5

    const/4 v5, 0x2

    .end local v5    # "totalSizeBits":I
    .local v22, "totalSizeBits":I
    if-ge v4, v5, :cond_16

    .line 159
    add-int v18, v16, v17

    add-int v5, v18, v4

    invoke-virtual {v6, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 160
    shl-int/lit8 v5, v8, 0x1

    add-int/2addr v5, v4

    aget v5, v15, v5

    shl-int/lit8 v18, v8, 0x1

    add-int v18, v18, v3

    move/from16 v24, v13

    .end local v13    # "totalBitsInLayer":I
    .local v24, "totalBitsInLayer":I
    aget v13, v15, v18

    invoke-virtual {v2, v5, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_f

    .line 159
    .end local v24    # "totalBitsInLayer":I
    .restart local v13    # "totalBitsInLayer":I
    :cond_12
    move/from16 v24, v13

    .line 162
    .end local v13    # "totalBitsInLayer":I
    .restart local v24    # "totalBitsInLayer":I
    :goto_f
    shl-int/lit8 v5, v1, 0x1

    add-int v5, v16, v5

    add-int v5, v5, v17

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 163
    shl-int/lit8 v5, v8, 0x1

    add-int/2addr v5, v3

    aget v5, v15, v5

    add-int/lit8 v13, v7, -0x1

    shl-int/lit8 v18, v8, 0x1

    sub-int v13, v13, v18

    sub-int/2addr v13, v4

    aget v13, v15, v13

    invoke-virtual {v2, v5, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 165
    :cond_13
    shl-int/lit8 v5, v1, 0x2

    add-int v5, v16, v5

    add-int v5, v5, v17

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 166
    add-int/lit8 v5, v7, -0x1

    shl-int/lit8 v13, v8, 0x1

    sub-int/2addr v5, v13

    sub-int/2addr v5, v4

    aget v5, v15, v5

    add-int/lit8 v13, v7, -0x1

    shl-int/lit8 v18, v8, 0x1

    sub-int v13, v13, v18

    sub-int/2addr v13, v3

    aget v13, v15, v13

    invoke-virtual {v2, v5, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 168
    :cond_14
    mul-int/lit8 v5, v1, 0x6

    add-int v5, v16, v5

    add-int v5, v5, v17

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 169
    add-int/lit8 v5, v7, -0x1

    shl-int/lit8 v13, v8, 0x1

    sub-int/2addr v5, v13

    sub-int/2addr v5, v3

    aget v5, v15, v5

    shl-int/lit8 v13, v8, 0x1

    add-int/2addr v13, v4

    aget v13, v15, v13

    invoke-virtual {v2, v5, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 158
    :cond_15
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v22

    move/from16 v13, v24

    goto/16 :goto_e

    .end local v24    # "totalBitsInLayer":I
    .restart local v13    # "totalBitsInLayer":I
    :cond_16
    move/from16 v24, v13

    .line 156
    .end local v4    # "k":I
    .end local v13    # "totalBitsInLayer":I
    .end local v17    # "columnOffset":I
    .restart local v24    # "totalBitsInLayer":I
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v22

    move/from16 v4, v23

    goto/16 :goto_d

    .end local v22    # "totalSizeBits":I
    .end local v23    # "wordSize":I
    .end local v24    # "totalBitsInLayer":I
    .local v4, "wordSize":I
    .restart local v5    # "totalSizeBits":I
    .restart local v13    # "totalBitsInLayer":I
    :cond_17
    move/from16 v23, v4

    move/from16 v22, v5

    move/from16 v24, v13

    .line 173
    .end local v3    # "j":I
    .end local v4    # "wordSize":I
    .end local v5    # "totalSizeBits":I
    .end local v13    # "totalBitsInLayer":I
    .restart local v22    # "totalSizeBits":I
    .restart local v23    # "wordSize":I
    .restart local v24    # "totalBitsInLayer":I
    shl-int/lit8 v3, v1, 0x3

    add-int v16, v16, v3

    .line 154
    .end local v1    # "rowSize":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v21

    goto/16 :goto_b

    .end local v21    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v22    # "totalSizeBits":I
    .end local v23    # "wordSize":I
    .end local v24    # "totalBitsInLayer":I
    .local v3, "bits":Lcom/google/zxing/common/BitArray;
    .restart local v4    # "wordSize":I
    .restart local v5    # "totalSizeBits":I
    .restart local v13    # "totalBitsInLayer":I
    :cond_18
    move-object/from16 v21, v3

    move/from16 v23, v4

    move/from16 v22, v5

    move/from16 v24, v13

    .line 177
    .end local v3    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v4    # "wordSize":I
    .end local v5    # "totalSizeBits":I
    .end local v8    # "i":I
    .end local v13    # "totalBitsInLayer":I
    .end local v16    # "rowOffset":I
    .restart local v21    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v22    # "totalSizeBits":I
    .restart local v23    # "wordSize":I
    .restart local v24    # "totalBitsInLayer":I
    invoke-static {v2, v9, v0, v12}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    .line 180
    if-eqz v9, :cond_19

    .line 181
    div-int/lit8 v1, v0, 0x2

    const/4 v3, 0x5

    invoke-static {v2, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto :goto_12

    .line 183
    :cond_19
    div-int/lit8 v1, v0, 0x2

    const/4 v3, 0x7

    invoke-static {v2, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_10
    div-int/lit8 v4, v7, 0x2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_1b

    .line 185
    div-int/lit8 v4, v0, 0x2

    and-int/2addr v4, v5

    .local v4, "k":I
    :goto_11
    if-ge v4, v0, :cond_1a

    .line 186
    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v8, v3

    invoke-virtual {v2, v8, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 187
    div-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v3

    invoke-virtual {v2, v8, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 188
    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v8, v3

    invoke-virtual {v2, v4, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 189
    div-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v3

    invoke-virtual {v2, v4, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 185
    add-int/lit8 v4, v4, 0x2

    goto :goto_11

    .line 184
    .end local v4    # "k":I
    :cond_1a
    add-int/lit8 v1, v1, 0xf

    add-int/lit8 v3, v3, 0x10

    goto :goto_10

    .line 194
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_1b
    :goto_12
    new-instance v1, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v1}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    const/4 v3, 0x0

    .line 195
    .local v3, "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    move-object v3, v1

    invoke-virtual {v1, v9}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    .line 196
    invoke-virtual {v3, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    .line 197
    invoke-virtual {v3, v11}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    .line 198
    invoke-virtual {v3, v10}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    .line 199
    invoke-virtual {v3, v2}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    .line 200
    return-object v3

    .line 106
    .end local v2    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v6    # "messageBits":Lcom/google/zxing/common/BitArray;
    .end local v7    # "baseMatrixSize":I
    .end local v14    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .end local v15    # "alignmentMap":[I
    .end local v20    # "eccBits":I
    .end local v21    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v22    # "totalSizeBits":I
    .end local v23    # "wordSize":I
    .end local v24    # "totalBitsInLayer":I
    .local v0, "eccBits":I
    .local v3, "bits":Lcom/google/zxing/common/BitArray;
    .local v4, "wordSize":I
    .restart local v5    # "totalSizeBits":I
    .local v9, "stuffedBits":Lcom/google/zxing/common/BitArray;
    .local v10, "i":I
    .local v11, "compact":Z
    .local v12, "layers":I
    .restart local v13    # "totalBitsInLayer":I
    :cond_1c
    move/from16 v20, v0

    move-object/from16 v21, v3

    move/from16 v22, v5

    const/4 v5, 0x1

    move-object v3, v2

    .line 99
    .end local v0    # "eccBits":I
    .end local v3    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v5    # "totalSizeBits":I
    .restart local v20    # "eccBits":I
    .restart local v21    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v22    # "totalSizeBits":I
    :goto_13
    add-int/lit8 v10, v10, 0x1

    const/16 v6, 0x20

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v3

    move/from16 v0, v20

    move-object/from16 v3, v21

    move/from16 v5, v22

    goto/16 :goto_2

    .line 101
    .end local v11    # "compact":Z
    .end local v12    # "layers":I
    .end local v13    # "totalBitsInLayer":I
    .end local v20    # "eccBits":I
    .end local v21    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v22    # "totalSizeBits":I
    .restart local v0    # "eccBits":I
    .restart local v3    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v5    # "totalSizeBits":I
    :cond_1d
    move/from16 v20, v0

    move-object/from16 v21, v3

    move/from16 v22, v5

    .end local v0    # "eccBits":I
    .end local v3    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v5    # "totalSizeBits":I
    .restart local v20    # "eccBits":I
    .restart local v21    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v22    # "totalSizeBits":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data too large for an Aztec code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :goto_14
    throw v0

    :goto_15
    goto :goto_14
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .locals 9
    .param p0, "bitArray"    # Lcom/google/zxing/common/BitArray;
    .param p1, "totalBits"    # I
    .param p2, "wordSize"    # I

    .line 273
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    div-int/2addr v0, p2

    .line 274
    .local v0, "messageSizeInWords":I
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 275
    .local v1, "rs":Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    div-int v2, p1, p2

    .line 276
    .local v2, "totalWords":I
    invoke-static {p0, p2, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v3

    .line 277
    .local v3, "messageWords":[I
    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 278
    rem-int v4, p1, p2

    .line 279
    .local v4, "startPad":I
    new-instance v5, Lcom/google/zxing/common/BitArray;

    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v6, 0x0

    .line 280
    .local v6, "messageBits":Lcom/google/zxing/common/BitArray;
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 281
    array-length v5, v3

    :goto_0
    if-ge v7, v5, :cond_0

    aget v8, v3, v7

    .line 282
    .local v8, "messageWord":I
    invoke-virtual {v6, v8, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 281
    .end local v8    # "messageWord":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-object v6
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .locals 4
    .param p0, "compact"    # Z
    .param p1, "layers"    # I
    .param p2, "messageSizeInWords"    # I

    .line 221
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 222
    .local v0, "modeMessage":Lcom/google/zxing/common/BitArray;
    const/4 v1, 0x4

    if-eqz p0, :cond_0

    .line 223
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 224
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 225
    const/16 v2, 0x1c

    invoke-static {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_0
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 228
    add-int/lit8 v2, p2, -0x1

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 229
    const/16 v2, 0x28

    invoke-static {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0
.end method

.method private static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .locals 3
    .param p0, "wordSize"    # I

    .line 302
    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    .line 312
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported word size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 308
    :cond_2
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 306
    :cond_3
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 304
    :cond_4
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .locals 8
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "wordSize"    # I

    .line 319
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 321
    .local v0, "out":Lcom/google/zxing/common/BitArray;
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 322
    .local v1, "n":I
    const/4 v2, 0x1

    shl-int v3, v2, p1

    add-int/lit8 v3, v3, -0x2

    .line 323
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_5

    .line 324
    const/4 v5, 0x0

    .line 325
    .local v5, "word":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, p1, :cond_2

    .line 326
    add-int v7, v4, v6

    if-ge v7, v1, :cond_0

    add-int v7, v4, v6

    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 327
    :cond_0
    add-int/lit8 v7, p1, -0x1

    sub-int/2addr v7, v6

    shl-int v7, v2, v7

    or-int/2addr v5, v7

    .line 325
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 330
    .end local v6    # "j":I
    :cond_2
    and-int v6, v5, v3

    if-ne v6, v3, :cond_3

    .line 331
    and-int v6, v5, v3

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 332
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 333
    :cond_3
    and-int v6, v5, v3

    if-nez v6, :cond_4

    .line 334
    or-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 335
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 337
    :cond_4
    invoke-virtual {v0, v5, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 323
    .end local v5    # "word":I
    :goto_2
    add-int/2addr v4, p1

    goto :goto_0

    .line 340
    .end local v4    # "i":I
    :cond_5
    return-object v0
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .line 344
    if-eqz p1, :cond_0

    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    const/16 v0, 0x70

    :goto_0
    shl-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    mul-int v0, v0, p0

    return v0
.end method
