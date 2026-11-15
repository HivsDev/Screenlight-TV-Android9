.class final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# static fields
.field private static final DEFAULT_MAX_CLL:I = 0x3e8

.field private static final DEFAULT_MAX_FALL:I = 0xc8

.field private static final DISPLAY_UNIT_PIXELS:I = 0x0

.field private static final MAX_CHROMATICITY:I = 0xc350


# instance fields
.field public audioBitDepth:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public flagDefault:Z

.field public flagForced:Z

.field public hasColorInfo:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public maxContentLuminance:I

.field public maxFrameAverageLuminance:I

.field public maxMasteringLuminance:F

.field public minMasteringLuminance:F

.field public nalUnitLengthFieldLength:I

.field public name:Ljava/lang/String;

.field public number:I

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public primaryBChromaticityX:F

.field public primaryBChromaticityY:F

.field public primaryGChromaticityX:F

.field public primaryGChromaticityY:F

.field public primaryRChromaticityX:F

.field public primaryRChromaticityY:F

.field public projectionData:[B

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public type:I

.field public whitePointChromaticityX:F

.field public whitePointChromaticityY:F

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1629
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 1630
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 1631
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1632
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 1633
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 1634
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1635
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 1637
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 1638
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 1640
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 1642
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 1644
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    .line 1645
    const/16 v1, 0xc8

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    .line 1646
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 1647
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 1648
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 1649
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 1650
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 1651
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 1652
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 1653
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 1654
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 1655
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    .line 1658
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 1659
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 1660
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 1661
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 1662
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 1667
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 1668
    const-string v0, "eng"

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;

    .line 1602
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1602
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method private getHdrStaticInfo()[B
    .locals 5

    .line 1921
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1930
    :cond_0
    const/16 v0, 0x19

    new-array v0, v0, [B

    .line 1931
    .local v0, "hdrStaticInfoData":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1932
    .local v1, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1933
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v3, 0x47435000    # 50000.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1934
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1935
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1936
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1937
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1938
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1939
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1940
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1941
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1942
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1943
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1944
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1945
    return-object v0

    .line 1927
    .end local v0    # "hdrStaticInfoData":[B
    .end local v1    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseFourCcPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 9
    .param p0, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1961
    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1962
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    .line 1963
    .local v0, "compression":J
    const-wide/32 v2, 0x58564944

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 1964
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "video/3gpp"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 1965
    :cond_0
    const-wide/32 v2, 0x31435657

    cmp-long v5, v0, v2

    if-nez v5, :cond_3

    .line 1968
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    .line 1969
    .local v2, "startOffset":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 1970
    .local v3, "bufferData":[B
    move v4, v2

    .local v4, "offset":I
    :goto_0
    array-length v5, v3

    add-int/lit8 v5, v5, -0x4

    if-ge v4, v5, :cond_2

    .line 1971
    aget-byte v5, v3, v4

    if-nez v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v3, v5

    if-nez v5, :cond_1

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v3, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v4, 0x3

    aget-byte v5, v3, v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_1

    .line 1976
    array-length v5, v3

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 1977
    .local v5, "initializationData":[B
    new-instance v6, Landroid/util/Pair;

    const-string/jumbo v7, "video/wvc1"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 1970
    .end local v5    # "initializationData":[B
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1980
    .end local v4    # "offset":I
    :cond_2
    new-instance v4, Lcom/google/android/exoplayer2/ParserException;

    const-string v5, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "buffer":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    throw v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1984
    .end local v0    # "compression":J
    .end local v2    # "startOffset":I
    .end local v3    # "bufferData":[B
    .restart local p0    # "buffer":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_3
    nop

    .line 1986
    const-string v0, "MatroskaExtractor"

    const-string v1, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "video/x-unknown"

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1982
    :catch_0
    move-exception v0

    .line 1983
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Error parsing FourCC private data"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static parseMsAcmCodecPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 8
    .param p0, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 2049
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    .line 2050
    .local v0, "formatTag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2051
    return v1

    .line 2052
    :cond_0
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 2053
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 2054
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$400()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 2055
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$400()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2054
    :goto_0
    return v1

    .line 2057
    :cond_2
    return v3

    .line 2059
    .end local v0    # "formatTag":I
    :catch_0
    move-exception v0

    .line 2060
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Error parsing MS/ACM codec private"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .locals 9
    .param p0, "codecPrivate"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1999
    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    :try_start_0
    aget-byte v2, p0, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 2002
    const/4 v2, 0x1

    .line 2003
    .local v2, "offset":I
    move v4, v1

    .line 2004
    .local v4, "vorbisInfoLength":I
    :goto_0
    aget-byte v5, p0, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 2005
    add-int/lit16 v4, v4, 0xff

    .line 2006
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2008
    :cond_0
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    aget-byte v2, p0, v2

    add-int/2addr v4, v2

    .line 2010
    move v2, v1

    .line 2011
    .local v2, "vorbisSkipLength":I
    :goto_1
    aget-byte v7, p0, v5

    if-ne v7, v6, :cond_1

    .line 2012
    add-int/lit16 v2, v2, 0xff

    .line 2013
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2015
    :cond_1
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    aget-byte v5, p0, v5

    add-int/2addr v2, v5

    .line 2017
    aget-byte v5, p0, v6

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    .line 2020
    new-array v5, v4, [B

    .line 2021
    .local v5, "vorbisInfo":[B
    invoke-static {p0, v6, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2022
    add-int/2addr v6, v4

    .line 2023
    aget-byte v7, p0, v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 2026
    add-int/2addr v6, v2

    .line 2027
    aget-byte v7, p0, v6

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2

    .line 2030
    array-length v7, p0

    sub-int/2addr v7, v6

    new-array v7, v7, [B

    .line 2031
    .local v7, "vorbisBooks":[B
    array-length v8, p0

    sub-int/2addr v8, v6

    invoke-static {p0, v6, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2032
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2033
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2034
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2035
    return-object v1

    .line 2028
    .end local v1    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v7    # "vorbisBooks":[B
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "codecPrivate":[B
    throw v1

    .line 2024
    .restart local p0    # "codecPrivate":[B
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "codecPrivate":[B
    throw v1

    .line 2018
    .end local v5    # "vorbisInfo":[B
    .restart local p0    # "codecPrivate":[B
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "codecPrivate":[B
    throw v1

    .line 2000
    .end local v2    # "vorbisSkipLength":I
    .end local v4    # "vorbisInfoLength":I
    .end local v6    # "offset":I
    .restart local p0    # "codecPrivate":[B
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "codecPrivate":[B
    throw v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2036
    .restart local p0    # "codecPrivate":[B
    :catch_0
    move-exception v1

    .line 2037
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public initializeOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;I)V
    .locals 28
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "trackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1677
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 1678
    .local v1, "maxInputSize":I
    const/4 v2, -0x1

    .line 1679
    .local v2, "pcmEncoding":I
    const/4 v3, 0x0

    .line 1680
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, -0x1

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v5, "A_OPUS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "A_FLAC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "A_EAC3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "V_MPEG2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "S_TEXT/UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_1

    :sswitch_6
    const-string v5, "S_TEXT/ASS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "A_PCM/INT/LIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_8
    const-string v5, "A_DTS/EXPRESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_9
    const-string v5, "V_THEORA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v5, "S_HDMV/PGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "V_VP9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "V_VP8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_1

    :sswitch_d
    const-string v5, "A_DTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_e
    const-string v5, "A_AC3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_f
    const-string v5, "A_AAC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_10
    const-string v5, "A_DTS/LOSSLESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_11
    const-string v5, "S_VOBSUB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_12
    const-string v5, "V_MPEG4/ISO/AVC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto/16 :goto_1

    :sswitch_13
    const-string v5, "V_MPEG4/ISO/ASP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto/16 :goto_1

    :sswitch_14
    const-string v5, "S_DVBSUB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1c

    goto :goto_1

    :sswitch_15
    const-string v5, "V_MS/VFW/FOURCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :sswitch_16
    const-string v5, "A_MPEG/L3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xe

    goto :goto_1

    :sswitch_17
    const-string v5, "A_MPEG/L2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xd

    goto :goto_1

    :sswitch_18
    const-string v5, "A_VORBIS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xa

    goto :goto_1

    :sswitch_19
    const-string v5, "A_TRUEHD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x11

    goto :goto_1

    :sswitch_1a
    const-string v5, "A_MS/ACM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x16

    goto :goto_1

    :sswitch_1b
    const-string v5, "V_MPEG4/ISO/SP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1c
    const-string v5, "V_MPEG4/ISO/AP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :goto_0
    const/4 v4, -0x1

    :goto_1
    const-string v5, ". Setting mimeType to "

    const-string v13, "Unsupported PCM bit depth: "

    const-string v14, "MatroskaExtractor"

    packed-switch v4, :pswitch_data_0

    .line 1812
    move-object/from16 v9, p1

    new-instance v4, Lcom/google/android/exoplayer2/ParserException;

    const-string v5, "Unrecognized codec identifier."

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1806
    :pswitch_0
    const-string v4, "application/dvbsubs"

    .line 1808
    .local v4, "mimeType":Ljava/lang/String;
    new-array v5, v6, [B

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    aget-byte v8, v6, v9

    aput-byte v8, v5, v9

    aget-byte v8, v6, v7

    aput-byte v8, v5, v7

    aget-byte v7, v6, v11

    aput-byte v7, v5, v11

    aget-byte v6, v6, v10

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1810
    goto/16 :goto_3

    .line 1803
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_1
    const-string v4, "application/pgs"

    .line 1804
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3

    .line 1799
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_2
    const-string v4, "application/vobsub"

    .line 1800
    .restart local v4    # "mimeType":Ljava/lang/String;
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1801
    goto/16 :goto_3

    .line 1796
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_3
    const-string v4, "text/x-ssa"

    .line 1797
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3

    .line 1793
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_4
    const-string v4, "application/x-subrip"

    .line 1794
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3

    .line 1783
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_5
    const-string v4, "audio/raw"

    .line 1784
    .restart local v4    # "mimeType":Ljava/lang/String;
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v2

    .line 1785
    if-nez v2, :cond_3

    .line 1786
    const/4 v2, -0x1

    .line 1787
    const-string v4, "audio/x-unknown"

    .line 1788
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1768
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_6
    const-string v4, "audio/raw"

    .line 1769
    .restart local v4    # "mimeType":Ljava/lang/String;
    new-instance v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1770
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v2

    .line 1771
    if-nez v2, :cond_3

    .line 1772
    const/4 v2, -0x1

    .line 1773
    const-string v4, "audio/x-unknown"

    .line 1774
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1778
    :cond_1
    const-string v4, "audio/x-unknown"

    .line 1779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    goto/16 :goto_3

    .line 1764
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_7
    const-string v4, "audio/flac"

    .line 1765
    .restart local v4    # "mimeType":Ljava/lang/String;
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1766
    goto/16 :goto_3

    .line 1761
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_8
    const-string v4, "audio/vnd.dts.hd"

    .line 1762
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3

    .line 1758
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_9
    const-string v4, "audio/vnd.dts"

    .line 1759
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3

    .line 1753
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_a
    const-string v4, "audio/true-hd"

    .line 1754
    .restart local v4    # "mimeType":Ljava/lang/String;
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;-><init>()V

    iput-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    .line 1755
    goto/16 :goto_3

    .line 1750
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_b
    const-string v4, "audio/eac3"

    .line 1751
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3

    .line 1747
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_c
    const-string v4, "audio/ac3"

    .line 1748
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3

    .line 1743
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_d
    const-string v4, "audio/mpeg"

    .line 1744
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1000

    .line 1745
    goto/16 :goto_3

    .line 1739
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_e
    const-string v4, "audio/mpeg-L2"

    .line 1740
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1000

    .line 1741
    goto/16 :goto_3

    .line 1735
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_f
    const-string v4, "audio/mp4a-latm"

    .line 1736
    .restart local v4    # "mimeType":Ljava/lang/String;
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1737
    goto/16 :goto_3

    .line 1725
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_10
    const-string v4, "audio/opus"

    .line 1726
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1680

    .line 1727
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v5

    .line 1728
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1729
    nop

    .line 1730
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 1729
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1731
    nop

    .line 1732
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 1731
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1733
    goto :goto_3

    .line 1720
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_11
    const-string v4, "audio/vorbis"

    .line 1721
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x2000

    .line 1722
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v3

    .line 1723
    goto :goto_3

    .line 1717
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_12
    const-string/jumbo v4, "video/x-unknown"

    .line 1718
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto :goto_3

    .line 1710
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_13
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseFourCcPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v4

    .line 1711
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1712
    .local v5, "mimeType":Ljava/lang/String;
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, Ljava/util/List;

    .line 1713
    move-object v4, v5

    goto :goto_3

    .line 1704
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_14
    const-string/jumbo v4, "video/hevc"

    .line 1705
    .local v4, "mimeType":Ljava/lang/String;
    new-instance v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v5}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v5

    .line 1706
    .local v5, "hevcConfig":Lcom/google/android/exoplayer2/video/HevcConfig;
    iget-object v3, v5, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 1707
    iget v6, v5, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 1708
    goto :goto_3

    .line 1698
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "hevcConfig":Lcom/google/android/exoplayer2/video/HevcConfig;
    :pswitch_15
    const-string/jumbo v4, "video/avc"

    .line 1699
    .restart local v4    # "mimeType":Ljava/lang/String;
    new-instance v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v5}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v5

    .line 1700
    .local v5, "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    iget-object v3, v5, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 1701
    iget v6, v5, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 1702
    goto :goto_3

    .line 1693
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    :pswitch_16
    const-string/jumbo v4, "video/mp4v-es"

    .line 1694
    .restart local v4    # "mimeType":Ljava/lang/String;
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    .line 1695
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_2
    move-object v3, v5

    .line 1696
    goto :goto_3

    .line 1688
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_17
    const-string/jumbo v4, "video/mpeg2"

    .line 1689
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto :goto_3

    .line 1685
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_18
    const-string/jumbo v4, "video/x-vnd.on2.vp9"

    .line 1686
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto :goto_3

    .line 1682
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_19
    const-string/jumbo v4, "video/x-vnd.on2.vp8"

    .line 1683
    .restart local v4    # "mimeType":Ljava/lang/String;
    nop

    .line 1817
    :cond_3
    :goto_3
    const/4 v5, 0x0

    .line 1818
    .local v5, "selectionFlags":I
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    or-int/2addr v5, v6

    .line 1819
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v6, :cond_4

    const/4 v9, 0x2

    :cond_4
    or-int/2addr v5, v9

    .line 1822
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1823
    const/4 v6, 0x1

    .line 1824
    .local v6, "type":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, -0x1

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    move-object v14, v4

    move/from16 v17, v1

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v9

    move/from16 v23, v5

    move-object/from16 v24, v10

    invoke-static/range {v13 .. v24}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .local v7, "format":Lcom/google/android/exoplayer2/Format;
    goto/16 :goto_6

    .line 1827
    .end local v6    # "type":I
    .end local v7    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_5
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1828
    const/4 v6, 0x2

    .line 1829
    .restart local v6    # "type":I
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v7, :cond_8

    .line 1830
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-ne v7, v12, :cond_6

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    :cond_6
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1831
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v7, v12, :cond_7

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    :cond_7
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 1833
    :cond_8
    const/high16 v7, -0x40800000    # -1.0f

    .line 1834
    .local v7, "pixelWidthHeightRatio":F
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-eq v8, v12, :cond_9

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v9, v12, :cond_9

    .line 1835
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    mul-int v10, v10, v8

    int-to-float v8, v10

    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    mul-int v10, v10, v9

    int-to-float v9, v10

    div-float/2addr v8, v9

    move v7, v8

    .line 1837
    :cond_9
    const/4 v8, 0x0

    .line 1838
    .local v8, "colorInfo":Lcom/google/android/exoplayer2/video/ColorInfo;
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v9, :cond_a

    .line 1839
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getHdrStaticInfo()[B

    move-result-object v9

    .line 1840
    .local v9, "hdrStaticInfo":[B
    new-instance v10, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    invoke-direct {v10, v11, v12, v13, v9}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    move-object v8, v10

    .line 1842
    .end local v9    # "hdrStaticInfo":[B
    :cond_a
    const/4 v9, -0x1

    .line 1844
    .local v9, "rotationDegrees":I
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    const-string v11, "htc_video_rotA-000"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1845
    const/4 v9, 0x0

    goto :goto_4

    .line 1846
    :cond_b
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    const-string v11, "htc_video_rotA-090"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1847
    const/16 v9, 0x5a

    goto :goto_4

    .line 1848
    :cond_c
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    const-string v11, "htc_video_rotA-180"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1849
    const/16 v9, 0xb4

    goto :goto_4

    .line 1850
    :cond_d
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    const-string v11, "htc_video_rotA-270"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1851
    const/16 v9, 0x10e

    .line 1853
    :cond_e
    :goto_4
    nop

    .line 1855
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v16, -0x1

    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    const/high16 v20, -0x40800000    # -1.0f

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    iget v14, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1854
    move/from16 v25, v14

    move-object v14, v4

    move-object/from16 v27, v15

    const/4 v15, 0x0

    move/from16 v17, v1

    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v21, v3

    move/from16 v22, v9

    move/from16 v23, v7

    move-object/from16 v24, v12

    move-object/from16 v26, v8

    invoke-static/range {v13 .. v27}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 1870
    .end local v8    # "colorInfo":Lcom/google/android/exoplayer2/video/ColorInfo;
    .end local v9    # "rotationDegrees":I
    .local v7, "format":Lcom/google/android/exoplayer2/Format;
    goto/16 :goto_6

    .end local v6    # "type":I
    .end local v7    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_f
    const-string v6, "application/x-subrip"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1871
    const/4 v6, 0x3

    .line 1872
    .restart local v6    # "type":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v7, v4, v5, v8, v9}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .restart local v7    # "format":Lcom/google/android/exoplayer2/Format;
    goto/16 :goto_6

    .line 1874
    .end local v6    # "type":I
    .end local v7    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_10
    const-string v6, "text/x-ssa"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1875
    const/4 v6, 0x3

    .line 1876
    .restart local v6    # "type":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v7

    .line 1877
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$300()[B

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1878
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1879
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, -0x1

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    const/16 v19, -0x1

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const-wide v21, 0x7fffffffffffffffL

    move-object v14, v4

    move/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v23, v3

    invoke-static/range {v13 .. v23}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .restart local v7    # "format":Lcom/google/android/exoplayer2/Format;
    goto :goto_6

    .line 1882
    .end local v6    # "type":I
    .end local v7    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_11
    const-string v6, "application/vobsub"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 1883
    const-string v6, "application/pgs"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 1884
    const-string v6, "application/dvbsubs"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_5

    .line 1897
    :cond_12
    new-instance v6, Lcom/google/android/exoplayer2/ParserException;

    const-string v7, "Unexpected MIME type."

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1885
    :cond_13
    :goto_5
    const/4 v6, 0x3

    .line 1886
    .restart local v6    # "type":I
    nop

    .line 1888
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, -0x1

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1887
    move-object v14, v4

    move/from16 v17, v5

    move-object/from16 v18, v3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-static/range {v13 .. v20}, Lcom/google/android/exoplayer2/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 1900
    .restart local v7    # "format":Lcom/google/android/exoplayer2/Format;
    :goto_6
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v9, p1

    invoke-interface {v9, v8, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1901
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v8, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 1902
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1c
        -0x7ce7f3b0 -> :sswitch_1b
        -0x76567dc0 -> :sswitch_1a
        -0x6a615338 -> :sswitch_19
        -0x672350af -> :sswitch_18
        -0x585f4fce -> :sswitch_17
        -0x585f4fcd -> :sswitch_16
        -0x51dc40b2 -> :sswitch_15
        -0x37a9c464 -> :sswitch_14
        -0x2016c535 -> :sswitch_13
        -0x2016c4e5 -> :sswitch_12
        -0x19552dbd -> :sswitch_11
        -0x1538b2ba -> :sswitch_10
        0x3c02325 -> :sswitch_f
        0x3c02353 -> :sswitch_e
        0x3c030c5 -> :sswitch_d
        0x4e86155 -> :sswitch_c
        0x4e86156 -> :sswitch_b
        0x5e8da3e -> :sswitch_a
        0x1a8350d6 -> :sswitch_9
        0x2056f406 -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
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
.end method

.method public outputPendingSampleMetadata()V
    .locals 1

    .line 1906
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v0, :cond_0

    .line 1907
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V

    .line 1909
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1913
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v0, :cond_0

    .line 1914
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->reset()V

    .line 1916
    :cond_0
    return-void
.end method
