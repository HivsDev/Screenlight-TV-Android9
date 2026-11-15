.class Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;
.super Ljava/lang/Object;
.source "ParserHelper.java"


# static fields
.field private static final pow10:[D


# instance fields
.field private current:C

.field private final n:I

.field public pos:I

.field private final s:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 289
    const/16 v0, 0x80

    new-array v0, v0, [D

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pow10:[D

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pow10:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 293
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->s:Ljava/lang/CharSequence;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->n:I

    .line 39
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 40
    return-void
.end method

.method private static buildFloat(II)F
    .locals 5
    .param p0, "mant"    # I
    .param p1, "exp"    # I

    .line 265
    const/16 v0, -0x7d

    if-lt p1, v0, :cond_6

    if-nez p0, :cond_0

    goto :goto_2

    .line 269
    :cond_0
    const/16 v0, 0x80

    if-lt p1, v0, :cond_2

    .line 270
    if-lez p0, :cond_1

    .line 271
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 272
    :cond_1
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 270
    :goto_0
    return v0

    .line 275
    :cond_2
    if-nez p1, :cond_3

    .line 276
    int-to-float v0, p0

    return v0

    .line 279
    :cond_3
    const/high16 v0, 0x4000000

    if-lt p0, v0, :cond_4

    .line 280
    add-int/lit8 p0, p0, 0x1

    .line 283
    :cond_4
    if-lez p1, :cond_5

    int-to-double v0, p0

    sget-object v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pow10:[D

    aget-wide v3, v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    goto :goto_1

    :cond_5
    int-to-double v0, p0

    sget-object v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pow10:[D

    neg-int v3, p1

    aget-wide v3, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v3

    :goto_1
    double-to-float v0, v0

    return v0

    .line 266
    :cond_6
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private read()C
    .locals 2

    .line 43
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->n:I

    if-ge v0, v1, :cond_0

    .line 44
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    .line 46
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->n:I

    if-ne v0, v1, :cond_1

    .line 47
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->s:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method private reportUnexpectedCharacterError(C)V
    .locals 3
    .param p1, "c"    # C

    .line 260
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public advance()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v0

    iput-char v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 81
    return-void
.end method

.method public nextFloat()F
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->skipWhitespace()V

    .line 299
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->parseFloat()F

    move-result v0

    .line 300
    .local v0, "f":F
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->skipNumberSeparator()V

    .line 301
    return v0
.end method

.method parseFloat()F
    .locals 17

    .line 85
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 86
    .local v1, "mant":I
    const/4 v2, 0x0

    .line 87
    .local v2, "mantDig":I
    const/4 v3, 0x1

    .line 88
    .local v3, "mantPos":Z
    const/4 v4, 0x0

    .line 90
    .local v4, "mantRead":Z
    const/4 v5, 0x0

    .line 91
    .local v5, "exp":I
    const/4 v6, 0x0

    .line 92
    .local v6, "expDig":I
    const/4 v7, 0x0

    .line 93
    .local v7, "expAdj":I
    const/4 v8, 0x1

    .line 95
    .local v8, "expPos":Z
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    const/16 v10, 0x2d

    const/16 v11, 0x2b

    if-eq v9, v11, :cond_1

    if-eq v9, v10, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    const/4 v3, 0x0

    .line 100
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v9

    iput-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 102
    :goto_0
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    const/16 v12, 0x65

    const/16 v13, 0x45

    const/16 v14, 0x2e

    const/16 v15, 0x9

    const/16 v16, 0x0

    packed-switch v9, :pswitch_data_0

    .line 104
    :pswitch_0
    const/high16 v9, 0x7fc00000    # Float.NaN

    return v9

    .line 110
    :pswitch_1
    const/4 v4, 0x1

    .line 112
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v9

    iput-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 113
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    if-eq v9, v14, :cond_3

    if-eq v9, v13, :cond_3

    if-eq v9, v12, :cond_3

    packed-switch v9, :pswitch_data_1

    .line 120
    return v16

    .line 116
    :pswitch_2
    nop

    .line 127
    :pswitch_3
    const/4 v4, 0x1

    .line 129
    :goto_2
    if-ge v2, v15, :cond_2

    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 131
    mul-int/lit8 v9, v1, 0xa

    iget-char v10, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v9, v10

    move v1, v9

    .end local v1    # "mant":I
    .local v9, "mant":I
    goto :goto_3

    .line 133
    .end local v9    # "mant":I
    .restart local v1    # "mant":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 135
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v9

    iput-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 136
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_2

    .line 138
    goto :goto_4

    :pswitch_4
    const/16 v10, 0x2d

    goto :goto_2

    .line 120
    :pswitch_5
    const/16 v10, 0x2d

    goto :goto_1

    .line 118
    :cond_3
    goto :goto_4

    .line 107
    :pswitch_6
    nop

    .line 145
    :goto_4
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    if-ne v9, v14, :cond_6

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v9

    iput-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 147
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_3

    .line 150
    if-nez v4, :cond_6

    .line 151
    invoke-direct {v0, v9}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->reportUnexpectedCharacterError(C)V

    .line 152
    return v16

    .line 157
    :pswitch_7
    if-nez v2, :cond_4

    .line 159
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v9

    iput-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 160
    add-int/lit8 v7, v7, -0x1

    .line 161
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_4

    .line 166
    if-nez v4, :cond_6

    .line 167
    return v16

    .line 164
    :pswitch_8
    goto :goto_6

    .line 167
    :pswitch_9
    goto :goto_5

    .line 177
    :cond_4
    :goto_6
    :pswitch_a
    if-ge v2, v15, :cond_5

    .line 178
    add-int/lit8 v2, v2, 0x1

    .line 179
    mul-int/lit8 v9, v1, 0xa

    iget-char v10, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v9, v10

    .line 180
    .end local v1    # "mant":I
    .restart local v9    # "mant":I
    add-int/lit8 v7, v7, -0x1

    move v1, v9

    .line 182
    .end local v9    # "mant":I
    .restart local v1    # "mant":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v9

    iput-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 183
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_5

    .line 185
    goto :goto_7

    :pswitch_b
    goto :goto_6

    .line 193
    :cond_6
    :goto_7
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    if-eq v9, v13, :cond_7

    if-eq v9, v12, :cond_7

    goto :goto_a

    .line 195
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v9

    iput-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 196
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    if-eq v9, v11, :cond_9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_8

    packed-switch v9, :pswitch_data_6

    .line 198
    invoke-direct {v0, v9}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->reportUnexpectedCharacterError(C)V

    .line 199
    return v16

    .line 201
    :cond_8
    const/4 v8, 0x0

    .line 203
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v9

    iput-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 204
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_7

    .line 206
    invoke-direct {v0, v9}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->reportUnexpectedCharacterError(C)V

    .line 207
    return v16

    .line 215
    :pswitch_c
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_8

    goto :goto_a

    .line 218
    :goto_8
    :pswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v9

    iput-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 219
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_9

    .line 224
    goto :goto_a

    .line 222
    :pswitch_e
    nop

    .line 232
    :goto_9
    :pswitch_f
    const/4 v9, 0x3

    if-ge v6, v9, :cond_a

    .line 233
    add-int/lit8 v6, v6, 0x1

    .line 234
    mul-int/lit8 v9, v5, 0xa

    iget-char v10, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v9, v10

    move v5, v9

    .line 236
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v9

    iput-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 237
    iget-char v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_a

    .line 239
    goto :goto_a

    :pswitch_10
    goto :goto_9

    .line 224
    :pswitch_11
    goto :goto_8

    .line 248
    :goto_a
    if-nez v8, :cond_b

    .line 249
    neg-int v5, v5

    .line 251
    :cond_b
    add-int/2addr v5, v7

    .line 252
    if-nez v3, :cond_c

    .line 253
    neg-int v1, v1

    .line 256
    :cond_c
    invoke-static {v1, v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->buildFloat(II)F

    move-result v9

    return v9

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x30
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x30
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x30
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x30
        :pswitch_d
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x30
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x30
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method skipNumberSeparator()V
    .locals 2

    .line 64
    :goto_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->n:I

    if-ge v0, v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->s:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 66
    .local v0, "c":C
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    .line 74
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->advance()V

    .line 72
    nop

    .line 76
    .end local v0    # "c":C
    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method

.method public skipWhitespace()V
    .locals 2

    .line 54
    :goto_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->n:I

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->s:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->advance()V

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method
