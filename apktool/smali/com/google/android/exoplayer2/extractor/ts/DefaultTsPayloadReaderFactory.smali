.class public final Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR_TAG_CAPTION_SERVICE:I = 0x86

.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4

.field public static final FLAG_IGNORE_SPLICE_INFO_STREAM:I = 0x10

.field public static final FLAG_OVERRIDE_CAPTION_DESCRIPTORS:I = 0x20


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    .line 97
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 104
    nop

    .line 107
    const/4 v0, 0x0

    const-string v1, "application/cea-608"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v0}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 106
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    .line 108
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p2, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 122
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 123
    return-void
.end method

.method private buildSeiReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/SeiReader;
    .locals 2
    .param p1, "esInfo"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    .line 179
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private buildUserDataReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;
    .locals 2
    .param p1, "esInfo"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    .line 192
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .locals 27
    .param p1, "esInfo"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation

    .line 205
    move-object/from16 v0, p0

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-object v1

    .line 208
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 209
    .local v1, "scratchDescriptorData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 210
    .local v3, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lez v4, :cond_6

    .line 211
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 212
    .local v4, "descriptorTag":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 213
    .local v5, "descriptorLength":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    add-int/2addr v6, v5

    .line 214
    .local v6, "nextDescriptorPosition":I
    const/16 v7, 0x86

    if-ne v4, v7, :cond_5

    .line 216
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 217
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    .line 218
    .local v7, "numberOfServices":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_5

    .line 219
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v9

    .line 220
    .local v9, "language":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    .line 221
    .local v15, "captionTypeByte":I
    and-int/lit16 v10, v15, 0x80

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    move/from16 v21, v10

    .line 224
    .local v21, "isDigital":Z
    if-eqz v21, :cond_2

    .line 225
    const-string v10, "application/cea-708"

    .line 226
    .local v10, "mimeType":Ljava/lang/String;
    and-int/lit8 v13, v15, 0x3f

    move-object/from16 v22, v10

    move/from16 v23, v13

    .local v13, "accessibilityChannel":I
    goto :goto_3

    .line 228
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v13    # "accessibilityChannel":I
    :cond_2
    const-string v10, "application/cea-608"

    .line 229
    .restart local v10    # "mimeType":Ljava/lang/String;
    const/4 v13, 0x1

    move-object/from16 v22, v10

    move/from16 v23, v13

    .line 233
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v22, "mimeType":Ljava/lang/String;
    .local v23, "accessibilityChannel":I
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    int-to-byte v14, v10

    .line 235
    .local v14, "flags":B
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 237
    const/4 v10, 0x0

    .line 239
    .local v10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v21, :cond_4

    .line 240
    and-int/lit8 v13, v14, 0x40

    if-eqz v13, :cond_3

    const/4 v11, 0x1

    .line 241
    .local v11, "isWideAspectRatio":Z
    :cond_3
    invoke-static {v11}, Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;->buildData(Z)Ljava/util/List;

    move-result-object v10

    move-object/from16 v24, v10

    goto :goto_4

    .line 239
    .end local v11    # "isWideAspectRatio":Z
    :cond_4
    move-object/from16 v24, v10

    .line 244
    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v24, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_4
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide v18, 0x7fffffffffffffffL

    .line 245
    move-object/from16 v11, v22

    move/from16 v25, v14

    .end local v14    # "flags":B
    .local v25, "flags":B
    move/from16 v14, v16

    move/from16 v26, v15

    .end local v15    # "captionTypeByte":I
    .local v26, "captionTypeByte":I
    move-object v15, v9

    move/from16 v16, v23

    move-object/from16 v20, v24

    invoke-static/range {v10 .. v20}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    .line 244
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v9    # "language":Ljava/lang/String;
    .end local v21    # "isDigital":Z
    .end local v22    # "mimeType":Ljava/lang/String;
    .end local v23    # "accessibilityChannel":I
    .end local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v25    # "flags":B
    .end local v26    # "captionTypeByte":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 260
    .end local v7    # "numberOfServices":I
    .end local v8    # "i":I
    :cond_5
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 261
    .end local v4    # "descriptorTag":I
    .end local v5    # "descriptorLength":I
    .end local v6    # "nextDescriptorPosition":I
    goto/16 :goto_0

    .line 263
    :cond_6
    return-object v3
.end method

.method private isSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 267
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public createPayloadReader(ILcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "esInfo"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    .line 132
    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b

    const/16 v2, 0x11

    if-eq p1, v2, :cond_9

    const/16 v0, 0x15

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x24

    if-eq p1, v0, :cond_5

    const/16 v0, 0x59

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x81

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_3

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_2

    .line 165
    return-object v3

    .line 157
    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;-><init>()V

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    :goto_0
    return-object v3

    .line 144
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 147
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 162
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 155
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 151
    :cond_6
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;

    .line 152
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    move-result-object v1

    const/4 v2, 0x1

    .line 153
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v2

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v4

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;ZZ)V

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    .line 151
    :goto_1
    return-object v3

    .line 160
    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/Id3Reader;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 140
    :cond_9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;

    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_2
    return-object v3

    .line 137
    :cond_b
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_3
    return-object v3

    .line 135
    :cond_d
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 149
    :cond_e
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0
.end method
