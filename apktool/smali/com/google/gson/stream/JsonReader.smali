.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NON_EXECUTE_PREFIX:[C

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1532
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 1554
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .param p1, "in"    # Ljava/io/Reader;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 238
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 239
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 240
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 242
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 243
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 245
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 269
    const/16 v1, 0x20

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 270
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 272
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 279
    if-eqz p1, :cond_0

    .line 282
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 283
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .line 190
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/gson/stream/JsonReader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;
    .param p1, "x1"    # I

    .line 190
    iput p1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1385
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    .line 1388
    return-void

    .line 1386
    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1514
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1515
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1517
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v1

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v2, :cond_0

    array-length v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    return-void

    .line 1521
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1522
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v1, v1, v0

    if-eq v2, v1, :cond_1

    .line 1523
    return-void

    .line 1521
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1528
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1529
    return-void
.end method

.method private doPeek()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    .line 452
    .local v3, "peekStack":I
    const/16 v4, 0x8

    const/16 v5, 0x27

    const/16 v6, 0x22

    const/16 v7, 0x5d

    const/4 v8, 0x3

    const/4 v9, 0x7

    const/16 v10, 0x3b

    const/16 v11, 0x2c

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ne v3, v14, :cond_0

    .line 453
    sub-int/2addr v2, v14

    aput v13, v1, v2

    goto/16 :goto_2

    .line 454
    :cond_0
    if-ne v3, v13, :cond_4

    .line 456
    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    .line 457
    .local v1, "c":I
    if-eq v1, v11, :cond_3

    if-eq v1, v10, :cond_2

    if-ne v1, v7, :cond_1

    .line 459
    iput v12, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v12

    .line 465
    :cond_1
    const-string v2, "Unterminated array"

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 461
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 463
    :cond_3
    nop

    .line 467
    .end local v1    # "c":I
    goto/16 :goto_2

    :cond_4
    const/4 v15, 0x5

    if-eq v3, v8, :cond_1d

    if-ne v3, v15, :cond_5

    goto/16 :goto_4

    .line 505
    :cond_5
    if-ne v3, v12, :cond_a

    .line 506
    sub-int/2addr v2, v14

    aput v15, v1, v2

    .line 508
    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    .line 509
    .restart local v1    # "c":I
    const/16 v2, 0x3a

    if-eq v1, v2, :cond_8

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_7

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 514
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v15, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v2, v15, :cond_6

    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v15, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v2, v15

    const/16 v13, 0x3e

    if-ne v2, v13, :cond_9

    .line 515
    add-int/2addr v15, v14

    iput v15, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 519
    :cond_7
    const-string v2, "Expected \':\'"

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 511
    :cond_8
    nop

    .line 521
    .end local v1    # "c":I
    :cond_9
    :goto_0
    goto :goto_2

    :cond_a
    const/4 v1, 0x6

    if-ne v3, v1, :cond_c

    .line 522
    iget-boolean v1, v0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v1, :cond_b

    .line 523
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 525
    :cond_b
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v14

    aput v9, v1, v2

    goto :goto_2

    .line 526
    :cond_c
    if-ne v3, v9, :cond_e

    .line 527
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    .line 528
    .restart local v1    # "c":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 529
    const/16 v2, 0x11

    iput v2, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v2

    .line 531
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 532
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v14

    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .end local v1    # "c":I
    goto :goto_1

    .line 534
    :cond_e
    if-eq v3, v4, :cond_1c

    :goto_1
    nop

    .line 538
    :goto_2
    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    .line 539
    .restart local v1    # "c":I
    if-eq v1, v6, :cond_1a

    if-eq v1, v5, :cond_19

    if-eq v1, v11, :cond_16

    if-eq v1, v10, :cond_16

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_15

    if-eq v1, v7, :cond_14

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_13

    .line 568
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v14

    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 571
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-ne v2, v14, :cond_f

    .line 572
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 575
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v2

    .line 576
    .local v2, "result":I
    if-eqz v2, :cond_10

    .line 577
    return v2

    .line 580
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v2

    .line 581
    if-eqz v2, :cond_11

    .line 582
    return v2

    .line 585
    :cond_11
    iget-object v4, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v4, v4, v5

    invoke-direct {v0, v4}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 589
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 590
    const/16 v4, 0xa

    iput v4, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v4

    .line 586
    :cond_12
    const-string v4, "Expected value"

    invoke-direct {v0, v4}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 566
    .end local v2    # "result":I
    :cond_13
    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v14

    .line 541
    :cond_14
    if-ne v3, v14, :cond_16

    .line 542
    iput v12, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v12

    .line 564
    :cond_15
    iput v8, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v8

    .line 548
    :cond_16
    if-eq v3, v14, :cond_18

    const/4 v2, 0x2

    if-ne v3, v2, :cond_17

    goto :goto_3

    .line 553
    :cond_17
    const-string v2, "Unexpected value"

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 549
    :cond_18
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 550
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v14

    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 551
    iput v9, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v9

    .line 556
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 557
    iput v4, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v4

    .line 559
    :cond_1a
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-ne v2, v14, :cond_1b

    .line 560
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 562
    :cond_1b
    const/16 v2, 0x9

    iput v2, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v2

    .line 535
    .end local v1    # "c":I
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_1d
    :goto_4
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v14

    aput v12, v1, v2

    .line 470
    const/16 v1, 0x7d

    if-ne v3, v15, :cond_20

    .line 471
    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v2

    .line 472
    .local v2, "c":I
    if-eq v2, v11, :cond_20

    if-eq v2, v10, :cond_1f

    if-ne v2, v1, :cond_1e

    .line 474
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 480
    :cond_1e
    const-string v1, "Unterminated object"

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 476
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 483
    .end local v2    # "c":I
    :cond_20
    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v2

    .line 484
    .restart local v2    # "c":I
    if-eq v2, v6, :cond_25

    if-eq v2, v5, :cond_24

    const-string v4, "Expected name"

    if-eq v2, v1, :cond_22

    .line 497
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 498
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v14

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 499
    int-to-char v1, v2

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 500
    const/16 v1, 0xe

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 502
    :cond_21
    invoke-direct {v0, v4}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 491
    :cond_22
    if-eq v3, v15, :cond_23

    .line 492
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 494
    :cond_23
    invoke-direct {v0, v4}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 488
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 489
    const/16 v1, 0xc

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    .line 486
    :cond_25
    const/16 v1, 0xd

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1
.end method

.method private fillBuffer(I)Z
    .locals 7
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1253
    .local v0, "buffer":[C
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1254
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1255
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1256
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1258
    :cond_0
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1261
    :goto_0
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1263
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    move v2, v1

    .local v2, "total":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 1264
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1267
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v1, :cond_2

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lez v5, :cond_2

    aget-char v5, v0, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    .line 1268
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1269
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1270
    add-int/lit8 p1, p1, 0x1

    .line 1273
    :cond_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, p1, :cond_1

    .line 1274
    return v4

    .line 1277
    :cond_3
    return v3
.end method

.method private getColumnNumber()I
    .locals 2

    .line 1285
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getLineNumber()I
    .locals 1

    .line 1281
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isLiteral(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 761
    const/4 v0, 0x1

    return v0

    .line 747
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 759
    :cond_1
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 9
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1303
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1304
    .local v0, "buffer":[C
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1305
    .local v1, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1307
    .local v2, "l":I
    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 1308
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1309
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1310
    nop

    .line 1376
    if-nez p1, :cond_0

    .line 1380
    const/4 v3, -0x1

    return v3

    .line 1377
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End of input at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1312
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1313
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1316
    :cond_2
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aget-char v1, v0, v1

    .line 1317
    .local v1, "c":I
    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    .line 1318
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1319
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1320
    goto/16 :goto_1

    .line 1321
    :cond_3
    const/16 v5, 0x20

    if-eq v1, v5, :cond_b

    const/16 v5, 0xd

    if-eq v1, v5, :cond_b

    const/16 v5, 0x9

    if-ne v1, v5, :cond_4

    .line 1322
    goto :goto_1

    .line 1325
    :cond_4
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_9

    .line 1326
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1327
    const/4 v6, 0x2

    if-ne v4, v2, :cond_5

    .line 1328
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1329
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    .line 1330
    .local v7, "charsLoaded":Z
    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1331
    if-nez v7, :cond_5

    .line 1332
    return v1

    .line 1336
    .end local v7    # "charsLoaded":Z
    :cond_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1337
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v7, v0, v3

    .line 1338
    .local v7, "peek":C
    const/16 v8, 0x2a

    if-eq v7, v8, :cond_7

    if-eq v7, v5, :cond_6

    .line 1358
    return v1

    .line 1351
    :cond_6
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1352
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1353
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1354
    .end local v4    # "p":I
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1355
    move v1, v3

    goto/16 :goto_0

    .line 1341
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1342
    const-string v3, "*/"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1345
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v6

    .line 1346
    .end local v4    # "p":I
    .restart local v3    # "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1347
    move v1, v3

    goto/16 :goto_0

    .line 1343
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_8
    const-string v3, "Unterminated comment"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1360
    .end local v7    # "peek":C
    :cond_9
    const/16 v3, 0x23

    if-ne v1, v3, :cond_a

    .line 1361
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1367
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1368
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1369
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1370
    .end local v4    # "p":I
    .restart local v3    # "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1375
    .end local v1    # "c":I
    move v1, v3

    goto/16 :goto_0

    .line 1372
    .end local v3    # "p":I
    .restart local v1    # "c":I
    .restart local v4    # "p":I
    :cond_a
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1373
    return v1

    .line 1307
    .end local v1    # "c":I
    :cond_b
    :goto_1
    move v1, v4

    goto/16 :goto_0
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 976
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 977
    .local v0, "buffer":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 979
    .local v1, "builder":Ljava/lang/StringBuilder;
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 980
    .local v2, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 982
    .local v3, "l":I
    move v4, v2

    .line 983
    .local v4, "start":I
    :goto_1
    const/4 v5, 0x1

    if-ge v2, v3, :cond_3

    .line 984
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "p":I
    .local v6, "p":I
    aget-char v2, v0, v2

    .line 986
    .local v2, "c":I
    if-ne v2, p1, :cond_0

    .line 987
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 988
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-virtual {v1, v0, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 990
    :cond_0
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_1

    .line 991
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 992
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-virtual {v1, v0, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 993
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 994
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 995
    .end local v6    # "p":I
    .local v5, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 996
    move v4, v5

    move v2, v5

    goto :goto_2

    .line 997
    .end local v5    # "p":I
    .restart local v6    # "p":I
    :cond_1
    const/16 v7, 0xa

    if-ne v2, v7, :cond_2

    .line 998
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 999
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1001
    .end local v2    # "c":I
    :cond_2
    move v2, v6

    .end local v6    # "p":I
    .local v2, "p":I
    :goto_2
    goto :goto_1

    .line 1003
    :cond_3
    sub-int v6, v2, v4

    invoke-virtual {v1, v0, v4, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1004
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1005
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1008
    .end local v2    # "p":I
    .end local v3    # "l":I
    .end local v4    # "start":I
    goto :goto_0

    .line 1006
    .restart local v2    # "p":I
    .restart local v3    # "l":I
    .restart local v4    # "start":I
    :cond_4
    const-string v5, "Unterminated string"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    goto :goto_4

    :goto_3
    throw v5

    :goto_4
    goto :goto_3
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1021
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int v3, v2, v1

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_2

    .line 1022
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v2, v1

    aget-char v2, v3, v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 1021
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1028
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1040
    :cond_1
    :pswitch_1
    goto :goto_1

    .line 1045
    :cond_2
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1046
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1047
    goto :goto_0

    .line 1054
    :cond_3
    if-nez v0, :cond_4

    .line 1055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 1057
    :cond_4
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1058
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1059
    const/4 v1, 0x0

    .line 1060
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1061
    nop

    .line 1066
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 1067
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .local v2, "result":Ljava/lang/String;
    goto :goto_2

    .line 1069
    .end local v2    # "result":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1072
    .restart local v2    # "result":Ljava/lang/String;
    :goto_2
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1073
    return-object v2

    .line 1060
    .end local v2    # "result":Ljava/lang/String;
    :cond_7
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private peekKeyword()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 599
    .local v0, "c":C
    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 603
    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 607
    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 612
    :cond_2
    return v1

    .line 608
    :cond_3
    :goto_0
    const-string v2, "null"

    .line 609
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 610
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x7

    .local v4, "peeking":I
    goto :goto_3

    .line 604
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_4
    :goto_1
    const-string v2, "false"

    .line 605
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 606
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x6

    .restart local v4    # "peeking":I
    goto :goto_3

    .line 600
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_5
    :goto_2
    const-string v2, "true"

    .line 601
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 602
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x5

    .line 616
    .restart local v4    # "peeking":I
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 617
    .local v5, "length":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_8

    .line 618
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_6

    add-int/lit8 v7, v6, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 619
    return v1

    .line 621
    :cond_6
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v6

    aget-char v0, v7, v8

    .line 622
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    .line 623
    return v1

    .line 617
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 627
    .end local v6    # "i":I
    :cond_8
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_9

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 629
    return v1

    .line 633
    :cond_a
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 634
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v4
.end method

.method private peekNumber()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 640
    .local v1, "buffer":[C
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 641
    .local v2, "p":I
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 643
    .local v3, "l":I
    const-wide/16 v4, 0x0

    .line 644
    .local v4, "value":J
    const/4 v6, 0x0

    .line 645
    .local v6, "negative":Z
    const/4 v7, 0x1

    .line 646
    .local v7, "fitsInLong":Z
    const/4 v8, 0x0

    .line 648
    .local v8, "last":I
    const/4 v9, 0x0

    .line 652
    .local v9, "i":I
    :goto_0
    add-int v10, v2, v9

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-ne v10, v3, :cond_2

    .line 653
    array-length v10, v1

    if-ne v9, v10, :cond_0

    .line 656
    return v13

    .line 658
    :cond_0
    add-int/lit8 v10, v9, 0x1

    invoke-direct {v0, v10}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 659
    goto/16 :goto_5

    .line 661
    :cond_1
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 662
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 665
    :cond_2
    add-int v10, v2, v9

    aget-char v10, v1, v10

    .line 666
    .local v10, "c":C
    const/16 v14, 0x2b

    const/4 v15, 0x5

    if-eq v10, v14, :cond_1b

    const/16 v14, 0x45

    if-eq v10, v14, :cond_18

    const/16 v14, 0x65

    if-eq v10, v14, :cond_18

    const/16 v14, 0x2d

    if-eq v10, v14, :cond_15

    const/16 v14, 0x2e

    if-eq v10, v14, :cond_13

    .line 701
    const/16 v14, 0x30

    if-lt v10, v14, :cond_c

    const/16 v14, 0x39

    if-le v10, v14, :cond_3

    goto :goto_4

    .line 707
    :cond_3
    const/4 v11, 0x1

    if-eq v8, v11, :cond_b

    if-nez v8, :cond_4

    goto :goto_3

    .line 710
    :cond_4
    if-ne v8, v12, :cond_8

    .line 711
    const-wide/16 v14, 0x0

    cmp-long v12, v4, v14

    if-nez v12, :cond_5

    .line 712
    return v13

    .line 714
    :cond_5
    const-wide/16 v14, 0xa

    mul-long v14, v14, v4

    add-int/lit8 v12, v10, -0x30

    int-to-long v11, v12

    sub-long/2addr v14, v11

    .line 715
    .local v14, "newValue":J
    const-wide v11, -0xcccccccccccccccL

    cmp-long v17, v4, v11

    if-gtz v17, :cond_7

    cmp-long v17, v4, v11

    if-nez v17, :cond_6

    cmp-long v11, v14, v4

    if-gez v11, :cond_6

    goto :goto_1

    :cond_6
    const/16 v16, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/16 v16, 0x1

    :goto_2
    and-int v7, v7, v16

    .line 717
    move-wide v4, v14

    .line 718
    .end local v14    # "newValue":J
    goto/16 :goto_9

    :cond_8
    const/4 v11, 0x3

    if-ne v8, v11, :cond_9

    .line 719
    const/4 v8, 0x4

    goto/16 :goto_9

    .line 720
    :cond_9
    if-eq v8, v15, :cond_a

    const/4 v11, 0x6

    if-ne v8, v11, :cond_1c

    .line 721
    :cond_a
    const/4 v8, 0x7

    goto :goto_9

    .line 708
    :cond_b
    :goto_3
    add-int/lit8 v11, v10, -0x30

    neg-int v11, v11

    int-to-long v4, v11

    .line 709
    const/4 v8, 0x2

    goto :goto_9

    .line 702
    :cond_c
    :goto_4
    invoke-direct {v0, v10}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v14

    if-nez v14, :cond_12

    .line 703
    nop

    .line 727
    .end local v10    # "c":C
    :goto_5
    if-ne v8, v12, :cond_f

    if-eqz v7, :cond_f

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v10, v4, v14

    if-nez v10, :cond_d

    if-eqz v6, :cond_f

    .line 728
    :cond_d
    if-eqz v6, :cond_e

    move-wide v10, v4

    goto :goto_6

    :cond_e
    neg-long v10, v4

    :goto_6
    iput-wide v10, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 729
    iget v10, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 730
    const/16 v10, 0xf

    iput v10, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v10

    .line 731
    :cond_f
    if-eq v8, v12, :cond_11

    if-eq v8, v11, :cond_11

    const/4 v10, 0x7

    if-ne v8, v10, :cond_10

    goto :goto_7

    .line 736
    :cond_10
    return v13

    .line 733
    :cond_11
    :goto_7
    iput v9, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 734
    const/16 v10, 0x10

    iput v10, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v10

    .line 705
    .restart local v10    # "c":C
    :cond_12
    return v13

    .line 694
    :cond_13
    if-ne v8, v12, :cond_14

    .line 695
    const/4 v8, 0x3

    .line 696
    goto :goto_9

    .line 698
    :cond_14
    return v13

    .line 668
    :cond_15
    if-nez v8, :cond_16

    .line 669
    const/4 v6, 0x1

    .line 670
    const/4 v8, 0x1

    .line 671
    goto :goto_9

    .line 672
    :cond_16
    if-ne v8, v15, :cond_17

    .line 673
    const/4 v8, 0x6

    .line 674
    goto :goto_9

    .line 676
    :cond_17
    return v13

    .line 687
    :cond_18
    if-eq v8, v12, :cond_1a

    if-ne v8, v11, :cond_19

    goto :goto_8

    .line 691
    :cond_19
    return v13

    .line 688
    :cond_1a
    :goto_8
    const/4 v8, 0x5

    .line 689
    goto :goto_9

    .line 679
    :cond_1b
    if-ne v8, v15, :cond_1d

    .line 680
    const/4 v8, 0x6

    .line 681
    nop

    .line 651
    .end local v10    # "c":C
    :cond_1c
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 683
    .restart local v10    # "c":C
    :cond_1d
    return v13
.end method

.method private push(I)V
    .locals 4
    .param p1, "newTop"    # I

    .line 1238
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 1239
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    .line 1240
    .local v2, "newStack":[I
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1241
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 1243
    .end local v2    # "newStack":[I
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    .line 1244
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1444
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1445
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1448
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1449
    .local v0, "escaped":C
    const/16 v1, 0xa

    const/4 v4, 0x0

    if-eq v0, v1, :cond_e

    const/16 v3, 0x62

    if-eq v0, v3, :cond_d

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c

    const/16 v5, 0x6e

    if-eq v0, v5, :cond_b

    const/16 v5, 0x72

    if-eq v0, v5, :cond_a

    const/16 v5, 0x74

    if-eq v0, v5, :cond_9

    const/16 v5, 0x75

    if-eq v0, v5, :cond_2

    move v1, v4

    .local v1, "result":C
    goto/16 :goto_4

    .line 1451
    .end local v1    # "result":C
    :cond_2
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v5, 0x4

    add-int/2addr v4, v5

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v4, v6, :cond_4

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 1452
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1455
    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 1456
    .local v2, "result":C
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .local v4, "i":I
    add-int/lit8 v6, v4, 0x4

    .local v6, "end":I
    :goto_2
    if-ge v4, v6, :cond_8

    .line 1457
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v7, v7, v4

    .line 1458
    .local v7, "c":C
    shl-int/lit8 v8, v2, 0x4

    int-to-char v2, v8

    .line 1459
    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    const/16 v8, 0x39

    if-gt v7, v8, :cond_5

    .line 1460
    add-int/lit8 v8, v7, -0x30

    add-int/2addr v8, v2

    int-to-char v2, v8

    goto :goto_3

    .line 1461
    :cond_5
    const/16 v8, 0x61

    if-lt v7, v8, :cond_6

    if-gt v7, v3, :cond_6

    .line 1462
    add-int/lit8 v8, v7, -0x61

    add-int/2addr v8, v1

    add-int/2addr v8, v2

    int-to-char v2, v8

    goto :goto_3

    .line 1463
    :cond_6
    const/16 v8, 0x41

    if-lt v7, v8, :cond_7

    const/16 v8, 0x46

    if-gt v7, v8, :cond_7

    .line 1464
    add-int/lit8 v8, v7, -0x41

    add-int/2addr v8, v1

    add-int/2addr v8, v2

    int-to-char v2, v8

    .line 1456
    .end local v7    # "c":C
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1466
    .restart local v7    # "c":C
    :cond_7
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v10, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v8, v9, v10, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1469
    .end local v4    # "i":I
    .end local v6    # "end":I
    .end local v7    # "c":C
    :cond_8
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1470
    return v2

    .line 1449
    .end local v2    # "result":C
    :cond_9
    move v1, v4

    .line 1473
    .restart local v1    # "result":C
    const/16 v2, 0x9

    return v2

    .line 1449
    .end local v1    # "result":C
    :cond_a
    move v1, v4

    .line 1482
    .restart local v1    # "result":C
    const/16 v2, 0xd

    return v2

    .line 1449
    .end local v1    # "result":C
    :cond_b
    move v2, v4

    .line 1479
    .restart local v2    # "result":C
    return v1

    .line 1449
    .end local v2    # "result":C
    :cond_c
    move v1, v4

    .line 1485
    .restart local v1    # "result":C
    const/16 v2, 0xc

    return v2

    .line 1449
    .end local v1    # "result":C
    :cond_d
    move v1, v4

    .line 1476
    .restart local v1    # "result":C
    const/16 v2, 0x8

    return v2

    .line 1449
    .end local v1    # "result":C
    :cond_e
    move v1, v4

    .line 1488
    .restart local v1    # "result":C
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1489
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1496
    :goto_4
    return v0
.end method

.method private skipQuotedValue(C)V
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1080
    .local v0, "buffer":[C
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1081
    .local v1, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1083
    .local v2, "l":I
    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 1084
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aget-char v1, v0, v1

    .line 1085
    .local v1, "c":I
    if-ne v1, p1, :cond_0

    .line 1086
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1087
    return-void

    .line 1088
    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    .line 1089
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1090
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1091
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1092
    .end local v4    # "p":I
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v1, v3

    goto :goto_2

    .line 1093
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 1094
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1095
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1097
    .end local v1    # "c":I
    :cond_2
    move v1, v4

    .end local v4    # "p":I
    .local v1, "p":I
    :goto_2
    goto :goto_1

    .line 1098
    :cond_3
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1099
    .end local v1    # "p":I
    .end local v2    # "l":I
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 1100
    :cond_4
    const-string v1, "Unterminated string"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1413
    :goto_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1426
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1414
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 1415
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1416
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1417
    goto :goto_3

    .line 1419
    :cond_2
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1420
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1421
    nop

    .line 1413
    .end local v0    # "c":I
    :goto_3
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 1419
    .restart local v0    # "c":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1424
    .end local v0    # "c":I
    :cond_4
    return v3
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1396
    :goto_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1398
    .local v0, "c":C
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1399
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1400
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1401
    goto :goto_1

    .line 1402
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1403
    nop

    .line 1406
    .end local v0    # "c":C
    :cond_2
    :goto_1
    return-void

    .line 1405
    :cond_3
    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1105
    :goto_0
    const/4 v0, 0x0

    .line 1106
    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v2, v3, :cond_2

    .line 1107
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 1106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1113
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1125
    :cond_1
    :pswitch_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1126
    return-void

    .line 1129
    :cond_2
    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1130
    .end local v0    # "i":I
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1131
    return-void

    .line 1130
    :cond_3
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1505
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 331
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 334
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 335
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 336
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 341
    return-void

    .line 338
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 367
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 370
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 371
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 372
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 377
    return-void

    .line 374
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1193
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1194
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    .line 1195
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1196
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1197
    return-void
.end method

.method public endArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 349
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 352
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 353
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 354
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 359
    return-void

    .line 356
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 385
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 388
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 389
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 390
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 395
    return-void

    .line 392
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 402
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 405
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isLenient()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 837
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 838
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 840
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 841
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 842
    const/4 v1, 0x1

    return v1

    .line 843
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 844
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 845
    return v2

    .line 847
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 882
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 883
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 886
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 887
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 888
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v1, v1

    return-wide v1

    .line 891
    :cond_1
    const/16 v1, 0x10

    const-string v3, " column "

    const-string v4, " at line "

    const/16 v5, 0xb

    if-ne v0, v1, :cond_2

    .line 892
    new-instance v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 893
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_2

    .line 894
    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v6, 0x9

    if-ne v0, v6, :cond_3

    goto :goto_0

    .line 896
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 897
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    .line 898
    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_2

    .line 899
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a double but was "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 895
    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v1, 0x27

    goto :goto_1

    :cond_7
    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 903
    :goto_2
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 904
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 905
    .local v5, "result":D
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v1, :cond_9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 906
    :cond_8
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 909
    :cond_9
    :goto_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 910
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 911
    return-wide v5
.end method

.method public nextInt()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1144
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1145
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 1146
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 1150
    :cond_0
    const/16 v1, 0xf

    const-string v2, " column "

    const-string v3, " at line "

    const-string v4, "Expected an int but was "

    const/4 v5, 0x0

    if-ne v0, v1, :cond_2

    .line 1151
    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v1, v6

    .line 1152
    .local v1, "result":I
    int-to-long v8, v1

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    .line 1156
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1157
    return v1

    .line 1153
    :cond_1
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1160
    .end local v1    # "result":I
    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1161
    new-instance v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1162
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    move v1, v5

    .restart local v1    # "result":I
    goto :goto_3

    .line 1163
    .end local v1    # "result":I
    :cond_3
    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v6, 0x9

    if-ne v0, v6, :cond_4

    goto :goto_0

    :cond_4
    move v1, v5

    .line 1173
    .restart local v1    # "result":I
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1164
    .end local v1    # "result":I
    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    const/16 v1, 0x27

    goto :goto_1

    :cond_6
    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1166
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1167
    .restart local v1    # "result":I
    :try_start_1
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1168
    return v1

    .line 1169
    :catch_0
    move-exception v6

    goto :goto_2

    .end local v1    # "result":I
    :catch_1
    move-exception v1

    move v1, v5

    .line 1171
    .restart local v1    # "result":I
    :goto_2
    nop

    .line 1177
    :goto_3
    const/16 v6, 0xb

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1178
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 1179
    .local v6, "asDouble":D
    double-to-int v1, v6

    .line 1180
    int-to-double v8, v1

    cmpl-double v10, v8, v6

    if-nez v10, :cond_7

    .line 1184
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1185
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1186
    return v1

    .line 1181
    :cond_7
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public nextLong()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 926
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 927
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 930
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 931
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 932
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    return-wide v1

    .line 935
    :cond_1
    const/16 v1, 0x10

    const-string v3, " column "

    const-string v4, " at line "

    const-string v5, "Expected a long but was "

    if-ne v0, v1, :cond_2

    .line 936
    new-instance v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 937
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_2

    .line 938
    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v6, 0x9

    if-ne v0, v6, :cond_3

    goto :goto_0

    .line 948
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 939
    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    const/16 v1, 0x27

    goto :goto_1

    :cond_5
    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 942
    .local v6, "result":J
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    return-wide v6

    .line 944
    .end local v6    # "result":J
    :catch_0
    move-exception v1

    .line 946
    nop

    .line 952
    :goto_2
    const/16 v1, 0xb

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 953
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 954
    .local v6, "asDouble":D
    double-to-long v8, v6

    .line 955
    .local v8, "result":J
    long-to-double v10, v8

    cmpl-double v1, v10, v6

    if-nez v1, :cond_6

    .line 959
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 960
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 961
    return-wide v8

    .line 956
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 773
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 774
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 775
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 778
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 779
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 780
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 781
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 782
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 783
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .line 788
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 789
    return-object v1

    .line 785
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextNull()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 860
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 861
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 863
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 864
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 869
    return-void

    .line 866
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 802
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 806
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 807
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 808
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 809
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 810
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 811
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 812
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 813
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 814
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 815
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 816
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 817
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 818
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 819
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 824
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 825
    return-object v1

    .line 821
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 413
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 417
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 446
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 444
    :pswitch_0
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 442
    :pswitch_1
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 429
    :pswitch_2
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 439
    :pswitch_3
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 434
    :pswitch_4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 432
    :pswitch_5
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 425
    :pswitch_6
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 423
    :pswitch_7
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 421
    :pswitch_8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 419
    :pswitch_9
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .line 315
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 316
    return-void
.end method

.method public skipValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1205
    const/4 v0, 0x0

    .line 1207
    .local v0, "count":I
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1208
    .local v1, "p":I
    if-nez v1, :cond_0

    .line 1209
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    .line 1212
    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 1213
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1214
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1215
    :cond_1
    if-ne v1, v3, :cond_2

    .line 1216
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1217
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1218
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1219
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1220
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1221
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1222
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1223
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1224
    :cond_4
    const/16 v2, 0xe

    if-eq v1, v2, :cond_a

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    goto :goto_3

    .line 1226
    :cond_5
    const/16 v2, 0x8

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    goto :goto_2

    .line 1228
    :cond_6
    const/16 v2, 0x9

    if-eq v1, v2, :cond_8

    const/16 v2, 0xd

    if-ne v1, v2, :cond_7

    goto :goto_1

    .line 1230
    :cond_7
    const/16 v2, 0x10

    if-ne v1, v2, :cond_b

    .line 1231
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_4

    .line 1229
    :cond_8
    :goto_1
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_4

    .line 1227
    :cond_9
    :goto_2
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_4

    .line 1225
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    .line 1233
    :cond_b
    :goto_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1234
    .end local v1    # "p":I
    if-nez v0, :cond_c

    .line 1235
    return-void

    .line 1234
    :cond_c
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
