.class public Lcom/shenma/tvlauncher/view/shapeimageview/CircularImageView;
.super Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;
.source "CircularImageView.java"


# instance fields
.field private shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/ShaderImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public createImageViewHelper()Lcom/shenma/tvlauncher/view/shapeimageview/shader/ShaderHelper;
    .locals 1

    .line 28
    new-instance v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/CircularImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;

    .line 29
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/CircularImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;

    return-object v0
.end method

.method public getBorderRadius()F
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/CircularImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->getBorderRadius()F

    move-result v0

    return v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBorderRadius(F)V
    .locals 1
    .param p1, "borderRadius"    # F

    .line 40
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/CircularImageView;->shader:Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/CircleShader;->setBorderRadius(F)V

    .line 42
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/CircularImageView;->invalidate()V

    .line 44
    :cond_0
    return-void
.end method
