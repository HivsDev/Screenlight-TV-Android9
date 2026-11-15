.class public Lcom/shenma/tvlauncher/utils/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static comp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    div-int/lit16 v1, v1, 0x400

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 51
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 53
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 54
    .local v1, "isBm":Ljava/io/ByteArrayInputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 56
    .local v2, "newOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 57
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 58
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 60
    .local v5, "w":I
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 62
    .local v6, "h":I
    const/high16 v7, 0x44480000    # 800.0f

    .line 63
    .local v7, "hh":F
    const/high16 v8, 0x43f00000    # 480.0f

    .line 65
    .local v8, "ww":F
    const/4 v9, 0x1

    .line 66
    .local v9, "be":I
    if-le v5, v6, :cond_1

    int-to-float v10, v5

    cmpl-float v10, v10, v8

    if-lez v10, :cond_1

    .line 67
    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    float-to-int v9, v10

    goto :goto_0

    .line 68
    :cond_1
    if-ge v5, v6, :cond_2

    int-to-float v10, v6

    cmpl-float v10, v10, v7

    if-lez v10, :cond_2

    .line 69
    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    float-to-int v9, v10

    .line 71
    :cond_2
    :goto_0
    if-gtz v9, :cond_3

    .line 72
    const/4 v9, 0x1

    .line 73
    :cond_3
    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 75
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v10

    .line 76
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 77
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/ImageUtil;->compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method public static compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 34
    const/16 v1, 0x5a

    .line 35
    .local v1, "options":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    div-int/lit16 v2, v2, 0x400

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 37
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 38
    add-int/lit8 v1, v1, -0xa

    goto :goto_0

    .line 40
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 41
    .local v2, "isBm":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 42
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    return-object v3
.end method

.method public static convertBitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 108
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    return-object v0
.end method

.method public static createReflectionImageWithOrigin(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 25
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 137
    const/4 v0, 0x4

    .line 138
    .local v0, "reflectionGap":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 139
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 140
    .local v9, "height":I
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object v10, v1

    .line 141
    .local v10, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 142
    div-int/lit8 v3, v9, 0x2

    div-int/lit8 v5, v9, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move v4, v8

    move-object v6, v10

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    .local v1, "reflectionImage":Landroid/graphics/Bitmap;
    div-int/lit8 v2, v9, 0x2

    add-int/2addr v2, v9

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 146
    .local v2, "bitmapWithReflection":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 147
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p0

    invoke-virtual {v3, v6, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 149
    .local v16, "deafalutPaint":Landroid/graphics/Paint;
    int-to-float v13, v9

    int-to-float v14, v8

    add-int/lit8 v7, v9, 0x4

    int-to-float v15, v7

    const/4 v12, 0x0

    move-object v11, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 150
    add-int/lit8 v7, v9, 0x4

    int-to-float v7, v7

    invoke-virtual {v3, v1, v5, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 152
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 153
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    add-int/lit8 v11, v11, 0x4

    int-to-float v11, v11

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v18, 0x0

    const/16 v20, 0x0

    const v22, 0x70ffffff

    const v23, 0xffffff

    move-object/from16 v17, v5

    move/from16 v19, v7

    move/from16 v21, v11

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 155
    .local v5, "shader":Landroid/graphics/LinearGradient;
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 157
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 159
    int-to-float v7, v9

    int-to-float v11, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    int-to-float v12, v12

    move-object/from16 v17, v3

    move/from16 v19, v7

    move/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v22, v4

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 162
    return-object v2
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 96
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 97
    .local v1, "height":I
    nop

    .line 98
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 99
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 97
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 100
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 101
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    return-object v2
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roundPx"    # F

    .line 115
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 116
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 115
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    .local v0, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v1, "canvas":Landroid/graphics/Canvas;
    const v2, -0xbdbdbe

    .line 120
    .local v2, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 121
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 122
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 124
    .local v5, "rectF":Landroid/graphics/RectF;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 126
    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    invoke-virtual {v1, v5, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 129
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 130
    invoke-virtual {v1, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 132
    return-object v0
.end method

.method public static getmImageListener(Landroid/widget/FrameLayout;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    .locals 1
    .param p0, "view"    # Landroid/widget/FrameLayout;
    .param p1, "defaultImageResId"    # I
    .param p2, "errorImageResId"    # I

    .line 168
    new-instance v0, Lcom/shenma/tvlauncher/utils/ImageUtil$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/shenma/tvlauncher/utils/ImageUtil$1;-><init>(ILandroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 82
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 83
    .local v7, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 84
    .local v8, "height":I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v0

    .line 85
    .local v9, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v1, v7

    div-float v10, v0, v1

    .line 86
    .local v10, "scaleWidht":F
    int-to-float v0, p2

    int-to-float v1, v8

    div-float v11, v0, v1

    .line 87
    .local v11, "scaleHeight":F
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 88
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v3, v7

    move v4, v8

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, "newbmp":Landroid/graphics/Bitmap;
    return-object v0
.end method
