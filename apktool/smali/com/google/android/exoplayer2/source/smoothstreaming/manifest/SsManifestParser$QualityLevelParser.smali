.class Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;
.super Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QualityLevelParser"
.end annotation


# static fields
.field private static final KEY_BITRATE:Ljava/lang/String; = "Bitrate"

.field private static final KEY_CHANNELS:Ljava/lang/String; = "Channels"

.field private static final KEY_CODEC_PRIVATE_DATA:Ljava/lang/String; = "CodecPrivateData"

.field private static final KEY_FOUR_CC:Ljava/lang/String; = "FourCC"

.field private static final KEY_INDEX:Ljava/lang/String; = "Index"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final KEY_MAX_HEIGHT:Ljava/lang/String; = "MaxHeight"

.field private static final KEY_MAX_WIDTH:Ljava/lang/String; = "MaxWidth"

.field private static final KEY_NAME:Ljava/lang/String; = "Name"

.field private static final KEY_SAMPLING_RATE:Ljava/lang/String; = "SamplingRate"

.field private static final KEY_TYPE:Ljava/lang/String; = "Type"

.field public static final TAG:Ljava/lang/String; = "QualityLevel"


# instance fields
.field private format:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
    .param p2, "baseUri"    # Ljava/lang/String;

    .line 613
    const-string v0, "QualityLevel"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private static buildCodecSpecificData(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "codecSpecificDataString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v0, "csd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 700
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v1

    .line 701
    .local v1, "codecPrivateData":[B
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->splitNalUnits([B)[[B

    move-result-object v2

    .line 702
    .local v2, "split":[[B
    if-nez v2, :cond_0

    .line 703
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 705
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 708
    .end local v1    # "codecPrivateData":[B
    .end local v2    # "split":[[B
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fourCC"    # Ljava/lang/String;

    .line 712
    const-string v0, "H264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "X264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 713
    const-string v0, "AVC1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "DAVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 715
    :cond_0
    const-string v0, "AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "AACL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 716
    const-string v0, "AACH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "AACP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 718
    :cond_1
    const-string v0, "TTML"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "DFXP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 720
    :cond_2
    const-string v0, "ac-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "dac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 722
    :cond_3
    const-string v0, "ec-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "dec3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 724
    :cond_4
    const-string v0, "dtsc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 725
    const-string v0, "audio/vnd.dts"

    return-object v0

    .line 726
    :cond_5
    const-string v0, "dtsh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "dtsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 728
    :cond_6
    const-string v0, "dtse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 729
    const-string v0, "audio/vnd.dts.hd;profile=lbr"

    return-object v0

    .line 730
    :cond_7
    const-string v0, "opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 731
    const-string v0, "audio/opus"

    return-object v0

    .line 733
    :cond_8
    const/4 v0, 0x0

    return-object v0

    .line 727
    :cond_9
    :goto_0
    const-string v0, "audio/vnd.dts.hd"

    return-object v0

    .line 723
    :cond_a
    :goto_1
    const-string v0, "audio/eac3"

    return-object v0

    .line 721
    :cond_b
    :goto_2
    const-string v0, "audio/ac3"

    return-object v0

    .line 719
    :cond_c
    :goto_3
    const-string v0, "application/ttml+xml"

    return-object v0

    .line 717
    :cond_d
    :goto_4
    const-string v0, "audio/mp4a-latm"

    return-object v0

    .line 714
    :cond_e
    :goto_5
    const-string/jumbo v0, "video/avc"

    return-object v0
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 22
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Type"

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 619
    .local v2, "type":I
    const/4 v3, 0x0

    const-string v4, "Index"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 620
    .local v4, "id":Ljava/lang/String;
    const-string v5, "Name"

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Ljava/lang/String;

    .line 621
    .local v16, "name":Ljava/lang/String;
    const-string v5, "Bitrate"

    invoke-virtual {v0, v1, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v17

    .line 622
    .local v17, "bitrate":I
    const-string v5, "FourCC"

    invoke-virtual {v0, v1, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 624
    .local v18, "sampleMimeType":Ljava/lang/String;
    const-string v5, "CodecPrivateData"

    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    .line 625
    const-string v6, "MaxWidth"

    invoke-virtual {v0, v1, v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v19

    .line 626
    .local v19, "width":I
    const-string v6, "MaxHeight"

    invoke-virtual {v0, v1, v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v20

    .line 627
    .local v20, "height":I
    nop

    .line 628
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 627
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->buildCodecSpecificData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 629
    .local v3, "codecSpecificData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v9, 0x0

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v15, 0x0

    .line 630
    const-string/jumbo v7, "video/mp4"

    move-object v5, v4

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    move/from16 v10, v17

    move/from16 v11, v19

    move/from16 v12, v20

    move-object v14, v3

    invoke-static/range {v5 .. v15}, Lcom/google/android/exoplayer2/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Lcom/google/android/exoplayer2/Format;

    .line 642
    .end local v3    # "codecSpecificData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v19    # "width":I
    .end local v20    # "height":I
    goto/16 :goto_1

    :cond_0
    const/4 v6, 0x1

    const-string v7, "Language"

    if-ne v2, v6, :cond_3

    .line 643
    const-string v6, "audio/mp4a-latm"

    if-nez v18, :cond_1

    move-object v8, v6

    goto :goto_0

    :cond_1
    move-object/from16 v8, v18

    :goto_0
    move-object v15, v8

    .line 644
    .end local v18    # "sampleMimeType":Ljava/lang/String;
    .local v15, "sampleMimeType":Ljava/lang/String;
    const-string v8, "Channels"

    invoke-virtual {v0, v1, v8}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v14

    .line 645
    .local v14, "channels":I
    const-string v8, "SamplingRate"

    invoke-virtual {v0, v1, v8}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v13

    .line 646
    .local v13, "samplingRate":I
    nop

    .line 647
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->buildCodecSpecificData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 648
    .restart local v3    # "codecSpecificData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 649
    nop

    .line 650
    invoke-static {v13, v14}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAacLcAudioSpecificConfig(II)[B

    move-result-object v5

    .line 649
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 652
    :cond_2
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    .line 653
    .local v18, "language":Ljava/lang/String;
    const/4 v9, 0x0

    const/16 v19, 0x0

    .line 654
    const-string v7, "audio/mp4"

    move-object v5, v4

    move-object/from16 v6, v16

    move-object v8, v15

    move/from16 v10, v17

    move v11, v14

    move v12, v13

    move/from16 v20, v13

    .end local v13    # "samplingRate":I
    .local v20, "samplingRate":I
    move-object v13, v3

    move/from16 v21, v14

    .end local v14    # "channels":I
    .local v21, "channels":I
    move/from16 v14, v19

    move-object/from16 v19, v15

    .end local v15    # "sampleMimeType":Ljava/lang/String;
    .local v19, "sampleMimeType":Ljava/lang/String;
    move-object/from16 v15, v18

    invoke-static/range {v5 .. v15}, Lcom/google/android/exoplayer2/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Lcom/google/android/exoplayer2/Format;

    .line 666
    .end local v3    # "codecSpecificData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v18    # "language":Ljava/lang/String;
    .end local v20    # "samplingRate":I
    .end local v21    # "channels":I
    move-object/from16 v18, v19

    goto :goto_1

    .end local v19    # "sampleMimeType":Ljava/lang/String;
    .local v18, "sampleMimeType":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 667
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 668
    .local v3, "language":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 669
    const-string v7, "application/mp4"

    move-object v5, v4

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    move/from16 v10, v17

    move-object v12, v3

    invoke-static/range {v5 .. v12}, Lcom/google/android/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Lcom/google/android/exoplayer2/Format;

    .line 678
    .end local v3    # "language":Ljava/lang/String;
    goto :goto_1

    .line 679
    :cond_4
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 680
    const-string v7, "application/mp4"

    move-object v5, v4

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    move/from16 v10, v17

    invoke-static/range {v5 .. v12}, Lcom/google/android/exoplayer2/Format;->createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Lcom/google/android/exoplayer2/Format;

    .line 690
    :goto_1
    return-void
.end method
