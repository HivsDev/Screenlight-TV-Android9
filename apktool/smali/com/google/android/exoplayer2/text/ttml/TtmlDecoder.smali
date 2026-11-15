.class public final Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;,
        Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    }
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CELL_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_CELL_RESOLUTION:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field private static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlDecoder"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    nop

    .line 73
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 75
    nop

    .line 76
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 77
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 78
    nop

    .line 79
    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    .line 84
    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    const/4 v1, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 86
    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 92
    const-string v0, "TtmlDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    nop

    .line 99
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "style"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 450
    if-nez p1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 516
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    const-string v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 522
    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    const-string v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    const-string v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    const-string v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    const-string v0, "smpte:image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    const-string v0, "smpte:data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    const-string v0, "smpte:information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 516
    :goto_1
    return v0
.end method

.method private parseCellResolution(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .locals 9
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "defaultValue"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 206
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "cellResolution":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 208
    return-object p2

    .line 211
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 212
    .local v1, "cellResolutionMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "Ignoring malformed cell resolution: "

    const-string v4, "TtmlDecoder"

    if-nez v2, :cond_1

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-object p2

    .line 217
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 218
    .local v2, "columns":I
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 219
    .local v5, "rows":I
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    .line 222
    new-instance v6, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    invoke-direct {v6, v2, v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    return-object v6

    .line 220
    :cond_2
    new-instance v6, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid cell resolution "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cellResolution":Ljava/lang/String;
    .end local v1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .end local p1    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "defaultValue":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v2    # "columns":I
    .end local v5    # "rows":I
    .restart local v0    # "cellResolution":Ljava/lang/String;
    .restart local v1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .restart local p1    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "defaultValue":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object p2
.end method

.method private static parseFontSize(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)V
    .locals 10
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "out"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 535
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "expressions":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 538
    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "matcher":Ljava/util/regex/Matcher;
    goto :goto_0

    .line 539
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_9

    .line 540
    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 541
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    const-string v4, "TtmlDecoder"

    const-string v5, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    const-string v5, "\'."

    if-eqz v4, :cond_8

    .line 549
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 550
    .local v6, "unit":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x25

    if-eq v8, v9, :cond_4

    const/16 v9, 0xca8

    if-eq v8, v9, :cond_3

    const/16 v9, 0xe08

    if-eq v8, v9, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v8, "px"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    const-string v8, "em"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const-string v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x2

    :goto_1
    if-eqz v7, :cond_7

    if-eq v7, v3, :cond_6

    if-ne v7, v2, :cond_5

    .line 558
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 559
    goto :goto_2

    .line 561
    :cond_5
    new-instance v2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid unit for fontSize: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 555
    :cond_6
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 556
    goto :goto_2

    .line 552
    :cond_7
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 553
    nop

    .line 563
    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSize(F)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 564
    .end local v6    # "unit":Ljava/lang/String;
    nop

    .line 567
    return-void

    .line 565
    :cond_8
    new-instance v2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid expression for fontSize: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 544
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_9
    new-instance v1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number of entries for fontSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .locals 10
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 172
    const/16 v0, 0x1e

    .line 173
    .local v0, "frameRate":I
    const-string v1, "http://www.w3.org/ns/ttml#parameter"

    const-string v2, "frameRate"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "frameRateString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 178
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 179
    .local v3, "frameRateMultiplier":F
    const-string v4, "frameRateMultiplier"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "frameRateMultiplierString":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 181
    const-string v5, " "

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "parts":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 185
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    .line 186
    .local v6, "numerator":F
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    .line 187
    .local v7, "denominator":F
    div-float v3, v6, v7

    goto :goto_0

    .line 183
    .end local v6    # "numerator":F
    .end local v7    # "denominator":F
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v6, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {v1, v6}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    .end local v5    # "parts":[Ljava/lang/String;
    :cond_2
    :goto_0
    sget-object v5, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v5, v5, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    .line 191
    .local v5, "subFrameRate":I
    const-string v6, "subFrameRate"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "subFrameRateString":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 193
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 196
    :cond_3
    sget-object v7, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v7, v7, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    .line 197
    .local v7, "tickRate":I
    const-string v8, "tickRate"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "tickRateString":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 201
    :cond_4
    new-instance v8, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    int-to-float v9, v0

    mul-float v9, v9, v3

    invoke-direct {v8, v9, v5, v7}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    return-object v8
.end method

.method private parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Ljava/util/Map;
    .locals 7
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "cellResolution"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 236
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .local p3, "globalRegions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 237
    const-string v0, "style"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "parentStyleId":Ljava/lang/String;
    new-instance v1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v1

    .line 240
    .local v1, "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 242
    .local v5, "id":Ljava/lang/String;
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 241
    .end local v5    # "id":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 248
    .end local v0    # "parentStyleId":Ljava/lang/String;
    .end local v1    # "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :cond_1
    const-string v0, "region"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-direct {p0, p1, p4}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    move-result-object v0

    .line 250
    .local v0, "ttmlRegion":Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    if-eqz v0, :cond_3

    .line 251
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 248
    .end local v0    # "ttmlRegion":Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    :cond_2
    :goto_2
    nop

    .line 254
    :cond_3
    :goto_3
    const-string v0, "head"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    return-object p2

    .line 254
    :cond_4
    goto :goto_0
.end method

.method private parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .locals 23
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .param p4, "frameAndTickRate"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;",
            ")",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 456
    .local p3, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 457
    .local v4, "duration":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 458
    .local v6, "startTime":J
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 459
    .local v8, "endTime":J
    const-string v10, ""

    .line 460
    .local v10, "regionId":Ljava/lang/String;
    const/4 v11, 0x0

    .line 461
    .local v11, "styleIds":[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    .line 462
    .local v12, "attributeCount":I
    const/4 v13, 0x0

    invoke-direct {v0, v1, v13}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v13

    .line 463
    .local v13, "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v12, :cond_7

    .line 464
    invoke-interface {v1, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    .line 465
    .local v15, "attr":Ljava/lang/String;
    move/from16 v22, v12

    .end local v12    # "attributeCount":I
    .local v22, "attributeCount":I
    invoke-interface {v1, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    .line 466
    .local v12, "value":Ljava/lang/String;
    const/16 v16, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v1, "style"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_1
    const-string v1, "begin"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v16, 0x0

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_2
    const-string v1, "end"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_3
    const-string v1, "dur"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_4
    const-string v1, "region"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_2

    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_5

    move-object/from16 v16, v15

    const/4 v15, 0x1

    .end local v15    # "attr":Ljava/lang/String;
    .local v16, "attr":Ljava/lang/String;
    if-eq v1, v15, :cond_4

    const/4 v15, 0x2

    if-eq v1, v15, :cond_3

    const/4 v15, 0x3

    if-eq v1, v15, :cond_2

    const/4 v15, 0x4

    if-eq v1, v15, :cond_1

    move-object/from16 v1, p3

    goto :goto_3

    .line 484
    :cond_1
    move-object/from16 v1, p3

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 487
    move-object v10, v12

    goto :goto_3

    .line 478
    :cond_2
    move-object/from16 v1, p3

    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 479
    .local v15, "ids":[Ljava/lang/String;
    array-length v0, v15

    if-lez v0, :cond_6

    .line 480
    move-object v0, v15

    move-object v11, v0

    .end local v11    # "styleIds":[Ljava/lang/String;
    .local v0, "styleIds":[Ljava/lang/String;
    goto :goto_3

    .line 474
    .end local v0    # "styleIds":[Ljava/lang/String;
    .end local v15    # "ids":[Ljava/lang/String;
    .restart local v11    # "styleIds":[Ljava/lang/String;
    :cond_3
    move-object/from16 v1, p3

    invoke-static {v12, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v4

    .line 475
    goto :goto_3

    .line 471
    :cond_4
    move-object/from16 v1, p3

    invoke-static {v12, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v8

    .line 472
    goto :goto_3

    .line 468
    .end local v16    # "attr":Ljava/lang/String;
    .local v15, "attr":Ljava/lang/String;
    :cond_5
    move-object/from16 v1, p3

    move-object/from16 v16, v15

    .end local v15    # "attr":Ljava/lang/String;
    .restart local v16    # "attr":Ljava/lang/String;
    invoke-static {v12, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v6

    .line 469
    nop

    .line 463
    .end local v12    # "value":Ljava/lang/String;
    .end local v16    # "attr":Ljava/lang/String;
    :cond_6
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v12, v22

    goto/16 :goto_0

    .end local v22    # "attributeCount":I
    .local v12, "attributeCount":I
    :cond_7
    move-object/from16 v1, p3

    move/from16 v22, v12

    .line 495
    .end local v12    # "attributeCount":I
    .end local v14    # "i":I
    .restart local v22    # "attributeCount":I
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_9

    iget-wide v0, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v12, v0, v14

    if-eqz v12, :cond_9

    .line 496
    cmp-long v0, v6, v14

    if-eqz v0, :cond_8

    .line 497
    iget-wide v0, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v6, v0

    .line 499
    :cond_8
    cmp-long v0, v8, v14

    if-eqz v0, :cond_9

    .line 500
    iget-wide v0, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v8, v0

    .line 503
    :cond_9
    cmp-long v0, v8, v14

    if-nez v0, :cond_b

    .line 504
    cmp-long v0, v4, v14

    if-eqz v0, :cond_a

    .line 506
    add-long v0, v6, v4

    .end local v8    # "endTime":J
    .local v0, "endTime":J
    goto :goto_4

    .line 507
    .end local v0    # "endTime":J
    .restart local v8    # "endTime":J
    :cond_a
    if-eqz v2, :cond_b

    iget-wide v0, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v12, v0, v14

    if-eqz v12, :cond_b

    .line 509
    iget-wide v0, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    .end local v8    # "endTime":J
    .restart local v0    # "endTime":J
    goto :goto_4

    .line 512
    .end local v0    # "endTime":J
    .restart local v8    # "endTime":J
    :cond_b
    move-wide v0, v8

    .end local v8    # "endTime":J
    .restart local v0    # "endTime":J
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    move-wide v15, v6

    move-wide/from16 v17, v0

    move-object/from16 v19, v13

    move-object/from16 v20, v11

    move-object/from16 v21, v10

    invoke-static/range {v14 .. v21}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v8

    return-object v8

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_4
        0x18601 -> :sswitch_3
        0x188db -> :sswitch_2
        0x59478a9 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    .locals 21
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "cellResolution"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    .line 266
    move-object/from16 v1, p1

    const-string v0, "id"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 267
    .local v11, "regionId":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v11, :cond_0

    .line 268
    return-object v2

    .line 273
    :cond_0
    const-string v0, "origin"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 274
    .local v12, "regionOrigin":Ljava/lang/String;
    const-string v3, "TtmlDecoder"

    if-eqz v12, :cond_a

    .line 275
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 276
    .local v4, "originMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 278
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v13, v5, v6

    .line 279
    .local v13, "position":F
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    div-float/2addr v7, v6

    .line 283
    .local v7, "line":F
    nop

    .line 288
    .end local v4    # "originMatcher":Ljava/util/regex/Matcher;
    nop

    .line 300
    const-string v4, "extent"

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 301
    .local v14, "regionExtent":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 302
    sget-object v4, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 303
    .local v4, "extentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 305
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v15, v8, v6

    .line 306
    .local v15, "width":F
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    div-float v16, v2, v6

    .line 310
    .local v16, "height":F
    nop

    .line 315
    .end local v4    # "extentMatcher":Ljava/util/regex/Matcher;
    nop

    .line 325
    const/4 v2, 0x0

    .line 326
    .local v2, "lineAnchor":I
    const-string v3, "displayAlign"

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 328
    .local v17, "displayAlign":Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 329
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x514d33ab

    if-eq v5, v6, :cond_3

    const v6, 0x58705dc

    if-eq v5, v6, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v5, "after"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "center"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eqz v3, :cond_5

    if-eq v3, v0, :cond_4

    goto :goto_2

    .line 335
    :cond_4
    const/4 v0, 0x2

    .line 336
    .end local v2    # "lineAnchor":I
    .local v0, "lineAnchor":I
    add-float v7, v7, v16

    .line 337
    move/from16 v18, v0

    move v0, v7

    goto :goto_3

    .line 331
    .end local v0    # "lineAnchor":I
    .restart local v2    # "lineAnchor":I
    :cond_5
    const/4 v0, 0x1

    .line 332
    .end local v2    # "lineAnchor":I
    .restart local v0    # "lineAnchor":I
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    add-float/2addr v7, v2

    .line 333
    move/from16 v18, v0

    move v0, v7

    goto :goto_3

    .line 344
    .end local v0    # "lineAnchor":I
    .restart local v2    # "lineAnchor":I
    :cond_6
    :goto_2
    move/from16 v18, v2

    move v0, v7

    .end local v2    # "lineAnchor":I
    .end local v7    # "line":F
    .local v0, "line":F
    .local v18, "lineAnchor":I
    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v10, p2

    iget v3, v10, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;->rows:I

    int-to-float v3, v3

    div-float v19, v2, v3

    .line 345
    .local v19, "regionTextHeight":F
    new-instance v20, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, v20

    move-object v3, v11

    move v4, v13

    move v5, v0

    move/from16 v7, v18

    move v8, v15

    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFIF)V

    return-object v20

    .line 307
    .end local v0    # "line":F
    .end local v15    # "width":F
    .end local v16    # "height":F
    .end local v17    # "displayAlign":Ljava/lang/String;
    .end local v18    # "lineAnchor":I
    .end local v19    # "regionTextHeight":F
    .restart local v4    # "extentMatcher":Ljava/util/regex/Matcher;
    .restart local v7    # "line":F
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring region with malformed extent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-object v2

    .line 312
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring region with unsupported extent: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-object v2

    .line 316
    .end local v4    # "extentMatcher":Ljava/util/regex/Matcher;
    :cond_8
    const-string v0, "Ignoring region without an extent"

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-object v2

    .line 280
    .end local v7    # "line":F
    .end local v13    # "position":F
    .end local v14    # "regionExtent":Ljava/lang/String;
    .local v4, "originMatcher":Ljava/util/regex/Matcher;
    :catch_1
    move-exception v0

    .line 281
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring region with malformed origin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-object v2

    .line 285
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring region with unsupported origin: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-object v2

    .line 289
    .end local v4    # "originMatcher":Ljava/util/regex/Matcher;
    :cond_a
    const-string v0, "Ignoring region without an origin"

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-object v2
.end method

.method private parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "style"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 362
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 363
    .local v0, "attributeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_d

    .line 364
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "attributeValue":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "backgroundColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_1
    const-string v4, "fontSize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_2
    const-string v4, "color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_4
    const-string v4, "fontWeight"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_5
    const-string v4, "textDecoration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_6
    const-string v4, "textAlign"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_7
    const-string v4, "fontFamily"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_8
    const-string v4, "fontStyle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    const-string v4, "TtmlDecoder"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    .line 426
    :pswitch_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_1
    goto :goto_3

    :sswitch_9
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    goto :goto_3

    :sswitch_a
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    goto :goto_3

    :sswitch_b
    const-string v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x2

    goto :goto_3

    :sswitch_c
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x3

    :goto_3
    if-eqz v6, :cond_5

    if-eq v6, v10, :cond_4

    if-eq v6, v7, :cond_3

    if-eq v6, v9, :cond_2

    goto :goto_4

    .line 437
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto :goto_4

    .line 434
    :cond_3
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 435
    goto :goto_4

    .line 431
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 432
    goto :goto_4

    .line 428
    :cond_5
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 429
    nop

    .line 440
    :goto_4
    goto/16 :goto_7

    .line 407
    :pswitch_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :cond_6
    goto :goto_5

    :sswitch_d
    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :sswitch_e
    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x2

    goto :goto_5

    :sswitch_f
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x0

    goto :goto_5

    :sswitch_10
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x3

    goto :goto_5

    :sswitch_11
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x4

    :goto_5
    if-eqz v6, :cond_b

    if-eq v6, v10, :cond_a

    if-eq v6, v7, :cond_9

    if-eq v6, v9, :cond_8

    if-eq v6, v5, :cond_7

    goto :goto_6

    .line 421
    :cond_7
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto :goto_6

    .line 418
    :cond_8
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 419
    goto :goto_6

    .line 415
    :cond_9
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 416
    goto :goto_6

    .line 412
    :cond_a
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 413
    goto :goto_6

    .line 409
    :cond_b
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 410
    nop

    .line 424
    :goto_6
    goto/16 :goto_7

    .line 403
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    .line 404
    const-string v4, "italic"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 403
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setItalic(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 405
    goto/16 :goto_7

    .line 399
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    .line 400
    const-string v4, "bold"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 399
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setBold(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 401
    goto/16 :goto_7

    .line 392
    :pswitch_4
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    move-object p2, v3

    .line 393
    invoke-static {v2, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseFontSize(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto/16 :goto_7

    .line 394
    :catch_0
    move-exception v3

    .line 395
    .local v3, "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing fontSize value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v3    # "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    goto :goto_7

    .line 388
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 389
    goto :goto_7

    .line 380
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 382
    :try_start_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    goto :goto_7

    .line 383
    :catch_1
    move-exception v3

    .line 384
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing color value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_7

    .line 372
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 374
    :try_start_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setBackgroundColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 377
    goto :goto_7

    .line 375
    :catch_2
    move-exception v3

    .line 376
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing background value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_7

    .line 367
    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "style"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 368
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 363
    .end local v2    # "attributeValue":Ljava/lang/String;
    :cond_c
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 446
    .end local v1    # "i":I
    :cond_d
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_8
        -0x48ff636d -> :sswitch_7
        -0x3f826a28 -> :sswitch_6
        -0x3468fa43 -> :sswitch_5
        -0x2bc67c59 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_c
        -0x3d363934 -> :sswitch_b
        0x36723ff0 -> :sswitch_a
        0x641ec051 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_11
        0x188db -> :sswitch_10
        0x32a007 -> :sswitch_f
        0x677c21c -> :sswitch_e
        0x68ac462 -> :sswitch_d
    .end sparse-switch
.end method

.method private parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "parentStyleIds"    # Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "\\s+"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J
    .locals 16
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "frameAndTickRate"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 582
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 583
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v3, :cond_3

    .line 584
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, "hours":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xe10

    mul-long v10, v10, v12

    long-to-double v10, v10

    .line 586
    .local v10, "durationSeconds":D
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 587
    .local v9, "minutes":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3c

    mul-long v12, v12, v14

    long-to-double v12, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    .line 588
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 589
    .local v8, "seconds":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    .line 590
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 591
    .local v7, "fraction":Ljava/lang/String;
    const-wide/16 v12, 0x0

    if-eqz v7, :cond_0

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    goto :goto_0

    :cond_0
    move-wide v14, v12

    :goto_0
    add-double/2addr v10, v14

    .line 592
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 593
    .local v6, "frames":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 594
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    long-to-float v14, v14

    iget v15, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    div-float/2addr v14, v15

    float-to-double v14, v14

    goto :goto_1

    :cond_1
    move-wide v14, v12

    :goto_1
    add-double/2addr v10, v14

    .line 595
    const/4 v14, 0x6

    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 596
    .local v14, "subframes":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 597
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-double v12, v12

    iget v15, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    int-to-double v4, v15

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v4

    iget v4, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v4

    goto :goto_2

    :cond_2
    nop

    :goto_2
    add-double/2addr v10, v12

    .line 600
    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v10

    double-to-long v4, v4

    return-wide v4

    .line 602
    .end local v3    # "hours":Ljava/lang/String;
    .end local v6    # "frames":Ljava/lang/String;
    .end local v7    # "fraction":Ljava/lang/String;
    .end local v8    # "seconds":Ljava/lang/String;
    .end local v9    # "minutes":Ljava/lang/String;
    .end local v10    # "durationSeconds":D
    .end local v14    # "subframes":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 603
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 604
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, "timeValue":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 606
    .local v4, "offsetSeconds":D
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 607
    .local v11, "unit":Ljava/lang/String;
    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0x66

    if-eq v13, v14, :cond_a

    const/16 v14, 0x68

    if-eq v13, v14, :cond_9

    const/16 v14, 0x6d

    if-eq v13, v14, :cond_8

    const/16 v14, 0xda6

    if-eq v13, v14, :cond_7

    const/16 v14, 0x73

    if-eq v13, v14, :cond_6

    const/16 v14, 0x74

    if-eq v13, v14, :cond_5

    :cond_4
    goto :goto_3

    :cond_5
    const-string v13, "t"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x5

    goto :goto_3

    :cond_6
    const-string v13, "s"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x2

    goto :goto_3

    :cond_7
    const-string v13, "ms"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x3

    goto :goto_3

    :cond_8
    const-string v13, "m"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    goto :goto_3

    :cond_9
    const-string v13, "h"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x0

    goto :goto_3

    :cond_a
    const-string v13, "f"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x4

    :goto_3
    if-eqz v12, :cond_10

    if-eq v12, v10, :cond_f

    if-eq v12, v9, :cond_e

    if-eq v12, v8, :cond_d

    if-eq v12, v7, :cond_c

    if-eq v12, v6, :cond_b

    goto :goto_4

    .line 624
    :cond_b
    iget v6, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    goto :goto_4

    .line 621
    :cond_c
    iget v6, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 622
    goto :goto_4

    .line 618
    :cond_d
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 619
    goto :goto_4

    .line 616
    :cond_e
    goto :goto_4

    .line 612
    :cond_f
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double v4, v4, v6

    .line 613
    goto :goto_4

    .line 609
    :cond_10
    const-wide v6, 0x40ac200000000000L    # 3600.0

    mul-double v4, v4, v6

    .line 610
    nop

    .line 627
    :goto_4
    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v6, v6, v4

    double-to-long v6, v6

    return-wide v6

    .line 629
    .end local v3    # "timeValue":Ljava/lang/String;
    .end local v4    # "offsetSeconds":D
    .end local v11    # "unit":Ljava/lang/String;
    :cond_11
    new-instance v3, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed time expression: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v3

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->decode([BIZ)Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .locals 18
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 105
    :try_start_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v2, v0

    .line 106
    .local v2, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 107
    .local v3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 108
    .local v4, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    const-string v0, ""

    new-instance v5, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v5, 0x0

    move-object/from16 v7, p1

    move/from16 v8, p2

    :try_start_1
    invoke-direct {v0, v7, v5, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v5, v0

    .line 110
    .local v5, "inputStream":Ljava/io/ByteArrayInputStream;
    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    .line 113
    .local v6, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/google/android/exoplayer2/text/ttml/TtmlNode;>;"
    const/4 v9, 0x0

    .line 114
    .local v9, "unsupportedNodeDepth":I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    .line 115
    .local v10, "eventType":I
    sget-object v11, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 116
    .local v11, "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    sget-object v12, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    move v13, v9

    move-object v9, v0

    .line 117
    .end local v0    # "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .local v9, "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .local v12, "cellResolution":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .local v13, "unsupportedNodeDepth":I
    :goto_0
    const/4 v0, 0x1

    if-eq v10, v0, :cond_b

    .line 118
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-object v14, v0

    .line 119
    .local v14, "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    const/4 v15, 0x2

    if-nez v13, :cond_8

    .line 120
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v16

    .line 121
    .local v17, "name":Ljava/lang/String;
    const-string v0, "tt"

    if-ne v10, v15, :cond_4

    .line 122
    move-object/from16 v15, v17

    .end local v17    # "name":Ljava/lang/String;
    .local v15, "name":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    move-result-object v0

    move-object v11, v0

    .line 124
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseCellResolution(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    move-result-object v0

    move-object v12, v0

    .line 126
    :cond_0
    invoke-static {v15}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->isSupportedTag(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v17, v5

    .end local v5    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v17, "inputStream":Ljava/io/ByteArrayInputStream;
    const-string v5, "TtmlDecoder"

    if-nez v0, :cond_1

    .line 127
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring unsupported tag: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 129
    :cond_1
    const-string v0, "head"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-direct {v1, v2, v3, v4, v12}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Ljava/util/Map;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 133
    :cond_2
    :try_start_4
    invoke-direct {v1, v2, v14, v4, v11}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v0

    .line 134
    .local v0, "node":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    invoke-virtual {v6, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 135
    if-eqz v14, :cond_3

    .line 136
    invoke-virtual {v14, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->addChild(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_4
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 138
    .end local v0    # "node":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    :try_start_5
    const-string v7, "Suppressing parser error"

    invoke-static {v5, v7, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    nop

    .end local v0    # "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    add-int/lit8 v13, v13, 0x1

    .line 142
    :cond_3
    :goto_1
    goto :goto_2

    .line 144
    .end local v15    # "name":Ljava/lang/String;
    .restart local v5    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v17, "name":Ljava/lang/String;
    :cond_4
    move-object/from16 v15, v17

    move-object/from16 v17, v5

    .end local v5    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v15    # "name":Ljava/lang/String;
    .local v17, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x4

    if-ne v10, v5, :cond_5

    .line 145
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->addChild(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V

    goto :goto_2

    .line 146
    :cond_5
    const/4 v5, 0x3

    if-ne v10, v5, :cond_7

    .line 147
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 148
    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    invoke-direct {v0, v5, v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;-><init>(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;)V

    move-object v9, v0

    .line 150
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 152
    .end local v15    # "name":Ljava/lang/String;
    :cond_7
    :goto_2
    goto :goto_3

    .line 153
    .end local v17    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_8
    move-object/from16 v17, v5

    .end local v5    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v17    # "inputStream":Ljava/io/ByteArrayInputStream;
    if-ne v10, v15, :cond_9

    .line 154
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 155
    :cond_9
    const/4 v0, 0x3

    if-ne v10, v0, :cond_a

    .line 156
    add-int/lit8 v13, v13, -0x1

    .line 159
    :cond_a
    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 160
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move v10, v0

    .line 161
    .end local v14    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    move-object/from16 v7, p1

    move-object/from16 v5, v17

    goto/16 :goto_0

    .line 162
    .end local v17    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_b
    move-object/from16 v17, v5

    .end local v5    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v17    # "inputStream":Ljava/io/ByteArrayInputStream;
    return-object v9

    .line 165
    .end local v2    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .end local v4    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    .end local v6    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/google/android/exoplayer2/text/ttml/TtmlNode;>;"
    .end local v9    # "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .end local v10    # "eventType":I
    .end local v11    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v12    # "cellResolution":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .end local v13    # "unsupportedNodeDepth":I
    .end local v17    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 163
    :catch_2
    move-exception v0

    goto :goto_5

    .line 165
    :catch_3
    move-exception v0

    move/from16 v8, p2

    .line 166
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error when reading input."

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    move/from16 v8, p2

    .line 164
    .local v0, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    new-instance v2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v3, "Unable to decode source"

    invoke-direct {v2, v3, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    throw v2

    :goto_7
    goto :goto_6
.end method
