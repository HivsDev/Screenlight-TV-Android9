.class public Lcom/shenma/tvlauncher/ui/DepthPageTransformer;
.super Ljava/lang/Object;
.source "DepthPageTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# static fields
.field private static MIN_SCALE:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/high16 v0, 0x3f400000    # 0.75f

    sput v0, Lcom/shenma/tvlauncher/ui/DepthPageTransformer;->MIN_SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 19
    .local v0, "pageWidth":I
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 22
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v1

    if-gtz v3, :cond_1

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 25
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 26
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 28
    :cond_1
    cmpg-float v3, p2, v2

    if-gtz v3, :cond_2

    .line 29
    sub-float v1, v2, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 30
    int-to-float v1, v0

    neg-float v3, p2

    mul-float v1, v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 31
    sget v1, Lcom/shenma/tvlauncher/ui/DepthPageTransformer;->MIN_SCALE:F

    sub-float v3, v2, v1

    .line 32
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v2, v4

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    .line 33
    .local v1, "scaleFactor":F
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 36
    .end local v1    # "scaleFactor":F
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 40
    :goto_0
    return-void
.end method
