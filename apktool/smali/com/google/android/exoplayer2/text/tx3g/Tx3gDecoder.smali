.class public final Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "Tx3gDecoder.java"


# static fields
.field private static final BOM_UTF16_BE:C = '\ufeff'

.field private static final BOM_UTF16_LE:C = '\ufffe'

.field private static final DEFAULT_COLOR:I = -0x1

.field private static final DEFAULT_FONT_FACE:I = 0x0

.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final DEFAULT_VERTICAL_PLACEMENT:F = 0.85f

.field private static final FONT_FACE_BOLD:I = 0x1

.field private static final FONT_FACE_ITALIC:I = 0x2

.field private static final FONT_FACE_UNDERLINE:I = 0x4

.field private static final SIZE_ATOM_HEADER:I = 0x8

.field private static final SIZE_BOM_UTF16:I = 0x2

.field private static final SIZE_SHORT:I = 0x2

.field private static final SIZE_STYLE_RECORD:I = 0xc

.field private static final SPAN_PRIORITY_HIGH:I = 0x0

.field private static final SPAN_PRIORITY_LOW:I = 0xff0000

.field private static final TX3G_SERIF:Ljava/lang/String; = "Serif"

.field private static final TYPE_STYL:I

.field private static final TYPE_TBOX:I


# instance fields
.field private calculatedVideoTrackHeight:I

.field private customVerticalPlacement:Z

.field private defaultColorRgba:I

.field private defaultFontFace:I

.field private defaultFontFamily:Ljava/lang/String;

.field private defaultVerticalPlacement:F

.field private final parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "styl"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->TYPE_STYL:I

    .line 47
    const-string v0, "tbox"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->TYPE_TBOX:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 81
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v0, "Tx3gDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->decodeInitializationData(Ljava/util/List;)V

    .line 84
    return-void
.end method

