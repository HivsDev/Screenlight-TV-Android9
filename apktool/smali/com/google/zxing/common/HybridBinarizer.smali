.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;
.source "HybridBinarizer.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final BLOCK_SIZE_MASK:I = 0x7

.field private static final BLOCK_SIZE_POWER:I = 0x3

.field private static final MINIMUM_DIMENSION:I = 0x28

.field private static final MIN_DYNAMIC_RANGE:I = 0x18


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 0
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .line 53
    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 54
    return-void
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .locals 19
    .param p0, "luminances"    # [B
    .param p1, "subWidth"    # I
    .param p2, "subHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 166
    move/from16 v0, p1

    move/from16 v1, p2

    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 167
    .local v2, "blackPoints":[[I
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    if-ge v3, v1, :cond_b

    .line 168
    shl-int/lit8 v4, v3, 0x3

    .line 169
    .local v4, "yoffset":I
    add-int/lit8 v5, p4, -0x8

    .line 170
    .local v5, "maxYOffset":I
    if-le v4, v5, :cond_0

    .line 171
    move v4, v5

    .line 173
    :cond_0
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1
    if-ge v6, v0, :cond_a

    .line 174
    shl-int/lit8 v7, v6, 0x3

    .line 175
    .local v7, "xoffset":I
    add-int/lit8 v8, p3, -0x8

    .line 176
    .local v8, "maxXOffset":I
    if-le v7, v8, :cond_1

    .line 177
    move v7, v8

    .line 179
    :cond_1
    const/4 v9, 0x0

    .line 180
    .local v9, "sum":I
    const/16 v10, 0xff

    .line 181
    .local v10, "min":I
    const/4 v11, 0x0

    .line 182
    .local v11, "max":I
    const/4 v12, 0x0

    .local v12, "yy":I
    mul-int v13, v4, p3

    add-int/2addr v13, v7

    .local v13, "offset":I
    :goto_2
    const/16 v14, 0x18

    const/16 v15, 0x8

    if-ge v12, v15, :cond_8

    .line 183
    const/16 v16, 0x0

    move/from16 v18, v16

    move/from16 v16, v9

    move/from16 v9, v18

    .local v9, "xx":I
    .local v16, "sum":I
    :goto_3
    if-ge v9, v15, :cond_4

    .line 184
    add-int v17, v13, v9

    aget-byte v15, p0, v17

    and-int/lit16 v15, v15, 0xff

    .line 185
    .local v15, "pixel":I
    add-int v16, v16, v15

    .line 187
    if-ge v15, v10, :cond_2

    .line 188
    move v10, v15

    .line 190
    :cond_2
    if-le v15, v11, :cond_3

    .line 191
    move v11, v15

    .line 183
    .end local v15    # "pixel":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    const/16 v15, 0x8

    goto :goto_3

    .line 195
    .end local v9    # "xx":I
    :cond_4
    sub-int v9, v11, v10

    if-le v9, v14, :cond_7

    .line 197
    :goto_4
    add-int/lit8 v12, v12, 0x1

    add-int v13, v13, p3

    const/16 v9, 0x8

    if-ge v12, v9, :cond_6

    .line 198
    const/4 v14, 0x0

    .local v14, "xx":I
    :goto_5
    if-ge v14, v9, :cond_5

    .line 199
    add-int v15, v13, v14

    aget-byte v15, p0, v15

    and-int/lit16 v15, v15, 0xff

    add-int v16, v16, v15

    .line 198
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .end local v14    # "xx":I
    :cond_5
    goto :goto_4

    .line 197
    :cond_6
    move/from16 v9, v16

    goto :goto_6

    .line 195
    :cond_7
    move/from16 v9, v16

    .line 182
    .end local v16    # "sum":I
    .local v9, "sum":I
    :goto_6
    add-int/lit8 v12, v12, 0x1

    add-int v13, v13, p3

    goto :goto_2

    .line 206
    .end local v12    # "yy":I
    .end local v13    # "offset":I
    :cond_8
    shr-int/lit8 v12, v9, 0x6

    .line 207
    .local v12, "average":I
    sub-int v13, v11, v10

    if-gt v13, v14, :cond_9

    .line 214
    div-int/lit8 v12, v10, 0x2

    .line 216
    if-lez v3, :cond_9

    if-lez v6, :cond_9

    .line 224
    add-int/lit8 v13, v3, -0x1

    aget-object v13, v2, v13

    aget v13, v13, v6

    aget-object v14, v2, v3

    add-int/lit8 v15, v6, -0x1

    aget v14, v14, v15

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    add-int/lit8 v14, v3, -0x1

    aget-object v14, v2, v14

    add-int/lit8 v15, v6, -0x1

    aget v14, v14, v15

    add-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x4

    .line 226
    .local v13, "averageNeighborBlackPoint":I
    if-ge v10, v13, :cond_9

    .line 227
    move v12, v13

    .line 231
    .end local v13    # "averageNeighborBlackPoint":I
    :cond_9
    aget-object v13, v2, v3

    aput v12, v13, v6

    .line 173
    .end local v7    # "xoffset":I
    .end local v8    # "maxXOffset":I
    .end local v9    # "sum":I
    .end local v10    # "min":I
    .end local v11    # "max":I
    .end local v12    # "average":I
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 167
    .end local v4    # "yoffset":I
    .end local v5    # "maxYOffset":I
    .end local v6    # "x":I
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 234
    .end local v3    # "y":I
    :cond_b
    return-object v2
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .locals 18
    .param p0, "luminances"    # [B
    .param p1, "subWidth"    # I
    .param p2, "subHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "blackPoints"    # [[I
    .param p6, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .line 108
    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 109
    shl-int/lit8 v3, v2, 0x3

    .line 110
    .local v3, "yoffset":I
    add-int/lit8 v4, p4, -0x8

    .line 111
    .local v4, "maxYOffset":I
    if-le v3, v4, :cond_0

    .line 112
    move v3, v4

    .line 114
    :cond_0
    const/4 v5, 0x0

    move v11, v5

    .local v11, "x":I
    :goto_1
    if-ge v11, v0, :cond_3

    .line 115
    shl-int/lit8 v5, v11, 0x3

    .line 116
    .local v5, "xoffset":I
    add-int/lit8 v12, p3, -0x8

    .line 117
    .local v12, "maxXOffset":I
    if-le v5, v12, :cond_1

    .line 118
    move v5, v12

    move v13, v5

    goto :goto_2

    .line 117
    :cond_1
    move v13, v5

    .line 120
    .end local v5    # "xoffset":I
    .local v13, "xoffset":I
    :goto_2
    add-int/lit8 v5, v0, -0x3

    const/4 v6, 0x2

    invoke-static {v11, v6, v5}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v14

    .line 121
    .local v14, "left":I
    add-int/lit8 v5, v1, -0x3

    invoke-static {v2, v6, v5}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v15

    .line 122
    .local v15, "top":I
    const/4 v5, 0x0

    .line 123
    .local v5, "sum":I
    const/4 v7, -0x2

    move/from16 v16, v5

    .end local v5    # "sum":I
    .local v7, "z":I
    .local v16, "sum":I
    :goto_3
    if-gt v7, v6, :cond_2

    .line 124
    add-int v5, v15, v7

    aget-object v5, p5, v5

    .line 125
    .local v5, "blackRow":[I
    add-int/lit8 v8, v14, -0x2

    aget v8, v5, v8

    add-int/lit8 v9, v14, -0x1

    aget v9, v5, v9

    add-int/2addr v8, v9

    aget v9, v5, v14

    add-int/2addr v8, v9

    add-int/lit8 v9, v14, 0x1

    aget v9, v5, v9

    add-int/2addr v8, v9

    add-int/lit8 v9, v14, 0x2

    aget v9, v5, v9

    add-int/2addr v8, v9

    add-int v16, v16, v8

    .line 123
    .end local v5    # "blackRow":[I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 127
    .end local v7    # "z":I
    :cond_2
    div-int/lit8 v17, v16, 0x19

    .line 128
    .local v17, "average":I
    move-object/from16 v5, p0

    move v6, v13

    move v7, v3

    move/from16 v8, v17

    move/from16 v9, p3

    move-object/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lcom/google/zxing/common/HybridBinarizer;->thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V

    .line 114
    .end local v12    # "maxXOffset":I
    .end local v13    # "xoffset":I
    .end local v14    # "left":I
    .end local v15    # "top":I
    .end local v16    # "sum":I
    .end local v17    # "average":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 108
    .end local v3    # "yoffset":I
    .end local v4    # "maxYOffset":I
    .end local v11    # "x":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "y":I
    :cond_4
    return-void
.end method

.method private static cap(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 134
    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method private static thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V
    .locals 6
    .param p0, "luminances"    # [B
    .param p1, "xoffset"    # I
    .param p2, "yoffset"    # I
    .param p3, "threshold"    # I
    .param p4, "stride"    # I
    .param p5, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .line 146
    const/4 v0, 0x0

    .local v0, "y":I
    mul-int v1, p2, p4

    add-int/2addr v1, p1

    .local v1, "offset":I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    .line 147
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 149
    add-int v4, v1, v3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-gt v4, p3, :cond_0

    .line 150
    add-int v4, p1, v3

    add-int v5, p2, v0

    invoke-virtual {p5, v4, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 147
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    .end local v3    # "x":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, p4

    goto :goto_0

    .line 154
    .end local v0    # "y":I
    .end local v1    # "offset":I
    :cond_2
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 1
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .line 93
    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-eqz v0, :cond_0

    .line 64
    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/HybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    .local v1, "source":Lcom/google/zxing/LuminanceSource;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    .line 68
    .local v0, "width":I
    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v9

    .line 69
    .local v9, "height":I
    const/16 v2, 0x28

    if-lt v0, v2, :cond_3

    if-lt v9, v2, :cond_3

    .line 70
    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v10

    .line 71
    .local v10, "luminances":[B
    shr-int/lit8 v2, v0, 0x3

    .line 72
    .local v2, "subWidth":I
    and-int/lit8 v3, v0, 0x7

    if-eqz v3, :cond_1

    .line 73
    add-int/lit8 v2, v2, 0x1

    move v11, v2

    goto :goto_0

    .line 72
    :cond_1
    move v11, v2

    .line 75
    .end local v2    # "subWidth":I
    .local v11, "subWidth":I
    :goto_0
    shr-int/lit8 v2, v9, 0x3

    .line 76
    .local v2, "subHeight":I
    and-int/lit8 v3, v9, 0x7

    if-eqz v3, :cond_2

    .line 77
    add-int/lit8 v2, v2, 0x1

    move v12, v2

    goto :goto_1

    .line 76
    :cond_2
    move v12, v2

    .line 79
    .end local v2    # "subHeight":I
    .local v12, "subHeight":I
    :goto_1
    invoke-static {v10, v11, v12, v0, v9}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    move-result-object v13

    .line 81
    .local v13, "blackPoints":[[I
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v2, v0, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object v14, v2

    .line 82
    .local v14, "newMatrix":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v10

    move v3, v11

    move v4, v12

    move v5, v0

    move v6, v9

    move-object v7, v13

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    .line 83
    iput-object v14, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 84
    .end local v10    # "luminances":[B
    .end local v11    # "subWidth":I
    .end local v12    # "subHeight":I
    .end local v13    # "blackPoints":[[I
    .end local v14    # "newMatrix":Lcom/google/zxing/common/BitMatrix;
    goto :goto_2

    .line 86
    :cond_3
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    iput-object v2, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 88
    :goto_2
    iget-object v2, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v2
.end method
