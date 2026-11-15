.class final Lokhttp3/internal/framed/Http2$c;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Lokhttp3/internal/framed/m$a;

.field private final b:Lokio/BufferedSource;

.field private final c:Lokhttp3/internal/framed/Http2$a;

.field private final d:Z


# direct methods
.method constructor <init>(Lokio/BufferedSource;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    iput-boolean p2, p0, Lokhttp3/internal/framed/Http2$c;->d:Z

    new-instance p1, Lokhttp3/internal/framed/Http2$a;

    iget-object p2, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-direct {p1, p2}, Lokhttp3/internal/framed/Http2$a;-><init>(Lokio/BufferedSource;)V

    iput-object p1, p0, Lokhttp3/internal/framed/Http2$c;->c:Lokhttp3/internal/framed/Http2$a;

    new-instance p1, Lokhttp3/internal/framed/m$a;

    iget-object p2, p0, Lokhttp3/internal/framed/Http2$c;->c:Lokhttp3/internal/framed/Http2$a;

    invoke-direct {p1, p2}, Lokhttp3/internal/framed/m$a;-><init>(Lokio/Source;)V

    iput-object p1, p0, Lokhttp3/internal/framed/Http2$c;->a:Lokhttp3/internal/framed/m$a;

    return-void
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$c;->c:Lokhttp3/internal/framed/Http2$a;

    iput p1, v0, Lokhttp3/internal/framed/Http2$a;->d:I

    iput p1, v0, Lokhttp3/internal/framed/Http2$a;->a:I

    int-to-short p1, p2

    iput-short p1, v0, Lokhttp3/internal/framed/Http2$a;->e:S

    int-to-byte p1, p3

    iput-byte p1, v0, Lokhttp3/internal/framed/Http2$a;->b:B

    iput p4, v0, Lokhttp3/internal/framed/Http2$a;->c:I

    iget-object p1, p0, Lokhttp3/internal/framed/Http2$c;->a:Lokhttp3/internal/framed/m$a;

    invoke-virtual {p1}, Lokhttp3/internal/framed/m$a;->a()V

    iget-object p1, p0, Lokhttp3/internal/framed/Http2$c;->a:Lokhttp3/internal/framed/m$a;

    invoke-virtual {p1}, Lokhttp3/internal/framed/m$a;->getAndResetHeaderList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(Lokhttp3/internal/framed/FrameReader$Handler;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    iget-object v3, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    invoke-interface {p1, p2, v0, v3, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->priority(IIIZ)V

    return-void
.end method

.method private a(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p4}, Lokhttp3/internal/framed/Http2$c;->a(Lokhttp3/internal/framed/FrameReader$Handler;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_2
    const/4 v3, 0x0

    const/4 v6, -0x1

    invoke-static {p2, p3, v0}, Lokhttp3/internal/framed/Http2;->a(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lokhttp3/internal/framed/Http2$c;->a(ISBI)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lokhttp3/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    move-object v2, p1

    move v5, p4

    invoke-interface/range {v2 .. v8}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private a(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p3}, Lokhttp3/internal/framed/Http2$c;->a(Lokhttp3/internal/framed/FrameReader$Handler;I)V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private b(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v2, v1

    :cond_2
    invoke-static {p2, p3, v2}, Lokhttp3/internal/framed/Http2;->a(IBS)I

    move-result p2

    iget-object p3, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {p1, v0, p4, p3, p2}, Lokhttp3/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    iget-object p1, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    int-to-long p2, v2

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private b(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    invoke-static {p2}, Lokhttp3/internal/framed/ErrorCode;->fromHttp2(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1, p3, v2}, Lokhttp3/internal/framed/FrameReader$Handler;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private c(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_c

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    invoke-interface {p1}, Lokhttp3/internal/framed/FrameReader$Handler;->ackSettings()V

    goto/16 :goto_2

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_b

    new-instance p3, Lokhttp3/internal/framed/Settings;

    invoke-direct {p3}, Lokhttp3/internal/framed/Settings;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_a

    iget-object v2, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readShort()S

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const/4 v4, 0x4

    if-eq v2, p4, :cond_9

    const/4 v5, 0x2

    if-eq v2, v5, :cond_7

    const/4 v5, 0x3

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_4

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_3

    const v4, 0xffffff

    if-gt v3, v4, :cond_3

    goto :goto_1

    :cond_3
    new-array p1, p4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_4
    const/4 v2, 0x7

    if-ltz v3, :cond_5

    goto :goto_1

    :cond_5
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_6
    const/4 v2, 0x4

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_9

    if-ne v3, p4, :cond_8

    goto :goto_1

    :cond_8
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    :goto_1
    invoke-virtual {p3, v2, v0, v3}, Lokhttp3/internal/framed/Settings;->a(III)Lokhttp3/internal/framed/Settings;

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    :cond_a
    invoke-interface {p1, v0, p3}, Lokhttp3/internal/framed/FrameReader$Handler;->settings(ZLokhttp3/internal/framed/Settings;)V

    :goto_2
    return-void

    :cond_b
    new-array p1, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_c
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private c(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt p2, v2, :cond_3

    if-nez p3, :cond_2

    iget-object p3, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    iget-object v2, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    add-int/lit8 p2, p2, -0x8

    invoke-static {v2}, Lokhttp3/internal/framed/ErrorCode;->fromHttp2(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez p2, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    :cond_0
    invoke-interface {p1, p3, v3, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V

    return-void

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private d(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_0
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Lokhttp3/internal/framed/Http2;->a(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lokhttp3/internal/framed/Http2$c;->a(ISBI)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p4, v1, p2}, Lokhttp3/internal/framed/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    return-void

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private d(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    int-to-long v2, p2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    invoke-interface {p1, p3, v2, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    return-void

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    const-string/jumbo p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private e(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    if-nez p4, :cond_1

    iget-object p2, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    iget-object p4, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    move-result p4

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0, p2, p4}, Lokhttp3/internal/framed/FrameReader$Handler;->ping(ZII)V

    return-void

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_PING streamId != 0"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    return-void
.end method

.method public final nextFrame(Lokhttp3/internal/framed/FrameReader$Handler;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    const-wide/16 v3, 0x9

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-static {v2}, Lokhttp3/internal/framed/Http2;->a(Lokio/BufferedSource;)I

    move-result v2

    if-ltz v2, :cond_26

    const/16 v3, 0x4000

    if-gt v2, v3, :cond_26

    iget-object v4, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    iget-object v5, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iget-object v6, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v9

    invoke-static {v8, v6, v2, v4, v5}, Lokhttp3/internal/framed/Http2$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v9, 0x5

    const/16 v10, 0x8

    const/4 v11, 0x4

    packed-switch v4, :pswitch_data_0

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    int-to-long v1, v2

    :goto_0
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    goto/16 :goto_6

    :pswitch_0
    if-ne v2, v11, :cond_2

    iget-object v2, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1

    invoke-interface {p1, v6, v2, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    goto/16 :goto_6

    :cond_1
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "windowSizeIncrement was 0"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_1
    if-lt v2, v10, :cond_6

    if-nez v6, :cond_5

    iget-object v3, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    iget-object v4, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    add-int/lit8 v2, v2, -0x8

    invoke-static {v4}, Lokhttp3/internal/framed/ErrorCode;->fromHttp2(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v5

    if-eqz v5, :cond_4

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez v2, :cond_3

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    int-to-long v6, v2

    invoke-interface {v1, v6, v7}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v1

    :cond_3
    invoke-interface {p1, v3, v5, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V

    goto/16 :goto_6

    :cond_4
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TYPE_GOAWAY streamId != 0"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_6
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_2
    if-ne v2, v10, :cond_9

    if-nez v6, :cond_8

    iget-object v2, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    and-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-interface {p1, v1, v2, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->ping(ZII)V

    goto/16 :goto_6

    :cond_8
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TYPE_PING streamId != 0"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_PING length != 8: %s"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_3
    if-eqz v6, :cond_b

    and-int/lit8 v3, v5, 0x8

    if-eqz v3, :cond_a

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    :cond_a
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    and-int/2addr v3, v7

    sub-int/2addr v2, v11

    invoke-static {v2, v5, v1}, Lokhttp3/internal/framed/Http2;->a(IBS)I

    move-result v2

    invoke-direct {p0, v2, v1, v5, v6}, Lokhttp3/internal/framed/Http2$c;->a(ISBI)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v6, v3, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    goto/16 :goto_6

    :cond_b
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_4
    if-nez v6, :cond_18

    and-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_d

    if-nez v2, :cond_c

    invoke-interface {p1}, Lokhttp3/internal/framed/FrameReader$Handler;->ackSettings()V

    goto/16 :goto_6

    :cond_c
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    rem-int/lit8 v4, v2, 0x6

    if-nez v4, :cond_17

    new-instance v4, Lokhttp3/internal/framed/Settings;

    invoke-direct {v4}, Lokhttp3/internal/framed/Settings;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_16

    iget-object v6, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readShort()S

    move-result v6

    iget-object v7, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readInt()I

    move-result v7

    if-eq v6, v8, :cond_15

    const/4 v10, 0x2

    if-eq v6, v10, :cond_13

    const/4 v10, 0x3

    if-eq v6, v10, :cond_12

    if-eq v6, v11, :cond_10

    if-eq v6, v9, :cond_e

    goto :goto_2

    :cond_e
    if-lt v7, v3, :cond_f

    const v10, 0xffffff

    if-gt v7, v10, :cond_f

    goto :goto_2

    :cond_f
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_10
    const/4 v6, 0x7

    if-ltz v7, :cond_11

    goto :goto_2

    :cond_11
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_12
    const/4 v6, 0x4

    goto :goto_2

    :cond_13
    if-eqz v7, :cond_15

    if-ne v7, v8, :cond_14

    goto :goto_2

    :cond_14
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    :goto_2
    invoke-virtual {v4, v6, v1, v7}, Lokhttp3/internal/framed/Settings;->a(III)Lokhttp3/internal/framed/Settings;

    add-int/lit8 v5, v5, 0x6

    goto :goto_1

    :cond_16
    invoke-interface {p1, v1, v4}, Lokhttp3/internal/framed/FrameReader$Handler;->settings(ZLokhttp3/internal/framed/Settings;)V

    goto/16 :goto_6

    :cond_17
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_18
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TYPE_SETTINGS streamId != 0"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_5
    if-ne v2, v11, :cond_1b

    if-eqz v6, :cond_1a

    iget-object v2, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    invoke-static {v2}, Lokhttp3/internal/framed/ErrorCode;->fromHttp2(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-interface {p1, v6, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    goto/16 :goto_6

    :cond_19
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1a
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TYPE_RST_STREAM streamId == 0"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1b
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_6
    if-ne v2, v9, :cond_1d

    if-eqz v6, :cond_1c

    invoke-direct {p0, p1, v6}, Lokhttp3/internal/framed/Http2$c;->a(Lokhttp3/internal/framed/FrameReader$Handler;I)V

    goto/16 :goto_6

    :cond_1c
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TYPE_PRIORITY streamId == 0"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1d
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_7
    if-eqz v6, :cond_21

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_3

    :cond_1e
    const/4 v3, 0x0

    :goto_3
    and-int/lit8 v4, v5, 0x8

    if-eqz v4, :cond_1f

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    :cond_1f
    and-int/lit8 v4, v5, 0x20

    if-eqz v4, :cond_20

    invoke-direct {p0, p1, v6}, Lokhttp3/internal/framed/Http2$c;->a(Lokhttp3/internal/framed/FrameReader$Handler;I)V

    add-int/lit8 v2, v2, -0x5

    :cond_20
    const/4 v4, 0x0

    const/4 v7, -0x1

    invoke-static {v2, v5, v1}, Lokhttp3/internal/framed/Http2;->a(IBS)I

    move-result v2

    invoke-direct {p0, v2, v1, v5, v6}, Lokhttp3/internal/framed/Http2$c;->a(ISBI)Ljava/util/List;

    move-result-object v9

    sget-object v10, Lokhttp3/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    move-object v1, p1

    move v2, v4

    move v4, v6

    move v5, v7

    move-object v6, v9

    move-object v7, v10

    invoke-interface/range {v1 .. v7}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    goto :goto_6

    :cond_21
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_8
    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    goto :goto_4

    :cond_22
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v4, v5, 0x20

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    goto :goto_5

    :cond_23
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_25

    and-int/lit8 v4, v5, 0x8

    if-eqz v4, :cond_24

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    :cond_24
    invoke-static {v2, v5, v1}, Lokhttp3/internal/framed/Http2;->a(IBS)I

    move-result v2

    iget-object v4, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-interface {p1, v3, v6, v4, v2}, Lokhttp3/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    int-to-long v1, v1

    goto/16 :goto_0

    :cond_25
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :goto_6
    const/4 v1, 0x1

    goto :goto_7

    :cond_26
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "FRAME_SIZE_ERROR: %s"

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    :goto_7
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readConnectionPreface()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$c;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$c;->b:Lokio/BufferedSource;

    invoke-static {}, Lokhttp3/internal/framed/Http2;->a()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "<< CONNECTION %s"

    invoke-static {v5, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lokhttp3/internal/framed/Http2;->a()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Expected a connection header but was %s"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
