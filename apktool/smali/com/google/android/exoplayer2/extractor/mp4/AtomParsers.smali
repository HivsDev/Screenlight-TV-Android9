.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I

.field private static final TYPE_meta:I

.field private static final TYPE_sbtl:I

.field private static final TYPE_soun:I

.field private static final TYPE_subt:I

.field private static final TYPE_text:I

.field private static final TYPE_vide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string/jumbo v0, "vide"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    .line 48
    const-string v0, "soun"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    .line 49
    const-string v0, "text"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    .line 50
    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    .line 51
    const-string v0, "subt"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    .line 52
    const-string v0, "clcp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    .line 53
    const-string v0, "meta"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    return-void
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .locals 8
    .param p0, "timestamps"    # [J
    .param p1, "duration"    # J
    .param p3, "editStartTime"    # J
    .param p5, "editEndTime"    # J

    .line 1232
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1233
    .local v0, "lastIndex":I
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    .line 1234
    .local v4, "latestDelayIndex":I
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 1235
    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v2

    .line 1236
    .local v2, "earliestPaddingIndex":I
    aget-wide v5, p0, v3

    cmp-long v7, v5, p3

    if-gtz v7, :cond_0

    aget-wide v5, p0, v4

    cmp-long v7, p3, v5

    if-gez v7, :cond_0

    aget-wide v5, p0, v2

    cmp-long v7, v5, p5

    if-gez v7, :cond_0

    cmp-long v5, p5, p1

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static findEsdsPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I
    .locals 4
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .line 1040
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 1041
    .local v0, "childAtomPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1042
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1043
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1044
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1045
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1046
    .local v2, "childType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v2, v3, :cond_1

    .line 1047
    return v0

    .line 1049
    :cond_1
    add-int/2addr v0, v1

    .line 1050
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    goto :goto_0

    .line 1051
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 29
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "isQuickTime"    # Z
    .param p7, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p8, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .param p9, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 901
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v15, p5

    move-object/from16 v3, p7

    move-object/from16 v14, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 903
    const/4 v4, 0x0

    .line 904
    .local v4, "quickTimeSoundDescriptionVersion":I
    const/4 v6, 0x6

    if-eqz p6, :cond_0

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 906
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v13, v4

    goto :goto_0

    .line 908
    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v13, v4

    .line 914
    .end local v4    # "quickTimeSoundDescriptionVersion":I
    .local v13, "quickTimeSoundDescriptionVersion":I
    :goto_0
    const/4 v12, 0x2

    const/16 v4, 0x10

    const/4 v11, 0x1

    if-eqz v13, :cond_3

    if-ne v13, v11, :cond_1

    goto :goto_1

    .line 922
    :cond_1
    if-ne v13, v12, :cond_2

    .line 923
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 926
    .local v5, "sampleRate":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 930
    .local v4, "channelCount":I
    const/16 v6, 0x14

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v6, v5

    goto :goto_2

    .line 933
    .end local v4    # "channelCount":I
    .end local v5    # "sampleRate":I
    :cond_2
    return-void

    .line 915
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 916
    .local v5, "channelCount":I
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v6

    .line 919
    .local v6, "sampleRate":I
    if-ne v13, v11, :cond_4

    .line 920
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 936
    :cond_4
    move v4, v5

    .end local v5    # "channelCount":I
    .restart local v4    # "channelCount":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 937
    .local v5, "childPosition":I
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    const/16 v16, 0x0

    move/from16 v8, p1

    if-ne v8, v7, :cond_7

    .line 938
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v7

    .line 940
    .local v7, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v7, :cond_6

    .line 941
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 942
    .end local p1    # "atomType":I
    .local v8, "atomType":I
    if-nez v3, :cond_5

    move-object/from16 v9, v16

    goto :goto_3

    :cond_5
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 943
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v9

    :goto_3
    move-object v3, v9

    .line 944
    .end local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v3, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iget-object v9, v14, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v10, v9, p9

    .line 946
    :cond_6
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move-object v9, v3

    move v10, v8

    goto :goto_4

    .line 937
    .end local v3    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v7    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    .end local v8    # "atomType":I
    .restart local p1    # "atomType":I
    .restart local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_7
    move-object v9, v3

    move v10, v8

    .line 954
    .end local p1    # "atomType":I
    .end local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v9, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v10, "atomType":I
    :goto_4
    const/4 v3, 0x0

    .line 955
    .local v3, "mimeType":Ljava/lang/String;
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    if-ne v10, v7, :cond_8

    .line 956
    const-string v3, "audio/ac3"

    goto :goto_7

    .line 957
    :cond_8
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    if-ne v10, v7, :cond_9

    .line 958
    const-string v3, "audio/eac3"

    goto :goto_7

    .line 959
    :cond_9
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    if-ne v10, v7, :cond_a

    .line 960
    const-string v3, "audio/vnd.dts"

    goto :goto_7

    .line 961
    :cond_a
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v10, v7, :cond_14

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    if-ne v10, v7, :cond_b

    goto :goto_6

    .line 963
    :cond_b
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    if-ne v10, v7, :cond_c

    .line 964
    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_7

    .line 965
    :cond_c
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    if-ne v10, v7, :cond_d

    .line 966
    const-string v3, "audio/3gpp"

    goto :goto_7

    .line 967
    :cond_d
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    if-ne v10, v7, :cond_e

    .line 968
    const-string v3, "audio/amr-wb"

    goto :goto_7

    .line 969
    :cond_e
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v10, v7, :cond_13

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    if-ne v10, v7, :cond_f

    goto :goto_5

    .line 971
    :cond_f
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    if-ne v10, v7, :cond_10

    .line 972
    const-string v3, "audio/mpeg"

    goto :goto_7

    .line 973
    :cond_10
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v10, v7, :cond_11

    .line 974
    const-string v3, "audio/alac"

    goto :goto_7

    .line 975
    :cond_11
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alaw:I

    if-ne v10, v7, :cond_12

    .line 976
    const-string v3, "audio/g711-alaw"

    goto :goto_7

    .line 977
    :cond_12
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ulaw:I

    if-ne v10, v7, :cond_15

    .line 978
    const-string v3, "audio/g711-mlaw"

    goto :goto_7

    .line 970
    :cond_13
    :goto_5
    const-string v3, "audio/raw"

    goto :goto_7

    .line 962
    :cond_14
    :goto_6
    const-string v3, "audio/vnd.dts.hd"

    .line 981
    :cond_15
    :goto_7
    const/4 v7, 0x0

    move/from16 v17, v4

    move v8, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object v7, v3

    .line 982
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "channelCount":I
    .end local v5    # "childPosition":I
    .end local v6    # "sampleRate":I
    .local v7, "mimeType":Ljava/lang/String;
    .local v8, "childPosition":I
    .local v17, "channelCount":I
    .local v18, "sampleRate":I
    .local v19, "initializationData":[B
    :goto_8
    sub-int v3, v8, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_20

    .line 983
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 985
    .local v6, "childAtomSize":I
    const/4 v3, 0x0

    if-lez v6, :cond_16

    const/4 v5, 0x1

    goto :goto_9

    :cond_16
    const/4 v5, 0x0

    :goto_9
    const-string v11, "childAtomSize should be positive"

    invoke-static {v5, v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 987
    .local v11, "childAtomType":I
    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-eq v11, v5, :cond_1c

    if-eqz p6, :cond_17

    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wave:I

    if-ne v11, v5, :cond_17

    move-object/from16 v26, v7

    move-object/from16 v21, v9

    move/from16 v22, v10

    move v5, v11

    move/from16 v24, v13

    const/16 v20, 0x1

    const/16 v23, 0x2

    move v13, v8

    goto/16 :goto_b

    .line 1004
    :cond_17
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dac3:I

    if-ne v11, v4, :cond_18

    .line 1005
    add-int/lit8 v3, v8, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1006
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v15, v9}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v14, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v26, v7

    move-object/from16 v21, v9

    move/from16 v22, v10

    move v5, v11

    move/from16 v24, v13

    const/16 v20, 0x1

    const/16 v23, 0x2

    move v13, v8

    goto/16 :goto_a

    .line 1008
    :cond_18
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dec3:I

    if-ne v11, v4, :cond_19

    .line 1009
    add-int/lit8 v3, v8, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1010
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v15, v9}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v14, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v26, v7

    move-object/from16 v21, v9

    move/from16 v22, v10

    move v5, v11

    move/from16 v24, v13

    const/16 v20, 0x1

    const/16 v23, 0x2

    move v13, v8

    goto/16 :goto_a

    .line 1012
    :cond_19
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ddts:I

    if-ne v11, v4, :cond_1a

    .line 1013
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v4, v7

    move/from16 v25, v6

    .end local v6    # "childAtomSize":I
    .local v25, "childAtomSize":I
    move/from16 v6, v21

    move-object/from16 v26, v7

    .end local v7    # "mimeType":Ljava/lang/String;
    .local v26, "mimeType":Ljava/lang/String;
    move/from16 v7, v22

    move/from16 v27, v8

    .end local v8    # "childPosition":I
    .local v27, "childPosition":I
    move/from16 v8, v17

    move-object/from16 v21, v9

    .end local v9    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v21, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    move/from16 v9, v18

    move/from16 v22, v10

    .end local v10    # "atomType":I
    .local v22, "atomType":I
    move-object/from16 v10, v23

    move/from16 v28, v11

    const/16 v20, 0x1

    .end local v11    # "childAtomType":I
    .local v28, "childAtomType":I
    move-object/from16 v11, v21

    const/16 v23, 0x2

    move/from16 v12, v24

    move/from16 v24, v13

    .end local v13    # "quickTimeSoundDescriptionVersion":I
    .local v24, "quickTimeSoundDescriptionVersion":I
    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v14, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move/from16 v6, v25

    move/from16 v13, v27

    move/from16 v5, v28

    goto :goto_a

    .line 1016
    .end local v21    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v22    # "atomType":I
    .end local v24    # "quickTimeSoundDescriptionVersion":I
    .end local v25    # "childAtomSize":I
    .end local v26    # "mimeType":Ljava/lang/String;
    .end local v27    # "childPosition":I
    .end local v28    # "childAtomType":I
    .restart local v6    # "childAtomSize":I
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "childPosition":I
    .restart local v9    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v10    # "atomType":I
    .restart local v11    # "childAtomType":I
    .restart local v13    # "quickTimeSoundDescriptionVersion":I
    :cond_1a
    move/from16 v25, v6

    move-object/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v21, v9

    move/from16 v22, v10

    move/from16 v28, v11

    move/from16 v24, v13

    const/16 v20, 0x1

    const/16 v23, 0x2

    .end local v6    # "childAtomSize":I
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "childPosition":I
    .end local v9    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v10    # "atomType":I
    .end local v11    # "childAtomType":I
    .end local v13    # "quickTimeSoundDescriptionVersion":I
    .restart local v21    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v22    # "atomType":I
    .restart local v24    # "quickTimeSoundDescriptionVersion":I
    .restart local v25    # "childAtomSize":I
    .restart local v26    # "mimeType":Ljava/lang/String;
    .restart local v27    # "childPosition":I
    .restart local v28    # "childAtomType":I
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    move/from16 v5, v28

    .end local v28    # "childAtomType":I
    .local v5, "childAtomType":I
    if-ne v5, v4, :cond_1b

    .line 1017
    move/from16 v6, v25

    .end local v25    # "childAtomSize":I
    .restart local v6    # "childAtomSize":I
    new-array v4, v6, [B

    .line 1018
    .end local v19    # "initializationData":[B
    .local v4, "initializationData":[B
    move/from16 v13, v27

    .end local v27    # "childPosition":I
    .local v13, "childPosition":I
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1019
    invoke-virtual {v0, v4, v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v4

    move-object/from16 v7, v26

    goto :goto_e

    .line 1016
    .end local v4    # "initializationData":[B
    .end local v6    # "childAtomSize":I
    .end local v13    # "childPosition":I
    .restart local v19    # "initializationData":[B
    .restart local v25    # "childAtomSize":I
    .restart local v27    # "childPosition":I
    :cond_1b
    move/from16 v6, v25

    move/from16 v13, v27

    .line 1021
    .end local v5    # "childAtomType":I
    .end local v21    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v22    # "atomType":I
    .end local v24    # "quickTimeSoundDescriptionVersion":I
    .end local v25    # "childAtomSize":I
    .end local v26    # "mimeType":Ljava/lang/String;
    .end local v27    # "childPosition":I
    .restart local v6    # "childAtomSize":I
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "childPosition":I
    .restart local v9    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v10    # "atomType":I
    .restart local v11    # "childAtomType":I
    .local v13, "quickTimeSoundDescriptionVersion":I
    :goto_a
    move-object/from16 v7, v26

    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "childPosition":I
    .end local v9    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v10    # "atomType":I
    .end local v11    # "childAtomType":I
    .restart local v5    # "childAtomType":I
    .local v13, "childPosition":I
    .restart local v21    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v22    # "atomType":I
    .restart local v24    # "quickTimeSoundDescriptionVersion":I
    .restart local v26    # "mimeType":Ljava/lang/String;
    goto :goto_e

    .line 987
    .end local v5    # "childAtomType":I
    .end local v21    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v22    # "atomType":I
    .end local v24    # "quickTimeSoundDescriptionVersion":I
    .end local v26    # "mimeType":Ljava/lang/String;
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "childPosition":I
    .restart local v9    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v10    # "atomType":I
    .restart local v11    # "childAtomType":I
    .local v13, "quickTimeSoundDescriptionVersion":I
    :cond_1c
    move-object/from16 v26, v7

    move-object/from16 v21, v9

    move/from16 v22, v10

    move v5, v11

    move/from16 v24, v13

    const/16 v20, 0x1

    const/16 v23, 0x2

    move v13, v8

    .line 988
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "childPosition":I
    .end local v9    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v10    # "atomType":I
    .end local v11    # "childAtomType":I
    .restart local v5    # "childAtomType":I
    .local v13, "childPosition":I
    .restart local v21    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v22    # "atomType":I
    .restart local v24    # "quickTimeSoundDescriptionVersion":I
    .restart local v26    # "mimeType":Ljava/lang/String;
    :goto_b
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v5, v3, :cond_1d

    move v8, v13

    goto :goto_c

    .line 989
    :cond_1d
    invoke-static {v0, v13, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->findEsdsPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I

    move-result v8

    :goto_c
    move v3, v8

    .line 990
    .local v3, "esdsAtomPosition":I
    if-eq v3, v4, :cond_1e

    .line 991
    nop

    .line 992
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v4

    .line 993
    .local v4, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 994
    .end local v26    # "mimeType":Ljava/lang/String;
    .restart local v7    # "mimeType":Ljava/lang/String;
    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v8

    check-cast v19, [B

    .line 995
    const-string v8, "audio/mp4a-latm"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 998
    nop

    .line 999
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v8

    .line 1000
    .local v8, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1001
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto :goto_d

    .line 990
    .end local v4    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v26    # "mimeType":Ljava/lang/String;
    :cond_1e
    move-object/from16 v7, v26

    .line 1004
    .end local v3    # "esdsAtomPosition":I
    .end local v26    # "mimeType":Ljava/lang/String;
    .restart local v7    # "mimeType":Ljava/lang/String;
    :cond_1f
    :goto_d
    nop

    .line 1021
    :goto_e
    add-int v8, v13, v6

    .line 1022
    .end local v5    # "childAtomType":I
    .end local v6    # "childAtomSize":I
    .end local v13    # "childPosition":I
    .local v8, "childPosition":I
    move-object/from16 v9, v21

    move/from16 v10, v22

    move/from16 v13, v24

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto/16 :goto_8

    .line 1024
    .end local v21    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v22    # "atomType":I
    .end local v24    # "quickTimeSoundDescriptionVersion":I
    .restart local v9    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v10    # "atomType":I
    .local v13, "quickTimeSoundDescriptionVersion":I
    :cond_20
    move-object/from16 v26, v7

    move-object/from16 v21, v9

    move/from16 v22, v10

    move/from16 v24, v13

    const/16 v23, 0x2

    move v13, v8

    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "childPosition":I
    .end local v9    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v10    # "atomType":I
    .local v13, "childPosition":I
    .restart local v21    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v22    # "atomType":I
    .restart local v24    # "quickTimeSoundDescriptionVersion":I
    .restart local v26    # "mimeType":Ljava/lang/String;
    iget-object v3, v14, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v3, :cond_24

    move-object/from16 v12, v26

    .end local v26    # "mimeType":Ljava/lang/String;
    .local v12, "mimeType":Ljava/lang/String;
    if-eqz v12, :cond_23

    .line 1026
    nop

    .line 1027
    const-string v3, "audio/raw"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v10, 0x2

    goto :goto_f

    :cond_21
    const/4 v10, -0x1

    .line 1028
    .local v10, "pcmEncoding":I
    :goto_f
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    if-nez v19, :cond_22

    move-object/from16 v11, v16

    goto :goto_10

    .line 1030
    :cond_22
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v11, v4

    :goto_10
    const/16 v16, 0x0

    .line 1028
    move-object v4, v12

    move/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v20, v12

    .end local v12    # "mimeType":Ljava/lang/String;
    .local v20, "mimeType":Ljava/lang/String;
    move-object/from16 v12, v21

    move/from16 v23, v13

    .end local v13    # "childPosition":I
    .local v23, "childPosition":I
    move/from16 v13, v16

    move-object v0, v14

    move-object/from16 v14, p5

    invoke-static/range {v3 .. v14}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_11

    .line 1024
    .end local v10    # "pcmEncoding":I
    .end local v20    # "mimeType":Ljava/lang/String;
    .end local v23    # "childPosition":I
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v13    # "childPosition":I
    :cond_23
    move-object/from16 v20, v12

    move/from16 v23, v13

    move-object v0, v14

    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v13    # "childPosition":I
    .restart local v20    # "mimeType":Ljava/lang/String;
    .restart local v23    # "childPosition":I
    goto :goto_11

    .end local v20    # "mimeType":Ljava/lang/String;
    .end local v23    # "childPosition":I
    .restart local v13    # "childPosition":I
    .restart local v26    # "mimeType":Ljava/lang/String;
    :cond_24
    move/from16 v23, v13

    move-object v0, v14

    move-object/from16 v20, v26

    .line 1033
    .end local v13    # "childPosition":I
    .end local v26    # "mimeType":Ljava/lang/String;
    .restart local v20    # "mimeType":Ljava/lang/String;
    .restart local v23    # "childPosition":I
    :goto_11
    return-void
.end method

.method static parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 9
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1125
    add-int/lit8 v0, p1, 0x8

    .line 1126
    .local v0, "childPosition":I
    const/4 v1, -0x1

    .line 1127
    .local v1, "schemeInformationBoxPosition":I
    const/4 v2, 0x0

    .line 1128
    .local v2, "schemeInformationBoxSize":I
    const/4 v3, 0x0

    .line 1129
    .local v3, "schemeType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1130
    .local v4, "dataFormat":Ljava/lang/Integer;
    :goto_0
    sub-int v5, v0, p1

    if-ge v5, p2, :cond_3

    .line 1131
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1132
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 1133
    .local v5, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 1134
    .local v6, "childAtomType":I
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v6, v7, :cond_0

    .line 1135
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 1136
    :cond_0
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v6, v7, :cond_1

    .line 1137
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1139
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1140
    :cond_1
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v6, v7, :cond_2

    .line 1141
    move v1, v0

    .line 1142
    move v2, v5

    .line 1144
    :cond_2
    :goto_1
    add-int/2addr v0, v5

    .line 1145
    .end local v5    # "childAtomSize":I
    .end local v6    # "childAtomType":I
    goto :goto_0

    .line 1147
    :cond_3
    const-string v5, "cenc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "cbc1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1148
    const-string v5, "cens"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "cbcs"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 1157
    :cond_4
    const/4 v5, 0x0

    return-object v5

    .line 1149
    :cond_5
    :goto_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    const-string v8, "frma atom is mandatory"

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1150
    const/4 v7, -0x1

    if-eq v1, v7, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    const-string v8, "schi atom is mandatory"

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1152
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v7

    .line 1154
    .local v7, "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    const-string v6, "tenc atom is mandatory"

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1155
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 11
    .param p0, "edtsAtom"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 867
    if-eqz p0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    move-object v1, v0

    .local v1, "elst":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-nez v0, :cond_0

    goto :goto_3

    .line 870
    :cond_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 871
    .local v0, "elstData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 872
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 873
    .local v2, "fullAtom":I
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 874
    .local v3, "version":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 875
    .local v4, "entryCount":I
    new-array v5, v4, [J

    .line 876
    .local v5, "editListDurations":[J
    new-array v6, v4, [J

    .line 877
    .local v6, "editListMediaTimes":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_4

    .line 878
    const/4 v8, 0x1

    if-ne v3, v8, :cond_1

    .line 879
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    :goto_1
    aput-wide v9, v5, v7

    .line 880
    if-ne v3, v8, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v9, v9

    :goto_2
    aput-wide v9, v6, v7

    .line 881
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v9

    .line 882
    .local v9, "mediaRateInteger":I
    if-ne v9, v8, :cond_3

    .line 886
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 877
    .end local v9    # "mediaRateInteger":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 884
    .restart local v9    # "mediaRateInteger":I
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unsupported media rate."

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 888
    .end local v7    # "i":I
    .end local v9    # "mediaRateInteger":I
    :cond_4
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7

    .line 868
    .end local v0    # "elstData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v1    # "elst":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v2    # "fullAtom":I
    .end local v3    # "version":I
    .end local v4    # "entryCount":I
    .end local v5    # "editListDurations":[J
    .end local v6    # "editListMediaTimes":[J
    :cond_5
    :goto_3
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 6
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1058
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1060
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1061
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 1062
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1064
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 1065
    .local v2, "flags":I
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 1066
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1068
    :cond_0
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_1

    .line 1069
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1071
    :cond_1
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_2

    .line 1072
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1076
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1077
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 1080
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1081
    .local v1, "objectTypeIndication":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v3

    .line 1082
    .local v3, "mimeType":Ljava/lang/String;
    const-string v4, "audio/mpeg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1083
    const-string v4, "audio/vnd.dts"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1084
    const-string v4, "audio/vnd.dts.hd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 1088
    :cond_3
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1091
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1092
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .line 1093
    .local v0, "initializationDataSize":I
    new-array v4, v0, [B

    .line 1094
    .local v4, "initializationData":[B
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1095
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 1085
    .end local v0    # "initializationDataSize":I
    .end local v4    # "initializationData":[B
    :cond_4
    :goto_0
    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 4
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1220
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1221
    .local v0, "currentByte":I
    and-int/lit8 v1, v0, 0x7f

    .line 1222
    .local v1, "size":I
    :goto_0
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1224
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    goto :goto_0

    .line 1226
    :cond_0
    return v1
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 2
    .param p0, "hdlr"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 600
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 601
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 602
    .local v0, "trackType":I
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    if-ne v0, v1, :cond_0

    .line 603
    const/4 v1, 0x1

    return v1

    .line 604
    :cond_0
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    if-ne v0, v1, :cond_1

    .line 605
    const/4 v1, 0x2

    return v1

    .line 606
    :cond_1
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 609
    :cond_2
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    if-ne v0, v1, :cond_3

    .line 610
    const/4 v1, 0x4

    return v1

    .line 612
    :cond_3
    const/4 v1, -0x1

    return v1

    .line 608
    :cond_4
    :goto_0
    const/4 v1, 0x3

    return v1
.end method

.method private static parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2
    .param p0, "ilst"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 509
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 512
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 513
    .local v1, "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .end local v1    # "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    :cond_0
    goto :goto_0

    .line 517
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_1
    return-object v1
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 7
    .param p0, "mdhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 624
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 625
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 626
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 627
    .local v2, "version":I
    if-nez v2, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 628
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 629
    .local v3, "timescale":J
    if-nez v2, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 630
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 631
    .local v0, "languageCode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v6, v0, 0xa

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v6, v0, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v6, v0, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 636
    .local v5, "language":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method private static parseMetaAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4
    .param p0, "meta"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 494
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 495
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 497
    .local v0, "atomPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 498
    .local v1, "atomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 499
    .local v2, "atomType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v2, v3, :cond_0

    .line 500
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 501
    add-int v3, v0, v1

    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    return-object v3

    .line 503
    :cond_0
    add-int/lit8 v3, v1, -0x8

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 504
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_0

    .line 505
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 5
    .param p0, "mvhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 527
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 528
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 529
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 530
    .local v2, "version":I
    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 531
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    return-wide v3
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F
    .locals 4
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 892
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 893
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 894
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 895
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B
    .locals 5
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .line 1203
    add-int/lit8 v0, p1, 0x8

    .line 1204
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 1205
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1206
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1207
    .local v1, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1208
    .local v2, "childAtomType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_proj:I

    if-ne v2, v3, :cond_0

    .line 1209
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v4, v0, v1

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3

    .line 1211
    :cond_0
    add-int/2addr v0, v1

    .line 1212
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 1213
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 4
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 1106
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1107
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1108
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1109
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1110
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1111
    .local v2, "childAtomType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v2, v3, :cond_1

    .line 1112
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v3

    .line 1114
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v3, :cond_1

    .line 1115
    return-object v3

    .line 1118
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    :cond_1
    add-int/2addr v0, v1

    .line 1119
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 1120
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 22
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "schemeType"    # Ljava/lang/String;

    .line 1163
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x8

    .line 1164
    .local v1, "childPosition":I
    :goto_0
    sub-int v2, v1, p1

    move/from16 v3, p2

    if-ge v2, v3, :cond_4

    .line 1165
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1166
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1167
    .local v2, "childAtomSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 1168
    .local v4, "childAtomType":I
    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v4, v5, :cond_3

    .line 1169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 1170
    .local v5, "fullAtom":I
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v6

    .line 1171
    .local v6, "version":I
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1172
    const/4 v8, 0x0

    .line 1173
    .local v8, "defaultCryptByteBlock":I
    const/4 v9, 0x0

    .line 1174
    .local v9, "defaultSkipByteBlock":I
    if-nez v6, :cond_0

    .line 1175
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .line 1177
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 1178
    .local v10, "patternByte":I
    and-int/lit16 v11, v10, 0xf0

    shr-int/lit8 v8, v11, 0x4

    .line 1179
    and-int/lit8 v9, v10, 0xf

    .line 1181
    .end local v10    # "patternByte":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v11, 0x0

    if-ne v10, v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 1182
    .local v7, "defaultIsProtected":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 1183
    .local v10, "defaultPerSampleIvSize":I
    const/16 v12, 0x10

    new-array v15, v12, [B

    .line 1184
    .local v15, "defaultKeyId":[B
    array-length v12, v15

    invoke-virtual {v0, v15, v11, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1185
    const/4 v12, 0x0

    .line 1186
    .local v12, "constantIv":[B
    if-eqz v7, :cond_2

    if-nez v10, :cond_2

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 1188
    .local v13, "constantIvSize":I
    new-array v12, v13, [B

    .line 1189
    invoke-virtual {v0, v12, v11, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v12

    goto :goto_3

    .line 1191
    .end local v13    # "constantIvSize":I
    :cond_2
    move-object/from16 v19, v12

    .end local v12    # "constantIv":[B
    .local v19, "constantIv":[B
    :goto_3
    new-instance v20, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v11, v20

    move v12, v7

    move-object/from16 v13, p3

    move v14, v10

    move-object/from16 v21, v15

    .end local v15    # "defaultKeyId":[B
    .local v21, "defaultKeyId":[B
    move/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v20

    .line 1194
    .end local v5    # "fullAtom":I
    .end local v6    # "version":I
    .end local v7    # "defaultIsProtected":Z
    .end local v8    # "defaultCryptByteBlock":I
    .end local v9    # "defaultSkipByteBlock":I
    .end local v10    # "defaultPerSampleIvSize":I
    .end local v19    # "constantIv":[B
    .end local v21    # "defaultKeyId":[B
    :cond_3
    add-int/2addr v1, v2

    .line 1195
    .end local v2    # "childAtomSize":I
    .end local v4    # "childAtomType":I
    goto :goto_0

    .line 1196
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method public static parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .locals 73
    .param p0, "track"    # Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .param p1, "stblAtom"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p2, "gaplessInfoHolder"    # Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 125
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    .line 126
    .local v12, "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v12, :cond_0

    .line 127
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    move-object v13, v0

    .local v0, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    goto :goto_0

    .line 129
    .end local v0    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 130
    .local v0, "stz2Atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v0, :cond_32

    .line 133
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    move-object v0, v1

    move-object v13, v0

    .line 136
    .end local v0    # "stz2Atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v13, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    :goto_0
    invoke-interface {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v14

    .line 137
    .local v14, "sampleCount":I
    const/4 v0, 0x0

    if-nez v14, :cond_1

    .line 138
    new-instance v15, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    new-array v2, v0, [J

    new-array v3, v0, [I

    const/4 v4, 0x0

    new-array v5, v0, [J

    new-array v6, v0, [I

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v15

    .line 149
    :cond_1
    const/4 v1, 0x0

    .line 150
    .local v1, "chunkOffsetsAreLongs":Z
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    .line 151
    .local v2, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-nez v2, :cond_2

    .line 152
    const/4 v1, 0x1

    .line 153
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    move v7, v1

    move-object v15, v2

    goto :goto_1

    .line 151
    :cond_2
    move v7, v1

    move-object v15, v2

    .line 155
    .end local v1    # "chunkOffsetsAreLongs":Z
    .end local v2    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v7, "chunkOffsetsAreLongs":Z
    .local v15, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :goto_1
    iget-object v8, v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 157
    .local v8, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v6, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 159
    .local v6, "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 161
    .local v5, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    .line 162
    .local v4, "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    const/4 v1, 0x0

    if-eqz v4, :cond_3

    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 164
    .local v2, "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :goto_2
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 165
    .local v3, "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v3, :cond_4

    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 168
    .local v1, "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v0, v6, v8, v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    .line 171
    .local v0, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    move-object/from16 v17, v3

    .end local v3    # "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v17, "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 172
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    const/4 v3, 0x1

    add-int/lit8 v18, v18, -0x1

    .line 173
    .local v18, "remainingTimestampDeltaChanges":I
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    .line 174
    .local v20, "remainingSamplesAtTimestampDelta":I
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 177
    .local v3, "timestampDeltaInTimeUnits":I
    const/16 v22, 0x0

    .line 178
    .local v22, "remainingSamplesAtTimestampOffset":I
    const/16 v23, 0x0

    .line 179
    .local v23, "remainingTimestampOffsetChanges":I
    const/16 v24, 0x0

    .line 180
    .local v24, "timestampOffset":I
    if-eqz v1, :cond_5

    .line 181
    move-object/from16 v25, v4

    const/16 v4, 0xc

    .end local v4    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v25, "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 182
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v23

    goto :goto_3

    .line 180
    .end local v25    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v4    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_5
    move-object/from16 v25, v4

    .line 185
    .end local v4    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v25    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :goto_3
    const/4 v4, -0x1

    .line 186
    .local v4, "nextSynchronizationSampleIndex":I
    const/16 v26, 0x0

    .line 187
    .local v26, "remainingSynchronizationSamples":I
    if-eqz v2, :cond_7

    .line 188
    move/from16 v27, v4

    const/16 v4, 0xc

    .end local v4    # "nextSynchronizationSampleIndex":I
    .local v27, "nextSynchronizationSampleIndex":I
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 189
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v26

    .line 190
    if-lez v26, :cond_6

    .line 191
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    const/16 v19, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v19, v2

    move/from16 v27, v4

    .end local v27    # "nextSynchronizationSampleIndex":I
    .restart local v4    # "nextSynchronizationSampleIndex":I
    goto :goto_4

    .line 194
    .end local v4    # "nextSynchronizationSampleIndex":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v19, v2

    goto :goto_4

    .line 187
    .end local v27    # "nextSynchronizationSampleIndex":I
    .restart local v4    # "nextSynchronizationSampleIndex":I
    :cond_7
    move/from16 v27, v4

    .end local v4    # "nextSynchronizationSampleIndex":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    move-object/from16 v19, v2

    .line 199
    .end local v2    # "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v19, "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :goto_4
    nop

    .line 200
    invoke-interface {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 201
    const-string v4, "audio/raw"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v18, :cond_8

    if-nez v23, :cond_8

    if-nez v26, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    move/from16 v28, v2

    .line 208
    .local v28, "isFixedSampleSizeRawAudio":Z
    const/4 v2, 0x0

    .line 211
    .local v2, "maximumSize":I
    const-wide/16 v29, 0x0

    .line 214
    .local v29, "timestampTimeUnits":J
    if-nez v28, :cond_17

    .line 215
    new-array v4, v14, [J

    .line 216
    .local v4, "offsets":[J
    move/from16 v31, v2

    .end local v2    # "maximumSize":I
    .local v31, "maximumSize":I
    new-array v2, v14, [I

    .line 217
    .local v2, "sizes":[I
    move-object/from16 v32, v6

    .end local v6    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v32, "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    new-array v6, v14, [J

    .line 218
    .local v6, "timestamps":[J
    move/from16 v33, v7

    .end local v7    # "chunkOffsetsAreLongs":Z
    .local v33, "chunkOffsetsAreLongs":Z
    new-array v7, v14, [I

    .line 219
    .local v7, "flags":[I
    const-wide/16 v34, 0x0

    .line 220
    .local v34, "offset":J
    const/16 v36, 0x0

    .line 222
    .local v36, "remainingSamplesInChunk":I
    const/16 v37, 0x0

    move/from16 v11, v18

    move/from16 v18, v24

    move/from16 v9, v27

    move/from16 v10, v31

    move-object/from16 v70, v8

    move v8, v3

    move/from16 v3, v37

    move-object/from16 v37, v15

    move/from16 v15, v20

    move-wide/from16 v71, v34

    move-object/from16 v34, v70

    move-object/from16 v35, v12

    move/from16 v12, v26

    move-wide/from16 v26, v71

    .end local v20    # "remainingSamplesAtTimestampDelta":I
    .end local v24    # "timestampOffset":I
    .end local v27    # "nextSynchronizationSampleIndex":I
    .end local v31    # "maximumSize":I
    .local v3, "i":I
    .local v8, "timestampDeltaInTimeUnits":I
    .local v9, "nextSynchronizationSampleIndex":I
    .local v10, "maximumSize":I
    .local v11, "remainingTimestampDeltaChanges":I
    .local v12, "remainingSynchronizationSamples":I
    .local v15, "remainingSamplesAtTimestampDelta":I
    .local v18, "timestampOffset":I
    .local v26, "offset":J
    .local v34, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v35, "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v37, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :goto_6
    move-object/from16 v38, v5

    .end local v5    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v38, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const-string v5, "AtomParsers"

    if-ge v3, v14, :cond_11

    .line 224
    const/16 v20, 0x1

    .line 225
    .local v20, "chunkDataComplete":Z
    :goto_7
    if-nez v36, :cond_9

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v24

    move/from16 v20, v24

    if-eqz v24, :cond_9

    .line 226
    move/from16 v39, v14

    move/from16 v24, v15

    .end local v14    # "sampleCount":I
    .end local v15    # "remainingSamplesAtTimestampDelta":I
    .local v24, "remainingSamplesAtTimestampDelta":I
    .local v39, "sampleCount":I
    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    .line 227
    .end local v26    # "offset":J
    .local v14, "offset":J
    move-wide/from16 v26, v14

    .end local v14    # "offset":J
    .restart local v26    # "offset":J
    iget v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v36, v14

    move/from16 v15, v24

    move/from16 v14, v39

    .end local v36    # "remainingSamplesInChunk":I
    .local v14, "remainingSamplesInChunk":I
    goto :goto_7

    .line 225
    .end local v24    # "remainingSamplesAtTimestampDelta":I
    .end local v39    # "sampleCount":I
    .local v14, "sampleCount":I
    .restart local v15    # "remainingSamplesAtTimestampDelta":I
    .restart local v36    # "remainingSamplesInChunk":I
    :cond_9
    move/from16 v39, v14

    move/from16 v24, v15

    .line 229
    .end local v14    # "sampleCount":I
    .end local v15    # "remainingSamplesAtTimestampDelta":I
    .restart local v24    # "remainingSamplesAtTimestampDelta":I
    .restart local v39    # "sampleCount":I
    if-nez v20, :cond_a

    .line 230
    const-string v14, "Unexpected end of chunk data"

    invoke-static {v5, v14}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    move v14, v3

    .line 232
    .end local v39    # "sampleCount":I
    .restart local v14    # "sampleCount":I
    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 233
    invoke-static {v2, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 234
    invoke-static {v6, v14}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 235
    invoke-static {v7, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 236
    const/4 v15, 0x0

    .line 237
    .end local v22    # "remainingSamplesAtTimestampOffset":I
    .local v15, "remainingSamplesAtTimestampOffset":I
    const/16 v23, 0x0

    .line 238
    move-object v3, v2

    move/from16 v22, v15

    move/from16 v2, v36

    goto/16 :goto_b

    .line 242
    .end local v14    # "sampleCount":I
    .end local v15    # "remainingSamplesAtTimestampOffset":I
    .restart local v22    # "remainingSamplesAtTimestampOffset":I
    .restart local v39    # "sampleCount":I
    :cond_a
    if-eqz v1, :cond_c

    .line 243
    :goto_8
    if-nez v22, :cond_b

    if-lez v23, :cond_b

    .line 244
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v22

    .line 250
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v18

    .line 251
    add-int/lit8 v23, v23, -0x1

    goto :goto_8

    .line 253
    :cond_b
    add-int/lit8 v22, v22, -0x1

    move/from16 v5, v18

    goto :goto_9

    .line 242
    :cond_c
    move/from16 v5, v18

    .line 256
    .end local v18    # "timestampOffset":I
    .local v5, "timestampOffset":I
    :goto_9
    aput-wide v26, v4, v3

    .line 257
    invoke-interface {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v14

    aput v14, v2, v3

    .line 258
    aget v14, v2, v3

    if-le v14, v10, :cond_d

    .line 259
    aget v10, v2, v3

    .line 261
    :cond_d
    int-to-long v14, v5

    add-long v14, v29, v14

    aput-wide v14, v6, v3

    .line 264
    if-nez v19, :cond_e

    const/4 v14, 0x1

    goto :goto_a

    :cond_e
    const/4 v14, 0x0

    :goto_a
    aput v14, v7, v3

    .line 265
    if-ne v3, v9, :cond_f

    .line 266
    const/4 v14, 0x1

    aput v14, v7, v3

    .line 267
    add-int/lit8 v12, v12, -0x1

    .line 268
    if-lez v12, :cond_f

    .line 269
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    .line 274
    :cond_f
    int-to-long v14, v8

    add-long v29, v29, v14

    .line 275
    add-int/lit8 v15, v24, -0x1

    .line 276
    .end local v24    # "remainingSamplesAtTimestampDelta":I
    .local v15, "remainingSamplesAtTimestampDelta":I
    if-nez v15, :cond_10

    if-lez v11, :cond_10

    .line 277
    invoke-virtual/range {v38 .. v38}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    .line 284
    .end local v15    # "remainingSamplesAtTimestampDelta":I
    .local v14, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v38 .. v38}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 285
    add-int/lit8 v11, v11, -0x1

    move v15, v14

    .line 288
    .end local v14    # "remainingSamplesAtTimestampDelta":I
    .restart local v15    # "remainingSamplesAtTimestampDelta":I
    :cond_10
    aget v14, v2, v3

    move-object/from16 v40, v4

    move/from16 v18, v5

    .end local v4    # "offsets":[J
    .end local v5    # "timestampOffset":I
    .restart local v18    # "timestampOffset":I
    .local v40, "offsets":[J
    int-to-long v4, v14

    add-long v26, v26, v4

    .line 289
    nop

    .end local v20    # "chunkDataComplete":Z
    add-int/lit8 v36, v36, -0x1

    .line 222
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v38

    move/from16 v14, v39

    move-object/from16 v4, v40

    goto/16 :goto_6

    .end local v39    # "sampleCount":I
    .end local v40    # "offsets":[J
    .restart local v4    # "offsets":[J
    .local v14, "sampleCount":I
    :cond_11
    move-object/from16 v40, v4

    move/from16 v39, v14

    move/from16 v24, v15

    .end local v4    # "offsets":[J
    .end local v14    # "sampleCount":I
    .end local v15    # "remainingSamplesAtTimestampDelta":I
    .restart local v24    # "remainingSamplesAtTimestampDelta":I
    .restart local v39    # "sampleCount":I
    .restart local v40    # "offsets":[J
    move-object v3, v2

    move/from16 v2, v36

    .line 291
    .end local v36    # "remainingSamplesInChunk":I
    .end local v39    # "sampleCount":I
    .end local v40    # "offsets":[J
    .local v2, "remainingSamplesInChunk":I
    .local v3, "sizes":[I
    .restart local v4    # "offsets":[J
    .restart local v14    # "sampleCount":I
    :goto_b
    move-object/from16 v20, v3

    move/from16 v15, v18

    move-object/from16 v18, v4

    .end local v3    # "sizes":[I
    .end local v4    # "offsets":[J
    .local v15, "timestampOffset":I
    .local v18, "offsets":[J
    .local v20, "sizes":[I
    int-to-long v3, v15

    add-long v3, v29, v3

    .line 293
    .local v3, "duration":J
    if-nez v22, :cond_12

    const/16 v31, 0x1

    goto :goto_c

    :cond_12
    const/16 v31, 0x0

    :goto_c
    invoke-static/range {v31 .. v31}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 295
    :goto_d
    if-lez v23, :cond_14

    .line 296
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v31

    if-nez v31, :cond_13

    const/16 v31, 0x1

    goto :goto_e

    :cond_13
    const/16 v31, 0x0

    :goto_e
    invoke-static/range {v31 .. v31}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 297
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 298
    add-int/lit8 v23, v23, -0x1

    goto :goto_d

    .line 303
    :cond_14
    if-nez v12, :cond_16

    if-nez v24, :cond_16

    if-nez v2, :cond_16

    if-eqz v11, :cond_15

    goto :goto_f

    :cond_15
    move-object/from16 v36, v1

    move-wide/from16 v39, v3

    move/from16 v4, v24

    move/from16 v24, v9

    move-object/from16 v9, p0

    goto :goto_10

    .line 305
    :cond_16
    :goto_f
    move-object/from16 v36, v1

    .end local v1    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v36, "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v39, v3

    .end local v3    # "duration":J
    .local v39, "duration":J
    const-string v3, "Inconsistent stbl box for track "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v9

    move-object/from16 v9, p0

    .end local v9    # "nextSynchronizationSampleIndex":I
    .local v3, "nextSynchronizationSampleIndex":I
    iget v4, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": remainingSynchronizationSamples "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v24

    .end local v24    # "remainingSamplesAtTimestampDelta":I
    .local v4, "remainingSamplesAtTimestampDelta":I
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v24, v3

    .end local v3    # "nextSynchronizationSampleIndex":I
    .local v24, "nextSynchronizationSampleIndex":I
    const-string v3, ", remainingSamplesInChunk "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingTimestampDeltaChanges "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .end local v2    # "remainingSamplesInChunk":I
    .end local v26    # "offset":J
    :goto_10
    move-object v5, v7

    move/from16 v27, v10

    move/from16 v26, v12

    move-object/from16 v7, v18

    move v12, v8

    move/from16 v18, v11

    move-object/from16 v8, v20

    move-wide/from16 v10, v39

    move/from16 v20, v4

    goto :goto_12

    .line 312
    .end local v4    # "remainingSamplesAtTimestampDelta":I
    .end local v10    # "maximumSize":I
    .end local v11    # "remainingTimestampDeltaChanges":I
    .end local v32    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v33    # "chunkOffsetsAreLongs":Z
    .end local v34    # "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v35    # "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v36    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v37    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v38    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v39    # "duration":J
    .restart local v1    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v2, "maximumSize":I
    .local v3, "timestampDeltaInTimeUnits":I
    .local v5, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v6, "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v7, "chunkOffsetsAreLongs":Z
    .local v8, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v12, "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v15, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v18, "remainingTimestampDeltaChanges":I
    .local v20, "remainingSamplesAtTimestampDelta":I
    .local v24, "timestampOffset":I
    .local v26, "remainingSynchronizationSamples":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    :cond_17
    move-object/from16 v36, v1

    move/from16 v31, v2

    move-object/from16 v38, v5

    move-object/from16 v32, v6

    move/from16 v33, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v12

    move/from16 v39, v14

    move-object/from16 v37, v15

    .end local v1    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v2    # "maximumSize":I
    .end local v5    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v6    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v7    # "chunkOffsetsAreLongs":Z
    .end local v8    # "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v12    # "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v14    # "sampleCount":I
    .end local v15    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v31    # "maximumSize":I
    .restart local v32    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .restart local v33    # "chunkOffsetsAreLongs":Z
    .restart local v34    # "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .restart local v35    # "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v36    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .restart local v37    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v38    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v39, "sampleCount":I
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v1, v1, [J

    .line 313
    .local v1, "chunkOffsetsBytes":[J
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v2, v2, [I

    .line 314
    .local v2, "chunkSampleCounts":[I
    :goto_11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 315
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v5, v1, v4

    .line 316
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v5, v2, v4

    goto :goto_11

    .line 318
    :cond_18
    iget-object v4, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget-object v5, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 319
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v4

    .line 320
    .local v4, "fixedSampleSize":I
    int-to-long v5, v3

    invoke-static {v4, v1, v2, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v5

    .line 322
    .local v5, "rechunkedResults":Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 323
    .local v6, "offsets":[J
    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 324
    .local v7, "sizes":[I
    iget v8, v5, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 325
    .end local v31    # "maximumSize":I
    .local v8, "maximumSize":I
    iget-object v10, v5, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 326
    .local v10, "timestamps":[J
    iget-object v11, v5, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 327
    .local v11, "flags":[I
    iget-wide v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move v12, v3

    move-object v5, v11

    move/from16 v15, v24

    move/from16 v24, v27

    move/from16 v14, v39

    move/from16 v27, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v10

    move-wide v10, v1

    .line 329
    .end local v1    # "chunkOffsetsBytes":[J
    .end local v2    # "chunkSampleCounts":[I
    .end local v3    # "timestampDeltaInTimeUnits":I
    .end local v4    # "fixedSampleSize":I
    .end local v11    # "flags":[I
    .end local v39    # "sampleCount":I
    .local v5, "flags":[I
    .local v6, "timestamps":[J
    .local v7, "offsets":[J
    .local v8, "sizes":[I
    .local v10, "duration":J
    .local v12, "timestampDeltaInTimeUnits":I
    .restart local v14    # "sampleCount":I
    .local v15, "timestampOffset":I
    .local v24, "nextSynchronizationSampleIndex":I
    .local v27, "maximumSize":I
    :goto_12
    const-wide/32 v42, 0xf4240

    iget-wide v1, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v40, v10

    move-wide/from16 v44, v1

    invoke-static/range {v40 .. v45}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v47

    .line 331
    .local v47, "durationUs":J
    iget-object v1, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-eqz v1, :cond_31

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v43, v0

    move-object/from16 v57, v7

    move-wide/from16 v39, v10

    move/from16 v44, v12

    move-object/from16 v41, v13

    move/from16 v42, v14

    move/from16 v60, v15

    move-object/from16 v31, v38

    move-object v13, v5

    move-object v12, v6

    move-object v15, v8

    move-object/from16 v70, v34

    move/from16 v34, v33

    move-object/from16 v33, v70

    goto/16 :goto_24

    .line 346
    :cond_19
    iget-object v1, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    const-wide/16 v49, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1e

    iget v1, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v1, v4, :cond_1e

    array-length v1, v6

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1e

    .line 349
    iget-object v1, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v4, 0x0

    aget-wide v51, v1, v4

    .line 350
    .local v51, "editStartTime":J
    iget-object v1, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v39, v1, v4

    iget-wide v2, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object v4, v0

    .end local v0    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .local v4, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    iget-wide v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v41, v2

    move-wide/from16 v43, v0

    invoke-static/range {v39 .. v44}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    add-long v55, v51, v0

    .line 352
    .local v55, "editEndTime":J
    move-object/from16 v40, v6

    move-wide/from16 v41, v10

    move-wide/from16 v43, v51

    move-wide/from16 v45, v55

    invoke-static/range {v40 .. v46}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 353
    sub-long v45, v10, v55

    .line 354
    .local v45, "paddingTimeUnits":J
    const/4 v0, 0x0

    aget-wide v1, v6, v0

    sub-long v39, v51, v1

    iget-object v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v0, v0

    iget-wide v2, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v41, v0

    move-wide/from16 v43, v2

    invoke-static/range {v39 .. v44}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 356
    .local v2, "encoderDelay":J
    iget-object v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v0, v0

    move-object/from16 v57, v4

    move-object/from16 v31, v5

    .end local v4    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v5    # "flags":[I
    .local v31, "flags":[I
    .local v57, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    iget-wide v4, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v39, v45

    move-wide/from16 v41, v0

    move-wide/from16 v43, v4

    invoke-static/range {v39 .. v44}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 358
    .local v4, "encoderPadding":J
    cmp-long v0, v2, v49

    if-nez v0, :cond_1b

    cmp-long v0, v4, v49

    if-eqz v0, :cond_1a

    goto :goto_13

    :cond_1a
    move-object/from16 v58, v8

    move/from16 v44, v12

    move-object/from16 v43, v57

    move-object v12, v6

    move-object/from16 v57, v7

    move-object/from16 v70, v38

    move-object/from16 v38, v31

    move-object/from16 v31, v70

    move-object/from16 v71, v34

    move/from16 v34, v33

    move-object/from16 v33, v71

    goto/16 :goto_14

    :cond_1b
    :goto_13
    const-wide/32 v0, 0x7fffffff

    cmp-long v39, v2, v0

    if-gtz v39, :cond_1c

    cmp-long v39, v4, v0

    if-gtz v39, :cond_1c

    .line 360
    long-to-int v0, v2

    move-object/from16 v1, p2

    iput v0, v1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 361
    long-to-int v0, v4

    iput v0, v1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 362
    iget-wide v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v39, v2

    const-wide/32 v2, 0xf4240

    .end local v2    # "encoderDelay":J
    .local v39, "encoderDelay":J
    invoke-static {v6, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 363
    iget-object v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v58, v0, v1

    const-wide/32 v60, 0xf4240

    iget-wide v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 364
    move-wide/from16 v62, v0

    invoke-static/range {v58 .. v63}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v41

    .line 366
    .local v41, "editedDurationUs":J
    new-instance v16, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v43, v57

    .end local v57    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .local v43, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v8

    move-wide/from16 v53, v4

    .end local v4    # "encoderPadding":J
    .local v53, "encoderPadding":J
    move/from16 v4, v27

    move-object/from16 v70, v38

    move-object/from16 v38, v31

    move-object/from16 v31, v70

    .local v31, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v38, "flags":[I
    move-object v5, v6

    move/from16 v44, v12

    move-object v12, v6

    .end local v6    # "timestamps":[J
    .local v12, "timestamps":[J
    .local v44, "timestampDeltaInTimeUnits":I
    move-object/from16 v6, v38

    move-object/from16 v57, v7

    move-object/from16 v58, v8

    move-object/from16 v70, v34

    move/from16 v34, v33

    move-object/from16 v33, v70

    .end local v7    # "offsets":[J
    .end local v8    # "sizes":[I
    .local v33, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v34, "chunkOffsetsAreLongs":Z
    .local v57, "offsets":[J
    .local v58, "sizes":[I
    move-wide/from16 v7, v41

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v16

    .line 358
    .end local v39    # "encoderDelay":J
    .end local v41    # "editedDurationUs":J
    .end local v43    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v44    # "timestampDeltaInTimeUnits":I
    .end local v53    # "encoderPadding":J
    .end local v58    # "sizes":[I
    .restart local v2    # "encoderDelay":J
    .restart local v4    # "encoderPadding":J
    .restart local v6    # "timestamps":[J
    .restart local v7    # "offsets":[J
    .restart local v8    # "sizes":[I
    .local v12, "timestampDeltaInTimeUnits":I
    .local v31, "flags":[I
    .local v33, "chunkOffsetsAreLongs":Z
    .local v34, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v38, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v57, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    :cond_1c
    move-wide/from16 v39, v2

    move-wide/from16 v53, v4

    move-object/from16 v58, v8

    move/from16 v44, v12

    move-object/from16 v43, v57

    move-object v12, v6

    move-object/from16 v57, v7

    move-object/from16 v70, v38

    move-object/from16 v38, v31

    move-object/from16 v31, v70

    move-object/from16 v71, v34

    move/from16 v34, v33

    move-object/from16 v33, v71

    .end local v2    # "encoderDelay":J
    .end local v4    # "encoderPadding":J
    .end local v6    # "timestamps":[J
    .end local v7    # "offsets":[J
    .end local v8    # "sizes":[I
    .local v12, "timestamps":[J
    .local v31, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v33, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v34, "chunkOffsetsAreLongs":Z
    .local v38, "flags":[I
    .restart local v39    # "encoderDelay":J
    .restart local v43    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v44    # "timestampDeltaInTimeUnits":I
    .restart local v53    # "encoderPadding":J
    .local v57, "offsets":[J
    .restart local v58    # "sizes":[I
    goto :goto_14

    .line 352
    .end local v31    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v39    # "encoderDelay":J
    .end local v43    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v44    # "timestampDeltaInTimeUnits":I
    .end local v45    # "paddingTimeUnits":J
    .end local v53    # "encoderPadding":J
    .end local v57    # "offsets":[J
    .end local v58    # "sizes":[I
    .local v4, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v5    # "flags":[I
    .restart local v6    # "timestamps":[J
    .restart local v7    # "offsets":[J
    .restart local v8    # "sizes":[I
    .local v12, "timestampDeltaInTimeUnits":I
    .local v33, "chunkOffsetsAreLongs":Z
    .local v34, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v38, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_1d
    move-object/from16 v43, v4

    move-object/from16 v57, v7

    move-object/from16 v58, v8

    move/from16 v44, v12

    move-object/from16 v31, v38

    move-object/from16 v38, v5

    move-object v12, v6

    move-object/from16 v70, v34

    move/from16 v34, v33

    move-object/from16 v33, v70

    .end local v4    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v5    # "flags":[I
    .end local v6    # "timestamps":[J
    .end local v7    # "offsets":[J
    .end local v8    # "sizes":[I
    .local v12, "timestamps":[J
    .restart local v31    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v33, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v34, "chunkOffsetsAreLongs":Z
    .local v38, "flags":[I
    .restart local v43    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v44    # "timestampDeltaInTimeUnits":I
    .restart local v57    # "offsets":[J
    .restart local v58    # "sizes":[I
    goto :goto_14

    .line 346
    .end local v31    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v43    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v44    # "timestampDeltaInTimeUnits":I
    .end local v51    # "editStartTime":J
    .end local v55    # "editEndTime":J
    .end local v57    # "offsets":[J
    .end local v58    # "sizes":[I
    .restart local v0    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v5    # "flags":[I
    .restart local v6    # "timestamps":[J
    .restart local v7    # "offsets":[J
    .restart local v8    # "sizes":[I
    .local v12, "timestampDeltaInTimeUnits":I
    .local v33, "chunkOffsetsAreLongs":Z
    .local v34, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v38, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_1e
    move-object/from16 v43, v0

    move-object/from16 v57, v7

    move-object/from16 v58, v8

    move/from16 v44, v12

    move-object/from16 v31, v38

    move-object/from16 v38, v5

    move-object v12, v6

    move-object/from16 v70, v34

    move/from16 v34, v33

    move-object/from16 v33, v70

    .line 372
    .end local v0    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v5    # "flags":[I
    .end local v6    # "timestamps":[J
    .end local v7    # "offsets":[J
    .end local v8    # "sizes":[I
    .local v12, "timestamps":[J
    .restart local v31    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v33, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v34, "chunkOffsetsAreLongs":Z
    .local v38, "flags":[I
    .restart local v43    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v44    # "timestampDeltaInTimeUnits":I
    .restart local v57    # "offsets":[J
    .restart local v58    # "sizes":[I
    :goto_14
    iget-object v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    iget-object v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmp-long v0, v2, v49

    if-nez v0, :cond_20

    .line 376
    iget-object v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v39, v0, v1

    .line 377
    .local v39, "editStartTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    array-length v1, v12

    if-ge v0, v1, :cond_1f

    .line 378
    aget-wide v1, v12, v0

    sub-long v3, v1, v39

    const-wide/32 v5, 0xf4240

    iget-wide v7, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 379
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    aput-wide v1, v12, v0

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 382
    .end local v0    # "i":I
    :cond_1f
    sub-long v1, v10, v39

    const-wide/32 v3, 0xf4240

    iget-wide v5, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 383
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v41

    .line 384
    .end local v47    # "durationUs":J
    .local v41, "durationUs":J
    new-instance v16, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v57

    move-object/from16 v3, v58

    move/from16 v4, v27

    move-object v5, v12

    move-object/from16 v6, v38

    move-wide/from16 v7, v41

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v16

    .line 389
    .end local v39    # "editStartTime":J
    .end local v41    # "durationUs":J
    .restart local v47    # "durationUs":J
    :cond_20
    iget v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_16

    :cond_21
    const/4 v0, 0x0

    :goto_16
    move v7, v0

    .line 392
    .local v7, "omitClippedSample":Z
    const/4 v0, 0x0

    .line 393
    .local v0, "editedSampleCount":I
    const/4 v1, 0x0

    .line 394
    .local v1, "nextSampleIndex":I
    const/4 v2, 0x0

    .line 395
    .local v2, "copyMetadata":Z
    iget-object v3, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v3, v3

    new-array v8, v3, [I

    .line 396
    .local v8, "startIndices":[I
    iget-object v3, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v3, v3

    new-array v6, v3, [I

    .line 397
    .local v6, "endIndices":[I
    const/4 v3, 0x0

    move v5, v0

    move v4, v1

    .end local v0    # "editedSampleCount":I
    .end local v1    # "nextSampleIndex":I
    .local v3, "i":I
    .local v4, "nextSampleIndex":I
    .local v5, "editedSampleCount":I
    :goto_17
    iget-object v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    if-ge v3, v0, :cond_26

    .line 398
    iget-object v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    move-wide/from16 v39, v10

    .end local v10    # "duration":J
    .local v39, "duration":J
    aget-wide v10, v0, v3

    .line 399
    .local v10, "editMediaTime":J
    const-wide/16 v0, -0x1

    cmp-long v41, v10, v0

    if-eqz v41, :cond_25

    .line 400
    iget-object v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v49, v0, v3

    iget-wide v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v41, v13

    move/from16 v42, v14

    .end local v13    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v14    # "sampleCount":I
    .local v41, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .local v42, "sampleCount":I
    iget-wide v13, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 401
    move-wide/from16 v51, v0

    move-wide/from16 v53, v13

    invoke-static/range {v49 .. v54}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 403
    .local v0, "editDuration":J
    const/4 v13, 0x1

    invoke-static {v12, v10, v11, v13, v13}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v14

    aput v14, v8, v3

    .line 404
    add-long v13, v10, v0

    .line 405
    move-wide/from16 v45, v0

    const/4 v0, 0x0

    .end local v0    # "editDuration":J
    .local v45, "editDuration":J
    invoke-static {v12, v13, v14, v7, v0}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v1

    aput v1, v6, v3

    .line 407
    :goto_18
    aget v1, v8, v3

    aget v13, v6, v3

    if-ge v1, v13, :cond_22

    aget v1, v8, v3

    move-object/from16 v13, v38

    .end local v38    # "flags":[I
    .local v13, "flags":[I
    aget v1, v13, v1

    const/4 v14, 0x1

    and-int/2addr v1, v14

    if-nez v1, :cond_23

    .line 413
    aget v1, v8, v3

    add-int/2addr v1, v14

    aput v1, v8, v3

    move-object/from16 v38, v13

    goto :goto_18

    .line 407
    .end local v13    # "flags":[I
    .restart local v38    # "flags":[I
    :cond_22
    move-object/from16 v13, v38

    const/4 v14, 0x1

    .line 415
    .end local v38    # "flags":[I
    .restart local v13    # "flags":[I
    :cond_23
    aget v1, v6, v3

    aget v16, v8, v3

    sub-int v1, v1, v16

    add-int/2addr v5, v1

    .line 416
    aget v1, v8, v3

    if-eq v4, v1, :cond_24

    const/4 v1, 0x1

    goto :goto_19

    :cond_24
    const/4 v1, 0x0

    :goto_19
    or-int/2addr v1, v2

    .line 417
    .end local v2    # "copyMetadata":Z
    .local v1, "copyMetadata":Z
    aget v2, v6, v3

    move v4, v2

    move v2, v1

    .end local v4    # "nextSampleIndex":I
    .local v2, "nextSampleIndex":I
    goto :goto_1a

    .line 399
    .end local v1    # "copyMetadata":Z
    .end local v41    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v42    # "sampleCount":I
    .end local v45    # "editDuration":J
    .local v2, "copyMetadata":Z
    .restart local v4    # "nextSampleIndex":I
    .local v13, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .restart local v14    # "sampleCount":I
    .restart local v38    # "flags":[I
    :cond_25
    move-object/from16 v41, v13

    move/from16 v42, v14

    move-object/from16 v13, v38

    const/4 v0, 0x0

    const/4 v14, 0x1

    .line 397
    .end local v10    # "editMediaTime":J
    .end local v14    # "sampleCount":I
    .end local v38    # "flags":[I
    .local v13, "flags":[I
    .restart local v41    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .restart local v42    # "sampleCount":I
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v38, v13

    move-wide/from16 v10, v39

    move-object/from16 v13, v41

    move/from16 v14, v42

    goto :goto_17

    .end local v39    # "duration":J
    .end local v41    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v42    # "sampleCount":I
    .local v10, "duration":J
    .local v13, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .restart local v14    # "sampleCount":I
    .restart local v38    # "flags":[I
    :cond_26
    move-wide/from16 v39, v10

    move-object/from16 v41, v13

    move/from16 v42, v14

    move-object/from16 v13, v38

    const/4 v0, 0x0

    const/4 v14, 0x1

    .line 420
    .end local v3    # "i":I
    .end local v10    # "duration":J
    .end local v14    # "sampleCount":I
    .end local v38    # "flags":[I
    .local v13, "flags":[I
    .restart local v39    # "duration":J
    .restart local v41    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .restart local v42    # "sampleCount":I
    move/from16 v10, v42

    .end local v42    # "sampleCount":I
    .local v10, "sampleCount":I
    if-eq v5, v10, :cond_27

    goto :goto_1b

    :cond_27
    const/4 v14, 0x0

    :goto_1b
    or-int v11, v2, v14

    .line 423
    .end local v2    # "copyMetadata":Z
    .local v11, "copyMetadata":Z
    if-eqz v11, :cond_28

    new-array v1, v5, [J

    goto :goto_1c

    :cond_28
    move-object/from16 v1, v57

    :goto_1c
    move-object v14, v1

    .line 424
    .local v14, "editedOffsets":[J
    if-eqz v11, :cond_29

    new-array v1, v5, [I

    goto :goto_1d

    :cond_29
    move-object/from16 v1, v58

    :goto_1d
    move-object v3, v1

    .line 425
    .local v3, "editedSizes":[I
    if-eqz v11, :cond_2a

    goto :goto_1e

    :cond_2a
    move/from16 v0, v27

    .line 426
    .local v0, "editedMaximumSize":I
    :goto_1e
    if-eqz v11, :cond_2b

    new-array v1, v5, [I

    goto :goto_1f

    :cond_2b
    move-object v1, v13

    :goto_1f
    move-object v2, v1

    .line 427
    .local v2, "editedFlags":[I
    new-array v1, v5, [J

    .line 428
    .local v1, "editedTimestamps":[J
    const-wide/16 v45, 0x0

    .line 429
    .local v45, "pts":J
    const/16 v16, 0x0

    .line 430
    .local v16, "sampleIndex":I
    const/16 v21, 0x0

    move/from16 v42, v10

    move/from16 v10, v16

    move/from16 v16, v0

    move/from16 v0, v21

    .local v0, "i":I
    .local v10, "sampleIndex":I
    .local v16, "editedMaximumSize":I
    .restart local v42    # "sampleCount":I
    :goto_20
    move/from16 v21, v4

    .end local v4    # "nextSampleIndex":I
    .local v21, "nextSampleIndex":I
    iget-object v4, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    if-ge v0, v4, :cond_30

    .line 431
    iget-object v4, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v55, v4, v0

    .line 432
    .local v55, "editMediaTime":J
    aget v4, v8, v0

    .line 433
    .local v4, "startIndex":I
    move/from16 v38, v5

    .end local v5    # "editedSampleCount":I
    .local v38, "editedSampleCount":I
    aget v5, v6, v0

    .line 434
    .local v5, "endIndex":I
    if-eqz v11, :cond_2c

    .line 435
    move-object/from16 v59, v6

    .end local v6    # "endIndices":[I
    .local v59, "endIndices":[I
    sub-int v6, v5, v4

    .line 436
    .local v6, "count":I
    move/from16 v60, v15

    move-object/from16 v15, v57

    .end local v57    # "offsets":[J
    .local v15, "offsets":[J
    .local v60, "timestampOffset":I
    invoke-static {v15, v4, v14, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    move-object/from16 v15, v58

    .end local v58    # "sizes":[I
    .local v15, "sizes":[I
    .restart local v57    # "offsets":[J
    invoke-static {v15, v4, v3, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    invoke-static {v13, v4, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 434
    .end local v59    # "endIndices":[I
    .end local v60    # "timestampOffset":I
    .local v6, "endIndices":[I
    .local v15, "timestampOffset":I
    .restart local v58    # "sizes":[I
    :cond_2c
    move-object/from16 v59, v6

    move/from16 v60, v15

    move-object/from16 v15, v58

    .line 440
    .end local v6    # "endIndices":[I
    .end local v58    # "sizes":[I
    .local v15, "sizes":[I
    .restart local v59    # "endIndices":[I
    .restart local v60    # "timestampOffset":I
    :goto_21
    move v6, v4

    move/from16 v70, v16

    move/from16 v16, v10

    move/from16 v10, v70

    .local v6, "j":I
    .local v10, "editedMaximumSize":I
    .local v16, "sampleIndex":I
    :goto_22
    if-ge v6, v5, :cond_2f

    .line 441
    const-wide/32 v51, 0xf4240

    move/from16 v58, v4

    move/from16 v61, v5

    .end local v4    # "startIndex":I
    .end local v5    # "endIndex":I
    .local v58, "startIndex":I
    .local v61, "endIndex":I
    iget-wide v4, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v49, v45

    move-wide/from16 v53, v4

    invoke-static/range {v49 .. v54}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 442
    .local v4, "ptsUs":J
    aget-wide v49, v12, v6

    sub-long v62, v49, v55

    const-wide/32 v64, 0xf4240

    move/from16 v68, v7

    move-object/from16 v69, v8

    .end local v7    # "omitClippedSample":Z
    .end local v8    # "startIndices":[I
    .local v68, "omitClippedSample":Z
    .local v69, "startIndices":[I
    iget-wide v7, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 443
    move-wide/from16 v66, v7

    invoke-static/range {v62 .. v67}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 445
    .local v7, "timeInSegmentUs":J
    add-long v49, v4, v7

    aput-wide v49, v1, v16

    .line 446
    if-eqz v11, :cond_2d

    move-object/from16 v62, v1

    .end local v1    # "editedTimestamps":[J
    .local v62, "editedTimestamps":[J
    aget v1, v3, v16

    if-le v1, v10, :cond_2e

    .line 447
    aget v1, v15, v6

    move v10, v1

    .end local v10    # "editedMaximumSize":I
    .local v1, "editedMaximumSize":I
    goto :goto_23

    .line 446
    .end local v62    # "editedTimestamps":[J
    .local v1, "editedTimestamps":[J
    .restart local v10    # "editedMaximumSize":I
    :cond_2d
    move-object/from16 v62, v1

    .line 449
    .end local v1    # "editedTimestamps":[J
    .restart local v62    # "editedTimestamps":[J
    :cond_2e
    :goto_23
    nop

    .end local v4    # "ptsUs":J
    .end local v7    # "timeInSegmentUs":J
    add-int/lit8 v16, v16, 0x1

    .line 440
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v58

    move/from16 v5, v61

    move-object/from16 v1, v62

    move/from16 v7, v68

    move-object/from16 v8, v69

    goto :goto_22

    .end local v58    # "startIndex":I
    .end local v61    # "endIndex":I
    .end local v62    # "editedTimestamps":[J
    .end local v68    # "omitClippedSample":Z
    .end local v69    # "startIndices":[I
    .restart local v1    # "editedTimestamps":[J
    .local v4, "startIndex":I
    .restart local v5    # "endIndex":I
    .local v7, "omitClippedSample":Z
    .restart local v8    # "startIndices":[I
    :cond_2f
    move-object/from16 v62, v1

    move/from16 v58, v4

    move/from16 v61, v5

    move/from16 v68, v7

    move-object/from16 v69, v8

    .line 451
    .end local v1    # "editedTimestamps":[J
    .end local v4    # "startIndex":I
    .end local v5    # "endIndex":I
    .end local v6    # "j":I
    .end local v7    # "omitClippedSample":Z
    .end local v8    # "startIndices":[I
    .restart local v58    # "startIndex":I
    .restart local v61    # "endIndex":I
    .restart local v62    # "editedTimestamps":[J
    .restart local v68    # "omitClippedSample":Z
    .restart local v69    # "startIndices":[I
    iget-object v1, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v4, v1, v0

    add-long v45, v45, v4

    .line 430
    .end local v55    # "editMediaTime":J
    .end local v58    # "startIndex":I
    .end local v61    # "endIndex":I
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v58, v15

    move/from16 v4, v21

    move/from16 v5, v38

    move-object/from16 v6, v59

    move/from16 v15, v60

    move-object/from16 v1, v62

    move/from16 v70, v16

    move/from16 v16, v10

    move/from16 v10, v70

    goto/16 :goto_20

    .end local v38    # "editedSampleCount":I
    .end local v59    # "endIndices":[I
    .end local v60    # "timestampOffset":I
    .end local v62    # "editedTimestamps":[J
    .end local v68    # "omitClippedSample":Z
    .end local v69    # "startIndices":[I
    .restart local v1    # "editedTimestamps":[J
    .local v5, "editedSampleCount":I
    .local v6, "endIndices":[I
    .restart local v7    # "omitClippedSample":Z
    .restart local v8    # "startIndices":[I
    .local v10, "sampleIndex":I
    .local v15, "timestampOffset":I
    .local v16, "editedMaximumSize":I
    .local v58, "sizes":[I
    :cond_30
    move-object/from16 v62, v1

    move/from16 v38, v5

    move-object/from16 v59, v6

    move/from16 v68, v7

    move-object/from16 v69, v8

    move/from16 v60, v15

    move-object/from16 v15, v58

    .line 453
    .end local v0    # "i":I
    .end local v1    # "editedTimestamps":[J
    .end local v5    # "editedSampleCount":I
    .end local v6    # "endIndices":[I
    .end local v7    # "omitClippedSample":Z
    .end local v8    # "startIndices":[I
    .end local v58    # "sizes":[I
    .local v15, "sizes":[I
    .restart local v38    # "editedSampleCount":I
    .restart local v59    # "endIndices":[I
    .restart local v60    # "timestampOffset":I
    .restart local v62    # "editedTimestamps":[J
    .restart local v68    # "omitClippedSample":Z
    .restart local v69    # "startIndices":[I
    const-wide/32 v51, 0xf4240

    iget-wide v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 454
    move-wide/from16 v49, v45

    move-wide/from16 v53, v0

    invoke-static/range {v49 .. v54}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v49

    .line 455
    .local v49, "editedDurationUs":J
    new-instance v51, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v0, v51

    move-object/from16 v52, v62

    .end local v62    # "editedTimestamps":[J
    .local v52, "editedTimestamps":[J
    move-object/from16 v1, p0

    move-object/from16 v53, v2

    .end local v2    # "editedFlags":[I
    .local v53, "editedFlags":[I
    move-object v2, v14

    move-object/from16 v54, v3

    .end local v3    # "editedSizes":[I
    .local v54, "editedSizes":[I
    move/from16 v4, v16

    move-object/from16 v5, v52

    move-object/from16 v55, v59

    .end local v59    # "endIndices":[I
    .local v55, "endIndices":[I
    move-object/from16 v6, v53

    move/from16 v56, v68

    move-object/from16 v58, v69

    .end local v68    # "omitClippedSample":Z
    .end local v69    # "startIndices":[I
    .local v56, "omitClippedSample":Z
    .local v58, "startIndices":[I
    move-wide/from16 v7, v49

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v51

    .line 331
    .end local v11    # "copyMetadata":Z
    .end local v16    # "editedMaximumSize":I
    .end local v21    # "nextSampleIndex":I
    .end local v31    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v39    # "duration":J
    .end local v41    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v42    # "sampleCount":I
    .end local v43    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v44    # "timestampDeltaInTimeUnits":I
    .end local v45    # "pts":J
    .end local v49    # "editedDurationUs":J
    .end local v52    # "editedTimestamps":[J
    .end local v53    # "editedFlags":[I
    .end local v54    # "editedSizes":[I
    .end local v55    # "endIndices":[I
    .end local v56    # "omitClippedSample":Z
    .end local v57    # "offsets":[J
    .end local v58    # "startIndices":[I
    .end local v60    # "timestampOffset":I
    .local v0, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .local v5, "flags":[I
    .local v6, "timestamps":[J
    .local v7, "offsets":[J
    .local v8, "sizes":[I
    .local v10, "duration":J
    .local v12, "timestampDeltaInTimeUnits":I
    .local v13, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .local v14, "sampleCount":I
    .local v15, "timestampOffset":I
    .local v33, "chunkOffsetsAreLongs":Z
    .local v34, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v38, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_31
    move-object/from16 v43, v0

    move-object/from16 v57, v7

    move-wide/from16 v39, v10

    move/from16 v44, v12

    move-object/from16 v41, v13

    move/from16 v42, v14

    move/from16 v60, v15

    move-object/from16 v31, v38

    move-object v13, v5

    move-object v12, v6

    move-object v15, v8

    move-object/from16 v70, v34

    move/from16 v34, v33

    move-object/from16 v33, v70

    .line 334
    .end local v0    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v5    # "flags":[I
    .end local v6    # "timestamps":[J
    .end local v7    # "offsets":[J
    .end local v8    # "sizes":[I
    .end local v10    # "duration":J
    .end local v14    # "sampleCount":I
    .end local v38    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v12, "timestamps":[J
    .local v13, "flags":[I
    .local v15, "sizes":[I
    .restart local v31    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v33, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v34, "chunkOffsetsAreLongs":Z
    .restart local v39    # "duration":J
    .restart local v41    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .restart local v42    # "sampleCount":I
    .restart local v43    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v44    # "timestampDeltaInTimeUnits":I
    .restart local v57    # "offsets":[J
    .restart local v60    # "timestampOffset":I
    :goto_24
    iget-wide v0, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v2, 0xf4240

    invoke-static {v12, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 335
    new-instance v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v57

    move-object v3, v15

    move/from16 v4, v27

    move-object v5, v12

    move-object v6, v13

    move-wide/from16 v7, v47

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v10

    .line 131
    .end local v13    # "flags":[I
    .end local v15    # "sizes":[I
    .end local v17    # "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v18    # "remainingTimestampDeltaChanges":I
    .end local v19    # "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v20    # "remainingSamplesAtTimestampDelta":I
    .end local v22    # "remainingSamplesAtTimestampOffset":I
    .end local v23    # "remainingTimestampOffsetChanges":I
    .end local v24    # "nextSynchronizationSampleIndex":I
    .end local v25    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v26    # "remainingSynchronizationSamples":I
    .end local v27    # "maximumSize":I
    .end local v28    # "isFixedSampleSizeRawAudio":Z
    .end local v29    # "timestampTimeUnits":J
    .end local v31    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v32    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v33    # "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v34    # "chunkOffsetsAreLongs":Z
    .end local v35    # "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v36    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v37    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v39    # "duration":J
    .end local v41    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v42    # "sampleCount":I
    .end local v43    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v44    # "timestampDeltaInTimeUnits":I
    .end local v47    # "durationUs":J
    .end local v57    # "offsets":[J
    .end local v60    # "timestampOffset":I
    .local v0, "stz2Atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v12, "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_32
    move-object/from16 v35, v12

    .end local v12    # "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v35    # "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Track has no sample table size information"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_26

    :goto_25
    throw v1

    :goto_26
    goto :goto_25
.end method

.method private static parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 17
    .param p0, "stsd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # I
    .param p2, "rotationDegrees"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p5, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 652
    move-object/from16 v10, p0

    const/16 v0, 0xc

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 654
    .local v11, "numberOfEntries":I
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    move-object v12, v0

    .line 655
    .local v12, "out":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_0
    if-ge v13, v11, :cond_8

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 657
    .local v14, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 658
    .local v15, "childAtomSize":I
    if-lez v15, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 660
    .local v9, "childAtomType":I
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v9, v0, :cond_7

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v9, v0, :cond_7

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v9, v0, :cond_7

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v9, v0, :cond_7

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v9, v0, :cond_7

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v9, v0, :cond_7

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v9, v0, :cond_7

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v9, v0, :cond_7

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v9, v0, :cond_1

    move/from16 v16, v9

    goto/16 :goto_4

    .line 667
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alaw:I

    if-eq v9, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ulaw:I

    if-ne v9, v0, :cond_2

    goto :goto_3

    .line 685
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    if-eq v9, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-eq v9, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-eq v9, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-eq v9, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v9, v0, :cond_3

    goto :goto_2

    .line 690
    :cond_3
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_camm:I

    if-ne v9, v0, :cond_4

    .line 691
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "application/x-camera-motion"

    invoke-static {v0, v3, v2, v1, v2}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move/from16 v16, v9

    goto :goto_5

    .line 690
    :cond_4
    move/from16 v16, v9

    goto :goto_5

    .line 688
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    move v1, v9

    move v2, v14

    move v3, v15

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    move/from16 v16, v9

    goto :goto_5

    .line 683
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    move v1, v9

    move v2, v14

    move v3, v15

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v12

    move/from16 v16, v9

    .end local v9    # "childAtomType":I
    .local v16, "childAtomType":I
    move v9, v13

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_5

    .line 660
    .end local v16    # "childAtomType":I
    .restart local v9    # "childAtomType":I
    :cond_7
    move/from16 v16, v9

    .line 665
    .end local v9    # "childAtomType":I
    .restart local v16    # "childAtomType":I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v14

    move v3, v15

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    move v8, v13

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    .line 694
    :goto_5
    add-int v0, v14, v15

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 655
    .end local v14    # "childStartPosition":I
    .end local v15    # "childAtomSize":I
    .end local v16    # "childAtomType":I
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 696
    .end local v13    # "i":I
    :cond_8
    return-object v12
.end method

.method private static parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .locals 19
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "atomSize"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 701
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 704
    const/4 v3, 0x0

    .line 705
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-wide v4, 0x7fffffffffffffffL

    .line 708
    .local v4, "subsampleOffsetUs":J
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    if-ne v1, v6, :cond_0

    .line 709
    const-string v6, "application/ttml+xml"

    .local v6, "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 710
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_0
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v1, v6, :cond_1

    .line 711
    const-string v6, "application/x-quicktime-tx3g"

    .line 712
    .restart local v6    # "mimeType":Ljava/lang/String;
    add-int/lit8 v7, p3, -0x8

    add-int/lit8 v7, v7, -0x8

    .line 713
    .local v7, "sampleDescriptionLength":I
    new-array v8, v7, [B

    .line 714
    .local v8, "sampleDescriptionData":[B
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 715
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 716
    .end local v7    # "sampleDescriptionLength":I
    .end local v8    # "sampleDescriptionData":[B
    goto :goto_0

    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_1
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v1, v6, :cond_2

    .line 717
    const-string v6, "application/x-mp4-vtt"

    .restart local v6    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 718
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_2
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v1, v6, :cond_3

    .line 719
    const-string v6, "application/ttml+xml"

    .line 720
    .restart local v6    # "mimeType":Ljava/lang/String;
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 721
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_3
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v1, v6, :cond_4

    .line 723
    const-string v6, "application/x-mp4-cea-608"

    .line 724
    .restart local v6    # "mimeType":Ljava/lang/String;
    const/4 v7, 0x1

    iput v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    .line 730
    :goto_0
    nop

    .line 732
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    .line 731
    move-object v9, v6

    move-object/from16 v13, p5

    move-wide/from16 v16, v4

    move-object/from16 v18, v3

    invoke-static/range {v8 .. v18}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    iput-object v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 742
    return-void

    .line 727
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .locals 15
    .param p0, "tkhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 540
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 541
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 542
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 544
    .local v2, "version":I
    const/16 v3, 0x10

    if-nez v2, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    const/16 v4, 0x10

    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 545
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 547
    .local v4, "trackId":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 548
    const/4 v6, 0x1

    .line 549
    .local v6, "durationUnknown":Z
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 550
    .local v7, "durationPosition":I
    if-nez v2, :cond_1

    const/4 v0, 0x4

    .line 551
    .local v0, "durationByteCount":I
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v0, :cond_3

    .line 552
    iget-object v9, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v10, v7, v8

    aget-byte v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 553
    const/4 v6, 0x0

    .line 554
    goto :goto_2

    .line 551
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 558
    .end local v8    # "i":I
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 559
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 560
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .local v8, "duration":J
    goto :goto_4

    .line 562
    .end local v8    # "duration":J
    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    .line 563
    .restart local v8    # "duration":J
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_6

    .line 566
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 570
    :cond_6
    :goto_4
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 571
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 572
    .local v3, "a00":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 573
    .local v10, "a01":I
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 574
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 575
    .local v5, "a10":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 578
    .local v11, "a11":I
    const/high16 v12, 0x10000

    .line 579
    .local v12, "fixedOne":I
    if-nez v3, :cond_7

    if-ne v10, v12, :cond_7

    neg-int v13, v12

    if-ne v5, v13, :cond_7

    if-nez v11, :cond_7

    .line 580
    const/16 v13, 0x5a

    .local v13, "rotationDegrees":I
    goto :goto_5

    .line 581
    .end local v13    # "rotationDegrees":I
    :cond_7
    if-nez v3, :cond_8

    neg-int v13, v12

    if-ne v10, v13, :cond_8

    if-ne v5, v12, :cond_8

    if-nez v11, :cond_8

    .line 582
    const/16 v13, 0x10e

    .restart local v13    # "rotationDegrees":I
    goto :goto_5

    .line 583
    .end local v13    # "rotationDegrees":I
    :cond_8
    neg-int v13, v12

    if-ne v3, v13, :cond_9

    if-nez v10, :cond_9

    if-nez v5, :cond_9

    neg-int v13, v12

    if-ne v11, v13, :cond_9

    .line 584
    const/16 v13, 0xb4

    .restart local v13    # "rotationDegrees":I
    goto :goto_5

    .line 587
    .end local v13    # "rotationDegrees":I
    :cond_9
    const/4 v13, 0x0

    .line 590
    .restart local v13    # "rotationDegrees":I
    :goto_5
    new-instance v14, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {v14, v4, v8, v9, v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v14
.end method

.method public static parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .locals 31
    .param p0, "trak"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p1, "mvhd"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p5, "ignoreEditLists"    # Z
    .param p6, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 76
    move-object/from16 v0, p0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    .line 77
    .local v1, "mdia":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    .line 78
    .local v2, "trackType":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 79
    return-object v3

    .line 82
    :cond_0
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v18

    .line 83
    .local v18, "tkhdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, p2, v4

    if-nez v6, :cond_1

    .line 84
    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v6

    move-wide/from16 v19, v6

    .end local p2    # "duration":J
    .local v6, "duration":J
    goto :goto_0

    .line 83
    .end local v6    # "duration":J
    .restart local p2    # "duration":J
    :cond_1
    move-wide/from16 v19, p2

    .line 86
    .end local p2    # "duration":J
    .local v19, "duration":J
    :goto_0
    move-object/from16 v15, p1

    iget-object v6, v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v21

    .line 88
    .local v21, "movieTimescale":J
    cmp-long v6, v19, v4

    if-nez v6, :cond_2

    .line 89
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v23, v4

    .local v4, "durationUs":J
    goto :goto_1

    .line 91
    .end local v4    # "durationUs":J
    :cond_2
    const-wide/32 v10, 0xf4240

    move-wide/from16 v8, v19

    move-wide/from16 v12, v21

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    move-wide/from16 v23, v4

    .line 93
    .local v23, "durationUs":J
    :goto_1
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    .line 94
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v14

    .line 96
    .local v14, "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v13

    .line 97
    .local v13, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    invoke-virtual {v14, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v6

    .line 98
    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v7

    iget-object v4, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 97
    move-object/from16 v9, p4

    move/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v12

    .line 99
    .local v12, "stsdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    const/4 v4, 0x0

    .line 100
    .local v4, "editListDurations":[J
    const/4 v5, 0x0

    .line 101
    .local v5, "editListMediaTimes":[J
    if-nez p5, :cond_3

    .line 102
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v6

    .line 103
    .local v6, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [J

    .line 104
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v7

    check-cast v5, [J

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    goto :goto_2

    .line 101
    .end local v6    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    :cond_3
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    .line 106
    .end local v4    # "editListDurations":[J
    .end local v5    # "editListMediaTimes":[J
    .local v25, "editListDurations":[J
    .local v26, "editListMediaTimes":[J
    :goto_2
    iget-object v4, v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v4, :cond_4

    move-object/from16 v27, v3

    move-object/from16 v30, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto :goto_3

    :cond_4
    new-instance v27, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 107
    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v4

    iget-object v3, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    iget v11, v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v8, v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v9, v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object/from16 v3, v27

    move v5, v2

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-wide/from16 v8, v21

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-wide/from16 v10, v23

    move-object/from16 v30, v12

    .end local v12    # "stsdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .local v30, "stsdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    move-object/from16 v12, v28

    move-object/from16 v28, v13

    .end local v13    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .local v28, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    move/from16 v13, v29

    move-object/from16 v29, v14

    .end local v14    # "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .local v29, "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    move-object/from16 v14, v16

    move/from16 v15, v17

    move-object/from16 v16, v25

    move-object/from16 v17, v26

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 106
    :goto_3
    return-object v27
.end method

.method public static parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 7
    .param p0, "udtaAtom"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .param p1, "isQuickTime"    # Z

    .line 473
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 476
    return-object v0

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 479
    .local v1, "udtaData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 480
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v2, :cond_2

    .line 481
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 482
    .local v3, "atomPosition":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 483
    .local v4, "atomSize":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 484
    .local v5, "atomType":I
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v5, v6, :cond_1

    .line 485
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 486
    add-int v0, v3, v4

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMetaAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0

    .line 488
    :cond_1
    add-int/lit8 v6, v4, -0x8

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 489
    .end local v3    # "atomPosition":I
    .end local v4    # "atomSize":I
    .end local v5    # "atomType":I
    goto :goto_0

    .line 490
    :cond_2
    return-object v0
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 30
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "rotationDegrees"    # I
    .param p6, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p7, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .param p8, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 747
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 749
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 751
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v21

    .line 752
    .local v21, "height":I
    const/4 v6, 0x0

    .line 753
    .local v6, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v7, 0x3f800000    # 1.0f

    .line 754
    .local v7, "pixelWidthHeightRatio":F
    const/16 v8, 0x32

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    .line 757
    .local v8, "childPosition":I
    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    move/from16 v10, p1

    if-ne v10, v9, :cond_2

    .line 758
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v9

    .line 760
    .local v9, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v9, :cond_1

    .line 761
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 762
    .end local p1    # "atomType":I
    .local v10, "atomType":I
    if-nez v3, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 763
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v11

    :goto_0
    move-object v3, v11

    .line 764
    .end local p6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v3, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iget-object v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v12, v11, p8

    .line 766
    :cond_1
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v15, v10

    goto :goto_1

    .line 757
    .end local v3    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v9    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    .end local v10    # "atomType":I
    .restart local p1    # "atomType":I
    .restart local p6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_2
    move v15, v10

    .line 773
    .end local p1    # "atomType":I
    .end local p6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v3    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v15, "atomType":I
    :goto_1
    const/4 v9, 0x0

    .line 774
    .local v9, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v10, 0x0

    .line 775
    .local v10, "mimeType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 777
    .local v11, "projectionData":[B
    const/4 v12, -0x1

    move/from16 v22, v6

    move/from16 v23, v7

    move v14, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move/from16 v24, v12

    .line 778
    .end local v6    # "pixelWidthHeightRatioFromPasp":Z
    .end local v7    # "pixelWidthHeightRatio":F
    .end local v8    # "childPosition":I
    .end local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "projectionData":[B
    .local v14, "childPosition":I
    .local v22, "pixelWidthHeightRatioFromPasp":Z
    .local v23, "pixelWidthHeightRatio":F
    .local v24, "stereoMode":I
    .local v25, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v26, "mimeType":Ljava/lang/String;
    .local v27, "projectionData":[B
    :goto_2
    sub-int v6, v14, v1

    if-ge v6, v2, :cond_18

    .line 779
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 781
    .local v6, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 782
    .local v7, "childAtomSize":I
    if-nez v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    sub-int/2addr v8, v1

    if-ne v8, v2, :cond_3

    .line 784
    goto/16 :goto_6

    .line 786
    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v7, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    const-string v11, "childAtomSize should be positive"

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 788
    .local v10, "childAtomType":I
    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avcC:I

    if-ne v10, v11, :cond_7

    .line 789
    if-nez v26, :cond_5

    const/4 v8, 0x1

    :cond_5
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 790
    const-string/jumbo v26, "video/avc"

    .line 791
    add-int/lit8 v8, v6, 0x8

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 792
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v8

    .line 793
    .local v8, "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    iget-object v9, v8, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 794
    .end local v25    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget v11, v8, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 795
    if-nez v22, :cond_6

    .line 796
    iget v11, v8, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    move/from16 v23, v11

    .line 798
    .end local v8    # "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    :cond_6
    move-object/from16 v25, v9

    goto/16 :goto_5

    .end local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v25    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_7
    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hvcC:I

    if-ne v10, v11, :cond_9

    .line 799
    if-nez v26, :cond_8

    const/4 v8, 0x1

    :cond_8
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 800
    const-string/jumbo v26, "video/hevc"

    .line 801
    add-int/lit8 v8, v6, 0x8

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 802
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v8

    .line 803
    .local v8, "hevcConfig":Lcom/google/android/exoplayer2/video/HevcConfig;
    iget-object v9, v8, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 804
    .end local v25    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget v11, v8, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 805
    .end local v8    # "hevcConfig":Lcom/google/android/exoplayer2/video/HevcConfig;
    move-object/from16 v25, v9

    goto/16 :goto_5

    .end local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v25    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_9
    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vpcC:I

    if-ne v10, v11, :cond_c

    .line 806
    if-nez v26, :cond_a

    const/4 v8, 0x1

    :cond_a
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 807
    sget v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    if-ne v15, v8, :cond_b

    const-string/jumbo v8, "video/x-vnd.on2.vp8"

    goto :goto_4

    :cond_b
    const-string/jumbo v8, "video/x-vnd.on2.vp9"

    :goto_4
    move-object/from16 v26, v8

    goto/16 :goto_5

    .line 808
    :cond_c
    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_d263:I

    if-ne v10, v11, :cond_e

    .line 809
    if-nez v26, :cond_d

    const/4 v8, 0x1

    :cond_d
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 810
    const-string/jumbo v26, "video/3gpp"

    goto :goto_5

    .line 811
    :cond_e
    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v10, v11, :cond_10

    .line 812
    if-nez v26, :cond_f

    const/4 v8, 0x1

    :cond_f
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 813
    nop

    .line 814
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v8

    .line 815
    .local v8, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v26, v9

    check-cast v26, Ljava/lang/String;

    .line 816
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    .line 817
    .end local v8    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    goto :goto_5

    :cond_10
    sget v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_pasp:I

    if-ne v10, v8, :cond_11

    .line 818
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F

    move-result v23

    .line 819
    const/4 v8, 0x1

    move/from16 v22, v8

    .end local v22    # "pixelWidthHeightRatioFromPasp":Z
    .local v8, "pixelWidthHeightRatioFromPasp":Z
    goto :goto_5

    .line 820
    .end local v8    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v22    # "pixelWidthHeightRatioFromPasp":Z
    :cond_11
    sget v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sv3d:I

    if-ne v10, v8, :cond_12

    .line 821
    invoke-static {v0, v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v27

    goto :goto_5

    .line 822
    :cond_12
    sget v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_st3d:I

    if-ne v10, v8, :cond_17

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 824
    .local v8, "version":I
    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 825
    if-nez v8, :cond_17

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 827
    .local v12, "layout":I
    if-eqz v12, :cond_16

    if-eq v12, v9, :cond_15

    const/4 v9, 0x2

    if-eq v12, v9, :cond_14

    if-eq v12, v11, :cond_13

    goto :goto_5

    .line 838
    :cond_13
    const/16 v24, 0x3

    .line 839
    goto :goto_5

    .line 835
    :cond_14
    const/16 v24, 0x2

    .line 836
    goto :goto_5

    .line 832
    :cond_15
    const/16 v24, 0x1

    .line 833
    goto :goto_5

    .line 829
    :cond_16
    const/16 v24, 0x0

    .line 845
    .end local v8    # "version":I
    .end local v12    # "layout":I
    :cond_17
    :goto_5
    add-int/2addr v14, v7

    .line 846
    .end local v6    # "childStartPosition":I
    .end local v7    # "childAtomSize":I
    .end local v10    # "childAtomType":I
    goto/16 :goto_2

    .line 849
    :cond_18
    :goto_6
    if-nez v26, :cond_19

    .line 850
    return-void

    .line 853
    :cond_19
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v19, 0x0

    move-object/from16 v7, v26

    move v11, v5

    move/from16 v12, v21

    move/from16 v28, v14

    .end local v14    # "childPosition":I
    .local v28, "childPosition":I
    move-object/from16 v14, v25

    move/from16 v29, v15

    .end local v15    # "atomType":I
    .local v29, "atomType":I
    move/from16 v15, p5

    move/from16 v16, v23

    move-object/from16 v17, v27

    move/from16 v18, v24

    move-object/from16 v20, v3

    invoke-static/range {v6 .. v20}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iput-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 856
    return-void
.end method
