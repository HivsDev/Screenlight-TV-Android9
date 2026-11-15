.class public abstract Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;
.super Landroid/widget/ImageView;
.source "PorterImageView.java"


# static fields
.field private static final PORTER_DUFF_XFERMODE:Landroid/graphics/PorterDuffXfermode;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private drawableBitmap:Landroid/graphics/Bitmap;

.field private drawableCanvas:Landroid/graphics/Canvas;

.field private drawablePaint:Landroid/graphics/Paint;

.field private invalidated:Z

.field private maskBitmap:Landroid/graphics/Bitmap;

.field private maskCanvas:Landroid/graphics/Canvas;

.field private maskPaint:Landroid/graphics/Paint;

.field private square:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-class v0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->PORTER_DUFF_XFERMODE:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->invalidated:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->square:Z

    .line 39
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->invalidated:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->square:Z

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->invalidated:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->square:Z

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method private createMaskCanvas(IIII)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 85
    .local v2, "sizeChanged":Z
    :goto_1
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    const/4 v0, 0x1

    .line 86
    .local v0, "isValid":Z
    :cond_2
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->maskCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_4

    .line 87
    :cond_3
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->maskCanvas:Landroid/graphics/Canvas;

    .line 88
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->maskBitmap:Landroid/graphics/Bitmap;

    .line 89
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->maskCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 92
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->maskCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->paintMaskCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    .line 94
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawableCanvas:Landroid/graphics/Canvas;

    .line 95
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawableBitmap:Landroid/graphics/Bitmap;

    .line 96
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawableCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawableBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawablePaint:Landroid/graphics/Paint;

    .line 98
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->invalidated:Z

    .line 100
    :cond_4
    return-void
.end method

.method private setup(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 58
    if-eqz p2, :cond_0

    .line 59
    sget-object v0, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->square:Z

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_1

    .line 65
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->maskPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->maskPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->invalidated:Z

    .line 74
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 75
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 106
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 109
    .local v0, "saveCount":I
    :try_start_0
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->invalidated:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 111
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 112
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->invalidated:Z

    .line 113
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 114
    .local v4, "imageMatrix":Landroid/graphics/Matrix;
    if-nez v4, :cond_0

    .line 115
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawableCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawableCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v5

    .line 118
    .local v5, "drawableSaveCount":I
    iget-object v6, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawableCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 119
    iget-object v6, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawableCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 120
    iget-object v6, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawableCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    iget-object v6, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawableCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 124
    .end local v5    # "drawableSaveCount":I
    :goto_0
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawablePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    .line 125
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawablePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 126
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawablePaint:Landroid/graphics/Paint;

    sget-object v5, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->PORTER_DUFF_XFERMODE:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 127
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawableCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->maskBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawablePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v2, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 131
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "imageMatrix":Landroid/graphics/Matrix;
    :cond_1
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->invalidated:Z

    if-nez v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawablePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 133
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawableBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->drawablePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_2
    nop

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 140
    goto :goto_2

    .line 139
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while drawing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 141
    .end local v0    # "saveCount":I
    :goto_2
    goto :goto_4

    .line 139
    .restart local v0    # "saveCount":I
    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 140
    throw v1

    .line 142
    .end local v0    # "saveCount":I
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 144
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 148
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 149
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->square:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->getMeasuredWidth()I

    move-result v0

    .line 151
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->getMeasuredHeight()I

    move-result v1

    .line 152
    .local v1, "height":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 153
    .local v2, "dimen":I
    invoke-virtual {p0, v2, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->setMeasuredDimension(II)V

    .line 155
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "dimen":I
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->createMaskCanvas(IIII)V

    .line 81
    return-void
.end method

.method protected abstract paintMaskCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
.end method

.method public setSquare(Z)V
    .locals 0
    .param p1, "square"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;->square:Z

    .line 55
    return-void
.end method
