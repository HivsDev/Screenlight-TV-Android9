.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 39
    return-void
.end method

.method private correctErrors([BI)V
    .locals 4
    .param p1, "codewordBytes"    # [B
    .param p2, "numDataCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 116
    array-length v0, p1

    const/4 v1, 0x0

    .line 118
    .local v1, "numCodewords":I
    move v1, v0

    new-array v0, v0, [I

    .line 119
    .local v0, "codewordsInts":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 120
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v2

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "i":I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v2, v0, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    nop

    .line 129
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, p2, :cond_1

    .line 130
    aget v3, v0, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 124
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    .line 125
    .local v2, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    goto :goto_3

    :goto_2
    throw v3

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 13
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 76
    .local v2, "parser":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->getVersion()Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    .line 79
    .local v0, "version":Lcom/google/zxing/datamatrix/decoder/Version;
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v3

    .line 81
    invoke-static {v3, v0}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-result-object v3

    .line 84
    .local v3, "dataBlocks":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/4 v4, 0x0

    .line 85
    .local v4, "totalBytes":I
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v1, v3, v6

    .line 86
    .local v1, "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v7

    add-int/2addr v4, v7

    .line 85
    .end local v1    # "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 88
    :cond_0
    new-array v5, v4, [B

    .line 90
    .local v5, "resultBytes":[B
    array-length v6, v3

    .line 92
    .local v6, "dataBlocksCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 93
    aget-object v8, v3, v7

    .line 94
    .local v1, "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    move-object v1, v8

    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getCodewords()[B

    move-result-object v8

    .line 95
    .local v8, "codewordBytes":[B
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v9

    .line 96
    .local v9, "numDataCodewords":I
    invoke-direct {p0, v8, v9}, Lcom/google/zxing/datamatrix/decoder/Decoder;->correctErrors([BI)V

    .line 97
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v9, :cond_1

    .line 99
    mul-int v11, v10, v6

    add-int/2addr v11, v7

    aget-byte v12, v8, v10

    aput-byte v12, v5, v11

    .line 97
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 92
    .end local v1    # "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .end local v8    # "codewordBytes":[B
    .end local v9    # "numDataCodewords":I
    .end local v10    # "i":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 104
    .end local v7    # "j":I
    :cond_2
    invoke-static {v5}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decode([B)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    return-object v1
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 51
    array-length v0, p1

    .line 52
    .local v0, "dimension":I
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 53
    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 54
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 55
    aget-object v4, p1, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {v1, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 54
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    return-object v2
.end method
