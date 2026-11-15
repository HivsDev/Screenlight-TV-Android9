.class public Lcom/shenma/tvlauncher/utils/BlurUtils;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 42
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "canReuseInBitmap"    # Z

    .line 9
    move/from16 v0, p1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 10
    move-object/from16 v2, p0

    move-object/from16 v3, p0

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 12
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 15
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-ge v0, v1, :cond_1

    .line 16
    const/4 v1, 0x0

    return-object v1

    .line 19
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 20
    .local v12, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 22
    .local v13, "h":I
    mul-int v4, v12, v13

    new-array v14, v4, [I

    .line 23
    .local v14, "pix":[I
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, v14

    move v7, v12

    move v10, v12

    move v11, v13

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 25
    add-int/lit8 v15, v12, -0x1

    .line 26
    .local v15, "wm":I
    add-int/lit8 v11, v13, -0x1

    .line 27
    .local v11, "hm":I
    mul-int v10, v12, v13

    .line 28
    .local v10, "wh":I
    add-int v4, v0, v0

    add-int/lit8 v9, v4, 0x1

    .line 30
    .local v9, "div":I
    new-array v8, v10, [I

    .line 31
    .local v8, "r":[I
    new-array v7, v10, [I

    .line 32
    .local v7, "g":[I
    new-array v6, v10, [I

    .line 34
    .local v6, "b":[I
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v5, v4, [I

    .line 36
    .local v5, "vmin":[I
    add-int/lit8 v4, v9, 0x1

    shr-int/2addr v4, v1

    .line 37
    .local v4, "divsum":I
    mul-int v4, v4, v4

    .line 38
    mul-int/lit16 v1, v4, 0x100

    new-array v1, v1, [I

    .line 39
    .local v1, "dv":[I
    const/16 v17, 0x0

    move/from16 v3, v17

    .local v3, "i":I
    :goto_1
    move/from16 v17, v10

    .end local v10    # "wh":I
    .local v17, "wh":I
    mul-int/lit16 v10, v4, 0x100

    if-ge v3, v10, :cond_2

    .line 40
    div-int v10, v3, v4

    aput v10, v1, v3

    .line 39
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v17

    goto :goto_1

    .line 43
    :cond_2
    const/4 v10, 0x0

    move/from16 v18, v10

    .local v18, "yi":I
    move/from16 v19, v10

    .line 45
    .local v19, "yw":I
    const/4 v10, 0x3

    filled-new-array {v9, v10}, [I

    move-result-object v10

    move/from16 v21, v3

    .end local v3    # "i":I
    .local v21, "i":I
    const-class v3, I

    invoke-static {v3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 50
    .local v3, "stack":[[I
    add-int/lit8 v22, v0, 0x1

    .line 54
    .local v22, "r1":I
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_2
    const/16 v23, 0x2

    if-ge v10, v13, :cond_7

    .line 55
    const/16 v24, 0x0

    move/from16 v20, v24

    .local v20, "bsum":I
    move/from16 v25, v24

    .local v25, "gsum":I
    move/from16 v26, v24

    .local v26, "rsum":I
    move/from16 v27, v24

    .local v27, "boutsum":I
    move/from16 v28, v24

    .local v28, "goutsum":I
    move/from16 v29, v24

    .local v29, "routsum":I
    move/from16 v30, v24

    .local v30, "binsum":I
    move/from16 v31, v24

    .local v31, "ginsum":I
    move/from16 v32, v24

    .line 56
    .local v32, "rinsum":I
    move/from16 v33, v4

    .end local v4    # "divsum":I
    .local v33, "divsum":I
    neg-int v4, v0

    move/from16 v21, v20

    .end local v20    # "bsum":I
    .local v4, "i":I
    .local v21, "bsum":I
    :goto_3
    const v34, 0xff00

    const/high16 v35, 0xff0000

    if-gt v4, v0, :cond_4

    .line 57
    move-object/from16 v36, v2

    move/from16 v24, v13

    const/4 v2, 0x0

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "h":I
    .local v24, "h":I
    .local v36, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int v13, v18, v13

    aget v13, v14, v13

    .line 58
    .local v13, "p":I
    add-int v20, v4, v0

    aget-object v37, v3, v20

    .line 59
    .local v37, "sir":[I
    and-int v20, v13, v35

    shr-int/lit8 v20, v20, 0x10

    aput v20, v37, v2

    .line 60
    and-int v2, v13, v34

    shr-int/lit8 v2, v2, 0x8

    const/16 v16, 0x1

    aput v2, v37, v16

    .line 61
    and-int/lit16 v2, v13, 0xff

    aput v2, v37, v23

    .line 62
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v22, v2

    .line 63
    .local v2, "rbs":I
    const/16 v20, 0x0

    aget v34, v37, v20

    mul-int v34, v34, v2

    add-int v26, v26, v34

    .line 64
    const/16 v16, 0x1

    aget v34, v37, v16

    mul-int v34, v34, v2

    add-int v25, v25, v34

    .line 65
    aget v34, v37, v23

    mul-int v34, v34, v2

    add-int v21, v21, v34

    .line 66
    if-lez v4, :cond_3

    .line 67
    const/16 v20, 0x0

    aget v34, v37, v20

    add-int v32, v32, v34

    .line 68
    const/16 v16, 0x1

    aget v34, v37, v16

    add-int v31, v31, v34

    .line 69
    aget v34, v37, v23

    add-int v30, v30, v34

    goto :goto_4

    .line 71
    :cond_3
    const/16 v16, 0x1

    const/16 v20, 0x0

    aget v34, v37, v20

    add-int v29, v29, v34

    .line 72
    aget v34, v37, v16

    add-int v28, v28, v34

    .line 73
    aget v34, v37, v23

    add-int v27, v27, v34

    .line 56
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move/from16 v13, v24

    move-object/from16 v2, v36

    const/16 v24, 0x0

    goto :goto_3

    .line 76
    .end local v24    # "h":I
    .end local v36    # "bitmap":Landroid/graphics/Bitmap;
    .end local v37    # "sir":[I
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    .local v13, "h":I
    :cond_4
    move-object/from16 v36, v2

    move/from16 v24, v13

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "h":I
    .restart local v24    # "h":I
    .restart local v36    # "bitmap":Landroid/graphics/Bitmap;
    move/from16 v2, p1

    .line 78
    .local v2, "stackpointer":I
    const/4 v13, 0x0

    .local v13, "x":I
    :goto_5
    if-ge v13, v12, :cond_6

    .line 80
    aget v37, v1, v26

    aput v37, v8, v18

    .line 81
    aget v37, v1, v25

    aput v37, v7, v18

    .line 82
    aget v37, v1, v21

    aput v37, v6, v18

    .line 84
    sub-int v26, v26, v29

    .line 85
    sub-int v25, v25, v28

    .line 86
    sub-int v21, v21, v27

    .line 88
    sub-int v37, v2, v0

    add-int v37, v37, v9

    .line 89
    .local v37, "stackstart":I
    rem-int v38, v37, v9

    aget-object v38, v3, v38

    .line 91
    .local v38, "sir":[I
    const/16 v20, 0x0

    aget v39, v38, v20

    sub-int v29, v29, v39

    .line 92
    const/16 v16, 0x1

    aget v39, v38, v16

    sub-int v28, v28, v39

    .line 93
    aget v39, v38, v23

    sub-int v27, v27, v39

    .line 95
    if-nez v10, :cond_5

    .line 96
    add-int v39, v13, v0

    move/from16 v40, v4

    .end local v4    # "i":I
    .local v40, "i":I
    add-int/lit8 v4, v39, 0x1

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v5, v13

    goto :goto_6

    .line 95
    .end local v40    # "i":I
    .restart local v4    # "i":I
    :cond_5
    move/from16 v40, v4

    .line 98
    .end local v4    # "i":I
    .restart local v40    # "i":I
    :goto_6
    aget v4, v5, v13

    add-int v4, v19, v4

    aget v4, v14, v4

    .line 100
    .local v4, "p":I
    and-int v39, v4, v35

    shr-int/lit8 v39, v39, 0x10

    const/16 v20, 0x0

    aput v39, v38, v20

    .line 101
    and-int v39, v4, v34

    shr-int/lit8 v39, v39, 0x8

    const/16 v16, 0x1

    aput v39, v38, v16

    .line 102
    move/from16 v39, v15

    .end local v15    # "wm":I
    .local v39, "wm":I
    and-int/lit16 v15, v4, 0xff

    aput v15, v38, v23

    .line 104
    aget v15, v38, v20

    add-int v32, v32, v15

    .line 105
    aget v15, v38, v16

    add-int v31, v31, v15

    .line 106
    aget v15, v38, v23

    add-int v30, v30, v15

    .line 108
    add-int v26, v26, v32

    .line 109
    add-int v25, v25, v31

    .line 110
    add-int v21, v21, v30

    .line 112
    add-int/lit8 v15, v2, 0x1

    rem-int v2, v15, v9

    .line 113
    rem-int v15, v2, v9

    aget-object v15, v3, v15

    .line 115
    .end local v38    # "sir":[I
    .local v15, "sir":[I
    const/16 v20, 0x0

    aget v38, v15, v20

    add-int v29, v29, v38

    .line 116
    const/16 v16, 0x1

    aget v38, v15, v16

    add-int v28, v28, v38

    .line 117
    aget v38, v15, v23

    add-int v27, v27, v38

    .line 119
    aget v38, v15, v20

    sub-int v32, v32, v38

    .line 120
    aget v38, v15, v16

    sub-int v31, v31, v38

    .line 121
    aget v38, v15, v23

    sub-int v30, v30, v38

    .line 123
    add-int/lit8 v18, v18, 0x1

    .line 78
    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v39

    move/from16 v4, v40

    goto/16 :goto_5

    .line 125
    .end local v37    # "stackstart":I
    .end local v39    # "wm":I
    .end local v40    # "i":I
    .local v4, "i":I
    .local v15, "wm":I
    :cond_6
    move/from16 v40, v4

    move/from16 v39, v15

    .end local v4    # "i":I
    .end local v15    # "wm":I
    .restart local v39    # "wm":I
    .restart local v40    # "i":I
    add-int v19, v19, v12

    .line 54
    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v24

    move/from16 v4, v33

    move-object/from16 v2, v36

    move/from16 v21, v40

    goto/16 :goto_2

    .line 127
    .end local v24    # "h":I
    .end local v25    # "gsum":I
    .end local v26    # "rsum":I
    .end local v27    # "boutsum":I
    .end local v28    # "goutsum":I
    .end local v29    # "routsum":I
    .end local v30    # "binsum":I
    .end local v31    # "ginsum":I
    .end local v32    # "rinsum":I
    .end local v33    # "divsum":I
    .end local v36    # "bitmap":Landroid/graphics/Bitmap;
    .end local v39    # "wm":I
    .end local v40    # "i":I
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    .local v4, "divsum":I
    .local v13, "h":I
    .restart local v15    # "wm":I
    .local v21, "i":I
    :cond_7
    move-object/from16 v36, v2

    move/from16 v33, v4

    move/from16 v24, v13

    move/from16 v39, v15

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "divsum":I
    .end local v13    # "h":I
    .end local v15    # "wm":I
    .restart local v24    # "h":I
    .restart local v33    # "divsum":I
    .restart local v36    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v39    # "wm":I
    const/4 v2, 0x0

    move v13, v10

    .end local v10    # "y":I
    .local v2, "x":I
    .local v13, "y":I
    :goto_7
    if-ge v2, v12, :cond_d

    .line 128
    const/4 v4, 0x0

    move v10, v4

    .local v10, "bsum":I
    move v15, v4

    .local v15, "gsum":I
    move/from16 v20, v4

    .local v20, "rsum":I
    move/from16 v25, v4

    .local v25, "boutsum":I
    move/from16 v26, v4

    .local v26, "goutsum":I
    move/from16 v27, v4

    .local v27, "routsum":I
    move/from16 v28, v4

    .local v28, "binsum":I
    move/from16 v29, v4

    .local v29, "ginsum":I
    move/from16 v30, v4

    .line 129
    .local v30, "rinsum":I
    neg-int v4, v0

    mul-int v4, v4, v12

    .line 130
    .local v4, "yp":I
    move/from16 v32, v4

    .end local v4    # "yp":I
    .local v32, "yp":I
    neg-int v4, v0

    move/from16 v21, v15

    move/from16 v15, v20

    move/from16 v41, v25

    move/from16 v25, v10

    move/from16 v10, v32

    move/from16 v32, v28

    move/from16 v28, v41

    .end local v20    # "rsum":I
    .local v4, "i":I
    .local v10, "yp":I
    .local v15, "rsum":I
    .local v21, "gsum":I
    .local v25, "bsum":I
    .local v28, "boutsum":I
    .local v32, "binsum":I
    :goto_8
    if-gt v4, v0, :cond_a

    .line 131
    move/from16 v34, v13

    const/4 v13, 0x0

    .end local v13    # "y":I
    .local v34, "y":I
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v20

    add-int v18, v20, v2

    .line 133
    add-int v20, v4, v0

    aget-object v31, v3, v20

    .line 135
    .local v31, "sir":[I
    aget v20, v8, v18

    aput v20, v31, v13

    .line 136
    aget v13, v7, v18

    const/16 v16, 0x1

    aput v13, v31, v16

    .line 137
    aget v13, v6, v18

    aput v13, v31, v23

    .line 139
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    sub-int v13, v22, v13

    .line 141
    .local v13, "rbs":I
    aget v35, v8, v18

    mul-int v35, v35, v13

    add-int v15, v15, v35

    .line 142
    aget v35, v7, v18

    mul-int v35, v35, v13

    add-int v21, v21, v35

    .line 143
    aget v35, v6, v18

    mul-int v35, v35, v13

    add-int v25, v25, v35

    .line 145
    if-lez v4, :cond_8

    .line 146
    const/16 v20, 0x0

    aget v35, v31, v20

    add-int v30, v30, v35

    .line 147
    const/16 v16, 0x1

    aget v35, v31, v16

    add-int v29, v29, v35

    .line 148
    aget v35, v31, v23

    add-int v32, v32, v35

    goto :goto_9

    .line 150
    :cond_8
    const/16 v16, 0x1

    const/16 v20, 0x0

    aget v35, v31, v20

    add-int v27, v27, v35

    .line 151
    aget v35, v31, v16

    add-int v26, v26, v35

    .line 152
    aget v35, v31, v23

    add-int v28, v28, v35

    .line 155
    :goto_9
    if-ge v4, v11, :cond_9

    .line 156
    add-int/2addr v10, v12

    .line 130
    :cond_9
    add-int/lit8 v4, v4, 0x1

    move/from16 v13, v34

    goto :goto_8

    .line 159
    .end local v31    # "sir":[I
    .end local v34    # "y":I
    .local v13, "y":I
    :cond_a
    move/from16 v34, v13

    .end local v13    # "y":I
    .restart local v34    # "y":I
    move v13, v2

    .line 160
    .end local v18    # "yi":I
    .local v13, "yi":I
    move/from16 v18, p1

    .line 161
    .local v18, "stackpointer":I
    const/16 v31, 0x0

    move/from16 v41, v31

    move/from16 v31, v13

    move/from16 v13, v41

    .end local v34    # "y":I
    .local v13, "y":I
    .local v31, "yi":I
    :goto_a
    move/from16 v35, v10

    move/from16 v10, v24

    .end local v24    # "h":I
    .local v10, "h":I
    .local v35, "yp":I
    if-ge v13, v10, :cond_c

    .line 163
    const/high16 v24, -0x1000000

    aget v34, v14, v31

    and-int v24, v34, v24

    aget v34, v1, v15

    shl-int/lit8 v34, v34, 0x10

    or-int v24, v24, v34

    aget v34, v1, v21

    shl-int/lit8 v34, v34, 0x8

    or-int v24, v24, v34

    aget v34, v1, v25

    or-int v24, v24, v34

    aput v24, v14, v31

    .line 165
    sub-int v15, v15, v27

    .line 166
    sub-int v21, v21, v26

    .line 167
    sub-int v25, v25, v28

    .line 169
    sub-int v24, v18, v0

    add-int v24, v24, v9

    .line 170
    .local v24, "stackstart":I
    rem-int v34, v24, v9

    aget-object v34, v3, v34

    .line 172
    .local v34, "sir":[I
    const/16 v20, 0x0

    aget v37, v34, v20

    sub-int v27, v27, v37

    .line 173
    const/16 v16, 0x1

    aget v37, v34, v16

    sub-int v26, v26, v37

    .line 174
    aget v37, v34, v23

    sub-int v28, v28, v37

    .line 176
    if-nez v2, :cond_b

    .line 177
    add-int v0, v13, v22

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v12

    aput v0, v5, v13

    .line 179
    :cond_b
    aget v0, v5, v13

    add-int/2addr v0, v2

    .line 181
    .local v0, "p":I
    aget v37, v8, v0

    const/16 v20, 0x0

    aput v37, v34, v20

    .line 182
    aget v37, v7, v0

    const/16 v16, 0x1

    aput v37, v34, v16

    .line 183
    aget v37, v6, v0

    aput v37, v34, v23

    .line 185
    aget v37, v34, v20

    add-int v30, v30, v37

    .line 186
    aget v37, v34, v16

    add-int v29, v29, v37

    .line 187
    aget v37, v34, v23

    add-int v32, v32, v37

    .line 189
    add-int v15, v15, v30

    .line 190
    add-int v21, v21, v29

    .line 191
    add-int v25, v25, v32

    .line 193
    add-int/lit8 v37, v18, 0x1

    rem-int v18, v37, v9

    .line 194
    aget-object v34, v3, v18

    .line 196
    const/16 v20, 0x0

    aget v37, v34, v20

    add-int v27, v27, v37

    .line 197
    const/16 v16, 0x1

    aget v37, v34, v16

    add-int v26, v26, v37

    .line 198
    aget v37, v34, v23

    add-int v28, v28, v37

    .line 200
    aget v37, v34, v20

    sub-int v30, v30, v37

    .line 201
    aget v37, v34, v16

    sub-int v29, v29, v37

    .line 202
    aget v37, v34, v23

    sub-int v32, v32, v37

    .line 204
    add-int v31, v31, v12

    .line 161
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p1

    move/from16 v24, v10

    move/from16 v10, v35

    goto/16 :goto_a

    .line 127
    .end local v0    # "p":I
    .end local v24    # "stackstart":I
    .end local v34    # "sir":[I
    :cond_c
    const/16 v16, 0x1

    const/16 v20, 0x0

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p1

    move/from16 v21, v4

    move/from16 v24, v10

    move/from16 v18, v31

    goto/16 :goto_7

    .line 208
    .end local v4    # "i":I
    .end local v10    # "h":I
    .end local v15    # "rsum":I
    .end local v25    # "bsum":I
    .end local v26    # "goutsum":I
    .end local v27    # "routsum":I
    .end local v28    # "boutsum":I
    .end local v29    # "ginsum":I
    .end local v30    # "rinsum":I
    .end local v31    # "yi":I
    .end local v32    # "binsum":I
    .end local v35    # "yp":I
    .local v18, "yi":I
    .local v21, "i":I
    .local v24, "h":I
    :cond_d
    move/from16 v34, v13

    move/from16 v10, v24

    .end local v13    # "y":I
    .end local v24    # "h":I
    .restart local v10    # "h":I
    .local v34, "y":I
    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v16, v33

    .end local v33    # "divsum":I
    .local v16, "divsum":I
    move-object/from16 v4, v36

    move-object/from16 v20, v5

    .end local v5    # "vmin":[I
    .local v20, "vmin":[I
    move-object v5, v14

    move-object/from16 v23, v6

    .end local v6    # "b":[I
    .local v23, "b":[I
    move v6, v0

    move-object v0, v7

    .end local v7    # "g":[I
    .local v0, "g":[I
    move v7, v12

    move-object/from16 v24, v8

    .end local v8    # "r":[I
    .local v24, "r":[I
    move v8, v13

    move v13, v9

    .end local v9    # "div":I
    .local v13, "div":I
    move v9, v15

    move v15, v10

    .end local v10    # "h":I
    .local v15, "h":I
    move v10, v12

    move/from16 v25, v11

    .end local v11    # "hm":I
    .local v25, "hm":I
    move v11, v15

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 209
    return-object v36
.end method
