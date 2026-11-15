.class final Lcom/google/android/exoplayer2/text/dvb/DvbParser;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;
    }
.end annotation


# static fields
.field private static final DATA_TYPE_24_TABLE_DATA:I = 0x20

.field private static final DATA_TYPE_28_TABLE_DATA:I = 0x21

.field private static final DATA_TYPE_2BP_CODE_STRING:I = 0x10

.field private static final DATA_TYPE_48_TABLE_DATA:I = 0x22

.field private static final DATA_TYPE_4BP_CODE_STRING:I = 0x11

.field private static final DATA_TYPE_8BP_CODE_STRING:I = 0x12

.field private static final DATA_TYPE_END_LINE:I = 0xf0

.field private static final OBJECT_CODING_PIXELS:I = 0x0

.field private static final OBJECT_CODING_STRING:I = 0x1

.field private static final PAGE_STATE_NORMAL:I = 0x0

.field private static final REGION_DEPTH_4_BIT:I = 0x2

.field private static final REGION_DEPTH_8_BIT:I = 0x3

.field private static final SEGMENT_TYPE_CLUT_DEFINITION:I = 0x12

.field private static final SEGMENT_TYPE_DISPLAY_DEFINITION:I = 0x14

.field private static final SEGMENT_TYPE_OBJECT_DATA:I = 0x13

.field private static final SEGMENT_TYPE_PAGE_COMPOSITION:I = 0x10

.field private static final SEGMENT_TYPE_REGION_COMPOSITION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "DvbParser"

