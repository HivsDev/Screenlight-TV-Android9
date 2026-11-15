.class public Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;
.super Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;
.source "ShapeImageView.java"


# instance fields
.field private shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public createImageViewHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;
    .locals 1

    .line 27
    new-instance v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;

    .line 28
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;

    return-object v0
.end method

.method public setBorderType(I)V
    .locals 1
    .param p1, "borderType"    # I

    .line 53
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->setBorderType(I)V

    .line 55
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->invalidate()V

    .line 57
    :cond_0
    return-void
.end method

.method public setShapeResId(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 60
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->setShapeResId(Landroid/content/Context;I)V

    .line 62
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->invalidate()V

    .line 64
    :cond_0
    return-void
.end method

.method public setStrokeCap(I)V
    .locals 1
    .param p1, "strokeCap"    # I

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->setStrokeCap(I)V

    .line 41
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->invalidate()V

    .line 43
    :cond_0
    return-void
.end method

.method public setStrokeJoin(I)V
    .locals 1
    .param p1, "strokeJoin"    # I

    .line 46
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->setStrokeJoin(I)V

    .line 48
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->invalidate()V

    .line 50
    :cond_0
    return-void
.end method

.method public setStrokeMiter(I)V
    .locals 1
    .param p1, "strokeMiter"    # I

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/SvgShader;->setStrokeMiter(I)V

    .line 34
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/ShapeImageView;->invalidate()V

    .line 36
    :cond_0
    return-void
.end method
