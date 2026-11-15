.class public Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "SmoothProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

.field private mColors:[I

.field private mGenerateBackgroundUsingColors:Z

.field private mGradients:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMirrorMode:Z

.field private mOnProgressiveStopEndedListener:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

.field private mProgressiveStartActivated:Z

.field private mProgressiveStartSpeed:F

.field private mProgressiveStopSpeed:F

.field private mReversed:Z

.field private mSectionsCount:I

.field private mSpeed:F

.field private mStrokeSeparatorLength:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 668
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;Z)V

    .line 669
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editMode"    # Z

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->initValues(Landroid/content/Context;Z)V

    .line 673
    return-void
.end method

.method private initValues(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editMode"    # Z

    .line 698
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 699
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 700
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 701
    const v3, 0x7f090002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 702
    const v3, 0x7f0e018b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 703
    const v3, 0x7f040002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 704
    const v3, 0x7f040001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    .line 705
    new-array v1, v1, [I

    const v3, 0x7f05002c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 706
    const v1, 0x7f06051f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 707
    const v1, 0x7f060520

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    goto :goto_0

    .line 709
    :cond_0
    const/4 v3, 0x4

    iput v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 710
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 711
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 712
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    .line 713
    new-array v1, v1, [I

    const v4, -0xcc4a1b

    aput v4, v1, v2

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 714
    iput v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 715
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 717
    :goto_0
    iget v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    iput v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    .line 718
    iput v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    .line 719
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    .line 720
    return-void
.end method


# virtual methods
.method public backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "backgroundDrawableWhenHidden"    # Landroid/graphics/drawable/Drawable;

    .line 796
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    .line 797
    return-object p0
.end method

.method public build()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    .locals 18

    .line 676
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mGenerateBackgroundUsingColors:Z

    if-eqz v1, :cond_0

    .line 677
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    iget v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->generateDrawableWithColors([IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    .line 679
    :cond_0
    new-instance v1, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v4, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    iget v5, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    iget-object v6, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    iget v7, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    iget v8, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    iget v9, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    iget v10, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    iget-boolean v11, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    iget-boolean v12, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    iget-object v13, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mOnProgressiveStopEndedListener:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    iget-boolean v14, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    iget-object v15, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    const/16 v17, 0x0

    move/from16 v16, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFFFZZLcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;ZLcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;)V

    .line 694
    .local v1, "ret":Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    return-object v1
.end method

.method public callbacks(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "onProgressiveStopEndedListener"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 791
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mOnProgressiveStopEndedListener:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 792
    return-object p0
.end method

.method public color(I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "color"    # I

    .line 741
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 742
    return-object p0
.end method

.method public colors([I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "colors"    # [I

    .line 746
    invoke-static {p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkColors([I)V

    .line 747
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 748
    return-object p0
.end method

.method public generateBackgroundUsingColors()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1

    .line 801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mGenerateBackgroundUsingColors:Z

    .line 802
    return-object p0
.end method

.method public gradients()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1

    .line 806
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->gradients(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public gradients(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "useGradients"    # Z

    .line 810
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    .line 811
    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 723
    const-string v0, "Interpolator"

    invoke-static {p1, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 725
    return-object p0
.end method

.method public mirrorMode(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "mirrorMode"    # Z

    .line 781
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    .line 782
    return-object p0
.end method

.method public progressiveStart(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "progressiveStartActivated"    # Z

    .line 786
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    .line 787
    return-object p0
.end method

.method public progressiveStartSpeed(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "progressiveStartSpeed"    # F

    .line 764
    invoke-static {p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkSpeed(F)V

    .line 765
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    .line 766
    return-object p0
.end method

.method public progressiveStopSpeed(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "progressiveStopSpeed"    # F

    .line 770
    invoke-static {p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkSpeed(F)V

    .line 771
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    .line 772
    return-object p0
.end method

.method public reversed(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "reversed"    # Z

    .line 776
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 777
    return-object p0
.end method

.method public sectionsCount(I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1
    .param p1, "sectionsCount"    # I

    .line 729
    const-string v0, "Sections count"

    invoke-static {p1, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkPositive(ILjava/lang/String;)V

    .line 730
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 731
    return-object p0
.end method

.method public separatorLength(I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "separatorLength"    # I

    .line 735
    int-to-float v0, p1

    const-string v1, "Separator length"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkPositiveOrZero(FLjava/lang/String;)V

    .line 736
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 737
    return-object p0
.end method

.method public speed(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "speed"    # F

    .line 758
    invoke-static {p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkSpeed(F)V

    .line 759
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 760
    return-object p0
.end method

.method public strokeWidth(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1
    .param p1, "width"    # F

    .line 752
    const-string v0, "Width"

    invoke-static {p1, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkPositiveOrZero(FLjava/lang/String;)V

    .line 753
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 754
    return-object p0
.end method
