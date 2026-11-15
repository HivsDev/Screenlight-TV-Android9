.class public Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;
.super Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;
.source "BubbleShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT_DP:I = 0xa


# instance fields
.field private arrowPosition:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

.field private final path:Landroid/graphics/Path;

.field private triangleHeightPx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    .line 26
    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->LEFT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->arrowPosition:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    .line 29
    return-void
.end method


# virtual methods
.method public calculate(IIFFFFF)V
    .locals 20
    .param p1, "bitmapWidth"    # I
    .param p2, "bitmapHeight"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "scale"    # F
    .param p6, "translateX"    # F
    .param p7, "translateY"    # F

    .line 61
    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 62
    neg-float v3, v1

    .line 63
    .local v3, "x":F
    neg-float v10, v2

    .line 64
    .local v10, "y":F
    iget v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->triangleHeightPx:I

    int-to-float v4, v4

    div-float v11, v4, p5

    .line 65
    .local v11, "scaledTriangleHeight":F
    move/from16 v12, p1

    int-to-float v4, v12

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v1, v5

    add-float v13, v4, v6

    .line 66
    .local v13, "resultWidth":F
    move/from16 v14, p2

    int-to-float v4, v14

    mul-float v6, v2, v5

    add-float v15, v4, v6

    .line 67
    .local v15, "resultHeight":F
    div-float v4, v15, v5

    add-float v9, v4, v10

    .line 69
    .local v9, "centerY":F
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 72
    sget-object v4, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$1;->$SwitchMap$com$shenma$tvlauncher$view$shapeimageview$shader$BubbleShader$ArrowPosition:[I

    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->arrowPosition:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    move v2, v9

    goto :goto_0

    .line 84
    :cond_0
    move/from16 v16, v3

    .line 85
    .local v16, "rectLeft":F
    add-float v8, v13, v16

    .line 86
    .local v8, "imgRight":F
    sub-float v7, v8, v11

    .line 87
    .local v7, "rectRight":F
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    add-float v17, v15, v10

    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v5, v16

    move v6, v10

    move/from16 v19, v7

    .end local v7    # "rectRight":F
    .local v19, "rectRight":F
    move v1, v8

    .end local v8    # "imgRight":F
    .local v1, "imgRight":F
    move/from16 v8, v17

    move v2, v9

    .end local v9    # "centerY":F
    .local v2, "centerY":F
    move-object/from16 v9, v18

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 88
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 89
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    sub-float v9, v2, v11

    move/from16 v8, v19

    .end local v19    # "rectRight":F
    .local v8, "rectRight":F
    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 90
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    add-float v9, v2, v11

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 74
    .end local v1    # "imgRight":F
    .end local v2    # "centerY":F
    .end local v8    # "rectRight":F
    .end local v16    # "rectLeft":F
    .restart local v9    # "centerY":F
    :cond_1
    move v2, v9

    .end local v9    # "centerY":F
    .restart local v2    # "centerY":F
    add-float v1, v11, v3

    .line 75
    .local v1, "rectLeft":F
    add-float v16, v13, v1

    .line 76
    .local v16, "rectRight":F
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    add-float v8, v15, v10

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v5, v1

    move v6, v10

    move/from16 v7, v16

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 78
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 79
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    sub-float v9, v2, v11

    invoke-virtual {v4, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    add-float v9, v2, v11

    invoke-virtual {v4, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    nop

    .line 94
    .end local v1    # "rectLeft":F
    .end local v16    # "rectRight":F
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "imagePaint"    # Landroid/graphics/Paint;
    .param p3, "borderPaint"    # Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 51
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 52
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    return-void
.end method

.method public getArrowPosition()Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->arrowPosition:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    return-object v0
.end method

.method public getTriangleHeightPx()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->triangleHeightPx:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->borderWidth:I

    .line 35
    if-eqz p2, :cond_0

    .line 36
    sget-object v1, Lcom/shenma/tvlauncher/R$styleable;->ShaderImageView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 37
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->triangleHeightPx:I

    .line 38
    sget-object v2, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->LEFT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 39
    .local v0, "arrowPositionInt":I
    invoke-static {}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->values()[Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->arrowPosition:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    .line 40
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    .end local v0    # "arrowPositionInt":I
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->triangleHeightPx:I

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->triangleHeightPx:I

    .line 46
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 99
    return-void
.end method

.method public setArrowPosition(Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;)V
    .locals 0
    .param p1, "arrowPosition"    # Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    .line 114
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->arrowPosition:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    .line 115
    return-void
.end method

.method public setTriangleHeightPx(I)V
    .locals 0
    .param p1, "triangleHeightPx"    # I

    .line 106
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;->triangleHeightPx:I

    .line 107
    return-void
.end method
