.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    nop

    .line 46
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 16
    .param p0, "bytes"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/zxing/qrcode/decoder/Version;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 56
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v1, p1

    new-instance v0, Lcom/google/zxing/common/BitSource;

    move-object/from16 v9, p0

    invoke-direct {v0, v9}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    move-object v8, v0

    .line 57
    .local v8, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v0

    .line 58
    .local v7, "result":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v14, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, -0x1

    .line 60
    .local v2, "symbolSequence":I
    const/4 v3, -0x1

    .line 63
    .local v3, "parityData":I
    const/4 v4, 0x0

    .line 64
    .local v4, "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    const/4 v5, 0x0

    move v6, v5

    .line 68
    .local v6, "fc1InEffect":Z
    :goto_0
    :try_start_0
    invoke-virtual {v8}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v11, 0x4

    if-ge v10, v11, :cond_0

    .line 70
    :try_start_1
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v10

    .local v10, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    goto :goto_1

    .line 72
    .end local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v10    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_0
    :try_start_2
    invoke-virtual {v8, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    invoke-static {v10}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v10

    move-object v15, v10

    .line 74
    .local v15, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_1
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v15, v10, :cond_d

    .line 75
    :try_start_3
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v15, v10, :cond_c

    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v10, :cond_1

    move-object v0, v15

    goto/16 :goto_3

    .line 78
    :cond_1
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v10, :cond_3

    .line 79
    invoke-virtual {v8}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v10

    const/16 v11, 0x10

    if-lt v10, v11, :cond_2

    .line 84
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    move v2, v11

    .line 85
    invoke-virtual {v8, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    move v3, v10

    move v10, v2

    move v11, v3

    move-object v0, v15

    goto/16 :goto_4

    .line 121
    .end local v6    # "fc1InEffect":Z
    .end local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :catch_0
    move-exception v0

    move-object v12, v7

    move-object v13, v8

    goto/16 :goto_7

    .line 80
    .restart local v6    # "fc1InEffect":Z
    .restart local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    .end local v2    # "symbolSequence":I
    .end local v3    # "parityData":I
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .end local v14    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local p0    # "bytes":[B
    .end local p1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .end local p2    # "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .end local p3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    throw v0

    .line 86
    .restart local v2    # "symbolSequence":I
    .restart local v3    # "parityData":I
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v14    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local p0    # "bytes":[B
    .restart local p1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .restart local p2    # "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .restart local p3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :cond_3
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v10, :cond_5

    .line 88
    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v10

    .line 89
    .local v5, "value":I
    invoke-static {v10}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v10

    .line 90
    move-object v4, v10

    .restart local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v10, :cond_4

    .line 93
    .end local v5    # "value":I
    move v10, v2

    move v11, v3

    move-object v0, v15

    goto/16 :goto_4

    .line 91
    .restart local v5    # "value":I
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    .end local v2    # "symbolSequence":I
    .end local v3    # "parityData":I
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .end local v14    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local p0    # "bytes":[B
    .end local p1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .end local p2    # "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .end local p3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    throw v0

    .line 95
    .end local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v5    # "value":I
    .restart local v2    # "symbolSequence":I
    .restart local v3    # "parityData":I
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v14    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local p0    # "bytes":[B
    .restart local p1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .restart local p2    # "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .restart local p3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :cond_5
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v5, :cond_7

    .line 97
    invoke-virtual {v8, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    .line 98
    .local v5, "subset":I
    invoke-virtual {v15, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    .line 99
    .local v10, "countHanzi":I
    if-ne v5, v0, :cond_6

    .line 100
    invoke-static {v8, v7, v10}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 102
    .end local v5    # "subset":I
    .end local v10    # "countHanzi":I
    :cond_6
    move v10, v2

    move v11, v3

    move-object v0, v15

    goto :goto_4

    .line 105
    :cond_7
    invoke-virtual {v15, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    .line 106
    .local v5, "count":I
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v10, :cond_8

    .line 107
    invoke-static {v8, v7, v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    move-object v0, v15

    goto :goto_2

    .line 108
    :cond_8
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v10, :cond_9

    .line 109
    invoke-static {v8, v7, v5, v6}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    move-object v0, v15

    goto :goto_2

    .line 110
    :cond_9
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v10, :cond_a

    .line 111
    move-object v10, v8

    move-object v11, v7

    move v12, v5

    move-object v13, v4

    move-object v0, v15

    .end local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .local v0, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    move-object/from16 v15, p3

    invoke-static/range {v10 .. v15}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_2

    .line 112
    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_a
    move-object v0, v15

    .end local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v0, v10, :cond_b

    .line 113
    invoke-static {v8, v7, v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 120
    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v5    # "count":I
    .restart local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_2
    move v10, v2

    move v11, v3

    .end local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    goto :goto_4

    .line 115
    .restart local v5    # "count":I
    :cond_b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v10

    .end local v2    # "symbolSequence":I
    .end local v3    # "parityData":I
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .end local v14    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local p0    # "bytes":[B
    .end local p1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .end local p2    # "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .end local p3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    throw v10
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 75
    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v5    # "count":I
    .restart local v2    # "symbolSequence":I
    .restart local v3    # "parityData":I
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v14    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local p0    # "bytes":[B
    .restart local p1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .restart local p2    # "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .restart local p3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :cond_c
    move-object v0, v15

    .line 77
    .end local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_3
    const/4 v6, 0x1

    move v10, v2

    move v11, v3

    goto :goto_4

    .line 74
    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_d
    move-object v0, v15

    .end local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    move v10, v2

    move v11, v3

    .line 120
    .end local v2    # "symbolSequence":I
    .end local v3    # "parityData":I
    .restart local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .local v10, "symbolSequence":I
    .local v11, "parityData":I
    :goto_4
    :try_start_4
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    if-ne v0, v2, :cond_10

    .line 124
    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v6    # "fc1InEffect":Z
    nop

    .line 126
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    .line 127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    move-object v5, v3

    goto :goto_5

    :cond_e
    move-object v5, v14

    :goto_5
    if-nez p2, :cond_f

    move-object v6, v3

    goto :goto_6

    .line 129
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    :goto_6
    move-object v2, v0

    move-object/from16 v3, p0

    move-object v12, v7

    .end local v7    # "result":Ljava/lang/StringBuilder;
    .local v12, "result":Ljava/lang/StringBuilder;
    move v7, v10

    move-object v13, v8

    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .local v13, "bits":Lcom/google/zxing/common/BitSource;
    move v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    .line 126
    return-object v0

    .line 120
    .end local v12    # "result":Ljava/lang/StringBuilder;
    .end local v13    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .restart local v6    # "fc1InEffect":Z
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    :cond_10
    move-object v12, v7

    move-object v13, v8

    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v12    # "result":Ljava/lang/StringBuilder;
    .restart local v13    # "bits":Lcom/google/zxing/common/BitSource;
    move v2, v10

    move v3, v11

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 121
    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v6    # "fc1InEffect":Z
    .end local v12    # "result":Ljava/lang/StringBuilder;
    .end local v13    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    :catch_1
    move-exception v0

    move-object v12, v7

    move-object v13, v8

    move v2, v10

    move v3, v11

    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v12    # "result":Ljava/lang/StringBuilder;
    .restart local v13    # "bits":Lcom/google/zxing/common/BitSource;
    goto :goto_7

    .end local v10    # "symbolSequence":I
    .end local v11    # "parityData":I
    .end local v12    # "result":Ljava/lang/StringBuilder;
    .end local v13    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v2    # "symbolSequence":I
    .restart local v3    # "parityData":I
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    :catch_2
    move-exception v0

    move-object v12, v7

    move-object v13, v8

    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v12    # "result":Ljava/lang/StringBuilder;
    .restart local v13    # "bits":Lcom/google/zxing/common/BitSource;
    :goto_7
    move-object v0, v4

    .line 123
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    goto :goto_9

    :goto_8
    throw v4

    :goto_9
    goto :goto_8
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "fc1InEffect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 255
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 256
    .local v0, "start":I
    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 260
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 261
    .local v1, "nextTwoCharsBits":I
    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    rem-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    nop

    .end local v1    # "nextTwoCharsBits":I
    add-int/lit8 p2, p2, -0x2

    .line 264
    goto :goto_0

    .line 258
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 265
    :cond_1
    if-ne p2, v1, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_2

    .line 270
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 268
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 273
    :cond_3
    :goto_1
    if-eqz p3, :cond_6

    .line 275
    move v2, v0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 276
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_5

    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    .line 279
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 282
    :cond_4
    const/16 v3, 0x1d

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 275
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 287
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "currentCharacterSetECI"    # Lcom/google/zxing/common/CharacterSetECI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 216
    .local p4, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    shl-int/lit8 v0, p2, 0x3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 220
    new-array v0, p2, [B

    .line 221
    .local v0, "readBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 222
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .end local v1    # "i":I
    :cond_0
    if-nez p3, :cond_1

    .line 231
    invoke-static {v0, p5}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .local v1, "encoding":Ljava/lang/String;
    goto :goto_1

    .line 233
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v1

    .line 236
    .restart local v1    # "encoding":Ljava/lang/String;
    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    nop

    .line 240
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    return-void

    .line 237
    :catch_0
    move-exception v2

    .line 238
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 217
    .end local v0    # "readBytes":[B
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 141
    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 147
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    .line 148
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "offset":I
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .line 149
    .end local v1    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-lez p2, :cond_1

    .line 151
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 152
    .local v2, "twoBytes":I
    move v2, v4

    div-int/lit8 v4, v4, 0x60

    shl-int/lit8 v4, v4, 0x8

    rem-int/lit8 v5, v2, 0x60

    or-int/2addr v4, v5

    .line 153
    .local v1, "assembledTwoBytes":I
    move v1, v4

    const/16 v5, 0x3bf

    if-ge v4, v5, :cond_0

    .line 155
    const v4, 0xa1a1

    add-int/2addr v1, v4

    goto :goto_1

    .line 158
    :cond_0
    const v4, 0xa6a1

    add-int/2addr v1, v4

    .line 160
    :goto_1
    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 161
    add-int/lit8 v4, v3, 0x1

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 162
    add-int/lit8 v3, v3, 0x2

    .line 163
    nop

    .end local v1    # "assembledTwoBytes":I
    .end local v2    # "twoBytes":I
    add-int/lit8 p2, p2, -0x1

    .line 164
    goto :goto_0

    .line 167
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "GB2312"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    return-void

    .line 168
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    .line 169
    .local v1, "ignored":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 142
    .end local v0    # "buffer":[B
    .end local v1    # "ignored":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "offset":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 177
    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 183
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    .line 184
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "offset":I
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .line 185
    .end local v1    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-lez p2, :cond_1

    .line 187
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 188
    .local v2, "twoBytes":I
    move v2, v4

    div-int/lit16 v4, v4, 0xc0

    shl-int/lit8 v4, v4, 0x8

    rem-int/lit16 v5, v2, 0xc0

    or-int/2addr v4, v5

    .line 189
    .local v1, "assembledTwoBytes":I
    move v1, v4

    const/16 v5, 0x1f00

    if-ge v4, v5, :cond_0

    .line 191
    const v4, 0x8140

    add-int/2addr v1, v4

    goto :goto_1

    .line 194
    :cond_0
    const v4, 0xc140

    add-int/2addr v1, v4

    .line 196
    :goto_1
    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 197
    add-int/lit8 v4, v3, 0x1

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 198
    add-int/lit8 v3, v3, 0x2

    .line 199
    nop

    .end local v1    # "assembledTwoBytes":I
    .end local v2    # "twoBytes":I
    add-int/lit8 p2, p2, -0x1

    .line 200
    goto :goto_0

    .line 203
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "SJIS"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    return-void

    .line 204
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    .line 205
    .local v1, "ignored":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 178
    .end local v0    # "buffer":[B
    .end local v1    # "ignored":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "offset":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 293
    :goto_0
    const/4 v1, 0x3

    const/16 v2, 0xa

    if-lt p2, v1, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 298
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 299
    .local v0, "threeDigitsBits":I
    move v0, v1

    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_0

    .line 302
    div-int/lit8 v1, v0, 0x64

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    div-int/lit8 v1, v0, 0xa

    rem-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    rem-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    nop

    .end local v0    # "threeDigitsBits":I
    add-int/lit8 p2, p2, -0x3

    .line 306
    goto :goto_0

    .line 300
    .restart local v0    # "threeDigitsBits":I
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 296
    .end local v0    # "threeDigitsBits":I
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 307
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 309
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_4

    .line 312
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 313
    .local v0, "twoDigitsBits":I
    move v0, v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_3

    .line 316
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    rem-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    .end local v0    # "twoDigitsBits":I
    return-void

    .line 314
    .restart local v0    # "twoDigitsBits":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 310
    .end local v0    # "twoDigitsBits":I
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 318
    :cond_5
    const/4 v1, 0x1

    if-ne p2, v1, :cond_8

    .line 320
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_7

    .line 323
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 324
    .local v0, "digitBits":I
    move v0, v1

    if-ge v1, v2, :cond_6

    .line 327
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 325
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 321
    .end local v0    # "digitBits":I
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 329
    :cond_8
    :goto_1
    return-void
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .locals 4
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 332
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    const/4 v2, 0x0

    .line 333
    .local v2, "firstByte":I
    move v2, v1

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    .line 335
    and-int/lit8 v0, v2, 0x7f

    return v0

    .line 337
    :cond_0
    and-int/lit16 v1, v2, 0xc0

    if-ne v1, v3, :cond_1

    .line 339
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 340
    .local v1, "secondByte":I
    and-int/lit8 v3, v2, 0x3f

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr v0, v1

    return v0

    .line 342
    .end local v1    # "secondByte":I
    :cond_1
    and-int/lit16 v0, v2, 0xe0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_2

    .line 344
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 345
    .local v1, "secondThirdBytes":I
    and-int/lit8 v3, v2, 0x1f

    shl-int/lit8 v0, v3, 0x10

    or-int/2addr v0, v1

    return v0

    .line 347
    .end local v1    # "secondThirdBytes":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static toAlphaNumericChar(I)C
    .locals 2
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 247
    aget-char v0, v0, p0

    return v0

    .line 245
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
