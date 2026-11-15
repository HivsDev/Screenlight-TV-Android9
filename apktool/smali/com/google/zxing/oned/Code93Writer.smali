.class public Lcom/google/zxing/oned/Code93Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code93Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method protected static appendPattern([ZI[IZ)I
    .locals 6
    .param p0, "target"    # [Z
    .param p1, "pos"    # I
    .param p2, "pattern"    # [I
    .param p3, "startColor"    # Z

    .line 96
    array-length v0, p2

    const/4 v1, 0x0

    move v2, p1

    const/4 p1, 0x0

    .end local p1    # "pos":I
    .local v2, "pos":I
    :goto_0
    if-ge p1, v0, :cond_1

    aget v3, p2, p1

    .line 97
    .local v3, "bit":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "pos":I
    .local v4, "pos":I
    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, p0, v2

    .line 96
    .end local v3    # "bit":I
    add-int/lit8 p1, p1, 0x1

    move v2, v4

    goto :goto_0

    .line 99
    .end local v4    # "pos":I
    .restart local v2    # "pos":I
    :cond_1
    const/16 p1, 0x9

    return p1
.end method

.method private static computeChecksumIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "maxWeight"    # I

    .line 103
    const/4 v0, 0x1

    .line 104
    .local v0, "weight":I
    const/4 v1, 0x0

    .line 106
    .local v1, "total":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 108
    .local v3, "indexInString":I
    mul-int v4, v3, v0

    add-int/2addr v1, v4

    .line 109
    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 106
    .end local v3    # "indexInString":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 113
    .end local v2    # "i":I
    :cond_1
    rem-int/lit8 v2, v1, 0x2f

    return v2
.end method

.method private static toIntArray(I[I)V
    .locals 3
    .param p0, "a"    # I
    .param p1, "toReturn"    # [I

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 90
    rsub-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    .line 91
    .local v1, "temp":I
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    aput v2, p1, v0

    .line 89
    .end local v1    # "temp":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
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

    .line 35
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 38
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_93, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 9
    .param p1, "contents"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 44
    .local v2, "length":I
    move v2, v0

    const/16 v3, 0x50

    if-gt v0, v3, :cond_1

    .line 49
    const/16 v0, 0x9

    new-array v3, v0, [I

    .line 52
    .local v3, "widths":[I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x9

    const/4 v0, 0x1

    add-int/2addr v4, v0

    .line 54
    new-array v4, v4, [Z

    .line 57
    .local v4, "result":[Z
    sget-object v5, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v6, 0x2f

    aget v5, v5, v6

    invoke-static {v5, v3}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 58
    invoke-static {v4, v1, v3, v0}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v1

    .line 60
    .local v1, "pos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    if-ge v5, v2, :cond_0

    .line 61
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 62
    .local v7, "indexInString":I
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v7

    invoke-static {v8, v3}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 63
    invoke-static {v4, v1, v3, v0}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v1, v8

    .line 60
    .end local v7    # "indexInString":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 67
    .end local v5    # "i":I
    :cond_0
    const/16 v5, 0x14

    invoke-static {p1, v5}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result v5

    .line 68
    .local v5, "check1":I
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v5

    invoke-static {v8, v3}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 69
    invoke-static {v4, v1, v3, v0}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v1, v8

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 74
    const/16 v8, 0xf

    invoke-static {v7, v8}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result v7

    .line 75
    .local v7, "check2":I
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v7

    invoke-static {v8, v3}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 76
    invoke-static {v4, v1, v3, v0}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v1, v8

    .line 79
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v6, v8, v6

    invoke-static {v6, v3}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 80
    invoke-static {v4, v1, v3, v0}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v6

    add-int/2addr v1, v6

    .line 83
    aput-boolean v0, v4, v1

    .line 85
    return-object v4

    .line 45
    .end local v1    # "pos":I
    .end local v3    # "widths":[I
    .end local v4    # "result":[Z
    .end local v5    # "check1":I
    .end local v7    # "check2":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
