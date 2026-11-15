.class public Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;
.super Ljava/lang/Object;
.source "StringEntityHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lnet/tsz/afinal/http/entityhandler/EntityCallBack;Ljava/lang/String;)Ljava/lang/Object;
    .locals 15
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "callback"    # Lnet/tsz/afinal/http/entityhandler/EntityCallBack;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    if-nez p1, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 34
    .local v1, "buffer":[B
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    .line 35
    .local v8, "count":J
    const-wide/16 v2, 0x0

    .line 36
    .local v2, "curCount":J
    const/4 v4, -0x1

    .line 37
    .local v4, "len":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 38
    .local v10, "is":Ljava/io/InputStream;
    move-wide v11, v2

    .end local v2    # "curCount":J
    .local v11, "curCount":J
    :goto_0
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v13, v2

    .end local v4    # "len":I
    .local v13, "len":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 44
    const/4 v7, 0x1

    move-object/from16 v2, p2

    move-wide v3, v8

    move-wide v5, v11

    invoke-interface/range {v2 .. v7}, Lnet/tsz/afinal/http/entityhandler/EntityCallBack;->callBack(JJZ)V

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 46
    .local v2, "data":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 47
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 48
    new-instance v3, Ljava/lang/String;

    move-object/from16 v14, p3

    invoke-direct {v3, v2, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 39
    .end local v2    # "data":[B
    :cond_1
    move-object/from16 v14, p3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 40
    int-to-long v2, v13

    add-long/2addr v11, v2

    .line 41
    if-eqz p2, :cond_2

    .line 42
    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-wide v3, v8

    move-wide v5, v11

    invoke-interface/range {v2 .. v7}, Lnet/tsz/afinal/http/entityhandler/EntityCallBack;->callBack(JJZ)V

    .line 38
    :cond_2
    move v4, v13

    goto :goto_0
.end method
