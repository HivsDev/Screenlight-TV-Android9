.class public Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;
.super Landroid/widget/ProgressBar;
.source "SmoothProgressBar.java"


# static fields
.field private static final INTERPOLATOR_ACCELERATE:I = 0x0

.field private static final INTERPOLATOR_ACCELERATEDECELERATE:I = 0x2

.field private static final INTERPOLATOR_DECELERATE:I = 0x3

.field private static final INTERPOLATOR_LINEAR:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    const v0, 0x7f030083

    invoke-direct {p0, p1, p2, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 39
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->isInEditMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 42
    new-instance v2, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    invoke-direct {v2, v1, v3}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->build()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void

    .line 46
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 47
    .local v2, "res":Landroid/content/res/Resources;
    sget-object v4, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar:[I

    const/4 v5, 0x0

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual {v1, v6, v4, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 50
    .local v4, "a":Landroid/content/res/TypedArray;
    const v8, 0x7f05002c

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v4, v9, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 51
    .local v8, "color":I
    const/16 v10, 0xc

    const v11, 0x7f090002

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    .line 52
    .local v10, "sectionsCount":I
    const/16 v11, 0xe

    const v12, 0x7f06051f

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 53
    .local v11, "separatorLength":I
    const/16 v12, 0xf

    const v13, 0x7f060520

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    .line 54
    .local v12, "strokeWidth":F
    const/16 v13, 0xd

    const v14, 0x7f0e018b

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 55
    .local v13, "speed":F
    const/16 v14, 0x9

    invoke-virtual {v4, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 56
    .local v14, "speedProgressiveStart":F
    const/16 v15, 0xa

    invoke-virtual {v4, v15, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    .line 57
    .local v15, "speedProgressiveStop":F
    const/4 v9, 0x6

    const/4 v3, -0x1

    invoke-virtual {v4, v9, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    .line 58
    .local v9, "iInterpolator":I
    const/16 v3, 0xb

    const v5, 0x7f040002

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 59
    .local v3, "reversed":Z
    const/4 v5, 0x7

    const/high16 v6, 0x7f040000

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 60
    .local v5, "mirrorMode":Z
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 61
    .local v0, "colorsId":I
    const/16 v6, 0x8

    const v7, 0x7f040001

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 62
    .local v6, "progressiveStartActivated":Z
    move/from16 v19, v8

    const/4 v7, 0x1

    .end local v8    # "color":I
    .local v19, "color":I
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 63
    .local v8, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x4

    move-object/from16 v20, v8

    const/4 v8, 0x0

    .end local v8    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .local v20, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 64
    .local v7, "generateBackgroundWithColors":Z
    move/from16 v18, v7

    .end local v7    # "generateBackgroundWithColors":Z
    .local v18, "generateBackgroundWithColors":Z
    const/4 v7, 0x5

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 65
    .local v7, "gradients":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    const/4 v8, 0x0

    .line 69
    .local v8, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v21, v4

    const/4 v4, -0x1

    .end local v4    # "a":Landroid/content/res/TypedArray;
    .local v21, "a":Landroid/content/res/TypedArray;
    if-ne v9, v4, :cond_1

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 72
    :cond_1
    if-nez v8, :cond_5

    .line 73
    const/4 v4, 0x1

    if-eq v9, v4, :cond_4

    const/4 v4, 0x2

    if-eq v9, v4, :cond_3

    const/4 v4, 0x3

    if-eq v9, v4, :cond_2

    .line 85
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v8, v4

    goto :goto_0

    .line 78
    :cond_2
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object v8, v4

    .line 79
    goto :goto_0

    .line 75
    :cond_3
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v8, v4

    .line 76
    goto :goto_0

    .line 81
    :cond_4
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v8, v4

    .line 89
    :cond_5
    :goto_0
    const/4 v4, 0x0

    .line 91
    .local v4, "colors":[I
    if-eqz v0, :cond_6

    .line 92
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 95
    :cond_6
    move/from16 v16, v0

    .end local v0    # "colorsId":I
    .local v16, "colorsId":I
    new-instance v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v0, v13}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->speed(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v14}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->progressiveStartSpeed(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v15}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->progressiveStopSpeed(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v8}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->interpolator(Landroid/view/animation/Interpolator;)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v10}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->sectionsCount(I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v11}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->separatorLength(I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v12}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->strokeWidth(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v3}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->reversed(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v5}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mirrorMode(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v6}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->progressiveStart(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v7}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->gradients(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    .line 108
    .local v0, "builder":Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    if-eqz v20, :cond_7

    .line 109
    move-object/from16 v1, v20

    .end local v20    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .local v1, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    goto :goto_1

    .line 108
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v1, v20

    .line 112
    .end local v20    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v18, :cond_8

    .line 113
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->generateBackgroundUsingColors()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    .line 116
    :cond_8
    if-eqz v4, :cond_9

    move-object/from16 v20, v1

    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    array-length v1, v4

    if-lez v1, :cond_a

    .line 117
    invoke-virtual {v0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->colors([I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move/from16 v1, v19

    goto :goto_2

    .line 116
    .end local v20    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v20, v1

    .line 119
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    move/from16 v1, v19

    .end local v19    # "color":I
    .local v1, "color":I
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->color(I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    .line 121
    :goto_2
    move/from16 v19, v1

    .end local v1    # "color":I
    .restart local v19    # "color":I
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->build()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v1

    .line 122
    .local v1, "d":Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    move-object/from16 v17, v0

    move-object/from16 v0, p0

    .end local v0    # "builder":Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .local v17, "builder":Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void
.end method

.method private checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    .locals 3

    .line 214
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 215
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    if-eqz v1, :cond_0

    .line 217
    move-object v1, v0

    check-cast v1, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    return-object v1

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The drawable is not a SmoothProgressDrawable"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 7
    .param p1, "styleResId"    # I

    .line 126
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableColor(I)V

    .line 131
    :cond_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 133
    .local v4, "colorsId":I
    if-eqz v4, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 135
    .local v5, "colors":[I
    if-eqz v5, :cond_1

    array-length v6, v5

    if-lez v6, :cond_1

    .line 136
    invoke-virtual {p0, v5}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableColors([I)V

    .line 139
    .end local v4    # "colorsId":I
    .end local v5    # "colors":[I
    :cond_1
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableSectionsCount(I)V

    .line 142
    :cond_2
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableSeparatorLength(I)V

    .line 145
    :cond_3
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 146
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableStrokeWidth(F)V

    .line 148
    :cond_4
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 149
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableSpeed(F)V

    .line 151
    :cond_5
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 152
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableProgressiveStartSpeed(F)V

    .line 154
    :cond_6
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 155
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableProgressiveStopSpeed(F)V

    .line 157
    :cond_7
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 158
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableReversed(Z)V

    .line 160
    :cond_8
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 161
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableMirrorMode(Z)V

    .line 163
    :cond_9
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 164
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setProgressiveStartActivated(Z)V

    .line 166
    :cond_a
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 167
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setProgressiveStartActivated(Z)V

    .line 169
    :cond_b
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 170
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableUseGradients(Z)V

    .line 172
    :cond_c
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 173
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 174
    nop

    .line 175
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->getColors()[I

    move-result-object v2

    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->getStrokeWidth()F

    move-result v4

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->generateDrawableWithColors([IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 174
    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_d
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 179
    const/4 v2, 0x6

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 181
    .local v2, "iInterpolator":I
    if-eqz v2, :cond_11

    const/4 v4, 0x1

    if-eq v2, v4, :cond_10

    if-eq v2, v1, :cond_f

    if-eq v2, v3, :cond_e

    .line 195
    const/4 v1, 0x0

    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 186
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_e
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 187
    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 183
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_f
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 184
    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 189
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_10
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 190
    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 192
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_11
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 193
    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    nop

    .line 197
    :goto_0
    if-eqz v1, :cond_12

    .line 198
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 201
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "iInterpolator":I
    :cond_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 206
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local p0    # "this":Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;
    :cond_0
    monitor-exit p0

    return-void

    .line 205
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public progressiveStart()V
    .locals 1

    .line 289
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->progressiveStart()V

    .line 290
    return-void
.end method

.method public progressiveStop()V
    .locals 1

    .line 293
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->progressiveStop()V

    .line 294
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 222
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 223
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 224
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    if-eqz v1, :cond_0

    .line 225
    move-object v1, v0

    check-cast v1, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v1, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    :cond_0
    return-void
.end method

.method public setProgressiveStartActivated(Z)V
    .locals 1
    .param p1, "progressiveStartActivated"    # Z

    .line 273
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setProgressiveStartActivated(Z)V

    .line 274
    return-void
.end method

.method public setSmoothProgressDrawableBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 281
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    return-void
.end method

.method public setSmoothProgressDrawableCallbacks(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 277
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setCallbacks(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;)V

    .line 278
    return-void
.end method

.method public setSmoothProgressDrawableColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 237
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setColor(I)V

    .line 238
    return-void
.end method

.method public setSmoothProgressDrawableColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .line 233
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setColors([I)V

    .line 234
    return-void
.end method

.method public setSmoothProgressDrawableInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 229
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 230
    return-void
.end method

.method public setSmoothProgressDrawableMirrorMode(Z)V
    .locals 1
    .param p1, "mirrorMode"    # Z

    .line 269
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setMirrorMode(Z)V

    .line 270
    return-void
.end method

.method public setSmoothProgressDrawableProgressiveStartSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 245
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setProgressiveStartSpeed(F)V

    .line 246
    return-void
.end method

.method public setSmoothProgressDrawableProgressiveStopSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 249
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setProgressiveStopSpeed(F)V

    .line 250
    return-void
.end method

.method public setSmoothProgressDrawableReversed(Z)V
    .locals 1
    .param p1, "reversed"    # Z

    .line 265
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setReversed(Z)V

    .line 266
    return-void
.end method

.method public setSmoothProgressDrawableSectionsCount(I)V
    .locals 1
    .param p1, "sectionsCount"    # I

    .line 253
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setSectionsCount(I)V

    .line 254
    return-void
.end method

.method public setSmoothProgressDrawableSeparatorLength(I)V
    .locals 1
    .param p1, "separatorLength"    # I

    .line 257
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setSeparatorLength(I)V

    .line 258
    return-void
.end method

.method public setSmoothProgressDrawableSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 241
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setSpeed(F)V

    .line 242
    return-void
.end method

.method public setSmoothProgressDrawableStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .line 261
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setStrokeWidth(F)V

    .line 262
    return-void
.end method

.method public setSmoothProgressDrawableUseGradients(Z)V
    .locals 1
    .param p1, "useGradients"    # Z

    .line 285
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setUseGradients(Z)V

    .line 286
    return-void
.end method
