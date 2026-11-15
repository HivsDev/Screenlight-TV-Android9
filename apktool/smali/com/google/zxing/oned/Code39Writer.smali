.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .locals 3
    .param p0, "a"    # I
    .param p1, "toReturn"    # [I

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 84
    rsub-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    .line 85
    .local v1, "temp":I
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    :goto_1
    aput v2, p1, v0

    .line 83
    .end local v1    # "temp":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 39
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 42
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_39, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 13
    .param p1, "contents"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 48
    .local v2, "length":I
    move v2, v0

    const/16 v3, 0x50

    if-gt v0, v3, :cond_4

    .line 53
    const/16 v0, 0x9

    new-array v3, v0, [I

    .line 54
    .local v3, "widths":[I
    add-int/lit8 v4, v2, 0x19

    .line 55
    .local v4, "codeWidth":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    .local v5, "i":I
    :goto_0
    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    if-ge v5, v2, :cond_2

    .line 56
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 57
    .local v6, "indexInString":I
    move v6, v7

    if-ltz v7, :cond_1

    .line 60
    sget-object v7, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v7, v7, v6

    invoke-static {v7, v3}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 61
    move v7, v4

    const/4 v4, 0x0

    .end local v4    # "codeWidth":I
    .local v7, "codeWidth":I
    :goto_1
    if-ge v4, v0, :cond_0

    aget v8, v3, v4

    .line 62
    .local v8, "width":I
    add-int/2addr v7, v8

    .line 61
    .end local v8    # "width":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    .end local v6    # "indexInString":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_0

    .line 58
    .end local v7    # "codeWidth":I
    .restart local v4    # "codeWidth":I
    .restart local v6    # "indexInString":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Bad contents: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    .end local v5    # "i":I
    .end local v6    # "indexInString":I
    :cond_2
    new-array v0, v4, [Z

    .line 66
    .local v0, "result":[Z
    sget v5, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    invoke-static {v5, v3}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 67
    const/4 v5, 0x1

    invoke-static {v0, v1, v3, v5}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v6

    .line 68
    .local v6, "pos":I
    new-array v8, v5, [I

    aput v5, v8, v1

    .line 69
    .local v8, "narrowWhite":[I
    invoke-static {v0, v6, v8, v1}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v6, v9

    .line 71
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v2, :cond_3

    .line 72
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 73
    .local v10, "indexInString":I
    sget-object v11, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v11, v11, v10

    invoke-static {v11, v3}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 74
    invoke-static {v0, v6, v3, v5}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v11

    add-int/2addr v11, v6

    .line 75
    move v6, v11

    invoke-static {v0, v6, v8, v1}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v12

    add-int v6, v11, v12

    .line 71
    .end local v10    # "indexInString":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 77
    .end local v9    # "i":I
    :cond_3
    sget v1, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    invoke-static {v1, v3}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 78
    invoke-static {v0, v6, v3, v5}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    .line 79
    return-object v0

    .line 49
    .end local v0    # "result":[Z
    .end local v3    # "widths":[I
    .end local v4    # "codeWidth":I
    .end local v6    # "pos":I
    .end local v8    # "narrowWhite":[I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
