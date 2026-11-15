.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cookie$Builder;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->a:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->b:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->c:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Cookie;->e:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/Cookie;->f:Ljava/lang/String;

    iput-wide p3, p0, Lokhttp3/Cookie;->g:J

    iput-object p5, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    iput-object p6, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    iput-boolean p7, p0, Lokhttp3/Cookie;->j:Z

    iput-boolean p8, p0, Lokhttp3/Cookie;->k:Z

    iput-boolean p9, p0, Lokhttp3/Cookie;->m:Z

    iput-boolean p10, p0, Lokhttp3/Cookie;->l:Z

    return-void
.end method

.method private constructor <init>(Lokhttp3/Cookie$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->e:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->f:Ljava/lang/String;

    iget-wide v0, p1, Lokhttp3/Cookie$Builder;->c:J

    iput-wide v0, p0, Lokhttp3/Cookie;->g:J

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->d:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Cookie$Builder;->e:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->f:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->j:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->g:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->k:Z

    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->h:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->l:Z

    iget-boolean p1, p1, Lokhttp3/Cookie$Builder;->i:Z

    iput-boolean p1, p0, Lokhttp3/Cookie;->m:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "builder.domain == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "builder.value == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "builder.name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lokhttp3/Cookie$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lokhttp3/Cookie;-><init>(Lokhttp3/Cookie$Builder;)V

    return-void
.end method

.method private static a(Ljava/lang/String;IIZ)I
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    :cond_0
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_5

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_5

    :cond_1
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7a

    if-le v0, v1, :cond_5

    :cond_2
    const/16 v1, 0x41

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5a

    if-le v0, v1, :cond_5

    :cond_3
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    move p1, p2

    :goto_3
    return p1
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "-?\\d+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1

    :cond_0
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :cond_1
    :goto_1
    return-wide v0

    :cond_2
    throw v0
.end method

.method private static a(Ljava/lang/String;I)J
    .locals 13

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lokhttp3/Cookie;->a(Ljava/lang/String;IIZ)I

    move-result v1

    sget-object v2, Lokhttp3/Cookie;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_0
    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v1, p1, :cond_4

    add-int/lit8 v12, v1, 0x1

    invoke-static {p0, v12, p1, v11}, Lokhttp3/Cookie;->a(Ljava/lang/String;IIZ)I

    move-result v12

    invoke-virtual {v2, v1, v12}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    if-ne v5, v3, :cond_0

    sget-object v1, Lokhttp3/Cookie;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v9, v5

    move v5, v1

    goto :goto_1

    :cond_0
    if-ne v6, v3, :cond_1

    sget-object v1, Lokhttp3/Cookie;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_1
    if-ne v7, v3, :cond_2

    sget-object v1, Lokhttp3/Cookie;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lokhttp3/Cookie;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    move v7, v1

    goto :goto_1

    :cond_2
    if-ne v4, v3, :cond_3

    sget-object v1, Lokhttp3/Cookie;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    invoke-static {p0, v12, p1, v0}, Lokhttp3/Cookie;->a(Ljava/lang/String;IIZ)I

    move-result v1

    goto/16 :goto_0

    :cond_4
    const/16 p0, 0x46

    if-lt v4, p0, :cond_5

    const/16 p0, 0x63

    if-gt v4, p0, :cond_5

    add-int/lit16 v4, v4, 0x76c

    :cond_5
    if-ltz v4, :cond_6

    const/16 p0, 0x45

    if-gt v4, p0, :cond_6

    add-int/lit16 v4, v4, 0x7d0

    :cond_6
    const/16 p0, 0x641

    if-lt v4, p0, :cond_c

    if-eq v7, v3, :cond_b

    if-lez v6, :cond_a

    const/16 p0, 0x1f

    if-gt v6, p0, :cond_a

    if-ltz v5, :cond_9

    const/16 p0, 0x17

    if-gt v5, p0, :cond_9

    if-ltz v9, :cond_8

    const/16 p0, 0x3b

    if-gt v9, p0, :cond_8

    if-ltz v8, :cond_7

    if-gt v8, p0, :cond_7

    new-instance p0, Ljava/util/GregorianCalendar;

    sget-object p1, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {p0, v11, v4}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v7, v11

    invoke-virtual {p0, v10, v7}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v6}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v8}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static a(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 28

    move-object/from16 v1, p3

    const-string v2, "."

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v4}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v0

    const/16 v6, 0x3d

    invoke-static {v1, v5, v0, v6}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v7

    if-ne v7, v0, :cond_0

    :goto_0
    const/4 v8, 0x0

    goto/16 :goto_10

    :cond_0
    invoke-static {v1, v5, v7}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    add-int/2addr v7, v9

    invoke-static {v1, v7, v0}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v0, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v16, -0x1

    const-wide v18, 0xe677d21fdbffL

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    :goto_1
    if-ge v0, v3, :cond_1b

    invoke-static {v1, v0, v3, v4}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v14

    invoke-static {v1, v0, v14, v6}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v15

    invoke-static {v1, v0, v15}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-ge v15, v14, :cond_2

    add-int/lit8 v15, v15, 0x1

    invoke-static {v1, v15, v14}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_2
    const-string v15, ""

    :goto_2
    const-string v6, "expires"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    :try_start_0
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v15, v5, v0, v5}, Lokhttp3/Cookie;->a(Ljava/lang/String;IIZ)I

    move-result v6

    sget-object v12, Lokhttp3/Cookie;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    :goto_3
    if-ge v6, v0, :cond_8

    add-int/lit8 v13, v6, 0x1

    invoke-static {v15, v13, v0, v9}, Lokhttp3/Cookie;->a(Ljava/lang/String;IIZ)I

    move-result v13

    invoke-virtual {v12, v6, v13}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    sget-object v6, Lokhttp3/Cookie;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v12, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x3

    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move/from16 v26, v6

    move/from16 v27, v9

    goto :goto_5

    :cond_3
    move/from16 v6, v25

    const/4 v9, -0x1

    if-ne v6, v9, :cond_4

    sget-object v9, Lokhttp3/Cookie;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_4
    move/from16 v25, v6

    goto :goto_5

    :cond_4
    move/from16 v9, v24

    const/4 v1, -0x1

    if-ne v9, v1, :cond_6

    sget-object v1, Lokhttp3/Cookie;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lokhttp3/Cookie;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v9}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    move/from16 v24, v1

    goto :goto_4

    :cond_5
    const/4 v1, -0x1

    :cond_6
    if-ne v4, v1, :cond_7

    sget-object v1, Lokhttp3/Cookie;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    :cond_7
    move/from16 v25, v6

    move/from16 v24, v9

    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    invoke-static {v15, v13, v0, v1}, Lokhttp3/Cookie;->a(Ljava/lang/String;IIZ)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v1, p3

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_8
    move/from16 v9, v24

    move/from16 v6, v25

    const/16 v0, 0x46

    if-lt v4, v0, :cond_9

    const/16 v0, 0x63

    if-gt v4, v0, :cond_9

    add-int/lit16 v4, v4, 0x76c

    :cond_9
    if-ltz v4, :cond_a

    const/16 v0, 0x45

    if-gt v4, v0, :cond_a

    add-int/lit16 v4, v4, 0x7d0

    :cond_a
    const/16 v0, 0x641

    if-lt v4, v0, :cond_11

    const/4 v0, -0x1

    if-eq v9, v0, :cond_10

    if-lez v6, :cond_f

    const/16 v0, 0x1f

    if-gt v6, v0, :cond_f

    if-ltz v5, :cond_e

    const/16 v0, 0x17

    if-gt v5, v0, :cond_e

    move/from16 v13, v26

    if-ltz v13, :cond_c

    const/16 v1, 0x3b

    if-gt v13, v1, :cond_d

    move/from16 v0, v27

    if-ltz v0, :cond_b

    if-gt v0, v1, :cond_b

    :try_start_1
    new-instance v12, Ljava/util/GregorianCalendar;

    sget-object v15, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v12, v15}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v15, 0x1

    invoke-virtual {v12, v15, v4}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v4, v9, -0x1

    const/4 v9, 0x2

    invoke-virtual {v12, v9, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x5

    invoke-virtual {v12, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    invoke-virtual {v12, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    invoke-virtual {v12, v4, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v12, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    const/4 v4, 0x0

    invoke-virtual {v12, v0, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-wide/from16 v18, v4

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    const/16 v1, 0x3b

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e
    const/16 v1, 0x3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_f
    const/16 v1, 0x3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    const/16 v1, 0x3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11
    const/16 v1, 0x3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    :catch_0
    move-exception v0

    const/16 v1, 0x3b

    goto :goto_8

    :cond_12
    const/16 v1, 0x3b

    const-string v4, "max-age"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    :try_start_2
    invoke-static {v15}, Lokhttp3/Cookie;->a(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v16, v4

    :goto_6
    const/4 v4, 0x1

    const/16 v23, 0x1

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_13
    const-string v4, "domain"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    :try_start_3
    invoke-virtual {v15, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_14

    const/4 v4, 0x1

    :try_start_4
    invoke-virtual {v15, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_7

    :cond_14
    const/4 v4, 0x1

    :goto_7
    invoke-static {v15}, Lokhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    move-object v7, v0

    const/16 v22, 0x0

    goto :goto_9

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_16
    const/4 v4, 0x1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    :goto_8
    const/4 v4, 0x1

    goto :goto_9

    :cond_17
    const/4 v4, 0x1

    const-string v5, "path"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object v8, v15

    goto :goto_9

    :cond_18
    const-string v5, "secure"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v20, 0x1

    goto :goto_9

    :cond_19
    const-string v5, "httponly"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v21, 0x1

    :cond_1a
    :goto_9
    add-int/lit8 v0, v14, 0x1

    move-object/from16 v1, p3

    const/16 v4, 0x3b

    const/4 v5, 0x0

    const/16 v6, 0x3d

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_1b
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, v16, v0

    if-nez v2, :cond_1c

    move-wide v12, v0

    goto :goto_c

    :cond_1c
    const-wide/16 v1, -0x1

    cmp-long v0, v16, v1

    if-eqz v0, :cond_20

    const-wide v0, 0x20c49ba5e353f7L

    cmp-long v2, v16, v0

    if-gtz v2, :cond_1d

    const-wide/16 v0, 0x3e8

    mul-long v16, v16, v0

    goto :goto_a

    :cond_1d
    const-wide v16, 0x7fffffffffffffffL

    :goto_a
    add-long v16, v16, p0

    cmp-long v0, v16, p0

    if-ltz v0, :cond_1f

    const-wide v1, 0xe677d21fdbffL

    cmp-long v0, v16, v1

    if-lez v0, :cond_1e

    goto :goto_b

    :cond_1e
    move-wide/from16 v12, v16

    goto :goto_c

    :cond_1f
    const-wide v1, 0xe677d21fdbffL

    :goto_b
    move-wide v12, v1

    goto :goto_c

    :cond_20
    move-wide/from16 v12, v18

    :goto_c
    if-nez v7, :cond_21

    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    move-object v14, v0

    goto :goto_d

    :cond_21
    move-object/from16 v1, p2

    invoke-static {v1, v7}, Lokhttp3/Cookie;->a(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    move-object v14, v7

    :goto_d
    const-string v0, "/"

    if-eqz v8, :cond_24

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_e

    :cond_23
    move-object v15, v8

    goto :goto_f

    :cond_24
    :goto_e
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eqz v2, :cond_25

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_25
    move-object v15, v0

    :goto_f
    new-instance v0, Lokhttp3/Cookie;

    move-object v9, v0

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    move/from16 v19, v23

    invoke-direct/range {v9 .. v19}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    move-object v8, v0

    :goto_10
    return-object v8
.end method

.method private static a(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lokhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static b(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2f

    if-eq p0, p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lokhttp3/Cookie;->a(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object p0

    return-object p0
.end method

.method public static parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final domain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lokhttp3/Cookie;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lokhttp3/Cookie;

    iget-object v0, p1, Lokhttp3/Cookie;->e:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Cookie;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lokhttp3/Cookie;->f:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Cookie;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lokhttp3/Cookie;->h:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lokhttp3/Cookie;->i:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lokhttp3/Cookie;->g:J

    iget-wide v2, p0, Lokhttp3/Cookie;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-boolean v0, p1, Lokhttp3/Cookie;->j:Z

    iget-boolean v1, p0, Lokhttp3/Cookie;->j:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lokhttp3/Cookie;->k:Z

    iget-boolean v1, p0, Lokhttp3/Cookie;->k:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lokhttp3/Cookie;->l:Z

    iget-boolean v1, p0, Lokhttp3/Cookie;->l:Z

    if-ne v0, v1, :cond_1

    iget-boolean p1, p1, Lokhttp3/Cookie;->m:Z

    iget-boolean v0, p0, Lokhttp3/Cookie;->m:Z

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final expiresAt()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/Cookie;->g:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 9

    iget-object v0, p0, Lokhttp3/Cookie;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lokhttp3/Cookie;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v3, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget-wide v4, p0, Lokhttp3/Cookie;->g:J

    const/16 v6, 0x20

    ushr-long v6, v4, v6

    xor-long/2addr v4, v6

    long-to-int v5, v4

    iget-boolean v4, p0, Lokhttp3/Cookie;->j:Z

    xor-int/lit8 v4, v4, 0x1

    iget-boolean v6, p0, Lokhttp3/Cookie;->k:Z

    xor-int/lit8 v6, v6, 0x1

    iget-boolean v7, p0, Lokhttp3/Cookie;->l:Z

    xor-int/lit8 v7, v7, 0x1

    iget-boolean v8, p0, Lokhttp3/Cookie;->m:Z

    xor-int/lit8 v8, v8, 0x1

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v8

    return v4
.end method

.method public final hostOnly()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cookie;->m:Z

    return v0
.end method

.method public final httpOnly()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cookie;->k:Z

    return v0
.end method

.method public final matches(Lokhttp3/HttpUrl;)Z
    .locals 5

    iget-boolean v0, p0, Lokhttp3/Cookie;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    invoke-static {p1, v0}, Lokhttp3/Cookie;->a(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lokhttp3/Cookie;->j:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    :goto_3
    return v1
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cookie;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final persistent()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cookie;->l:Z

    return v0
.end method

.method public final secure()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/Cookie;->j:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/Cookie;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Cookie;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/Cookie;->l:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lokhttp3/Cookie;->g:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, "; max-age=0"

    goto :goto_0

    :cond_0
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lokhttp3/Cookie;->g:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lokhttp3/Cookie;->m:Z

    if-nez v1, :cond_2

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/Cookie;->j:Z

    if-eqz v1, :cond_3

    const-string v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lokhttp3/Cookie;->k:Z

    if-eqz v1, :cond_4

    const-string v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cookie;->f:Ljava/lang/String;

    return-object v0
.end method