.field private static final defaultMap2To4:[B

.field private static final defaultMap2To8:[B

.field private static final defaultMap4To8:[B


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final canvas:Landroid/graphics/Canvas;

.field private final defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

.field private final defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

.field private final defaultPaint:Landroid/graphics/Paint;

.field private final fillRegionPaint:Landroid/graphics/Paint;

.field private final subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To4:[B

    .line 74
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To8:[B

    .line 76
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap4To8:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8
    .param p1, "subtitlePageId"    # I
    .param p2, "ancillaryPageId"    # I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 106
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    .line 107
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 108
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v2

    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 110
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    .line 111
    return-void
.end method

.method private static buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B
    .locals 3
    .param p0, "length"    # I
    .param p1, "bitsPerEntry"    # I
    .param p2, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 801
    new-array v0, p0, [B

    .line 802
    .local v0, "clutMapTable":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 803
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 802
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 805
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static generateDefault2BitClutEntries()[I
    .locals 3

    .line 498
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 499
    .local v0, "entries":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 500
    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 501
    const/4 v1, 0x2

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 502
    const/4 v1, 0x3

    const v2, -0x808081

    aput v2, v0, v1

    .line 503
    return-object v0
.end method

.method private static generateDefault4BitClutEntries()[I
    .locals 8

    .line 507
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 508
    .local v0, "entries":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 509
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 510
    const/16 v3, 0x8

    const/16 v4, 0xff

    if-ge v2, v3, :cond_3

    .line 511
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    const/16 v3, 0xff

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    const/16 v5, 0xff

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_2

    const/16 v6, 0xff

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    invoke-static {v4, v3, v5, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    goto :goto_7

    .line 517
    :cond_3
    and-int/lit8 v3, v2, 0x1

    const/16 v5, 0x7f

    if-eqz v3, :cond_4

    const/16 v3, 0x7f

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_5

    const/16 v6, 0x7f

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    invoke-static {v4, v3, v6, v5}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 509
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    .end local v2    # "i":I
    :cond_7
    return-object v0
.end method

.method private static generateDefault8BitClutEntries()[I
    .locals 10

    .line 528
    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 529
    .local v0, "entries":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 530
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_20

    .line 531
    const/16 v3, 0x8

    const/16 v4, 0xff

    if-ge v2, v3, :cond_3

    .line 532
    const/16 v3, 0x3f

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    const/16 v5, 0xff

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_1

    const/16 v6, 0xff

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    invoke-static {v3, v5, v6, v4}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    goto/16 :goto_1c

    .line 538
    :cond_3
    and-int/lit16 v5, v2, 0x88

    const/16 v6, 0xaa

    const/16 v7, 0x55

    if-eqz v5, :cond_19

    const/16 v8, 0x7f

    if-eq v5, v3, :cond_12

    const/16 v3, 0x80

    const/16 v6, 0x2b

    if-eq v5, v3, :cond_b

    const/16 v3, 0x88

    if-eq v5, v3, :cond_4

    goto/16 :goto_1c

    .line 561
    :cond_4
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_5

    const/16 v3, 0x2b

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_6

    const/16 v5, 0x55

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    add-int/2addr v3, v5

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_7

    const/16 v5, 0x2b

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_8

    const/16 v8, 0x55

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_7
    add-int/2addr v5, v8

    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_9

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    :goto_8
    and-int/lit8 v8, v2, 0x40

    if-eqz v8, :cond_a

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    add-int/2addr v6, v7

    invoke-static {v4, v3, v5, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    goto/16 :goto_1c

    .line 554
    :cond_b
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_c

    const/16 v3, 0x2b

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    :goto_a
    add-int/2addr v3, v8

    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_d

    const/16 v5, 0x55

    goto :goto_b

    :cond_d
    const/4 v5, 0x0

    :goto_b
    add-int/2addr v3, v5

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_e

    const/16 v5, 0x2b

    goto :goto_c

    :cond_e
    const/4 v5, 0x0

    :goto_c
    add-int/2addr v5, v8

    and-int/lit8 v9, v2, 0x20

    if-eqz v9, :cond_f

    const/16 v9, 0x55

    goto :goto_d

    :cond_f
    const/4 v9, 0x0

    :goto_d
    add-int/2addr v5, v9

    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_10

    goto :goto_e

    :cond_10
    const/4 v6, 0x0

    :goto_e
    add-int/2addr v6, v8

    and-int/lit8 v8, v2, 0x40

    if-eqz v8, :cond_11

    goto :goto_f

    :cond_11
    const/4 v7, 0x0

    :goto_f
    add-int/2addr v6, v7

    invoke-static {v4, v3, v5, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 559
    goto/16 :goto_1c

    .line 547
    :cond_12
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_13

    const/16 v3, 0x55

    goto :goto_10

    :cond_13
    const/4 v3, 0x0

    :goto_10
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_14

    const/16 v4, 0xaa

    goto :goto_11

    :cond_14
    const/4 v4, 0x0

    :goto_11
    add-int/2addr v3, v4

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_15

    const/16 v4, 0x55

    goto :goto_12

    :cond_15
    const/4 v4, 0x0

    :goto_12
    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_16

    const/16 v5, 0xaa

    goto :goto_13

    :cond_16
    const/4 v5, 0x0

    :goto_13
    add-int/2addr v4, v5

    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_17

    goto :goto_14

    :cond_17
    const/4 v7, 0x0

    :goto_14
    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_18

    goto :goto_15

    :cond_18
    const/4 v6, 0x0

    :goto_15
    add-int/2addr v7, v6

    invoke-static {v8, v3, v4, v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 552
    goto :goto_1c

    .line 540
    :cond_19
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1a

    const/16 v3, 0x55

    goto :goto_16

    :cond_1a
    const/4 v3, 0x0

    :goto_16
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_1b

    const/16 v5, 0xaa

    goto :goto_17

    :cond_1b
    const/4 v5, 0x0

    :goto_17
    add-int/2addr v3, v5

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1c

    const/16 v5, 0x55

    goto :goto_18

    :cond_1c
    const/4 v5, 0x0

    :goto_18
    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_1d

    const/16 v8, 0xaa

    goto :goto_19

    :cond_1d
    const/4 v8, 0x0

    :goto_19
    add-int/2addr v5, v8

    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_1e

    goto :goto_1a

    :cond_1e
    const/4 v7, 0x0

    :goto_1a
    and-int/lit8 v8, v2, 0x40

    if-eqz v8, :cond_1f

    goto :goto_1b

    :cond_1f
    const/4 v6, 0x0

    :goto_1b
    add-int/2addr v7, v6

    invoke-static {v4, v3, v5, v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 545
    nop

    .line 530
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 570
    .end local v2    # "i":I
    :cond_20
    return-object v0
.end method

.method private static getColor(IIII)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 574
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method private static paint2BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 14
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 665
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v2, 0x0

    move/from16 v9, p3

    .line 667
    .end local p3    # "column":I
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :goto_0
    const/4 v3, 0x0

    .line 668
    .local v3, "runLength":I
    const/4 v4, 0x0

    .line 669
    .local v4, "clutIndex":I
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 670
    .local v10, "peek":I
    if-eqz v10, :cond_0

    .line 671
    const/4 v3, 0x1

    .line 672
    move v4, v10

    move v13, v2

    move v11, v3

    move v12, v4

    goto/16 :goto_1

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_1

    .line 674
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x3

    .line 675
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v13, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 677
    const/4 v3, 0x1

    move v13, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 679
    :cond_2
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    if-eqz v6, :cond_6

    const/4 v11, 0x1

    if-eq v6, v11, :cond_5

    if-eq v6, v5, :cond_4

    if-eq v6, v7, :cond_3

    move v13, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 691
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1d

    .line 692
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v13, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 687
    :cond_4
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v3, v6, 0xc

    .line 688
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 689
    move v13, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 684
    :cond_5
    const/4 v3, 0x2

    .line 685
    move v13, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 681
    :cond_6
    const/4 v2, 0x1

    .line 682
    move v13, v2

    move v11, v3

    move v12, v4

    .line 697
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .local v11, "runLength":I
    .local v12, "clutIndex":I
    .local v13, "endOfPixelCodeString":Z
    :goto_1
    if-eqz v11, :cond_8

    if-eqz v8, :cond_8

    .line 698
    if-eqz p2, :cond_7

    aget-byte v2, p2, v12

    goto :goto_2

    :cond_7
    move v2, v12

    :goto_2
    aget v2, p1, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 699
    int-to-float v3, v9

    int-to-float v4, v1

    add-int v2, v9, v11

    int-to-float v5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    move-object/from16 v2, p6

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 702
    :cond_8
    add-int/2addr v9, v11

    .line 703
    .end local v10    # "peek":I
    .end local v11    # "runLength":I
    .end local v12    # "clutIndex":I
    if-eqz v13, :cond_9

    .line 705
    return v9

    .line 703
    :cond_9
    move v2, v13

    goto/16 :goto_0
.end method

.method private static paint4BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 14
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 713
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v2, 0x0

    move/from16 v9, p3

    .line 715
    .end local p3    # "column":I
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :goto_0
    const/4 v3, 0x0

    .line 716
    .local v3, "runLength":I
    const/4 v4, 0x0

    .line 717
    .local v4, "clutIndex":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 718
    .local v6, "peek":I
    if-eqz v6, :cond_0

    .line 719
    const/4 v3, 0x1

    .line 720
    move v4, v6

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto/16 :goto_1

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    const/4 v10, 0x3

    if-nez v7, :cond_2

    .line 722
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 723
    if-eqz v6, :cond_1

    .line 724
    add-int/lit8 v3, v6, 0x2

    .line 725
    const/4 v4, 0x0

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto/16 :goto_1

    .line 727
    :cond_1
    const/4 v2, 0x1

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto/16 :goto_1

    .line 729
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    const/4 v11, 0x2

    if-nez v7, :cond_3

    .line 730
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x4

    .line 731
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 733
    :cond_3
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-eqz v7, :cond_7

    const/4 v12, 0x1

    if-eq v7, v12, :cond_6

    if-eq v7, v11, :cond_5

    if-eq v7, v10, :cond_4

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 745
    :cond_4
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x19

    .line 746
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 741
    :cond_5
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x9

    .line 742
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 743
    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 738
    :cond_6
    const/4 v3, 0x2

    .line 739
    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 735
    :cond_7
    const/4 v3, 0x1

    .line 736
    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    .line 751
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .end local v6    # "peek":I
    .local v10, "runLength":I
    .local v11, "clutIndex":I
    .local v12, "endOfPixelCodeString":Z
    .local v13, "peek":I
    :goto_1
    if-eqz v10, :cond_9

    if-eqz v8, :cond_9

    .line 752
    if-eqz p2, :cond_8

    aget-byte v2, p2, v11

    goto :goto_2

    :cond_8
    move v2, v11

    :goto_2
    aget v2, p1, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 753
    int-to-float v3, v9

    int-to-float v4, v1

    add-int v2, v9, v10

    int-to-float v5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    move-object/from16 v2, p6

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 756
    :cond_9
    add-int/2addr v9, v10

    .line 757
    .end local v10    # "runLength":I
    .end local v11    # "clutIndex":I
    .end local v13    # "peek":I
    if-eqz v12, :cond_a

    .line 759
    return v9

    .line 757
    :cond_a
    move v2, v12

    goto/16 :goto_0
.end method

.method private static paint8BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 14
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 767
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v2, 0x0

    move/from16 v9, p3

    .line 769
    .end local p3    # "column":I
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :goto_0
    const/4 v3, 0x0

    .line 770
    .local v3, "runLength":I
    const/4 v4, 0x0

    .line 771
    .local v4, "clutIndex":I
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 772
    .local v6, "peek":I
    if-eqz v6, :cond_0

    .line 773
    const/4 v3, 0x1

    .line 774
    move v4, v6

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    const/4 v10, 0x7

    if-nez v7, :cond_2

    .line 777
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 778
    if-eqz v6, :cond_1

    .line 779
    move v3, v6

    .line 780
    const/4 v4, 0x0

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 782
    :cond_1
    const/4 v2, 0x1

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    goto :goto_1

    .line 785
    :cond_2
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 786
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v12, v2

    move v10, v3

    move v11, v4

    move v13, v6

    .line 790
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .end local v6    # "peek":I
    .local v10, "runLength":I
    .local v11, "clutIndex":I
    .local v12, "endOfPixelCodeString":Z
    .local v13, "peek":I
    :goto_1
    if-eqz v10, :cond_4

    if-eqz v8, :cond_4

    .line 791
    if-eqz p2, :cond_3

    aget-byte v2, p2, v11

    goto :goto_2

    :cond_3
    move v2, v11

    :goto_2
    aget v2, p1, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 792
    int-to-float v3, v9

    int-to-float v4, v1

    add-int v2, v9, v10

    int-to-float v5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    move-object/from16 v2, p6

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 794
    :cond_4
    add-int/2addr v9, v10

    .line 795
    .end local v10    # "runLength":I
    .end local v11    # "clutIndex":I
    .end local v13    # "peek":I
    if-eqz v12, :cond_5

    .line 797
    return v9

    .line 795
    :cond_5
    move v2, v12

    goto :goto_0
.end method

.method private static paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 17
    .param p0, "pixelData"    # [B
    .param p1, "clutEntries"    # [I
    .param p2, "regionDepth"    # I
    .param p3, "horizontalAddress"    # I
    .param p4, "verticalAddress"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 603
    move/from16 v0, p2

    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 604
    .local v1, "data":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    move/from16 v3, p3

    .line 605
    .local v3, "column":I
    move/from16 v4, p4

    .line 606
    .local v4, "line":I
    const/4 v5, 0x0

    .line 607
    .local v5, "clutMapTable2To4":[B
    const/4 v6, 0x0

    .line 608
    .local v6, "clutMapTable2To8":[B
    const/4 v10, 0x0

    move v13, v3

    move v14, v4

    move-object v11, v5

    move-object v12, v6

    .line 610
    .end local v3    # "column":I
    .end local v4    # "line":I
    .end local v5    # "clutMapTable2To4":[B
    .end local v6    # "clutMapTable2To8":[B
    .local v10, "clutMapTable4To8":[B
    .local v11, "clutMapTable2To4":[B
    .local v12, "clutMapTable2To8":[B
    .local v13, "column":I
    .local v14, "line":I
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    if-eqz v3, :cond_7

    .line 611
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 612
    .local v15, "dataType":I
    const/16 v4, 0xf0

    if-eq v15, v4, :cond_6

    const/4 v4, 0x3

    packed-switch v15, :pswitch_data_0

    const/4 v4, 0x4

    packed-switch v15, :pswitch_data_1

    goto/16 :goto_6

    .line 647
    :pswitch_0
    const/16 v4, 0x10

    invoke-static {v4, v3, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v3

    .line 648
    .end local v12    # "clutMapTable2To8":[B
    .local v3, "clutMapTable2To8":[B
    move-object v12, v3

    goto/16 :goto_6

    .line 644
    .end local v3    # "clutMapTable2To8":[B
    .restart local v12    # "clutMapTable2To8":[B
    :pswitch_1
    invoke-static {v4, v3, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v3

    .line 645
    .end local v12    # "clutMapTable2To8":[B
    .restart local v3    # "clutMapTable2To8":[B
    move-object v12, v3

    goto/16 :goto_6

    .line 641
    .end local v3    # "clutMapTable2To8":[B
    .restart local v12    # "clutMapTable2To8":[B
    :pswitch_2
    invoke-static {v4, v4, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v3

    .line 642
    .end local v11    # "clutMapTable2To4":[B
    .local v3, "clutMapTable2To4":[B
    move-object v11, v3

    goto/16 :goto_6

    .line 638
    .end local v3    # "clutMapTable2To4":[B
    .restart local v11    # "clutMapTable2To4":[B
    :pswitch_3
    const/4 v5, 0x0

    move-object v3, v1

    move-object/from16 v4, p1

    move v6, v13

    move v7, v14

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v9}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paint8BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v13

    .line 639
    goto/16 :goto_6

    .line 628
    :pswitch_4
    if-ne v0, v4, :cond_1

    .line 629
    if-nez v10, :cond_0

    sget-object v3, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap4To8:[B

    goto :goto_1

    :cond_0
    move-object v3, v10

    :goto_1
    move-object/from16 v16, v3

    .local v3, "clutMapTable4ToX":[B
    goto :goto_2

    .line 631
    .end local v3    # "clutMapTable4ToX":[B
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v16, v3

    .line 633
    .local v16, "clutMapTable4ToX":[B
    :goto_2
    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    move v6, v13

    move v7, v14

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v9}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paint4BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v13

    .line 635
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    .line 636
    goto :goto_6

    .line 615
    .end local v16    # "clutMapTable4ToX":[B
    :pswitch_5
    if-ne v0, v4, :cond_3

    .line 616
    if-nez v12, :cond_2

    sget-object v3, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To8:[B

    goto :goto_3

    :cond_2
    move-object v3, v12

    :goto_3
    move-object/from16 v16, v3

    .local v3, "clutMapTable2ToX":[B
    goto :goto_5

    .line 617
    .end local v3    # "clutMapTable2ToX":[B
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 618
    if-nez v11, :cond_4

    sget-object v3, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To4:[B

    goto :goto_4

    :cond_4
    move-object v3, v11

    :goto_4
    move-object/from16 v16, v3

    .restart local v3    # "clutMapTable2ToX":[B
    goto :goto_5

    .line 620
    .end local v3    # "clutMapTable2ToX":[B
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v16, v3

    .line 622
    .local v16, "clutMapTable2ToX":[B
    :goto_5
    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    move v6, v13

    move v7, v14

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v9}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paint2BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v13

    .line 624
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    .line 625
    goto :goto_6

    .line 650
    .end local v16    # "clutMapTable2ToX":[B
    :cond_6
    move/from16 v13, p3

    .line 651
    add-int/lit8 v14, v14, 0x2

    .line 652
    nop

    .line 657
    .end local v15    # "dataType":I
    :goto_6
    goto/16 :goto_0

    .line 658
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static paintPixelDataSubBlocks(Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8
    .param p0, "objectData"    # Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    .param p1, "clutDefinition"    # Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .param p2, "regionDepth"    # I
    .param p3, "horizontalAddress"    # I
    .param p4, "verticalAddress"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 585
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 586
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    .local v0, "clutEntries":[I
    goto :goto_0

    .line 587
    .end local v0    # "clutEntries":[I
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 588
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    .restart local v0    # "clutEntries":[I
    goto :goto_0

    .line 590
    .end local v0    # "clutEntries":[I
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    .line 592
    .restart local v0    # "clutEntries":[I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move-object v2, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 594
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    add-int/lit8 v5, p4, 0x1

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 596
    return-void
.end method

.method private static parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .locals 23
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "length"    # I

    .line 403
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 404
    .local v2, "clutId":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 405
    add-int/lit8 v3, p1, -0x2

    .line 407
    .local v3, "remainingLength":I
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v4

    .line 408
    .local v4, "clutEntries2Bit":[I
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v5

    .line 409
    .local v5, "clutEntries4Bit":[I
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v6

    .line 411
    .local v6, "clutEntries8Bit":[I
    :goto_0
    if-lez v3, :cond_4

    .line 412
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 413
    .local v7, "entryId":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 414
    .local v8, "entryFlags":I
    add-int/lit8 v3, v3, -0x2

    .line 417
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_0

    .line 418
    move-object v9, v4

    .local v9, "clutEntries":[I
    goto :goto_1

    .line 419
    .end local v9    # "clutEntries":[I
    :cond_0
    and-int/lit8 v9, v8, 0x40

    if-eqz v9, :cond_1

    .line 420
    move-object v9, v5

    .restart local v9    # "clutEntries":[I
    goto :goto_1

    .line 422
    .end local v9    # "clutEntries":[I
    :cond_1
    move-object v9, v6

    .line 429
    .restart local v9    # "clutEntries":[I
    :goto_1
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_2

    .line 430
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 431
    .local v10, "y":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 432
    .local v11, "cr":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 433
    .local v12, "cb":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 434
    .local v13, "t":I
    add-int/lit8 v3, v3, -0x4

    move v14, v11

    goto :goto_2

    .line 436
    .end local v10    # "y":I
    .end local v11    # "cr":I
    .end local v12    # "cb":I
    .end local v13    # "t":I
    :cond_2
    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    const/4 v12, 0x2

    shl-int/2addr v11, v12

    .line 437
    .local v11, "y":I
    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    shl-int/2addr v14, v13

    .line 438
    .local v14, "cr":I
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    shl-int/lit8 v13, v15, 0x4

    .line 439
    .local v13, "cb":I
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    shl-int/lit8 v10, v12, 0x6

    .line 440
    .local v10, "t":I
    add-int/lit8 v3, v3, -0x2

    move v12, v13

    move v13, v10

    move v10, v11

    .line 443
    .end local v11    # "y":I
    .local v10, "y":I
    .restart local v12    # "cb":I
    .local v13, "t":I
    :goto_2
    if-nez v10, :cond_3

    .line 444
    const/4 v14, 0x0

    .line 445
    const/4 v12, 0x0

    .line 446
    const/16 v13, 0xff

    .line 449
    :cond_3
    and-int/lit16 v11, v13, 0xff

    const/16 v15, 0xff

    rsub-int v11, v11, 0xff

    int-to-byte v11, v11

    .line 450
    .local v11, "a":I
    move/from16 v16, v2

    .end local v2    # "clutId":I
    .local v16, "clutId":I
    int-to-double v1, v10

    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v15, v14, -0x80

    move/from16 v20, v3

    move-object/from16 v19, v4

    .end local v3    # "remainingLength":I
    .end local v4    # "clutEntries2Bit":[I
    .local v19, "clutEntries2Bit":[I
    .local v20, "remainingLength":I
    int-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v17

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 451
    .local v1, "r":I
    int-to-double v2, v10

    const-wide v17, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v4, v12, -0x80

    move-object v15, v5

    .end local v5    # "clutEntries4Bit":[I
    .local v15, "clutEntries4Bit":[I
    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v17

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    add-int/lit8 v4, v14, -0x80

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v17, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v4, v4, v17

    sub-double/2addr v2, v4

    double-to-int v2, v2

    .line 452
    .local v2, "g":I
    int-to-double v3, v10

    const-wide v17, 0x3ffc5a1cac083127L    # 1.772

    add-int/lit8 v5, v12, -0x80

    move/from16 v22, v12

    move/from16 v21, v13

    .end local v12    # "cb":I
    .end local v13    # "t":I
    .local v21, "t":I
    .local v22, "cb":I
    int-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v17

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v12

    double-to-int v3, v3

    .line 453
    .local v3, "b":I
    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v1, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v12

    .line 454
    invoke-static {v2, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v13

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    .line 453
    invoke-static {v11, v12, v13, v4}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v9, v7

    .line 455
    .end local v1    # "r":I
    .end local v2    # "g":I
    .end local v3    # "b":I
    .end local v7    # "entryId":I
    .end local v8    # "entryFlags":I
    .end local v9    # "clutEntries":[I
    .end local v10    # "y":I
    .end local v11    # "a":I
    .end local v14    # "cr":I
    .end local v21    # "t":I
    .end local v22    # "cb":I
    move-object v5, v15

    move/from16 v2, v16

    move-object/from16 v4, v19

    move/from16 v3, v20

    const/16 v1, 0x8

    goto/16 :goto_0

    .line 457
    .end local v15    # "clutEntries4Bit":[I
    .end local v16    # "clutId":I
    .end local v19    # "clutEntries2Bit":[I
    .end local v20    # "remainingLength":I
    .local v2, "clutId":I
    .local v3, "remainingLength":I
    .restart local v4    # "clutEntries2Bit":[I
    .restart local v5    # "clutEntries4Bit":[I
    :cond_4
    move/from16 v16, v2

    move-object/from16 v19, v4

    move-object v15, v5

    .end local v2    # "clutId":I
    .end local v4    # "clutEntries2Bit":[I
    .end local v5    # "clutEntries4Bit":[I
    .restart local v15    # "clutEntries4Bit":[I
    .restart local v16    # "clutId":I
    .restart local v19    # "clutEntries2Bit":[I
    new-instance v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .end local v15    # "clutEntries4Bit":[I
    .end local v16    # "clutId":I
    .end local v19    # "clutEntries2Bit":[I
    .restart local v2    # "clutId":I
    .restart local v4    # "clutEntries2Bit":[I
    .restart local v5    # "clutEntries4Bit":[I
    invoke-direct {v1, v2, v4, v5, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    return-object v1
.end method

.method private static parseDisplayDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;
    .locals 15
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 303
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 304
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 305
    .local v0, "displayWindowFlag":Z
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 306
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 307
    .local v9, "width":I
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 313
    .local v10, "height":I
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 315
    .local v2, "horizontalPositionMinimum":I
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 316
    .local v3, "horizontalPositionMaximum":I
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 317
    .local v4, "verticalPositionMinimum":I
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    move v13, v1

    move v1, v2

    move v11, v3

    move v12, v4

    .local v1, "verticalPositionMaximum":I
    goto :goto_0

    .line 319
    .end local v1    # "verticalPositionMaximum":I
    .end local v2    # "horizontalPositionMinimum":I
    .end local v3    # "horizontalPositionMaximum":I
    .end local v4    # "verticalPositionMinimum":I
    :cond_0
    const/4 v1, 0x0

    .line 320
    .local v1, "horizontalPositionMinimum":I
    move v2, v9

    .line 321
    .local v2, "horizontalPositionMaximum":I
    const/4 v3, 0x0

    .line 322
    .local v3, "verticalPositionMinimum":I
    move v4, v10

    move v11, v2

    move v12, v3

    move v13, v4

    .line 325
    .end local v2    # "horizontalPositionMaximum":I
    .end local v3    # "verticalPositionMinimum":I
    .local v11, "horizontalPositionMaximum":I
    .local v12, "verticalPositionMinimum":I
    .local v13, "verticalPositionMaximum":I
    :goto_0
    new-instance v14, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-object v2, v14

    move v3, v9

    move v4, v10

    move v5, v1

    move v6, v11

    move v7, v12

    move v8, v13

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    return-object v14
.end method

.method private static parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    .locals 8
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 466
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 467
    .local v1, "objectId":I
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 468
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 469
    .local v2, "objectCodingMethod":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    .line 470
    .local v3, "nonModifyingColorFlag":Z
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 472
    const/4 v5, 0x0

    .line 473
    .local v5, "topFieldData":[B
    const/4 v6, 0x0

    .line 475
    .local v6, "bottomFieldData":[B
    if-ne v2, v4, :cond_0

    .line 476
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 478
    .local v0, "numberOfCodes":I
    mul-int/lit8 v4, v0, 0x10

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .end local v0    # "numberOfCodes":I
    goto :goto_0

    .line 479
    :cond_0
    if-nez v2, :cond_3

    .line 480
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 481
    .local v4, "topFieldDataLength":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 482
    .local v0, "bottomFieldDataLength":I
    const/4 v7, 0x0

    if-lez v4, :cond_1

    .line 483
    new-array v5, v4, [B

    .line 484
    invoke-virtual {p0, v5, v7, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    .line 486
    :cond_1
    if-lez v0, :cond_2

    .line 487
    new-array v6, v0, [B

    .line 488
    invoke-virtual {p0, v6, v7, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    goto :goto_1

    .line 490
    :cond_2
    move-object v6, v5

    goto :goto_1

    .line 479
    .end local v0    # "bottomFieldDataLength":I
    .end local v4    # "topFieldDataLength":I
    :cond_3
    :goto_0
    nop

    .line 494
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;-><init>(IZ[B[B)V

    return-object v0
.end method

.method private static parsePageComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .locals 10
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "length"    # I

    .line 333
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 334
    .local v1, "timeoutSecs":I
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 335
    .local v2, "version":I
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 336
    .local v4, "state":I
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 337
    add-int/lit8 v3, p1, -0x2

    .line 339
    .local v3, "remainingLength":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 340
    .local v5, "regions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    :goto_0
    if-lez v3, :cond_0

    .line 341
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 342
    .local v6, "regionId":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 343
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 344
    .local v8, "regionHorizontalAddress":I
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 345
    .local v7, "regionVerticalAddress":I
    add-int/lit8 v3, v3, -0x6

    .line 346
    new-instance v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;

    invoke-direct {v9, v8, v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v5, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    .end local v6    # "regionId":I
    .end local v7    # "regionVerticalAddress":I
    .end local v8    # "regionHorizontalAddress":I
    goto :goto_0

    .line 349
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;-><init>(IIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method private static parseRegionComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    .locals 31
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "length"    # I

    .line 356
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 357
    .local v14, "id":I
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v15

    .line 359
    .local v15, "fillFlag":Z
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 360
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v16

    .line 361
    .local v16, "width":I
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v17

    .line 362
    .local v17, "height":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v18

    .line 363
    .local v18, "levelOfCompatibility":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v19

    .line 364
    .local v19, "depth":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 365
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    .line 366
    .local v20, "clutId":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v21

    .line 367
    .local v21, "pixelCode8Bit":I
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v22

    .line 368
    .local v22, "pixelCode4Bit":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v23

    .line 369
    .local v23, "pixelCode2Bit":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 370
    add-int/lit8 v5, p1, -0xa

    .line 372
    .local v5, "remainingLength":I
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v13, v6

    move/from16 v24, v5

    .line 373
    .end local v5    # "remainingLength":I
    .local v13, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .local v24, "remainingLength":I
    :goto_0
    if-lez v24, :cond_2

    .line 374
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 375
    .local v5, "objectId":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 376
    .local v12, "objectType":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v25

    .line 377
    .local v25, "objectProvider":I
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v26

    .line 378
    .local v26, "objectHorizontalPosition":I
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 379
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v27

    .line 380
    .local v27, "objectVerticalPosition":I
    add-int/lit8 v24, v24, -0x6

    .line 382
    const/4 v6, 0x0

    .line 383
    .local v6, "foregroundPixelCode":I
    const/4 v7, 0x0

    .line 384
    .local v7, "backgroundPixelCode":I
    const/4 v8, 0x1

    if-eq v12, v8, :cond_1

    if-ne v12, v3, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v28, v7

    move/from16 v29, v24

    move/from16 v24, v6

    goto :goto_2

    .line 385
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 386
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 387
    add-int/lit8 v24, v24, -0x2

    move/from16 v28, v7

    move/from16 v29, v24

    move/from16 v24, v6

    .line 390
    .end local v6    # "foregroundPixelCode":I
    .end local v7    # "backgroundPixelCode":I
    .local v24, "foregroundPixelCode":I
    .local v28, "backgroundPixelCode":I
    .local v29, "remainingLength":I
    :goto_2
    new-instance v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;

    move-object v6, v11

    move v7, v12

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v10, v27

    move-object v1, v11

    move/from16 v11, v24

    move/from16 v30, v12

    .end local v12    # "objectType":I
    .local v30, "objectType":I
    move/from16 v12, v28

    invoke-direct/range {v6 .. v12}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;-><init>(IIIIII)V

    invoke-virtual {v13, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    .end local v5    # "objectId":I
    .end local v24    # "foregroundPixelCode":I
    .end local v25    # "objectProvider":I
    .end local v26    # "objectHorizontalPosition":I
    .end local v27    # "objectVerticalPosition":I
    .end local v28    # "backgroundPixelCode":I
    .end local v30    # "objectType":I
    move/from16 v24, v29

    const/16 v1, 0x8

    goto :goto_0

    .line 395
    .end local v29    # "remainingLength":I
    .local v24, "remainingLength":I
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    move-object v2, v1

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move-object/from16 v25, v13

    .end local v13    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .local v25, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v1
.end method

.method private static parseSubtitlingSegment(Lcom/google/android/exoplayer2/util/ParsableBitArray;Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;)V
    .locals 8
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "service"    # Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    .line 230
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 231
    .local v0, "segmentType":I
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 232
    .local v2, "pageId":I
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 233
    .local v1, "dataFieldLength":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v3

    add-int/2addr v3, v1

    .line 235
    .local v3, "dataFieldLimit":I
    mul-int/lit8 v4, v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 236
    const-string v4, "DvbParser"

    const-string v5, "Data field length exceeds limit"

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 239
    return-void

    .line 242
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 244
    :pswitch_0
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_7

    .line 245
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseDisplayDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-result-object v4

    iput-object v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    goto/16 :goto_2

    .line 282
    :pswitch_1
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_1

    .line 283
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v4

    .line 284
    .local v4, "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    iget-object v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    goto :goto_0

    .line 285
    :cond_1
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v4, :cond_2

    .line 286
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v4

    .line 287
    .restart local v4    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    iget-object v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    .end local v4    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    goto/16 :goto_2

    .line 285
    :cond_2
    :goto_0
    goto/16 :goto_2

    .line 273
    :pswitch_2
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_3

    .line 274
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v4

    .line 275
    .local v4, "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    iget-object v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    goto :goto_1

    .line 276
    :cond_3
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v4, :cond_4

    .line 277
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v4

    .line 278
    .restart local v4    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    iget-object v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    .end local v4    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    goto :goto_2

    .line 276
    :cond_4
    :goto_1
    goto :goto_2

    .line 263
    :pswitch_3
    iget-object v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 264
    .local v4, "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    iget v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v5, :cond_7

    if-eqz v4, :cond_7

    .line 265
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseRegionComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    move-result-object v5

    .line 266
    .local v5, "regionComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-nez v6, :cond_5

    .line 267
    iget-object v6, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v7, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->mergeFrom(Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;)V

    .line 269
    :cond_5
    iget-object v6, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v7, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    .end local v5    # "regionComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    goto :goto_2

    .line 249
    .end local v4    # "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    :pswitch_4
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_7

    .line 250
    iget-object v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 251
    .local v4, "current":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parsePageComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    move-result-object v5

    .line 252
    .local v5, "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    iget v6, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-eqz v6, :cond_6

    .line 253
    iput-object v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 254
    iget-object v6, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 255
    iget-object v6, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 256
    iget-object v6, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    goto :goto_2

    .line 257
    :cond_6
    if-eqz v4, :cond_7

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    iget v7, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    if-eq v6, v7, :cond_7

    .line 258
    iput-object v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 296
    .end local v4    # "current":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .end local v5    # "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    .line 297
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public decode([BI)Ljava/util/List;
    .locals 31
    .param p1, "data"    # [B
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 129
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 130
    .local v1, "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_0

    const/16 v4, 0x8

    .line 131
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_0

    .line 132
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseSubtitlingSegment(Lcom/google/android/exoplayer2/util/ParsableBitArray;Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v4, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    if-nez v4, :cond_1

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 140
    :cond_1
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v4, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v4, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 142
    .local v4, "displayDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;
    :goto_1
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    iget v5, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_3

    iget v5, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 143
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 144
    :cond_3
    iget v5, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 146
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    iget-object v6, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v5, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v6, v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    iget-object v6, v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    .line 152
    .local v6, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    .line 153
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;

    .line 154
    .local v8, "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 155
    .local v9, "regionId":I
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v10, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    .line 158
    .local v10, "regionComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    iget v11, v8, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    iget v12, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    add-int/2addr v11, v12

    .line 160
    .local v11, "baseHorizontalAddress":I
    iget v12, v8, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    iget v13, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    add-int/2addr v12, v13

    .line 162
    .local v12, "baseVerticalAddress":I
    iget v13, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v13, v11

    iget v14, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 164
    .local v13, "clipRight":I
    iget v14, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v14, v12

    iget v15, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 166
    .local v14, "clipBottom":I
    iget-object v15, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v21, v1

    .end local v1    # "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .local v21, "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    int-to-float v1, v11

    int-to-float v2, v12

    int-to-float v3, v13

    move-object/from16 v22, v6

    .end local v6    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .local v22, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    int-to-float v6, v14

    sget-object v20, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v6

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 169
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v1, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 170
    .local v1, "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    if-nez v1, :cond_5

    .line 171
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v3, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 172
    if-nez v1, :cond_5

    .line 173
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 177
    :cond_5
    iget-object v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    .line 178
    .local v2, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 179
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 180
    .local v6, "objectId":I
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;

    .line 181
    .local v15, "regionObject":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;
    move-object/from16 v16, v2

    .end local v2    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .local v16, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    .line 182
    .local v2, "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    if-nez v2, :cond_6

    .line 183
    move-object/from16 v17, v2

    .end local v2    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    .local v17, "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    .end local v17    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    .restart local v2    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    goto :goto_4

    .line 182
    :cond_6
    move-object/from16 v17, v2

    .line 185
    :goto_4
    if-eqz v2, :cond_8

    .line 186
    move/from16 v17, v6

    .end local v6    # "objectId":I
    .local v17, "objectId":I
    iget-boolean v6, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    :goto_5
    move-object/from16 v28, v6

    .line 187
    .local v28, "paint":Landroid/graphics/Paint;
    iget v6, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    move-object/from16 v18, v8

    .end local v8    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    .local v18, "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    iget v8, v15, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int v26, v11, v8

    iget v8, v15, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int v27, v12, v8

    iget-object v8, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v23, v2

    move-object/from16 v24, v1

    move/from16 v25, v6

    move-object/from16 v29, v8

    invoke-static/range {v23 .. v29}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlocks(Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 185
    .end local v17    # "objectId":I
    .end local v18    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    .end local v28    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "objectId":I
    .restart local v8    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    :cond_8
    move/from16 v17, v6

    move-object/from16 v18, v8

    .line 178
    .end local v2    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    .end local v6    # "objectId":I
    .end local v8    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    .end local v15    # "regionObject":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;
    .restart local v18    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v16

    move-object/from16 v8, v18

    goto :goto_3

    .end local v16    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .end local v18    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    .local v2, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .restart local v8    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    :cond_9
    move-object/from16 v16, v2

    move-object/from16 v18, v8

    .line 193
    .end local v2    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .end local v3    # "j":I
    .end local v8    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    .restart local v16    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .restart local v18    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    iget-boolean v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    if-eqz v2, :cond_c

    .line 195
    iget v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 196
    iget-object v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    iget v3, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v2, v2, v3

    .local v2, "color":I
    goto :goto_7

    .line 197
    .end local v2    # "color":I
    :cond_a
    iget v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 198
    iget-object v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    iget v3, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v2, v2, v3

    .restart local v2    # "color":I
    goto :goto_7

    .line 200
    .end local v2    # "color":I
    :cond_b
    iget-object v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    iget v3, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v2, v2, v3

    .line 202
    .restart local v2    # "color":I
    :goto_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    int-to-float v6, v11

    int-to-float v8, v12

    iget v15, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v15, v11

    int-to-float v15, v15

    move-object/from16 v17, v1

    .end local v1    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .local v17, "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    iget v1, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v1, v12

    int-to-float v1, v1

    move/from16 v19, v2

    .end local v2    # "color":I
    .local v19, "color":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v3

    move/from16 v24, v6

    move/from16 v25, v8

    move/from16 v26, v15

    move/from16 v27, v1

    move-object/from16 v28, v2

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 193
    .end local v17    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .end local v19    # "color":I
    .restart local v1    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    :cond_c
    move-object/from16 v17, v1

    .line 209
    .end local v1    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .restart local v17    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    :goto_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    iget v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    iget v3, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    invoke-static {v1, v11, v12, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 211
    .local v1, "cueBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/google/android/exoplayer2/text/Cue;

    int-to-float v3, v11

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v6, v6

    div-float v25, v3, v6

    const/16 v26, 0x0

    int-to-float v3, v12

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v6, v6

    div-float v27, v3, v6

    const/16 v28, 0x0

    iget v3, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    int-to-float v3, v3

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v6, v6

    div-float v29, v3, v6

    iget v3, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    int-to-float v3, v3

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v6, v6

    div-float v30, v3, v6

    move-object/from16 v23, v2

    move-object/from16 v24, v1

    invoke-direct/range {v23 .. v30}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 152
    .end local v1    # "cueBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "regionId":I
    .end local v10    # "regionComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    .end local v11    # "baseHorizontalAddress":I
    .end local v12    # "baseVerticalAddress":I
    .end local v13    # "clipRight":I
    .end local v14    # "clipBottom":I
    .end local v16    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .end local v17    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .end local v18    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v1, v21

    move-object/from16 v6, v22

    goto/16 :goto_2

    .end local v21    # "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .end local v22    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .local v1, "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .local v6, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    :cond_d
    move-object/from16 v21, v1

    move-object/from16 v22, v6

    .line 219
    .end local v1    # "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .end local v6    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .end local v7    # "i":I
    .restart local v21    # "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .restart local v22    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    return-object v5
.end method

.method public reset()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->reset()V

    .line 118
    return-void
.end method
