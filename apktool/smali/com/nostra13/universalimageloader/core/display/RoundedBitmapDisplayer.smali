.class public Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;
.super Ljava/lang/Object;
.source "RoundedBitmapDisplayer.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# instance fields
.field private final roundPixels:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "roundPixels"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I

    .line 40
    return-void
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roundPixels"    # I
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "destRect"    # Landroid/graphics/Rect;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 156
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 160
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 162
    .local v3, "destRectF":Landroid/graphics/RectF;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 164
    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    int-to-float v4, p1

    int-to-float v5, p1

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 167
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 168
    invoke-virtual {v1, p0, p2, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 170
    return-object v0
.end method

.method public static roundCorners(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "roundPixels"    # I

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 62
    .local v1, "bw":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 63
    .local v2, "bh":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 64
    .local v0, "vw":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 65
    .local v3, "vh":I
    if-gtz v0, :cond_0

    move v0, v1

    :cond_0
    move v4, v0

    .line 66
    .end local v0    # "vw":I
    .local v4, "vw":I
    if-gtz v3, :cond_1

    move v3, v2

    .line 71
    :cond_1
    sget-object v0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v0, v5, :cond_7

    const/4 v5, 0x5

    const/4 v8, 0x0

    if-eq v0, v5, :cond_5

    const/4 v5, 0x6

    if-eq v0, v5, :cond_4

    const/4 v5, 0x7

    if-eq v0, v5, :cond_3

    const/16 v5, 0x8

    if-eq v0, v5, :cond_3

    move v0, v7

    .local v0, "width":I
    move v5, v7

    .local v5, "height":I
    move v9, v7

    .local v9, "x":I
    move v10, v7

    .local v10, "y":I
    move v11, v8

    .local v8, "bRation":F
    .local v11, "vRation":F
    move v12, v7

    .local v12, "destWidth":I
    move v13, v7

    .local v13, "destHeight":I
    move-object v14, v6

    .local v14, "srcRect":Landroid/graphics/Rect;
    move-object v15, v6

    .line 95
    .local v15, "destRect":Landroid/graphics/Rect;
    int-to-float v6, v4

    int-to-float v7, v3

    div-float/2addr v6, v7

    .line 96
    .end local v11    # "vRation":F
    .local v6, "vRation":F
    int-to-float v7, v1

    int-to-float v11, v2

    div-float/2addr v7, v11

    .line 97
    .end local v8    # "bRation":F
    .local v7, "bRation":F
    cmpl-float v8, v6, v7

    if-lez v8, :cond_2

    .line 98
    int-to-float v8, v1

    int-to-float v11, v2

    move/from16 v17, v0

    .end local v0    # "width":I
    .local v17, "width":I
    int-to-float v0, v3

    div-float/2addr v11, v0

    div-float/2addr v8, v11

    float-to-int v0, v8

    .line 99
    .end local v17    # "width":I
    .restart local v0    # "width":I
    move v5, v3

    goto :goto_0

    .line 97
    :cond_2
    move/from16 v17, v0

    .line 101
    .end local v0    # "width":I
    .end local v5    # "height":I
    move v0, v4

    .line 102
    .restart local v0    # "width":I
    int-to-float v5, v2

    int-to-float v8, v1

    int-to-float v11, v4

    div-float/2addr v8, v11

    div-float/2addr v5, v8

    float-to-int v5, v5

    .line 104
    .restart local v5    # "height":I
    :goto_0
    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-direct {v8, v11, v11, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .end local v14    # "srcRect":Landroid/graphics/Rect;
    .local v8, "srcRect":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v11, v11, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    .end local v15    # "destRect":Landroid/graphics/Rect;
    .local v14, "destRect":Landroid/graphics/Rect;
    move v11, v0

    move v12, v5

    goto/16 :goto_3

    .line 71
    .end local v0    # "width":I
    .end local v5    # "height":I
    .end local v6    # "vRation":F
    .end local v7    # "bRation":F
    .end local v8    # "srcRect":Landroid/graphics/Rect;
    .end local v9    # "x":I
    .end local v10    # "y":I
    .end local v12    # "destWidth":I
    .end local v13    # "destHeight":I
    .end local v14    # "destRect":Landroid/graphics/Rect;
    :cond_3
    const/4 v11, 0x0

    move v0, v8

    .local v0, "vRation":F
    move v5, v8

    .local v5, "bRation":F
    move v6, v11

    .local v6, "destWidth":I
    move v7, v11

    .local v7, "destHeight":I
    move v8, v11

    .local v8, "x":I
    move v9, v11

    .local v9, "y":I
    move v10, v11

    .local v10, "srcWidth":I
    move v12, v11

    .local v12, "srcHeight":I
    move v13, v11

    .local v13, "width":I
    move v14, v11

    const/4 v11, 0x0

    .local v14, "height":I
    move-object v15, v11

    .local v15, "srcRect":Landroid/graphics/Rect;
    move-object/from16 v17, v11

    .line 136
    .local v17, "destRect":Landroid/graphics/Rect;
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 137
    .end local v13    # "width":I
    .local v11, "width":I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 138
    .end local v14    # "height":I
    .local v13, "height":I
    sub-int v14, v1, v11

    div-int/lit8 v14, v14, 0x2

    .line 139
    .end local v8    # "x":I
    .local v14, "x":I
    sub-int v8, v2, v13

    div-int/lit8 v8, v8, 0x2

    .line 140
    .end local v9    # "y":I
    .local v8, "y":I
    new-instance v9, Landroid/graphics/Rect;

    move/from16 v18, v0

    .end local v0    # "vRation":F
    .local v18, "vRation":F
    add-int v0, v14, v11

    move/from16 v19, v5

    .end local v5    # "bRation":F
    .local v19, "bRation":F
    add-int v5, v8, v13

    invoke-direct {v9, v14, v8, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v9

    .line 141
    .end local v15    # "srcRect":Landroid/graphics/Rect;
    .local v0, "srcRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-direct {v5, v9, v9, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v0

    move-object v14, v5

    move v12, v13

    .end local v17    # "destRect":Landroid/graphics/Rect;
    .local v5, "destRect":Landroid/graphics/Rect;
    goto/16 :goto_3

    .line 71
    .end local v0    # "srcRect":Landroid/graphics/Rect;
    .end local v5    # "destRect":Landroid/graphics/Rect;
    .end local v6    # "destWidth":I
    .end local v7    # "destHeight":I
    .end local v8    # "y":I
    .end local v10    # "srcWidth":I
    .end local v11    # "width":I
    .end local v12    # "srcHeight":I
    .end local v13    # "height":I
    .end local v14    # "x":I
    .end local v18    # "vRation":F
    .end local v19    # "bRation":F
    :cond_4
    const/4 v9, 0x0

    move v0, v8

    .local v0, "vRation":F
    move v5, v8

    .local v5, "bRation":F
    move v6, v9

    .restart local v6    # "destWidth":I
    move v7, v9

    .restart local v7    # "destHeight":I
    move v8, v9

    .local v8, "x":I
    move v10, v9

    .local v10, "y":I
    move v11, v9

    .local v11, "srcWidth":I
    move v12, v9

    .restart local v12    # "srcHeight":I
    move v13, v9

    .local v13, "width":I
    move v14, v9

    const/4 v15, 0x0

    .local v14, "height":I
    move-object/from16 v16, v15

    .local v16, "srcRect":Landroid/graphics/Rect;
    move-object/from16 v17, v15

    .line 129
    .restart local v17    # "destRect":Landroid/graphics/Rect;
    move v13, v4

    .line 130
    move v14, v3

    .line 131
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v9, v9, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 132
    .end local v16    # "srcRect":Landroid/graphics/Rect;
    .restart local v15    # "srcRect":Landroid/graphics/Rect;
    move/from16 v16, v0

    .end local v0    # "vRation":F
    .local v16, "vRation":F
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v9, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 133
    .end local v17    # "destRect":Landroid/graphics/Rect;
    .local v0, "destRect":Landroid/graphics/Rect;
    move v11, v13

    move v12, v14

    move-object v8, v15

    move-object v14, v0

    goto/16 :goto_3

    .line 71
    .end local v0    # "destRect":Landroid/graphics/Rect;
    .end local v5    # "bRation":F
    .end local v6    # "destWidth":I
    .end local v7    # "destHeight":I
    .end local v8    # "x":I
    .end local v10    # "y":I
    .end local v11    # "srcWidth":I
    .end local v12    # "srcHeight":I
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v15    # "srcRect":Landroid/graphics/Rect;
    .end local v16    # "vRation":F
    :cond_5
    const/4 v9, 0x0

    move v0, v9

    .local v0, "x":I
    move v5, v9

    .local v5, "y":I
    move v6, v8

    .local v6, "vRation":F
    move v7, v8

    .local v7, "bRation":F
    move v8, v9

    .local v8, "destWidth":I
    move v10, v9

    .local v10, "destHeight":I
    move v11, v9

    .local v11, "width":I
    move v12, v9

    const/4 v9, 0x0

    .local v12, "height":I
    move-object v13, v9

    .local v13, "srcRect":Landroid/graphics/Rect;
    move-object v14, v9

    .line 108
    .local v14, "destRect":Landroid/graphics/Rect;
    int-to-float v9, v4

    int-to-float v15, v3

    div-float/2addr v9, v15

    .line 109
    .end local v6    # "vRation":F
    .local v9, "vRation":F
    int-to-float v6, v1

    int-to-float v15, v2

    div-float/2addr v6, v15

    .line 112
    .end local v7    # "bRation":F
    .local v6, "bRation":F
    cmpl-float v7, v9, v6

    if-lez v7, :cond_6

    .line 113
    move v7, v1

    .line 114
    .local v7, "srcWidth":I
    int-to-float v15, v3

    move/from16 v17, v0

    .end local v0    # "x":I
    .local v17, "x":I
    int-to-float v0, v1

    move/from16 v18, v5

    .end local v5    # "y":I
    .local v18, "y":I
    int-to-float v5, v4

    div-float/2addr v0, v5

    mul-float v15, v15, v0

    float-to-int v0, v15

    .line 115
    .local v0, "srcHeight":I
    const/4 v5, 0x0

    .line 116
    .end local v17    # "x":I
    .local v5, "x":I
    sub-int v15, v2, v0

    div-int/lit8 v15, v15, 0x2

    .end local v18    # "y":I
    .local v15, "y":I
    goto :goto_1

    .line 112
    .end local v7    # "srcWidth":I
    .end local v15    # "y":I
    .local v0, "x":I
    .local v5, "y":I
    :cond_6
    move/from16 v17, v0

    move/from16 v18, v5

    .line 118
    .end local v0    # "x":I
    .end local v5    # "y":I
    int-to-float v0, v4

    int-to-float v5, v2

    int-to-float v7, v3

    div-float/2addr v5, v7

    mul-float v0, v0, v5

    float-to-int v7, v0

    .line 119
    .restart local v7    # "srcWidth":I
    move v0, v2

    .line 120
    .local v0, "srcHeight":I
    sub-int v5, v1, v7

    div-int/lit8 v5, v5, 0x2

    .line 121
    .local v5, "x":I
    const/4 v15, 0x0

    .line 123
    .restart local v15    # "y":I
    :goto_1
    move v11, v7

    .line 124
    move v12, v0

    .line 125
    move/from16 v17, v6

    .end local v6    # "bRation":F
    .local v17, "bRation":F
    new-instance v6, Landroid/graphics/Rect;

    move/from16 v18, v8

    .end local v8    # "destWidth":I
    .local v18, "destWidth":I
    add-int v8, v5, v7

    move/from16 v19, v7

    .end local v7    # "srcWidth":I
    .local v19, "srcWidth":I
    add-int v7, v15, v0

    invoke-direct {v6, v5, v15, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v6

    .line 126
    .end local v13    # "srcRect":Landroid/graphics/Rect;
    .local v8, "srcRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v14, v6

    .line 127
    goto :goto_3

    .line 73
    .end local v0    # "srcHeight":I
    .end local v5    # "x":I
    .end local v8    # "srcRect":Landroid/graphics/Rect;
    .end local v9    # "vRation":F
    .end local v10    # "destHeight":I
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v14    # "destRect":Landroid/graphics/Rect;
    .end local v15    # "y":I
    .end local v17    # "bRation":F
    .end local v18    # "destWidth":I
    .end local v19    # "srcWidth":I
    :cond_7
    int-to-float v0, v4

    int-to-float v5, v3

    div-float/2addr v0, v5

    .line 74
    .local v0, "vRation":F
    int-to-float v5, v1

    int-to-float v6, v2

    div-float/2addr v5, v6

    .line 77
    .local v5, "bRation":F
    cmpl-float v6, v0, v5

    if-lez v6, :cond_8

    .line 78
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 79
    .local v6, "destHeight":I
    int-to-float v7, v1

    int-to-float v8, v2

    int-to-float v9, v6

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    float-to-int v7, v7

    .local v7, "destWidth":I
    goto :goto_2

    .line 81
    .end local v6    # "destHeight":I
    .end local v7    # "destWidth":I
    :cond_8
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 82
    .restart local v7    # "destWidth":I
    int-to-float v6, v2

    int-to-float v8, v1

    int-to-float v9, v7

    div-float/2addr v8, v9

    div-float/2addr v6, v8

    float-to-int v6, v6

    .line 84
    .restart local v6    # "destHeight":I
    :goto_2
    sub-int v8, v4, v7

    div-int/lit8 v8, v8, 0x2

    .line 85
    .local v8, "x":I
    sub-int v9, v3, v6

    div-int/lit8 v9, v9, 0x2

    .line 86
    .local v9, "y":I
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 87
    .local v10, "srcRect":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    add-int v12, v8, v7

    add-int v13, v9, v6

    invoke-direct {v11, v8, v9, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v14, v11

    .line 88
    .restart local v14    # "destRect":Landroid/graphics/Rect;
    move v11, v4

    .line 89
    .restart local v11    # "width":I
    move v12, v3

    .line 90
    .restart local v12    # "height":I
    move-object v8, v10

    .line 146
    .end local v0    # "vRation":F
    .end local v5    # "bRation":F
    .end local v6    # "destHeight":I
    .end local v7    # "destWidth":I
    .end local v9    # "y":I
    .end local v10    # "srcRect":Landroid/graphics/Rect;
    .local v8, "srcRect":Landroid/graphics/Rect;
    :goto_3
    move-object/from16 v17, p0

    move/from16 v18, p2

    move-object/from16 v19, v8

    move-object/from16 v20, v14

    move/from16 v21, v11

    move/from16 v22, v12

    :try_start_0
    invoke-static/range {v17 .. v22}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v0, "roundBitmap":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 147
    .end local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    const/4 v6, 0x0

    move-object v5, v0

    move-object v0, v6

    .line 148
    .restart local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Can\'t create bitmap with rounded corners. Not enough memory."

    invoke-static {v5, v7, v6}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    move-object/from16 v0, p0

    .line 152
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    :goto_4
    return-object v0
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 44
    iget v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I

    invoke-static {p1, p2, v0}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundCorners(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "roundedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    return-object v0
.end method
