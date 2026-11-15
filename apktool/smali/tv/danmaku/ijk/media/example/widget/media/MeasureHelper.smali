.class public final Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# instance fields
.field private mCurrentAspectRatio:I

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method

.method public static getAspectRatioText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aspectRatio"    # I

    .line 49
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 69
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    const v0, 0x7f0e0065

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    const v0, 0x7f0e0064

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 54
    .end local v0    # "text":Ljava/lang/String;
    :cond_4
    const v0, 0x7f0e0066

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v0    # "text":Ljava/lang/String;
    :cond_5
    const v0, 0x7f0e0067

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .restart local v0    # "text":Ljava/lang/String;
    nop

    .line 72
    :goto_0
    return-object v0
.end method


# virtual methods
.method public doMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 104
    move-object/from16 v0, p0

    iget v1, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    move/from16 v5, p2

    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    move/from16 v1, p1

    .line 106
    .local v1, "tempSpec":I
    move/from16 v4, p2

    .line 107
    .end local p1    # "widthMeasureSpec":I
    .local v4, "widthMeasureSpec":I
    move v5, v1

    .line 110
    .end local v1    # "tempSpec":I
    .end local p2    # "heightMeasureSpec":I
    .local v5, "heightMeasureSpec":I
    :goto_1
    iget v1, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    invoke-static {v1, v4}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    .line 111
    .local v1, "width":I
    iget v6, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    invoke-static {v6, v5}, Landroid/view/View;->getDefaultSize(II)I

    move-result v6

    .line 112
    .local v6, "height":I
    iget v7, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 113
    move v1, v4

    .line 114
    move v6, v5

    goto/16 :goto_8

    .line 115
    :cond_2
    iget v7, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    if-lez v7, :cond_16

    iget v7, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    if-lez v7, :cond_16

    .line 116
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 117
    .local v7, "widthSpecMode":I
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 118
    .local v8, "widthSpecSize":I
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 119
    .local v9, "heightSpecMode":I
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 121
    .local v10, "heightSpecSize":I
    const/high16 v11, -0x80000000

    if-ne v7, v11, :cond_10

    if-ne v9, v11, :cond_10

    .line 122
    int-to-float v11, v8

    int-to-float v12, v10

    div-float/2addr v11, v12

    .line 124
    .local v11, "specAspectRatio":F
    iget v12, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x5

    const/4 v15, 0x4

    if-eq v12, v15, :cond_6

    if-eq v12, v14, :cond_3

    .line 139
    iget v2, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    int-to-float v2, v2

    iget v3, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 140
    .local v2, "displayAspectRatio":F
    iget v3, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarNum:I

    if-lez v3, :cond_9

    iget v12, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarDen:I

    if-lez v12, :cond_9

    .line 141
    int-to-float v3, v3

    mul-float v3, v3, v2

    int-to-float v12, v12

    div-float v2, v3, v12

    goto :goto_4

    .line 131
    .end local v2    # "displayAspectRatio":F
    :cond_3
    const v12, 0x3faaaaab

    .line 132
    .local v12, "displayAspectRatio":F
    iget v14, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    if-eq v14, v3, :cond_5

    if-ne v14, v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v12

    goto :goto_4

    .line 133
    :cond_5
    :goto_2
    div-float v2, v13, v12

    .end local v12    # "displayAspectRatio":F
    .restart local v2    # "displayAspectRatio":F
    goto :goto_4

    .line 126
    .end local v2    # "displayAspectRatio":F
    :cond_6
    const v12, 0x3fe38e39

    .line 127
    .restart local v12    # "displayAspectRatio":F
    iget v14, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    if-eq v14, v3, :cond_8

    if-ne v14, v2, :cond_7

    goto :goto_3

    :cond_7
    move v2, v12

    goto :goto_4

    .line 128
    :cond_8
    :goto_3
    div-float v2, v13, v12

    .line 144
    .end local v12    # "displayAspectRatio":F
    .restart local v2    # "displayAspectRatio":F
    :cond_9
    :goto_4
    const/4 v3, 0x1

    cmpl-float v12, v2, v11

    if-lez v12, :cond_a

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    .line 146
    .local v12, "shouldBeWider":Z
    :goto_5
    iget v13, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    if-eqz v13, :cond_e

    if-eq v13, v3, :cond_c

    if-eq v13, v15, :cond_e

    const/4 v3, 0x5

    if-eq v13, v3, :cond_e

    .line 173
    if-eqz v12, :cond_b

    .line 175
    iget v3, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 176
    int-to-float v3, v1

    div-float/2addr v3, v2

    float-to-int v3, v3

    move v6, v3

    .end local v6    # "height":I
    .local v3, "height":I
    goto :goto_6

    .line 179
    .end local v3    # "height":I
    .restart local v6    # "height":I
    :cond_b
    iget v3, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 180
    .end local v6    # "height":I
    .restart local v3    # "height":I
    int-to-float v6, v3

    mul-float v6, v6, v2

    float-to-int v1, v6

    move v6, v3

    goto :goto_6

    .line 161
    .end local v3    # "height":I
    .restart local v6    # "height":I
    :cond_c
    if-eqz v12, :cond_d

    .line 163
    move v3, v10

    .line 164
    .end local v6    # "height":I
    .restart local v3    # "height":I
    int-to-float v6, v3

    mul-float v6, v6, v2

    float-to-int v1, v6

    move v6, v3

    goto :goto_6

    .line 167
    .end local v3    # "height":I
    .restart local v6    # "height":I
    :cond_d
    move v1, v8

    .line 168
    int-to-float v3, v1

    div-float/2addr v3, v2

    float-to-int v3, v3

    .line 170
    .end local v6    # "height":I
    .restart local v3    # "height":I
    move v6, v3

    goto :goto_6

    .line 150
    .end local v3    # "height":I
    .restart local v6    # "height":I
    :cond_e
    if-eqz v12, :cond_f

    .line 152
    move v1, v8

    .line 153
    int-to-float v3, v1

    div-float/2addr v3, v2

    float-to-int v3, v3

    move v6, v3

    .end local v6    # "height":I
    .restart local v3    # "height":I
    goto :goto_6

    .line 156
    .end local v3    # "height":I
    .restart local v6    # "height":I
    :cond_f
    move v3, v10

    .line 157
    .end local v6    # "height":I
    .restart local v3    # "height":I
    int-to-float v6, v3

    mul-float v6, v6, v2

    float-to-int v1, v6

    .line 159
    move v6, v3

    .line 184
    .end local v2    # "displayAspectRatio":F
    .end local v3    # "height":I
    .end local v11    # "specAspectRatio":F
    .end local v12    # "shouldBeWider":Z
    .restart local v6    # "height":I
    :goto_6
    goto/16 :goto_8

    :cond_10
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v7, v2, :cond_12

    if-ne v9, v2, :cond_12

    .line 186
    move v1, v8

    .line 187
    move v6, v10

    .line 190
    iget v2, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int v3, v2, v6

    iget v11, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int v12, v1, v11

    if-ge v3, v12, :cond_11

    .line 192
    mul-int v2, v2, v6

    div-int v1, v2, v11

    goto :goto_8

    .line 193
    :cond_11
    mul-int v3, v2, v6

    mul-int v12, v1, v11

    if-le v3, v12, :cond_16

    .line 195
    mul-int v11, v11, v1

    div-int v6, v11, v2

    goto :goto_8

    .line 197
    :cond_12
    if-ne v7, v2, :cond_13

    .line 199
    move v1, v8

    .line 200
    iget v2, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int v2, v2, v1

    iget v3, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    div-int v6, v2, v3

    .line 201
    if-ne v9, v11, :cond_16

    if-le v6, v10, :cond_16

    .line 203
    move v6, v10

    goto :goto_8

    .line 205
    :cond_13
    if-ne v9, v2, :cond_14

    .line 207
    move v6, v10

    .line 208
    iget v2, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int v2, v2, v6

    iget v3, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    div-int v1, v2, v3

    .line 209
    if-ne v7, v11, :cond_16

    if-le v1, v8, :cond_16

    .line 211
    move v1, v8

    goto :goto_8

    .line 215
    :cond_14
    iget v1, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    .line 216
    iget v2, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    .line 217
    .end local v6    # "height":I
    .local v2, "height":I
    if-ne v9, v11, :cond_15

    if-le v2, v10, :cond_15

    .line 219
    move v2, v10

    .line 220
    iget v3, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int v3, v3, v2

    iget v6, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    div-int/2addr v3, v6

    move v6, v2

    move v1, v3

    .end local v1    # "width":I
    .local v3, "width":I
    goto :goto_7

    .line 222
    .end local v3    # "width":I
    .restart local v1    # "width":I
    :cond_15
    move v6, v2

    .end local v2    # "height":I
    .restart local v6    # "height":I
    :goto_7
    if-ne v7, v11, :cond_16

    if-le v1, v8, :cond_16

    .line 224
    move v1, v8

    .line 225
    iget v2, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int v2, v2, v1

    iget v3, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    div-int v6, v2, v3

    .line 232
    .end local v7    # "widthSpecMode":I
    .end local v8    # "widthSpecSize":I
    .end local v9    # "heightSpecMode":I
    .end local v10    # "heightSpecSize":I
    :cond_16
    :goto_8
    iput v1, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mMeasuredWidth:I

    .line 233
    iput v6, v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mMeasuredHeight:I

    .line 234
    return-void
.end method

.method public getMeasuredHeight()I
    .locals 1

    .line 241
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 237
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mMeasuredWidth:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 76
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public setAspectRatio(I)V
    .locals 0
    .param p1, "aspectRatio"    # I

    .line 245
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    .line 246
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 0
    .param p1, "videoRotationDegree"    # I

    .line 92
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    .line 93
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 0
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .line 87
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarNum:I

    .line 88
    iput p2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarDen:I

    .line 89
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .line 82
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    .line 83
    iput p2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    .line 84
    return-void
.end method
