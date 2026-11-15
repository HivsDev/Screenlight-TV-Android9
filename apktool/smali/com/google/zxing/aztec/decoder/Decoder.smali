.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 46
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CTRL_PS"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, " "

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "A"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "B"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "C"

    aput-object v6, v0, v5

    const/4 v6, 0x5

    const-string v7, "D"

    aput-object v7, v0, v6

    const/4 v7, 0x6

    const-string v8, "E"

    aput-object v8, v0, v7

    const/4 v8, 0x7

    const-string v9, "F"

    aput-object v9, v0, v8

    const/16 v9, 0x8

    const-string v10, "G"

    aput-object v10, v0, v9

    const/16 v10, 0x9

    const-string v11, "H"

    aput-object v11, v0, v10

    const/16 v11, 0xa

    const-string v12, "I"

    aput-object v12, v0, v11

    const/16 v12, 0xb

    const-string v13, "J"

    aput-object v13, v0, v12

    const/16 v13, 0xc

    const-string v14, "K"

    aput-object v14, v0, v13

    const/16 v14, 0xd

    const-string v15, "L"

    aput-object v15, v0, v14

    const/16 v15, 0xe

    const-string v16, "M"

    aput-object v16, v0, v15

    const/16 v16, 0xf

    const-string v17, "N"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "O"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "P"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "Q"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "R"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "S"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, "T"

    aput-object v17, v0, v16

    const/16 v16, 0x16

    const-string v17, "U"

    aput-object v17, v0, v16

    const/16 v16, 0x17

    const-string v17, "V"

    aput-object v17, v0, v16

    const/16 v16, 0x18

    const-string v17, "W"

    aput-object v17, v0, v16

    const/16 v16, 0x19

    const-string v17, "X"

    aput-object v17, v0, v16

    const/16 v16, 0x1a

    const-string v17, "Y"

    aput-object v17, v0, v16

    const/16 v16, 0x1b

    const-string v17, "Z"

    aput-object v17, v0, v16

    const/16 v16, 0x1c

    const-string v17, "CTRL_LL"

    aput-object v17, v0, v16

    const/16 v16, 0x1d

    const-string v17, "CTRL_ML"

    aput-object v17, v0, v16

    const/16 v16, 0x1e

    const-string v17, "CTRL_DL"

    aput-object v17, v0, v16

    const/16 v16, 0x1f

    const-string v17, "CTRL_BS"

    aput-object v17, v0, v16

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "CTRL_PS"

    aput-object v16, v0, v1

    const-string v16, " "

    aput-object v16, v0, v2

    const-string v16, "a"

    aput-object v16, v0, v3

    const-string v16, "b"

    aput-object v16, v0, v4

    const-string v16, "c"

    aput-object v16, v0, v5

    const-string v16, "d"

    aput-object v16, v0, v6

    const-string v16, "e"

    aput-object v16, v0, v7

    const-string v16, "f"

    aput-object v16, v0, v8

    const-string v16, "g"

    aput-object v16, v0, v9

    const-string v16, "h"

    aput-object v16, v0, v10

    const-string v16, "i"

    aput-object v16, v0, v11

    const-string v16, "j"

    aput-object v16, v0, v12

    const-string v16, "k"

    aput-object v16, v0, v13

    const-string v16, "l"

    aput-object v16, v0, v14

    const-string v16, "m"

    aput-object v16, v0, v15

    const/16 v16, 0xf

    const-string v17, "n"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "o"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "p"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "q"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "r"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "s"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, "t"

    aput-object v17, v0, v16

    const/16 v16, 0x16

    const-string v17, "u"

    aput-object v17, v0, v16

    const/16 v16, 0x17

    const-string/jumbo v17, "v"

    aput-object v17, v0, v16

    const/16 v16, 0x18

    const-string/jumbo v17, "w"

    aput-object v17, v0, v16

    const/16 v16, 0x19

    const-string/jumbo v17, "x"

    aput-object v17, v0, v16

    const/16 v16, 0x1a

    const-string/jumbo v17, "y"

    aput-object v17, v0, v16

    const/16 v16, 0x1b

    const-string/jumbo v17, "z"

    aput-object v17, v0, v16

    const/16 v16, 0x1c

    const-string v17, "CTRL_US"

    aput-object v17, v0, v16

    const/16 v16, 0x1d

    const-string v17, "CTRL_ML"

    aput-object v17, v0, v16

    const/16 v16, 0x1e

    const-string v17, "CTRL_DL"

    aput-object v17, v0, v16

    const/16 v16, 0x1f

    const-string v17, "CTRL_BS"

    aput-object v17, v0, v16

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 56
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "CTRL_PS"

    aput-object v16, v0, v1

    const-string v16, " "

    aput-object v16, v0, v2

    const-string v16, "\u0001"

    aput-object v16, v0, v3

    const-string v16, "\u0002"

    aput-object v16, v0, v4

    const-string v16, "\u0003"

    aput-object v16, v0, v5

    const-string v16, "\u0004"

    aput-object v16, v0, v6

    const-string v16, "\u0005"

    aput-object v16, v0, v7

    const-string v16, "\u0006"

    aput-object v16, v0, v8

    const-string v16, "\u0007"

    aput-object v16, v0, v9

    const-string v16, "\u0008"

    aput-object v16, v0, v10

    const-string v16, "\t"

    aput-object v16, v0, v11

    const-string v16, "\n"

    aput-object v16, v0, v12

    const-string v16, "\u000b"

    aput-object v16, v0, v13

    const-string v16, "\u000c"

    aput-object v16, v0, v14

    const-string v16, "\r"

    aput-object v16, v0, v15

    const/16 v16, 0xf

    const-string v17, "\u001b"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "\u001c"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "\u001d"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "\u001e"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "\u001f"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "@"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, "\\"

    aput-object v17, v0, v16

    const/16 v16, 0x16

    const-string v17, "^"

    aput-object v17, v0, v16

    const/16 v16, 0x17

    const-string v17, "_"

    aput-object v17, v0, v16

    const/16 v16, 0x18

    const-string v17, "`"

    aput-object v17, v0, v16

    const/16 v16, 0x19

    const-string/jumbo v17, "|"

    aput-object v17, v0, v16

    const/16 v16, 0x1a

    const-string/jumbo v17, "~"

    aput-object v17, v0, v16

    const/16 v16, 0x1b

    const-string/jumbo v17, "\u007f"

    aput-object v17, v0, v16

    const/16 v16, 0x1c

    const-string v17, "CTRL_LL"

    aput-object v17, v0, v16

    const/16 v16, 0x1d

    const-string v17, "CTRL_UL"

    aput-object v17, v0, v16

    const/16 v16, 0x1e

    const-string v17, "CTRL_PL"

    aput-object v17, v0, v16

    const/16 v16, 0x1f

    const-string v17, "CTRL_BS"

    aput-object v17, v0, v16

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 62
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, ""

    aput-object v16, v0, v1

    const-string v16, "\r"

    aput-object v16, v0, v2

    const-string v16, "\r\n"

    aput-object v16, v0, v3

    const-string v16, ". "

    aput-object v16, v0, v4

    const-string v16, ", "

    aput-object v16, v0, v5

    const-string v16, ": "

    aput-object v16, v0, v6

    const-string v16, "!"

    aput-object v16, v0, v7

    const-string v16, "\""

    aput-object v16, v0, v8

    const-string v16, "#"

    aput-object v16, v0, v9

    const-string v16, "$"

    aput-object v16, v0, v10

    const-string v16, "%"

    aput-object v16, v0, v11

    const-string v16, "&"

    aput-object v16, v0, v12

    const-string v16, "\'"

    aput-object v16, v0, v13

    const-string v16, "("

    aput-object v16, v0, v14

    const-string v16, ")"

    aput-object v16, v0, v15

    const/16 v16, 0xf

    const-string v17, "*"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "+"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, ","

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "-"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "."

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "/"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, ":"

    aput-object v17, v0, v16

    const/16 v16, 0x16

    const-string v17, ";"

    aput-object v17, v0, v16

    const/16 v16, 0x17

    const-string v17, "<"

    aput-object v17, v0, v16

    const/16 v16, 0x18

    const-string v17, "="

    aput-object v17, v0, v16

    const/16 v16, 0x19

    const-string v17, ">"

    aput-object v17, v0, v16

    const/16 v16, 0x1a

    const-string v17, "?"

    aput-object v17, v0, v16

    const/16 v16, 0x1b

    const-string v17, "["

    aput-object v17, v0, v16

    const/16 v16, 0x1c

    const-string v17, "]"

    aput-object v17, v0, v16

    const/16 v16, 0x1d

    const-string/jumbo v17, "{"

    aput-object v17, v0, v16

    const/16 v16, 0x1e

    const-string/jumbo v17, "}"

    aput-object v17, v0, v16

    const/16 v16, 0x1f

    const-string v17, "CTRL_UL"

    aput-object v17, v0, v16

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "CTRL_PS"

    aput-object v16, v0, v1

    const-string v1, " "

    aput-object v1, v0, v2

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v5

    const-string v1, "3"

    aput-object v1, v0, v6

    const-string v1, "4"

    aput-object v1, v0, v7

    const-string v1, "5"

    aput-object v1, v0, v8

    const-string v1, "6"

    aput-object v1, v0, v9

    const-string v1, "7"

    aput-object v1, v0, v10

    const-string v1, "8"

    aput-object v1, v0, v11

    const-string v1, "9"

    aput-object v1, v0, v12

    const-string v1, ","

    aput-object v1, v0, v13

    const-string v1, "."

    aput-object v1, v0, v14

    const-string v1, "CTRL_UL"

    aput-object v1, v0, v15

    const/16 v1, 0xf

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertBoolArrayToByteArray([Z)[B
    .locals 3
    .param p0, "boolArr"    # [Z

    .line 356
    array-length v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 357
    .local v0, "byteArr":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 358
    shl-int/lit8 v2, v1, 0x3

    invoke-static {p0, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readByte([ZI)B

    move-result v2

    aput-byte v2, v0, v1

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private correctBits([Z)[Z
    .locals 18
    .param p1, "rawbits"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 209
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    .line 210
    const/4 v0, 0x6

    .line 211
    .local v0, "codewordSize":I
    sget-object v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v4, v3

    move v3, v0

    .local v3, "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_0

    .line 212
    .end local v0    # "codewordSize":I
    .end local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_0
    iget-object v0, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v3, 0x8

    if-gt v0, v3, :cond_1

    .line 213
    const/16 v0, 0x8

    .line 214
    .restart local v0    # "codewordSize":I
    sget-object v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v4, v3

    move v3, v0

    .restart local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_0

    .line 215
    .end local v0    # "codewordSize":I
    .end local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_1
    iget-object v0, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v3, 0x16

    if-gt v0, v3, :cond_2

    .line 216
    const/16 v0, 0xa

    .line 217
    .restart local v0    # "codewordSize":I
    sget-object v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v4, v3

    move v3, v0

    .restart local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_0

    .line 219
    .end local v0    # "codewordSize":I
    .end local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_2
    const/16 v0, 0xc

    .line 220
    .restart local v0    # "codewordSize":I
    sget-object v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v4, v3

    move v3, v0

    .line 223
    .end local v0    # "codewordSize":I
    .local v3, "codewordSize":I
    .local v4, "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :goto_0
    iget-object v0, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v5

    .line 224
    .local v5, "numDataCodewords":I
    array-length v0, v2

    div-int/2addr v0, v3

    const/4 v6, 0x0

    move v7, v6

    .line 225
    .local v7, "numCodewords":I
    move v7, v0

    if-lt v0, v5, :cond_e

    .line 228
    array-length v0, v2

    rem-int/2addr v0, v3

    .line 230
    .local v0, "offset":I
    new-array v8, v7, [I

    .line 231
    .local v8, "dataWords":[I
    const/4 v9, 0x0

    move v10, v0

    .end local v0    # "offset":I
    .local v9, "i":I
    .local v10, "offset":I
    :goto_1
    if-ge v9, v7, :cond_3

    .line 232
    invoke-static {v2, v10, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v0

    aput v0, v8, v9

    .line 231
    add-int/lit8 v9, v9, 0x1

    add-int/2addr v10, v3

    goto :goto_1

    .line 236
    .end local v9    # "i":I
    :cond_3
    const/4 v9, 0x0

    :try_start_0
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {v0, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 237
    .local v9, "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    sub-int v11, v7, v5

    invoke-virtual {v0, v8, v11}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v9    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    nop

    .line 244
    const/4 v0, 0x1

    shl-int v9, v0, v3

    sub-int/2addr v9, v0

    .line 245
    .local v9, "mask":I
    const/4 v11, 0x0

    .line 246
    .local v11, "stuffedBits":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v5, :cond_7

    .line 247
    aget v14, v8, v12

    .line 248
    .local v13, "dataWord":I
    move v13, v14

    if-eqz v14, :cond_6

    if-eq v13, v9, :cond_6

    .line 250
    if-eq v13, v0, :cond_4

    add-int/lit8 v14, v9, -0x1

    if-ne v13, v14, :cond_5

    .line 251
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 246
    .end local v13    # "dataWord":I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 249
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 255
    .end local v12    # "i":I
    :cond_7
    mul-int v12, v5, v3

    sub-int/2addr v12, v11

    new-array v12, v12, [Z

    .line 256
    .local v12, "correctedBits":[Z
    const/4 v13, 0x0

    .line 257
    .local v13, "index":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v5, :cond_d

    .line 258
    aget v6, v8, v14

    .line 259
    .local v15, "dataWord":I
    move v15, v6

    if-eq v6, v0, :cond_a

    add-int/lit8 v6, v9, -0x1

    if-ne v15, v6, :cond_8

    goto :goto_6

    .line 264
    :cond_8
    add-int/lit8 v6, v3, -0x1

    .local v6, "bit":I
    :goto_4
    if-ltz v6, :cond_c

    .line 265
    add-int/lit8 v16, v13, 0x1

    .end local v13    # "index":I
    .local v16, "index":I
    shl-int v17, v0, v6

    and-int v17, v15, v17

    if-eqz v17, :cond_9

    const/16 v17, 0x1

    goto :goto_5

    :cond_9
    const/16 v17, 0x0

    :goto_5
    aput-boolean v17, v12, v13

    .line 264
    add-int/lit8 v6, v6, -0x1

    move/from16 v13, v16

    goto :goto_4

    .line 261
    .end local v6    # "bit":I
    .end local v16    # "index":I
    .restart local v13    # "index":I
    :cond_a
    :goto_6
    add-int v6, v13, v3

    sub-int/2addr v6, v0

    if-le v15, v0, :cond_b

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    :goto_7
    invoke-static {v12, v13, v6, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 262
    add-int/lit8 v0, v3, -0x1

    add-int/2addr v13, v0

    .line 257
    .end local v15    # "dataWord":I
    :cond_c
    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x1

    const/4 v6, 0x0

    goto :goto_3

    .line 269
    .end local v14    # "i":I
    :cond_d
    return-object v12

    .line 239
    .end local v9    # "mask":I
    .end local v11    # "stuffedBits":I
    .end local v12    # "correctedBits":[Z
    .end local v13    # "index":I
    :catch_0
    move-exception v0

    move-object v6, v9

    .local v6, "ex":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {v0}, Lcom/google/zxing/FormatException;->getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 226
    .end local v6    # "ex":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    .end local v8    # "dataWords":[I
    .end local v10    # "offset":I
    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 18
    .param p1, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    .line 279
    .local v2, "compact":Z
    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    .line 280
    .local v3, "layers":I
    if-eqz v2, :cond_0

    const/16 v4, 0xb

    goto :goto_0

    :cond_0
    const/16 v4, 0xe

    :goto_0
    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    .line 281
    .local v5, "baseMatrixSize":I
    move v5, v4

    new-array v4, v4, [I

    .line 282
    .local v4, "alignmentMap":[I
    invoke-static {v3, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v6

    new-array v6, v6, [Z

    .line 284
    .local v6, "rawbits":[Z
    const/4 v7, 0x2

    if-eqz v2, :cond_2

    .line 285
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v9, v4

    if-ge v8, v9, :cond_1

    .line 286
    aput v8, v4, v8

    .line 285
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v8    # "i":I
    :cond_1
    goto :goto_3

    .line 289
    :cond_2
    add-int/lit8 v8, v5, 0x1

    div-int/lit8 v9, v5, 0x2

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0xf

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 290
    .local v8, "matrixSize":I
    div-int/lit8 v9, v5, 0x2

    .line 291
    .local v9, "origCenter":I
    div-int/lit8 v10, v8, 0x2

    .line 292
    .local v10, "center":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v9, :cond_3

    .line 293
    div-int/lit8 v12, v11, 0xf

    add-int/2addr v12, v11

    .line 294
    .local v12, "newOffset":I
    sub-int v13, v9, v11

    add-int/lit8 v13, v13, -0x1

    sub-int v14, v10, v12

    add-int/lit8 v14, v14, -0x1

    aput v14, v4, v13

    .line 295
    add-int v13, v9, v11

    add-int v14, v10, v12

    add-int/lit8 v14, v14, 0x1

    aput v14, v4, v13

    .line 292
    .end local v12    # "newOffset":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 298
    .end local v8    # "matrixSize":I
    .end local v9    # "origCenter":I
    .end local v10    # "center":I
    .end local v11    # "i":I
    :cond_3
    :goto_3
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "rowOffset":I
    :goto_4
    if-ge v8, v3, :cond_7

    .line 299
    sub-int v10, v3, v8

    shl-int/2addr v10, v7

    if-eqz v2, :cond_4

    const/16 v11, 0x9

    goto :goto_5

    :cond_4
    const/16 v11, 0xc

    :goto_5
    add-int/2addr v10, v11

    .line 301
    .local v10, "rowSize":I
    shl-int/lit8 v11, v8, 0x1

    .line 303
    .local v11, "low":I
    add-int/lit8 v12, v5, -0x1

    sub-int/2addr v12, v11

    .line 305
    .local v12, "high":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_6
    if-ge v13, v10, :cond_6

    .line 306
    shl-int/lit8 v14, v13, 0x1

    .line 307
    .local v14, "columnOffset":I
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_7
    if-ge v15, v7, :cond_5

    .line 309
    add-int v16, v9, v14

    add-int v16, v16, v15

    add-int v17, v11, v15

    aget v7, v4, v17

    add-int v17, v11, v13

    aget v0, v4, v17

    .line 310
    invoke-virtual {v1, v7, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    aput-boolean v0, v6, v16

    .line 312
    mul-int/lit8 v0, v10, 0x2

    add-int/2addr v0, v9

    add-int/2addr v0, v14

    add-int/2addr v0, v15

    add-int v7, v11, v13

    aget v7, v4, v7

    sub-int v16, v12, v15

    move/from16 v17, v2

    .end local v2    # "compact":Z
    .local v17, "compact":Z
    aget v2, v4, v16

    .line 313
    invoke-virtual {v1, v7, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v6, v0

    .line 315
    mul-int/lit8 v0, v10, 0x4

    add-int/2addr v0, v9

    add-int/2addr v0, v14

    add-int/2addr v0, v15

    sub-int v2, v12, v15

    aget v2, v4, v2

    sub-int v7, v12, v13

    aget v7, v4, v7

    .line 316
    invoke-virtual {v1, v2, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v6, v0

    .line 318
    mul-int/lit8 v0, v10, 0x6

    add-int/2addr v0, v9

    add-int/2addr v0, v14

    add-int/2addr v0, v15

    sub-int v2, v12, v13

    aget v2, v4, v2

    add-int v7, v11, v15

    aget v7, v4, v7

    .line 319
    invoke-virtual {v1, v2, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v6, v0

    .line 307
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_7

    .end local v17    # "compact":Z
    .restart local v2    # "compact":Z
    :cond_5
    move/from16 v17, v2

    .line 305
    .end local v2    # "compact":Z
    .end local v14    # "columnOffset":I
    .end local v15    # "k":I
    .restart local v17    # "compact":Z
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, p0

    goto :goto_6

    .end local v17    # "compact":Z
    .restart local v2    # "compact":Z
    :cond_6
    move/from16 v17, v2

    .line 322
    .end local v2    # "compact":Z
    .end local v13    # "j":I
    .restart local v17    # "compact":Z
    shl-int/lit8 v0, v10, 0x3

    add-int/2addr v9, v0

    .line 298
    .end local v10    # "rowSize":I
    .end local v11    # "low":I
    .end local v12    # "high":I
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_4

    .end local v17    # "compact":Z
    .restart local v2    # "compact":Z
    :cond_7
    move/from16 v17, v2

    .line 324
    .end local v2    # "compact":Z
    .end local v8    # "i":I
    .end local v9    # "rowOffset":I
    .restart local v17    # "compact":Z
    return-object v6
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 2
    .param p0, "table"    # Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .param p1, "code"    # I

    .line 182
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 192
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 188
    :cond_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 186
    :cond_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 184
    :cond_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .locals 11
    .param p0, "correctedBits"    # [Z

    .line 96
    array-length v0, p0

    .line 97
    .local v0, "endIndex":I
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 98
    .local v1, "latchTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 99
    .local v2, "shiftTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "index":I
    const/4 v5, 0x0

    .line 101
    :goto_0
    if-ge v4, v0, :cond_7

    .line 102
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v7, 0x5

    if-ne v2, v6, :cond_3

    .line 103
    sub-int v6, v0, v4

    if-lt v6, v7, :cond_7

    .line 106
    invoke-static {p0, v4, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v6

    .line 107
    .local v6, "length":I
    add-int/lit8 v4, v4, 0x5

    .line 108
    if-nez v6, :cond_0

    .line 109
    sub-int v7, v0, v4

    const/16 v8, 0xb

    if-lt v7, v8, :cond_7

    .line 112
    invoke-static {p0, v4, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v7

    add-int/lit8 v6, v7, 0x1f

    .line 113
    add-int/lit8 v4, v4, 0xb

    .line 115
    :cond_0
    const/4 v7, 0x0

    .local v7, "charCount":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 116
    sub-int v8, v0, v4

    const/16 v9, 0x8

    if-ge v8, v9, :cond_1

    .line 117
    move v4, v0

    .line 118
    goto :goto_2

    .line 120
    :cond_1
    invoke-static {p0, v4, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    .line 121
    .local v8, "code":I
    int-to-char v9, v8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    nop

    .end local v8    # "code":I
    add-int/lit8 v4, v4, 0x8

    .line 115
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 125
    .end local v7    # "charCount":I
    :cond_2
    :goto_2
    move-object v2, v1

    .line 126
    .end local v6    # "length":I
    goto :goto_0

    .line 127
    :cond_3
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v2, v6, :cond_4

    const/4 v6, 0x4

    goto :goto_3

    :cond_4
    const/4 v6, 0x5

    .line 128
    .local v6, "size":I
    :goto_3
    sub-int v8, v0, v4

    if-lt v8, v6, :cond_7

    .line 131
    invoke-static {p0, v4, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    .line 132
    .restart local v8    # "code":I
    add-int/2addr v4, v6

    .line 133
    invoke-static {v2, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v5, "str":Ljava/lang/String;
    move-object v5, v9

    const-string v10, "CTRL_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 139
    move-object v1, v2

    .line 140
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v2

    .line 141
    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x4c

    if-ne v7, v9, :cond_6

    .line 142
    move-object v1, v2

    goto :goto_0

    .line 145
    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-object v2, v1

    .line 149
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "size":I
    .end local v8    # "code":I
    :cond_6
    goto :goto_0

    .line 151
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1
    .param p0, "t"    # C

    .line 158
    const/16 v0, 0x42

    if-eq p0, v0, :cond_4

    const/16 v0, 0x44

    if-eq p0, v0, :cond_3

    const/16 v0, 0x50

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_0

    .line 171
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 164
    :cond_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 160
    :cond_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 162
    :cond_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 166
    :cond_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 168
    :cond_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .locals 1
    .param p0, "correctedBits"    # [Z

    .line 87
    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readByte([ZI)B
    .locals 3
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I

    .line 345
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    .line 346
    .local v1, "n":I
    move v1, v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    .line 347
    invoke-static {p0, p1, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 349
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v0

    sub-int/2addr v2, v1

    shl-int/2addr v0, v2

    int-to-byte v0, v0

    return v0
.end method

.method private static readCode([ZII)I
    .locals 3
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "res":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 333
    shl-int/lit8 v0, v0, 0x1

    .line 334
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    .line 335
    or-int/lit8 v0, v0, 0x1

    .line 332
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .line 364
    if-eqz p1, :cond_0

    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    const/16 v0, 0x70

    :goto_0
    shl-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    mul-int v0, v0, p0

    return v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 8
    .param p1, "detectorResult"    # Lcom/google/zxing/aztec/AztecDetectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 76
    .local v0, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v1

    .line 77
    .local v1, "rawbits":[Z
    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 78
    .local v4, "correctedBits":[Z
    move-object v4, v2

    invoke-static {v2}, Lcom/google/zxing/aztec/decoder/Decoder;->convertBoolArrayToByteArray([Z)[B

    move-result-object v2

    .line 79
    .local v2, "rawBytes":[B
    invoke-static {v4}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "result":Ljava/lang/String;
    new-instance v6, Lcom/google/zxing/common/DecoderResult;

    invoke-direct {v6, v2, v5, v3, v3}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 81
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    move-object v3, v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/DecoderResult;->setNumBits(I)V

    .line 82
    return-object v3
.end method
