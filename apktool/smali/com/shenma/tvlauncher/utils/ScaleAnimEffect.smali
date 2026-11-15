.class public Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;
.super Ljava/lang/Object;
.source "ScaleAnimEffect.java"


# instance fields
.field private duration:J

.field private fromAlpha:F

.field private fromXScale:F

.field private fromYScale:F

.field private toAlpha:F

.field private toXScale:F

.field private toYScale:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ScaleAnimation(FFFF)Landroid/view/animation/Animation;
    .locals 10
    .param p1, "fromXScale"    # F
    .param p2, "toXScale"    # F
    .param p3, "fromYScale"    # F
    .param p4, "toYScale"    # F

    .line 61
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 63
    .local v0, "localScaleAnimation":Landroid/view/animation/ScaleAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 64
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 65
    .local v1, "localAccelerateInterpolator":Landroid/view/animation/AccelerateInterpolator;
    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 66
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 67
    return-object v0
.end method

.method public alphaAnimation(FFJJ)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "paramFloat1"    # F
    .param p2, "paramFloat2"    # F
    .param p3, "paramLong1"    # J
    .param p5, "paramLong2"    # J

    .line 26
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 28
    .local v0, "localAlphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 29
    invoke-virtual {v0, p5, p6}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 30
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 31
    .local v1, "localAccelerateInterpolator":Landroid/view/animation/AccelerateInterpolator;
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 32
    return-object v0
.end method

.method public createAlphaAnimation()Landroid/view/animation/Animation;
    .locals 3

    .line 88
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->fromAlpha:F

    iget v2, p0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->toAlpha:F

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 89
    .local v0, "mAnimation":Landroid/view/animation/AlphaAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 90
    iget-wide v1, p0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 91
    return-object v0
.end method

.method public createAnimation()Landroid/view/animation/Animation;
    .locals 17

    .line 71
    move-object/from16 v0, p0

    iget v10, v0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->fromXScale:F

    .line 72
    .local v10, "f1":F
    iget v11, v0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->toXScale:F

    .line 73
    .local v11, "f2":F
    iget v12, v0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->fromYScale:F

    .line 74
    .local v12, "f3":F
    iget v13, v0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->toYScale:F

    .line 75
    .local v13, "f4":F
    const/4 v14, 0x1

    .line 76
    .local v14, "i":I
    const/high16 v15, 0x3f000000    # 0.5f

    .line 77
    .local v15, "f5":F
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v1, v16

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move v8, v14

    move v9, v15

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 79
    .local v1, "localScaleAnimation":Landroid/view/animation/ScaleAnimation;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 80
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 81
    .local v2, "localAccelerateInterpolator":Landroid/view/animation/AccelerateInterpolator;
    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 82
    iget-wide v3, v0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->duration:J

    .line 83
    .local v3, "l":J
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 84
    return-object v1
.end method

.method public setAlphaAttributs(FFJ)V
    .locals 0
    .param p1, "fromAlpha"    # F
    .param p2, "toAlpha"    # F
    .param p3, "duration"    # J

    .line 104
    iput-wide p3, p0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->duration:J

    .line 105
    iput p1, p0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->fromAlpha:F

    .line 106
    iput p2, p0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->toAlpha:F

    .line 107
    return-void
.end method

.method public setAttributs(FFFFJ)V
    .locals 0
    .param p1, "paramFloat1"    # F
    .param p2, "paramFloat2"    # F
    .param p3, "paramFloat3"    # F
    .param p4, "paramFloat4"    # F
    .param p5, "paramLong"    # J

    .line 96
    iput p1, p0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->fromXScale:F

    .line 97
    iput p3, p0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->fromYScale:F

    .line 98
    iput p2, p0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->toXScale:F

    .line 99
    iput p4, p0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->toYScale:F

    .line 100
    iput-wide p5, p0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->duration:J

    .line 101
    return-void
.end method

.method public translAnimation(FFFF)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "fromXDelta"    # F
    .param p2, "toXDelta"    # F
    .param p3, "fromYDelta"    # F
    .param p4, "toYDelta"    # F

    .line 46
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 48
    .local v0, "localTranslAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 50
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 51
    return-object v0
.end method
