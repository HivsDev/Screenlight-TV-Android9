.class public Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SmoothProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;,
        Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;
    }
.end annotation


# static fields
.field private static final FRAME_DURATION:J = 0x10L

.field private static final OFFSET_PER_FRAME:F = 0.01f


# instance fields
.field private final fBackgroundRect:Landroid/graphics/Rect;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mCallbacks:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

.field private mColors:[I

.field private mColorsIndex:I

.field private mCurrentOffset:F

.field private mCurrentSections:I

.field private mFinishing:Z

.field private mFinishingOffset:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLinearGradientColors:[I

.field private mLinearGradientPositions:[F

.field private mMaxOffset:F

.field private mMirrorMode:Z

.field private mNewTurn:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressiveStartActivated:Z

.field private mProgressiveStartSpeed:F

.field private mProgressiveStopSpeed:F

.field private mReversed:Z

.field private mRunning:Z

.field private mSectionsCount:I

.field private mSeparatorLength:I

.field private mSpeed:F

.field private mStartSection:I

.field private mStrokeWidth:F

.field private final mUpdater:Ljava/lang/Runnable;

.field private mUseGradients:Z


# direct methods
.method private constructor <init>(Landroid/view/animation/Interpolator;II[IFFFFZZLcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;Z)V
    .locals 15
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "sectionsCount"    # I
    .param p3, "separatorLength"    # I
    .param p4, "colors"    # [I
    .param p5, "strokeWidth"    # F
    .param p6, "speed"    # F
    .param p7, "progressiveStartSpeed"    # F
    .param p8, "progressiveStopSpeed"    # F
    .param p9, "reversed"    # Z
    .param p10, "mirrorMode"    # Z
    .param p11, "callbacks"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;
    .param p12, "progressiveStartActivated"    # Z
    .param p13, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p14, "useGradients"    # Z

    .line 94
    move-object v0, p0

    move/from16 v1, p5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 51
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    .line 599
    new-instance v2, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;-><init>(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)V

    iput-object v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 95
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mRunning:Z

    .line 96
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 97
    move/from16 v4, p2

    iput v4, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    .line 98
    iput v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    .line 99
    iget v5, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    iput v5, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    .line 100
    move/from16 v6, p3

    iput v6, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    .line 101
    move/from16 v7, p6

    iput v7, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSpeed:F

    .line 102
    move/from16 v8, p7

    iput v8, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartSpeed:F

    .line 103
    move/from16 v9, p8

    iput v9, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStopSpeed:F

    .line 104
    move/from16 v10, p9

    iput-boolean v10, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    .line 105
    move-object/from16 v11, p4

    iput-object v11, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    .line 106
    iput v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 107
    move/from16 v12, p10

    iput-boolean v12, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    .line 108
    iput-boolean v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishing:Z

    .line 109
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    iput v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    .line 112
    int-to-float v5, v5

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v14, v5

    iput v14, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMaxOffset:F

    .line 114
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 115
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 118
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    move/from16 v2, p12

    iput-boolean v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartActivated:Z

    .line 121
    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 123
    move/from16 v14, p14

    iput-boolean v14, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    .line 124
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->refreshLinearGradientOptions()V

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Interpolator;II[IFFFFZZLcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;ZLcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/animation/Interpolator;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # [I
    .param p5, "x4"    # F
    .param p6, "x5"    # F
    .param p7, "x6"    # F
    .param p8, "x7"    # F
    .param p9, "x8"    # Z
    .param p10, "x9"    # Z
    .param p11, "x10"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;
    .param p12, "x11"    # Z
    .param p13, "x12"    # Landroid/graphics/drawable/Drawable;
    .param p14, "x13"    # Z
    .param p15, "x14"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;

    .line 40
    invoke-direct/range {p0 .. p14}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFFFZZLcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    .line 40
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    return v0
.end method

.method static synthetic access$016(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;F)F
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    .param p1, "x1"    # F

    .line 40
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    return v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    .line 40
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStopSpeed:F

    return v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    .line 40
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$216(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;F)F
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    .param p1, "x1"    # F

    .line 40
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$224(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;F)F
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    .param p1, "x1"    # F

    .line 40
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    .line 40
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartSpeed:F

    return v0
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    .line 40
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSpeed:F

    return v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    .line 40
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMaxOffset:F

    return v0
.end method

.method static synthetic access$602(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mNewTurn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    .line 40
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkColorIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 638
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 641
    return-void

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Index %d not valid"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decrementColor(I)I
    .locals 1
    .param p1, "colorIndex"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 494
    add-int/lit8 p1, p1, -0x1

    .line 495
    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 496
    :cond_0
    return p1
.end method

.method private drawBackground(Landroid/graphics/Canvas;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "fromX"    # F
    .param p3, "toX"    # F
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 478
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 479
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 480
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    .line 479
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 481
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 482
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 483
    return-void
.end method

.method private drawBackgroundIfNeeded(Landroid/graphics/Canvas;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstX"    # F
    .param p3, "lastX"    # F
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 409
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 411
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 412
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 413
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 416
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 417
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 420
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 421
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 422
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 423
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 427
    :goto_1
    return-void

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isStarting()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 432
    :cond_4
    cmpl-float v0, p2, p3

    if-lez v0, :cond_5

    .line 433
    move v0, p2

    .line 434
    .local v0, "temp":F
    move p2, p3

    .line 435
    move p3, v0

    .line 438
    .end local v0    # "temp":F
    :cond_5
    cmpl-float v0, p2, v3

    if-lez v0, :cond_8

    .line 439
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v0, :cond_7

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 441
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 442
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v0, :cond_6

    .line 443
    invoke-direct {p0, p1, v3, p2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 444
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 445
    invoke-direct {p0, p1, v3, p2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    goto :goto_2

    .line 447
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 448
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 451
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    .line 453
    :cond_7
    invoke-direct {p0, p1, v3, p2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 456
    :cond_8
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_b

    .line 457
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v0, :cond_a

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 460
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v0, :cond_9

    .line 461
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, p1, p3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 462
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 463
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, p1, p3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    goto :goto_4

    .line 465
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p3

    invoke-direct {p0, p1, v3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 466
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 467
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p3

    invoke-direct {p0, p1, v3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 469
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 471
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, p3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 474
    :cond_b
    :goto_5
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;IFFFFI)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "canvasWidth"    # I
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "stopX"    # F
    .param p6, "stopY"    # F
    .param p7, "currentIndexColor"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 389
    move-object v0, p0

    move v1, p2

    iget-object v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    aget v3, v3, p7

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-nez v2, :cond_0

    .line 392
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 394
    :cond_0
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v2, :cond_1

    .line 395
    int-to-float v2, v1

    add-float v4, v2, p3

    int-to-float v2, v1

    add-float v6, v2, p5

    iget-object v8, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, p4

    move v7, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 396
    int-to-float v2, v1

    sub-float v4, v2, p3

    int-to-float v2, v1

    sub-float v6, v2, p5

    iget-object v8, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 399
    mul-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    sub-float v4, v2, p3

    mul-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    sub-float v6, v2, p5

    iget-object v8, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, p4

    move v7, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 402
    :goto_0
    return-void
.end method

.method private drawStrokes(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 324
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-boolean v0, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 326
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {v9, v0, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 330
    .local v0, "prevValue":F
    iget-object v1, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 331
    .local v1, "boundsWidth":I
    iget-boolean v2, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v2, :cond_1

    div-int/lit8 v1, v1, 0x2

    :cond_1
    move v12, v1

    .line 332
    .end local v1    # "boundsWidth":I
    .local v12, "boundsWidth":I
    iget v1, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    add-int/2addr v1, v12

    iget v2, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    add-int v13, v1, v2

    .line 333
    .local v13, "width":I
    iget-object v1, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    .line 334
    .local v14, "centerY":I
    iget v1, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v2, v1

    div-float v15, v11, v2

    .line 338
    .local v15, "xSectionWidth":F
    const/4 v2, 0x0

    .line 339
    .local v2, "firstX":F
    const/4 v3, 0x0

    .line 347
    .local v3, "lastX":F
    iget v4, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 349
    .local v4, "currentIndexColor":I
    iget v5, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    iget v6, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    if-ne v5, v6, :cond_2

    if-ne v6, v1, :cond_2

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v2, v1

    .line 353
    :cond_2
    const/4 v1, 0x0

    move v7, v1

    move v6, v2

    move v5, v3

    move v3, v4

    move v4, v0

    .end local v0    # "prevValue":F
    .end local v2    # "firstX":F
    .local v3, "currentIndexColor":I
    .local v4, "prevValue":F
    .local v5, "lastX":F
    .local v6, "firstX":F
    .local v7, "i":I
    :goto_0
    iget v0, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    if-gt v7, v0, :cond_9

    .line 354
    int-to-float v0, v7

    mul-float v0, v0, v15

    iget v1, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    add-float v2, v0, v1

    .line 355
    .local v2, "xOffset":F
    sub-float v0, v2, v15

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 356
    .local v1, "prev":F
    iget-object v0, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v10, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 357
    move/from16 v16, v3

    .end local v3    # "currentIndexColor":I
    .local v16, "currentIndexColor":I
    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v0, v3

    .line 356
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 358
    .local v10, "ratioSectionWidth":F
    int-to-float v0, v13

    mul-float v0, v0, v10

    float-to-int v0, v0

    int-to-float v3, v0

    .line 360
    .local v3, "sectionWidth":F
    add-float v0, v3, v1

    int-to-float v11, v13

    cmpg-float v0, v0, v11

    if-gez v0, :cond_3

    .line 361
    iget v0, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    int-to-float v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v11, v0

    .local v0, "spaceLength":F
    goto :goto_1

    .line 363
    .end local v0    # "spaceLength":F
    :cond_3
    const/4 v0, 0x0

    move v11, v0

    .line 365
    .local v11, "spaceLength":F
    :goto_1
    cmpl-float v0, v3, v11

    if-lez v0, :cond_4

    sub-float v0, v3, v11

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    move/from16 v18, v0

    .line 366
    .local v18, "drawLength":F
    add-float v0, v4, v18

    .line 367
    .local v0, "end":F
    cmpl-float v19, v0, v4

    if-lez v19, :cond_6

    move/from16 v19, v1

    .end local v1    # "prev":F
    .local v19, "prev":F
    iget v1, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    if-lt v7, v1, :cond_5

    .line 368
    iget-object v1, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v20, v2

    .end local v2    # "xOffset":F
    .local v20, "xOffset":F
    iget v2, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    move/from16 v21, v10

    const/high16 v10, 0x3f800000    # 1.0f

    .end local v10    # "ratioSectionWidth":F
    .local v21, "ratioSectionWidth":F
    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v17

    .line 369
    .local v17, "xFinishingOffset":F
    int-to-float v1, v13

    mul-float v1, v1, v17

    int-to-float v2, v12

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 370
    .local v22, "startX":F
    int-to-float v1, v12

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v23

    .line 371
    .local v23, "endX":F
    int-to-float v2, v14

    int-to-float v1, v14

    move/from16 v24, v0

    .end local v0    # "end":F
    .local v24, "end":F
    move-object/from16 v0, p0

    move/from16 v25, v1

    move-object/from16 v1, p1

    move/from16 v26, v2

    move v2, v12

    move/from16 v27, v16

    move/from16 v16, v3

    .end local v3    # "sectionWidth":F
    .local v16, "sectionWidth":F
    .local v27, "currentIndexColor":I
    move/from16 v3, v22

    move/from16 v28, v4

    .end local v4    # "prevValue":F
    .local v28, "prevValue":F
    move/from16 v4, v26

    move v10, v5

    .end local v5    # "lastX":F
    .local v10, "lastX":F
    move/from16 v5, v23

    move/from16 v29, v12

    move v12, v6

    .end local v6    # "firstX":F
    .local v12, "firstX":F
    .local v29, "boundsWidth":I
    move/from16 v6, v25

    move/from16 v25, v13

    move v13, v7

    .end local v7    # "i":I
    .local v13, "i":I
    .local v25, "width":I
    move/from16 v7, v27

    invoke-direct/range {v0 .. v7}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawLine(Landroid/graphics/Canvas;IFFFFI)V

    .line 372
    iget v0, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    if-ne v13, v0, :cond_7

    .line 373
    iget v0, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    int-to-float v0, v0

    sub-float v0, v22, v0

    move v6, v0

    .end local v12    # "firstX":F
    .local v0, "firstX":F
    goto :goto_4

    .line 367
    .end local v17    # "xFinishingOffset":F
    .end local v20    # "xOffset":F
    .end local v21    # "ratioSectionWidth":F
    .end local v22    # "startX":F
    .end local v23    # "endX":F
    .end local v24    # "end":F
    .end local v25    # "width":I
    .end local v27    # "currentIndexColor":I
    .end local v28    # "prevValue":F
    .end local v29    # "boundsWidth":I
    .local v0, "end":F
    .restart local v2    # "xOffset":F
    .restart local v3    # "sectionWidth":F
    .restart local v4    # "prevValue":F
    .restart local v5    # "lastX":F
    .restart local v6    # "firstX":F
    .restart local v7    # "i":I
    .local v10, "ratioSectionWidth":F
    .local v12, "boundsWidth":I
    .local v13, "width":I
    .local v16, "currentIndexColor":I
    :cond_5
    move/from16 v24, v0

    move/from16 v20, v2

    move/from16 v28, v4

    move/from16 v21, v10

    move/from16 v29, v12

    move/from16 v25, v13

    move/from16 v27, v16

    move/from16 v16, v3

    move v10, v5

    move v12, v6

    move v13, v7

    .end local v0    # "end":F
    .end local v2    # "xOffset":F
    .end local v3    # "sectionWidth":F
    .end local v4    # "prevValue":F
    .end local v5    # "lastX":F
    .end local v6    # "firstX":F
    .end local v7    # "i":I
    .local v10, "lastX":F
    .local v12, "firstX":F
    .local v13, "i":I
    .local v16, "sectionWidth":F
    .restart local v20    # "xOffset":F
    .restart local v21    # "ratioSectionWidth":F
    .restart local v24    # "end":F
    .restart local v25    # "width":I
    .restart local v27    # "currentIndexColor":I
    .restart local v28    # "prevValue":F
    .restart local v29    # "boundsWidth":I
    goto :goto_3

    .end local v19    # "prev":F
    .end local v20    # "xOffset":F
    .end local v21    # "ratioSectionWidth":F
    .end local v24    # "end":F
    .end local v25    # "width":I
    .end local v27    # "currentIndexColor":I
    .end local v28    # "prevValue":F
    .end local v29    # "boundsWidth":I
    .restart local v0    # "end":F
    .restart local v1    # "prev":F
    .restart local v2    # "xOffset":F
    .restart local v3    # "sectionWidth":F
    .restart local v4    # "prevValue":F
    .restart local v5    # "lastX":F
    .restart local v6    # "firstX":F
    .restart local v7    # "i":I
    .local v10, "ratioSectionWidth":F
    .local v12, "boundsWidth":I
    .local v13, "width":I
    .local v16, "currentIndexColor":I
    :cond_6
    move/from16 v24, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v28, v4

    move/from16 v21, v10

    move/from16 v29, v12

    move/from16 v25, v13

    move/from16 v27, v16

    move/from16 v16, v3

    move v10, v5

    move v12, v6

    move v13, v7

    .line 376
    .end local v0    # "end":F
    .end local v1    # "prev":F
    .end local v2    # "xOffset":F
    .end local v3    # "sectionWidth":F
    .end local v4    # "prevValue":F
    .end local v5    # "lastX":F
    .end local v6    # "firstX":F
    .end local v7    # "i":I
    .local v10, "lastX":F
    .local v12, "firstX":F
    .local v13, "i":I
    .local v16, "sectionWidth":F
    .restart local v19    # "prev":F
    .restart local v20    # "xOffset":F
    .restart local v21    # "ratioSectionWidth":F
    .restart local v24    # "end":F
    .restart local v25    # "width":I
    .restart local v27    # "currentIndexColor":I
    .restart local v28    # "prevValue":F
    .restart local v29    # "boundsWidth":I
    :cond_7
    :goto_3
    move v6, v12

    .end local v12    # "firstX":F
    .restart local v6    # "firstX":F
    :goto_4
    iget v0, v8, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    if-ne v13, v0, :cond_8

    .line 377
    add-float v4, v28, v16

    move v5, v4

    .end local v10    # "lastX":F
    .local v4, "lastX":F
    goto :goto_5

    .line 376
    .end local v4    # "lastX":F
    .restart local v10    # "lastX":F
    :cond_8
    move v5, v10

    .line 380
    .end local v10    # "lastX":F
    .restart local v5    # "lastX":F
    :goto_5
    add-float v4, v24, v11

    .line 381
    .end local v28    # "prevValue":F
    .local v4, "prevValue":F
    move/from16 v0, v27

    .end local v27    # "currentIndexColor":I
    .local v0, "currentIndexColor":I
    invoke-direct {v8, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->incrementColor(I)I

    move-result v3

    .line 353
    .end local v0    # "currentIndexColor":I
    .local v3, "currentIndexColor":I
    add-int/lit8 v7, v13, 0x1

    move/from16 v13, v25

    move/from16 v12, v29

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .end local v13    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_0

    .end local v11    # "spaceLength":F
    .end local v16    # "sectionWidth":F
    .end local v18    # "drawLength":F
    .end local v19    # "prev":F
    .end local v20    # "xOffset":F
    .end local v21    # "ratioSectionWidth":F
    .end local v24    # "end":F
    .end local v25    # "width":I
    .end local v29    # "boundsWidth":I
    .local v12, "boundsWidth":I
    .local v13, "width":I
    :cond_9
    move v0, v3

    move/from16 v28, v4

    move v10, v5

    move/from16 v29, v12

    move/from16 v25, v13

    move v12, v6

    move v13, v7

    .line 384
    .end local v3    # "currentIndexColor":I
    .end local v4    # "prevValue":F
    .end local v5    # "lastX":F
    .end local v6    # "firstX":F
    .end local v7    # "i":I
    .end local v13    # "width":I
    .restart local v0    # "currentIndexColor":I
    .restart local v10    # "lastX":F
    .local v12, "firstX":F
    .restart local v25    # "width":I
    .restart local v28    # "prevValue":F
    .restart local v29    # "boundsWidth":I
    invoke-direct {v8, v9, v12, v10}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackgroundIfNeeded(Landroid/graphics/Canvas;FF)V

    .line 385
    return-void
.end method

.method private incrementColor(I)I
    .locals 1
    .param p1, "colorIndex"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 487
    add-int/lit8 p1, p1, 0x1

    .line 488
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 489
    :cond_0
    return p1
.end method

.method private prepareGradient()V
    .locals 14
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 290
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 291
    .local v0, "xSectionWidth":F
    iget v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 293
    .local v2, "currentIndexColor":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 294
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aput v1, v3, v5

    .line 295
    add-int/lit8 v1, v2, -0x1

    .line 296
    .local v1, "firstColorIndex":I
    if-gez v1, :cond_0

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v3, v3

    add-int/2addr v1, v3

    .line 298
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    aget v5, v5, v1

    aput v5, v3, v4

    .line 300
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-ge v3, v4, :cond_1

    .line 302
    iget-object v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v5, v3

    mul-float v5, v5, v0

    iget v6, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    add-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 303
    .local v4, "position":F
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    add-int/lit8 v6, v3, 0x1

    aput v4, v5, v6

    .line 304
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    aget v8, v7, v2

    aput v8, v5, v6

    .line 306
    add-int/lit8 v5, v2, 0x1

    array-length v6, v7

    rem-int v2, v5, v6

    .line 300
    .end local v4    # "position":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    aget v5, v5, v2

    aput v5, v3, v4

    .line 310
    iget-boolean v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    :goto_1
    int-to-float v3, v3

    move v5, v3

    .line 311
    .local v5, "left":F
    iget-boolean v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    :goto_2
    int-to-float v3, v3

    move v7, v3

    goto :goto_3

    .line 312
    :cond_5
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move v7, v3

    :goto_3
    nop

    .line 313
    .local v7, "right":F
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    .line 314
    .local v3, "top":F
    iget-object v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget v8, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    div-float/2addr v8, v6

    add-float v12, v4, v8

    .line 315
    .local v12, "bottom":F
    new-instance v13, Landroid/graphics/LinearGradient;

    iget-object v9, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    iget-object v10, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    .line 317
    iget-boolean v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v4, :cond_6

    sget-object v4, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_4

    :cond_6
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_4
    move-object v11, v4

    move-object v4, v13

    move v6, v3

    move v8, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 319
    .local v4, "linearGradient":Landroid/graphics/LinearGradient;
    iget-object v6, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 320
    return-void
.end method

.method private refreshLinearGradientOptions()V
    .locals 2

    .line 246
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    if-eqz v0, :cond_0

    .line 247
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    .line 248
    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 251
    iput-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    .line 252
    iput-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    .line 254
    :goto_0
    return-void
.end method

.method private resetProgressiveStart(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 521
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->checkColorIndex(I)V

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    .line 524
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishing:Z

    .line 525
    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    .line 526
    iput v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    .line 527
    iput v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    .line 528
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 529
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 261
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    .line 262
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 265
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mNewTurn:Z

    if-eqz v0, :cond_1

    .line 266
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->decrementColor(I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mNewTurn:Z

    .line 269
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    .line 272
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-le v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->stop()V

    .line 274
    return-void

    .line 277
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-ge v0, v1, :cond_1

    .line 278
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    .line 282
    :cond_1
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    if-eqz v0, :cond_2

    .line 283
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->prepareGradient()V

    .line 285
    :cond_2
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawStrokes(Landroid/graphics/Canvas;)V

    .line 286
    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 552
    const/4 v0, -0x2

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 228
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 596
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishing:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mRunning:Z

    return v0
.end method

.method public isStarting()Z
    .locals 2

    .line 592
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public progressiveStart()V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->progressiveStart(I)V

    .line 506
    return-void
.end method

.method public progressiveStart(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 515
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->resetProgressiveStart(I)V

    .line 516
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->start()V

    .line 517
    return-void
.end method

.method public progressiveStop()V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishing:Z

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    .line 538
    return-void
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mRunning:Z

    .line 583
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 584
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 542
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 543
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 217
    return-void
.end method

.method public setCallbacks(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 631
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 632
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setColors([I)V

    .line 150
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 547
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 548
    return-void
.end method

.method public setColors([I)V
    .locals 2
    .param p1, "colors"    # [I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 139
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 142
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    .line 143
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->refreshLinearGradientOptions()V

    .line 144
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 145
    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 132
    if-eqz p1, :cond_0

    .line 133
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 134
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 135
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interpolator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMirrorMode(Z)V
    .locals 1
    .param p1, "mirrorMode"    # Z
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 207
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 208
    :cond_0
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    .line 209
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 210
    return-void
.end method

.method public setProgressiveStartActivated(Z)V
    .locals 0
    .param p1, "progressiveStartActivated"    # Z
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 233
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartActivated:Z

    .line 234
    return-void
.end method

.method public setProgressiveStartSpeed(F)V
    .locals 2
    .param p1, "speed"    # F
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 161
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 162
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartSpeed:F

    .line 163
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 164
    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SpeedProgressiveStart must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProgressiveStopSpeed(F)V
    .locals 2
    .param p1, "speed"    # F
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 168
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 169
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStopSpeed:F

    .line 170
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 171
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SpeedProgressiveStop must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReversed(Z)V
    .locals 1
    .param p1, "reversed"    # Z
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 200
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 201
    :cond_0
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    .line 202
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 203
    return-void
.end method

.method public setSectionsCount(I)V
    .locals 2
    .param p1, "sectionsCount"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 175
    if-lez p1, :cond_0

    .line 176
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    .line 177
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMaxOffset:F

    .line 178
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    iget v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMaxOffset:F

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    .line 179
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->refreshLinearGradientOptions()V

    .line 180
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 181
    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSeparatorLength(I)V
    .locals 2
    .param p1, "separatorLength"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 185
    if-ltz p1, :cond_0

    .line 187
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    .line 188
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 189
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpeed(F)V
    .locals 2
    .param p1, "speed"    # F
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 154
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 155
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSpeed:F

    .line 156
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 157
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .param p1, "strokeWidth"    # F
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 193
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 196
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The strokeWidth must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseGradients(Z)V
    .locals 1
    .param p1, "useGradients"    # Z
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 238
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 240
    :cond_0
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    .line 241
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->refreshLinearGradientOptions()V

    .line 242
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 243
    return-void
.end method

.method public start()V
    .locals 5

    .line 559
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartActivated:Z

    if-eqz v0, :cond_0

    .line 560
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->resetProgressiveStart(I)V

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    if-eqz v0, :cond_2

    .line 564
    invoke-interface {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;->onStart()V

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 567
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 568
    return-void
.end method

.method public stop()V
    .locals 1

    .line 572
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    if-eqz v0, :cond_1

    .line 574
    invoke-interface {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;->onStop()V

    .line 576
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mRunning:Z

    .line 577
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 578
    return-void
.end method
