.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 25
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 105
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v1

    .line 106
    .local v1, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v2

    .line 107
    .local v2, "height":I
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 109
    .local v3, "row":Lcom/google/zxing/common/BitArray;
    shr-int/lit8 v4, v2, 0x1

    .line 110
    .local v4, "middle":I
    const/4 v6, 0x1

    if-eqz v0, :cond_0

    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 111
    .local v7, "tryHarder":Z
    :goto_0
    if-eqz v7, :cond_1

    const/16 v8, 0x8

    goto :goto_1

    :cond_1
    const/4 v8, 0x5

    :goto_1
    shr-int v8, v2, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 113
    .local v8, "rowStep":I
    if-eqz v7, :cond_2

    .line 114
    move v9, v2

    .local v9, "maxLines":I
    goto :goto_2

    .line 116
    .end local v9    # "maxLines":I
    :cond_2
    const/16 v9, 0xf

    .line 119
    .restart local v9    # "maxLines":I
    :goto_2
    const/4 v10, 0x0

    .local v10, "x":I
    const/4 v11, 0x0

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v11, v3

    move-object v3, v0

    const/4 v0, 0x0

    .end local p2    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v11, "row":Lcom/google/zxing/common/BitArray;
    :goto_3
    if-ge v10, v9, :cond_b

    .line 122
    add-int/lit8 v15, v10, 0x1

    const/4 v5, 0x2

    div-int/2addr v15, v5

    .line 123
    .local v15, "rowStepsAboveOrBelow":I
    and-int/lit8 v17, v10, 0x1

    if-nez v17, :cond_3

    const/16 v17, 0x1

    goto :goto_4

    :cond_3
    const/16 v17, 0x0

    .line 124
    .local v17, "isAbove":Z
    :goto_4
    if-eqz v17, :cond_4

    move v6, v15

    goto :goto_5

    :cond_4
    neg-int v6, v15

    :goto_5
    mul-int v6, v6, v8

    add-int/2addr v6, v4

    .line 125
    .local v0, "rowNumber":I
    move/from16 p2, v6

    .end local v0    # "rowNumber":I
    .local p2, "rowNumber":I
    if-ltz v6, :cond_a

    move/from16 v6, p2

    .end local p2    # "rowNumber":I
    .local v6, "rowNumber":I
    if-ge v6, v2, :cond_9

    .line 132
    move-object/from16 v5, p1

    :try_start_0
    invoke-virtual {v5, v6, v11}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v11, v0

    .line 135
    nop

    .line 139
    const/4 v0, 0x0

    move-object/from16 v24, v3

    move v3, v0

    move-object/from16 v0, v24

    .local v0, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v3, "attempt":I
    :goto_6
    move/from16 v19, v2

    const/4 v2, 0x2

    .end local v2    # "height":I
    .local v19, "height":I
    if-ge v3, v2, :cond_8

    .line 140
    const/4 v2, 0x1

    if-ne v3, v2, :cond_6

    .line 141
    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 146
    if-eqz v0, :cond_5

    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 147
    new-instance v2, Ljava/util/EnumMap;

    move/from16 v20, v4

    .end local v4    # "middle":I
    .local v20, "middle":I
    const-class v4, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v2, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v4, v13

    .line 148
    .local v4, "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    move-object v13, v2

    .end local v4    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .local v13, "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v13, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-object v0, v13

    move-object v2, v0

    goto :goto_8

    .line 146
    .end local v13    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .end local v20    # "middle":I
    .local v4, "middle":I
    :cond_5
    move/from16 v20, v4

    .end local v4    # "middle":I
    .restart local v20    # "middle":I
    goto :goto_7

    .line 140
    .end local v20    # "middle":I
    .restart local v4    # "middle":I
    :cond_6
    move/from16 v20, v4

    .line 155
    .end local v4    # "middle":I
    .restart local v20    # "middle":I
    :goto_7
    move-object v2, v0

    .end local v0    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :goto_8
    move-object/from16 v4, p0

    :try_start_1
    invoke-virtual {v4, v6, v11, v2}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v13, v0

    .line 157
    .local v13, "result":Lcom/google/zxing/Result;
    move-object/from16 v21, v2

    const/4 v2, 0x1

    .end local v2    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v21, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-ne v3, v2, :cond_7

    .line 159
    :try_start_2
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v13}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v14

    .line 162
    .local v2, "points":[Lcom/google/zxing/ResultPoint;
    move-object v2, v0

    if-eqz v0, :cond_7

    .line 163
    :try_start_3
    new-instance v0, Lcom/google/zxing/ResultPoint;
    :try_end_3
    .catch Lcom/google/zxing/ReaderException; {:try_start_3 .. :try_end_3} :catch_2

    int-to-float v14, v1

    const/16 v16, 0x0

    :try_start_4
    aget-object v22, v2, v16

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v22

    sub-float v14, v14, v22

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v14, v14, v22

    aget-object v23, v2, v16

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-direct {v0, v14, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v2, v16

    .line 164
    new-instance v0, Lcom/google/zxing/ResultPoint;
    :try_end_4
    .catch Lcom/google/zxing/ReaderException; {:try_start_4 .. :try_end_4} :catch_1

    int-to-float v4, v1

    const/16 v18, 0x1

    :try_start_5
    aget-object v14, v2, v18

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    sub-float/2addr v4, v14

    sub-float v4, v4, v22

    aget-object v14, v2, v18

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-direct {v0, v4, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v2, v18
    :try_end_5
    .catch Lcom/google/zxing/ReaderException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_b

    .line 168
    .end local v2    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v13    # "result":Lcom/google/zxing/Result;
    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    const/16 v16, 0x0

    :goto_9
    const/16 v18, 0x1

    :goto_a
    move-object v14, v2

    goto :goto_c

    :catch_3
    move-exception v0

    const/16 v16, 0x0

    const/16 v18, 0x1

    goto :goto_c

    .line 167
    :cond_7
    :goto_b
    return-object v13

    .line 168
    .end local v21    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :catch_4
    move-exception v0

    move-object/from16 v21, v2

    const/16 v16, 0x0

    const/16 v18, 0x1

    .line 139
    .end local v2    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .restart local v21    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :goto_c
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v19

    move/from16 v4, v20

    move-object/from16 v0, v21

    goto/16 :goto_6

    .end local v20    # "middle":I
    .end local v21    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .restart local v0    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .restart local v4    # "middle":I
    :cond_8
    move/from16 v20, v4

    const/16 v16, 0x0

    const/16 v18, 0x1

    .end local v4    # "middle":I
    .restart local v20    # "middle":I
    move-object v3, v0

    goto :goto_d

    .line 133
    .end local v0    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .end local v19    # "height":I
    .end local v20    # "middle":I
    .local v2, "height":I
    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .restart local v4    # "middle":I
    :catch_5
    move-exception v0

    move/from16 v19, v2

    move/from16 v20, v4

    const/16 v16, 0x0

    const/16 v18, 0x1

    .end local v2    # "height":I
    .end local v4    # "middle":I
    .restart local v19    # "height":I
    .restart local v20    # "middle":I
    move-object v0, v12

    .line 134
    .local v0, "ignored":Lcom/google/zxing/NotFoundException;
    nop

    .line 119
    .end local v0    # "ignored":Lcom/google/zxing/NotFoundException;
    .end local v6    # "rowNumber":I
    .end local v15    # "rowStepsAboveOrBelow":I
    .end local v17    # "isAbove":Z
    :goto_d
    add-int/lit8 v10, v10, 0x1

    move v0, v6

    move/from16 v2, v19

    move/from16 v4, v20

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 125
    .end local v19    # "height":I
    .end local v20    # "middle":I
    .restart local v2    # "height":I
    .restart local v4    # "middle":I
    .restart local v15    # "rowStepsAboveOrBelow":I
    .restart local v17    # "isAbove":Z
    :cond_9
    move-object/from16 v5, p1

    move/from16 v19, v2

    move/from16 v20, v4

    .end local v2    # "height":I
    .end local v4    # "middle":I
    .restart local v19    # "height":I
    .restart local v20    # "middle":I
    goto :goto_e

    .end local v19    # "height":I
    .end local v20    # "middle":I
    .restart local v2    # "height":I
    .restart local v4    # "middle":I
    .restart local p2    # "rowNumber":I
    :cond_a
    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v19, v2

    move/from16 v20, v4

    .end local v2    # "height":I
    .end local v4    # "middle":I
    .end local p2    # "rowNumber":I
    .restart local v6    # "rowNumber":I
    .restart local v19    # "height":I
    .restart local v20    # "middle":I
    goto :goto_e

    .line 119
    .end local v6    # "rowNumber":I
    .end local v15    # "rowStepsAboveOrBelow":I
    .end local v17    # "isAbove":Z
    .end local v19    # "height":I
    .end local v20    # "middle":I
    .restart local v2    # "height":I
    .restart local v4    # "middle":I
    :cond_b
    move-object/from16 v5, p1

    move/from16 v19, v2

    move/from16 v20, v4

    .line 174
    .end local v2    # "height":I
    .end local v4    # "middle":I
    .end local v10    # "x":I
    .restart local v19    # "height":I
    .restart local v20    # "middle":I
    :goto_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method protected static patternMatchVariance([I[IF)F
    .locals 11
    .param p0, "counters"    # [I
    .param p1, "pattern"    # [I
    .param p2, "maxIndividualVariance"    # F

    .line 253
    array-length v0, p0

    .line 254
    .local v0, "numCounters":I
    const/4 v1, 0x0

    .line 255
    .local v1, "total":I
    const/4 v2, 0x0

    .line 256
    .local v2, "patternLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 257
    aget v4, p0, v3

    add-int/2addr v1, v4

    .line 258
    aget v4, p1, v3

    add-int/2addr v2, v4

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    .end local v3    # "i":I
    :cond_0
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v1, v2, :cond_1

    .line 263
    return v3

    .line 266
    :cond_1
    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 267
    .local v4, "unitBarWidth":F
    mul-float p2, p2, v4

    .line 269
    const/4 v5, 0x0

    .line 270
    .local v5, "totalVariance":F
    const/4 v6, 0x0

    .local v6, "x":I
    const/4 v7, 0x0

    :goto_1
    if-ge v6, v0, :cond_4

    .line 271
    aget v8, p0, v6

    .line 272
    .local v8, "counter":I
    aget v9, p1, v6

    int-to-float v9, v9

    mul-float v9, v9, v4

    .line 273
    .local v9, "scaledPattern":F
    int-to-float v10, v8

    cmpl-float v10, v10, v9

    if-lez v10, :cond_2

    int-to-float v10, v8

    sub-float/2addr v10, v9

    goto :goto_2

    :cond_2
    int-to-float v10, v8

    sub-float v10, v9, v10

    .line 274
    .local v7, "variance":F
    :goto_2
    move v7, v10

    cmpl-float v10, v10, p2

    if-lez v10, :cond_3

    .line 275
    return v3

    .line 277
    :cond_3
    add-float/2addr v5, v7

    .line 270
    .end local v7    # "variance":F
    .end local v8    # "counter":I
    .end local v9    # "scaledPattern":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 279
    .end local v6    # "x":I
    :cond_4
    int-to-float v3, v1

    div-float v3, v5, v3

    return v3
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 8
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "start"    # I
    .param p2, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 193
    array-length v0, p2

    .line 194
    .local v0, "numCounters":I
    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 195
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 196
    .local v2, "end":I
    if-ge p1, v2, :cond_5

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 200
    .local v3, "isWhite":Z
    const/4 v5, 0x0

    .line 201
    .local v5, "counterPosition":I
    move v6, p1

    .line 202
    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_2

    .line 203
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_0

    .line 204
    aget v7, p2, v5

    add-int/2addr v7, v4

    aput v7, p2, v5

    goto :goto_2

    .line 206
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 207
    if-eq v5, v0, :cond_2

    .line 210
    aput v4, p2, v5

    .line 211
    if-nez v3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    move v3, v7

    .line 214
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 218
    :cond_2
    if-eq v5, v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    if-ne v5, v1, :cond_3

    if-ne v6, v2, :cond_3

    goto :goto_3

    .line 219
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 221
    :cond_4
    :goto_3
    return-void

    .line 197
    .end local v3    # "isWhite":Z
    .end local v5    # "counterPosition":I
    .end local v6    # "i":I
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 3
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "start"    # I
    .param p2, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 226
    array-length v0, p2

    .line 227
    .local v0, "numTransitionsLeft":I
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    .line 228
    .local v1, "last":Z
    :cond_0
    :goto_0
    if-lez p1, :cond_2

    if-ltz v0, :cond_2

    .line 229
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 230
    add-int/lit8 v0, v0, -0x1

    .line 231
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    goto :goto_0

    .line 234
    :cond_2
    if-gez v0, :cond_3

    .line 237
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 238
    return-void

    .line 235
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
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

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 11
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

    .line 54
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "nfe":Lcom/google/zxing/NotFoundException;
    if-eqz p2, :cond_0

    sget-object v1, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v1

    .line 59
    .local v1, "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    invoke-direct {p0, v1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 61
    .local v4, "result":Lcom/google/zxing/Result;
    move-object v4, v2

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v2

    .line 62
    .local v2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    const/16 v5, 0x10e

    .line 63
    .local v5, "orientation":I
    if-eqz v2, :cond_1

    sget-object v6, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 65
    sget-object v6, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    .line 66
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit16 v6, v6, 0x10e

    rem-int/lit16 v5, v6, 0x168

    .line 68
    :cond_1
    sget-object v6, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v4}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 71
    .local v3, "points":[Lcom/google/zxing/ResultPoint;
    move-object v3, v6

    if-eqz v6, :cond_2

    .line 72
    invoke-virtual {v1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v6

    .line 73
    .local v6, "height":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v3

    if-ge v7, v8, :cond_2

    .line 74
    new-instance v8, Lcom/google/zxing/ResultPoint;

    int-to-float v9, v6

    aget-object v10, v3, v7

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    aget-object v10, v3, v7

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v3, v7

    .line 73
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 77
    .end local v6    # "height":I
    .end local v7    # "i":I
    :cond_2
    return-object v4

    .line 79
    .end local v1    # "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    .end local v2    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v3    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v4    # "result":Lcom/google/zxing/Result;
    .end local v5    # "orientation":I
    :cond_3
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 0

    .line 87
    return-void
.end method
