.class public Lcom/shenma/tvlauncher/view/Reflect3DImage;
.super Ljava/lang/Object;
.source "Reflect3DImage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createReflectedImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "paramInt"    # I

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 16
    .local v7, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 17
    .local v8, "j":I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v0

    .line 18
    .local v9, "localMatrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 19
    sub-int v2, v8, p1

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v3, v7

    move/from16 v4, p1

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    .local v0, "localBitmap1":Landroid/graphics/Bitmap;
    add-int v1, v8, p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 23
    .local v1, "localBitmap2":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    .local v2, "localCanvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 25
    .local v3, "localPaint1":Landroid/graphics/Paint;
    const/4 v4, 0x0

    move-object/from16 v5, p0

    invoke-virtual {v2, v5, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 26
    int-to-float v6, v8

    invoke-virtual {v2, v0, v4, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 27
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .local v4, "localPaint2":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v12, v10

    .line 29
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v14, v10

    sget-object v17, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const v15, 0x70ffffff

    const v16, 0xffffff

    move-object v10, v6

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 28
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 31
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 32
    int-to-float v12, v8

    int-to-float v13, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v14, v6

    move-object v10, v2

    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    return-object v1
.end method

.method public static skewImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "paramInt"    # I

    .line 38
    invoke-static {p0, p1}, Lcom/shenma/tvlauncher/view/Reflect3DImage;->createReflectedImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 39
    .local v7, "localBitmap1":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    move-object v8, v0

    .line 40
    .local v8, "localCamera":Landroid/graphics/Camera;
    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v0

    .line 42
    .local v9, "localMatrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v8, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 43
    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 44
    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 45
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v10, 0x1

    shr-int/2addr v0, v10

    int-to-float v0, v0

    .line 46
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    shr-int/2addr v1, v10

    int-to-float v1, v1

    .line 45
    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 47
    nop

    .line 48
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 47
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, "localBitmap2":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 50
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 52
    .local v1, "localBitmap3":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    .local v2, "localCanvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .local v3, "localPaint":Landroid/graphics/Paint;
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 56
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    return-object v1
.end method
