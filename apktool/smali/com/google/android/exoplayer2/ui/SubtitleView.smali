.class public final Lcom/google/android/exoplayer2/ui/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/TextOutput;


# static fields
.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.0533f


# instance fields
.field private applyEmbeddedFontSizes:Z

.field private applyEmbeddedStyles:Z

.field private bottomPaddingFraction:F

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/SubtitlePainter;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

.field private textSize:F

.field private textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSizeType:I

    .line 72
    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSize:F

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    .line 74
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 75
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    .line 76
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    .line 77
    return-void
.end method

.method private getUserCaptionFontScaleV19()F
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 326
    nop

    .line 327
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 328
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    return v1
.end method

.method private getUserCaptionStyleV19()Lcom/google/android/exoplayer2/text/CaptionStyleCompat;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 333
    nop

    .line 334
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 335
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    move-result-object v1

    return-object v1
.end method

.method private isCaptionManagerEnabled()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 319
    nop

    .line 320
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 321
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    return v1
.end method

.method private resolveCueTextSize(Lcom/google/android/exoplayer2/text/Cue;II)F
    .locals 3
    .param p1, "cue"    # Lcom/google/android/exoplayer2/text/Cue;
    .param p2, "rawViewHeight"    # I
    .param p3, "viewHeightMinusPadding"    # I

    .line 291
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    const/4 v2, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    .line 295
    invoke-direct {p0, v0, v2, p2, p3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->resolveTextSize(IFII)F

    move-result v0

    .line 296
    .local v0, "defaultCueTextSizePx":F
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 292
    .end local v0    # "defaultCueTextSizePx":F
    :cond_1
    :goto_0
    return v1
.end method

.method private resolveTextSize(IFII)F
    .locals 1
    .param p1, "textSizeType"    # I
    .param p2, "textSize"    # F
    .param p3, "rawViewHeight"    # I
    .param p4, "viewHeightMinusPadding"    # I

    .line 304
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 313
    const/4 v0, 0x1

    return v0

    .line 306
    :cond_0
    return p2

    .line 310
    :cond_1
    int-to-float v0, p3

    mul-float v0, v0, p2

    return v0

    .line 308
    :cond_2
    int-to-float v0, p4

    mul-float v0, v0, p2

    return v0
.end method

.method private setTextSize(IF)V
    .locals 1
    .param p1, "textSizeType"    # I
    .param p2, "textSize"    # F

    .line 163
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSizeType:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSizeType:I

    .line 167
    iput p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSize:F

    .line 169
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    .line 170
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 250
    .local v1, "cueCount":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getHeight()I

    move-result v2

    .line 253
    .local v2, "rawViewHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingLeft()I

    move-result v15

    .line 254
    .local v15, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingTop()I

    move-result v14

    .line 255
    .local v14, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingRight()I

    move-result v4

    sub-int v13, v3, v4

    .line 256
    .local v13, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingBottom()I

    move-result v3

    sub-int v12, v2, v3

    .line 257
    .local v12, "bottom":I
    if-le v12, v14, :cond_4

    if-gt v13, v15, :cond_1

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    goto/16 :goto_2

    .line 261
    :cond_1
    sub-int v11, v12, v14

    .line 263
    .local v11, "viewHeightMinusPadding":I
    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSizeType:I

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSize:F

    .line 264
    invoke-direct {v0, v3, v4, v2, v11}, Lcom/google/android/exoplayer2/ui/SubtitleView;->resolveTextSize(IFII)F

    move-result v16

    .line 265
    .local v16, "defaultViewTextSizePx":F
    const/4 v3, 0x0

    cmpg-float v3, v16, v3

    if-gtz v3, :cond_2

    .line 267
    return-void

    .line 270
    :cond_2
    const/4 v3, 0x0

    move v10, v3

    .local v10, "i":I
    :goto_1
    if-ge v10, v1, :cond_3

    .line 271
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/android/exoplayer2/text/Cue;

    .line 272
    .local v9, "cue":Lcom/google/android/exoplayer2/text/Cue;
    invoke-direct {v0, v9, v2, v11}, Lcom/google/android/exoplayer2/ui/SubtitleView;->resolveCueTextSize(Lcom/google/android/exoplayer2/text/Cue;II)F

    move-result v17

    .line 273
    .local v17, "cueTextSizePx":F
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/google/android/exoplayer2/ui/SubtitlePainter;

    .line 274
    .local v18, "painter":Lcom/google/android/exoplayer2/ui/SubtitlePainter;
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    move-object/from16 v3, v18

    move-object v4, v9

    move/from16 v19, v8

    move/from16 v8, v16

    move-object/from16 v20, v9

    .end local v9    # "cue":Lcom/google/android/exoplayer2/text/Cue;
    .local v20, "cue":Lcom/google/android/exoplayer2/text/Cue;
    move/from16 v9, v17

    move/from16 v21, v10

    .end local v10    # "i":I
    .local v21, "i":I
    move/from16 v10, v19

    move/from16 v19, v11

    .end local v11    # "viewHeightMinusPadding":I
    .local v19, "viewHeightMinusPadding":I
    move-object/from16 v11, p1

    move/from16 v22, v12

    .end local v12    # "bottom":I
    .local v22, "bottom":I
    move v12, v15

    move/from16 v23, v13

    .end local v13    # "right":I
    .local v23, "right":I
    move v13, v14

    move/from16 v24, v14

    .end local v14    # "top":I
    .local v24, "top":I
    move/from16 v14, v23

    move/from16 v25, v15

    .end local v15    # "left":I
    .local v25, "left":I
    move/from16 v15, v22

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->draw(Lcom/google/android/exoplayer2/text/Cue;ZZLcom/google/android/exoplayer2/text/CaptionStyleCompat;FFFLandroid/graphics/Canvas;IIII)V

    .line 270
    .end local v17    # "cueTextSizePx":F
    .end local v18    # "painter":Lcom/google/android/exoplayer2/ui/SubtitlePainter;
    .end local v20    # "cue":Lcom/google/android/exoplayer2/text/Cue;
    add-int/lit8 v10, v21, 0x1

    move/from16 v11, v19

    move/from16 v12, v22

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v15, v25

    .end local v21    # "i":I
    .restart local v10    # "i":I
    goto :goto_1

    .end local v19    # "viewHeightMinusPadding":I
    .end local v22    # "bottom":I
    .end local v23    # "right":I
    .end local v24    # "top":I
    .end local v25    # "left":I
    .restart local v11    # "viewHeightMinusPadding":I
    .restart local v12    # "bottom":I
    .restart local v13    # "right":I
    .restart local v14    # "top":I
    .restart local v15    # "left":I
    :cond_3
    move/from16 v21, v10

    move/from16 v19, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    .line 288
    .end local v10    # "i":I
    .end local v11    # "viewHeightMinusPadding":I
    .end local v12    # "bottom":I
    .end local v13    # "right":I
    .end local v14    # "top":I
    .end local v15    # "left":I
    .restart local v19    # "viewHeightMinusPadding":I
    .restart local v22    # "bottom":I
    .restart local v23    # "right":I
    .restart local v24    # "top":I
    .restart local v25    # "left":I
    return-void

    .line 257
    .end local v16    # "defaultViewTextSizePx":F
    .end local v19    # "viewHeightMinusPadding":I
    .end local v22    # "bottom":I
    .end local v23    # "right":I
    .end local v24    # "top":I
    .end local v25    # "left":I
    .restart local v12    # "bottom":I
    .restart local v13    # "right":I
    .restart local v14    # "top":I
    .restart local v15    # "left":I
    :cond_4
    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    .line 259
    .end local v12    # "bottom":I
    .end local v13    # "right":I
    .end local v14    # "top":I
    .end local v15    # "left":I
    .restart local v22    # "bottom":I
    .restart local v23    # "right":I
    .restart local v24    # "top":I
    .restart local v25    # "left":I
    :goto_2
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 82
    return-void
.end method

.method public setApplyEmbeddedFontSizes(Z)V
    .locals 1
    .param p1, "applyEmbeddedFontSizes"    # Z

    .line 196
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-ne v0, p1, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 201
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    .line 202
    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 1
    .param p1, "applyEmbeddedStyles"    # Z

    .line 179
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-ne v0, p1, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    .line 184
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    .line 187
    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .locals 1
    .param p1, "bottomPaddingFraction"    # F

    .line 239
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    .line 244
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    .line 245
    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-ne v0, p1, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    .line 95
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 96
    .local v0, "cueCount":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    new-instance v2, Lcom/google/android/exoplayer2/ui/SubtitlePainter;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    .line 101
    return-void
.end method

.method public setFixedTextSize(IF)V
    .locals 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 112
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 117
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 119
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :goto_0
    const/4 v2, 0x2

    .line 121
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {p1, p2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 119
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    .line 122
    return-void
.end method

.method public setFractionalTextSize(F)V
    .locals 1
    .param p1, "fractionOfHeight"    # F

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(FZ)V

    .line 143
    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .locals 0
    .param p1, "fractionOfHeight"    # F
    .param p2, "ignorePadding"    # Z

    .line 155
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    .line 160
    return-void
.end method

.method public setStyle(Lcom/google/android/exoplayer2/text/CaptionStyleCompat;)V
    .locals 1
    .param p1, "style"    # Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    if-ne v0, p1, :cond_0

    .line 222
    return-void

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    .line 226
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    .line 227
    return-void
.end method

.method public setUserDefaultStyle()V
    .locals 2

    .line 209
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->isCaptionManagerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionStyleV19()Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    .line 209
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/text/CaptionStyleCompat;)V

    .line 213
    return-void
.end method

.method public setUserDefaultTextSize()V
    .locals 2

    .line 129
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionFontScaleV19()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 130
    .local v0, "fontScale":F
    :goto_0
    const v1, 0x3d5a511a    # 0.0533f

    mul-float v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    .line 131
    return-void
.end method