.method private applyStyleRecord(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V
    .locals 10
    .param p1, "parsableByteArray"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "cueText"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 177
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 178
    .local v0, "start":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 179
    .local v8, "end":I
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 180
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 181
    .local v9, "fontFace":I
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 183
    .local v1, "colorRgba":I
    iget v4, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 v7, 0x0

    move-object v2, p2

    move v3, v9

    move v5, v0

    move v6, v8

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 184
    iget v4, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    move v3, v1

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 185
    return-void
.end method

.method private static assertTrue(Z)V
    .locals 2
    .param p0, "checkValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 231
    if-eqz p0, :cond_0

    .line 234
    return-void

    .line 232
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "Unexpected subtitle format."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static attachColor(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 3
    .param p0, "cueText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "colorRgba"    # I
    .param p2, "defaultColorRgba"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "spanPriority"    # I

    .line 214
    if-eq p1, p2, :cond_0

    .line 215
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    .line 216
    .local v0, "colorArgb":I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 v2, p5, 0x21

    invoke-virtual {p0, v1, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 219
    .end local v0    # "colorArgb":I
    :cond_0
    return-void
.end method

.method private static attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 7
    .param p0, "cueText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "fontFace"    # I
    .param p2, "defaultFontFace"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "spanPriority"    # I

    .line 189
    if-eq p1, p2, :cond_7

    .line 190
    or-int/lit8 v0, p5, 0x21

    .line 191
    .local v0, "flags":I
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 192
    .local v1, "isBold":Z
    :goto_0
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 193
    .local v4, "isItalic":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 194
    if-eqz v4, :cond_2

    .line 195
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 197
    :cond_2
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 199
    :cond_3
    if-eqz v4, :cond_4

    .line 200
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 202
    :cond_4
    :goto_2
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 203
    .local v3, "isUnderlined":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 204
    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 206
    :cond_6
    if-nez v3, :cond_7

    if-nez v1, :cond_7

    if-nez v4, :cond_7

    .line 207
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 210
    .end local v0    # "flags":I
    .end local v1    # "isBold":Z
    .end local v3    # "isUnderlined":Z
    .end local v4    # "isItalic":Z
    :cond_7
    return-void
.end method

.method private static attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2
    .param p0, "cueText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "defaultFontFamily"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "spanPriority"    # I

    .line 224
    if-eq p1, p2, :cond_0

    .line 225
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    or-int/lit8 v1, p5, 0x21

    invoke-virtual {p0, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 228
    :cond_0
    return-void
.end method

.method private decodeInitializationData(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 87
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const v0, 0x3f59999a    # 0.85f

    const-string v1, "sans-serif"

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 88
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v5, 0x35

    if-ne v3, v5, :cond_4

    .line 89
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 90
    .local v3, "initializationBytes":[B
    const/16 v5, 0x18

    aget-byte v6, v3, v5

    iput v6, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    .line 91
    const/16 v6, 0x1a

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v5, v6, 0x18

    const/16 v6, 0x1b

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/16 v6, 0x1c

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/16 v6, 0x1d

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    .line 95
    array-length v5, v3

    const/16 v6, 0x2b

    sub-int/2addr v5, v6

    .line 96
    invoke-static {v3, v6, v5}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "fontFamily":Ljava/lang/String;
    const-string v6, "Serif"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v1, "serif"

    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    .line 99
    const/16 v1, 0x19

    aget-byte v1, v3, v1

    mul-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    .line 100
    aget-byte v1, v3, v2

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    .line 101
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    if-eqz v1, :cond_3

    .line 102
    const/16 v0, 0xa

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0xb

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 104
    .local v0, "requestedVerticalPlacement":I
    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 105
    iget v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    const/4 v2, 0x0

    const v4, 0x3f733333    # 0.95f

    invoke-static {v1, v2, v4}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 106
    .end local v0    # "requestedVerticalPlacement":I
    goto :goto_0

    .line 107
    :cond_3
    iput v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 109
    .end local v3    # "initializationBytes":[B
    .end local v5    # "fontFamily":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 110
    :cond_4
    iput v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    .line 111
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    .line 112
    iput-object v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    .line 113
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    .line 114
    iput v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 116
    :goto_1
    return-void
.end method

.method private static readSubtitleText(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;
    .locals 3
    .param p0, "parsableByteArray"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 162
    .local v0, "textLength":I
    if-nez v0, :cond_1

    .line 163
    const-string v1, ""

    return-object v1

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lt v2, v1, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->peekChar()C

    move-result v1

    .line 167
    .local v1, "firstChar":C
    const v2, 0xfeff

    if-eq v1, v2, :cond_2

    const v2, 0xfffe

    if-ne v1, v2, :cond_3

    .line 168
    :cond_2
    const-string v2, "UTF-16"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 171
    .end local v1    # "firstChar":C
    :cond_3
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 17
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 122
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->readSubtitleText(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "cueTextString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    sget-object v4, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;->EMPTY:Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;

    return-object v4

    .line 127
    :cond_0
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 128
    .local v4, "cueText":Landroid/text/SpannableStringBuilder;
    iget v6, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/high16 v10, 0xff0000

    move-object v5, v4

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 130
    iget v6, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    const/4 v7, -0x1

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 132
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const-string v7, "sans-serif"

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V

    .line 134
    iget v5, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    move v14, v5

    .line 136
    .local v14, "verticalPlacement":F
    :goto_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_6

    .line 137
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 138
    .local v5, "position":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 139
    .local v6, "atomSize":I
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 140
    .local v7, "atomType":I
    sget v8, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->TYPE_STYL:I

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v7, v8, :cond_3

    .line 141
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lt v8, v10, :cond_1

    const/4 v9, 0x1

    :cond_1
    invoke-static {v9}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 142
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 143
    .local v8, "styleRecordCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_2

    .line 144
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v10, v4}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->applyStyleRecord(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V

    .line 143
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v8    # "styleRecordCount":I
    .end local v9    # "i":I
    :cond_2
    goto :goto_2

    .line 146
    :cond_3
    sget v8, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->TYPE_TBOX:I

    if-ne v7, v8, :cond_5

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    if-eqz v8, :cond_5

    .line 147
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lt v8, v10, :cond_4

    const/4 v9, 0x1

    :cond_4
    invoke-static {v9}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 148
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 149
    .local v8, "requestedVerticalPlacement":I
    int-to-float v9, v8

    iget v10, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 150
    .end local v14    # "verticalPlacement":F
    .local v9, "verticalPlacement":F
    const/4 v10, 0x0

    const v11, 0x3f733333    # 0.95f

    invoke-static {v9, v10, v11}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v14

    .end local v9    # "verticalPlacement":F
    .restart local v14    # "verticalPlacement":F
    goto :goto_3

    .line 146
    .end local v8    # "requestedVerticalPlacement":I
    :cond_5
    :goto_2
    nop

    .line 152
    :goto_3
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int v9, v5, v6

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 153
    .end local v5    # "position":I
    .end local v6    # "atomSize":I
    .end local v7    # "atomType":I
    goto :goto_0

    .line 154
    :cond_6
    new-instance v15, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;

    new-instance v13, Lcom/google/android/exoplayer2/text/Cue;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, -0x80000000

    const/16 v16, 0x1

    move-object v5, v13

    move-object v6, v4

    move v8, v14

    move-object v0, v13

    move/from16 v13, v16

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    invoke-direct {v15, v0}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;-><init>(Lcom/google/android/exoplayer2/text/Cue;)V

    return-object v15
.end method
