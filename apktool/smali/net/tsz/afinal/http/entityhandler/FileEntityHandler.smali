.class public Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;
.super Ljava/lang/Object;
.source "FileEntityHandler.java"


# instance fields
.field private mStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    .line 27
    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lnet/tsz/afinal/http/entityhandler/EntityCallBack;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 19
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "callback"    # Lnet/tsz/afinal/http/entityhandler/EntityCallBack;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "isResume"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 48
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, "targetFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 54
    :cond_1
    iget-boolean v3, v0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-eqz v3, :cond_2

    .line 55
    return-object v2

    .line 59
    :cond_2
    const-wide/16 v3, 0x0

    .line 60
    .local v3, "current":J
    const/4 v5, 0x0

    .line 61
    .local v5, "os":Ljava/io/FileOutputStream;
    if-eqz p4, :cond_3

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 63
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v5, v6

    goto :goto_0

    .line 65
    :cond_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 68
    :goto_0
    iget-boolean v6, v0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-eqz v6, :cond_4

    .line 69
    return-object v2

    .line 72
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 73
    .local v6, "input":Ljava/io/InputStream;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    add-long/2addr v7, v3

    .line 75
    .local v7, "count":J
    cmp-long v9, v3, v7

    if-gez v9, :cond_a

    iget-boolean v9, v0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-eqz v9, :cond_5

    goto :goto_4

    .line 79
    :cond_5
    const/4 v9, 0x0

    .line 80
    .local v9, "readLen":I
    const/16 v15, 0x400

    new-array v14, v15, [B

    .line 81
    .local v14, "buffer":[B
    nop

    :goto_1
    iget-boolean v10, v0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-nez v10, :cond_7

    cmp-long v10, v3, v7

    if-gez v10, :cond_7

    const/4 v10, 0x0

    invoke-virtual {v6, v14, v10, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    move v12, v11

    .end local v9    # "readLen":I
    .local v12, "readLen":I
    if-gtz v11, :cond_6

    move v15, v12

    move-object/from16 v18, v14

    goto :goto_2

    .line 82
    :cond_6
    invoke-virtual {v5, v14, v10, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 83
    int-to-long v9, v12

    add-long/2addr v3, v9

    .line 84
    const/16 v16, 0x0

    move-object/from16 v9, p2

    move-wide v10, v7

    move/from16 v17, v12

    .end local v12    # "readLen":I
    .local v17, "readLen":I
    move-wide v12, v3

    move-object/from16 v18, v14

    .end local v14    # "buffer":[B
    .local v18, "buffer":[B
    move/from16 v14, v16

    invoke-interface/range {v9 .. v14}, Lnet/tsz/afinal/http/entityhandler/EntityCallBack;->callBack(JJZ)V

    move/from16 v9, v17

    move-object/from16 v14, v18

    goto :goto_1

    .line 81
    .end local v17    # "readLen":I
    .end local v18    # "buffer":[B
    .restart local v9    # "readLen":I
    .restart local v14    # "buffer":[B
    :cond_7
    move-object/from16 v18, v14

    .line 86
    .end local v14    # "buffer":[B
    .restart local v18    # "buffer":[B
    move v15, v9

    .end local v9    # "readLen":I
    .local v15, "readLen":I
    :goto_2
    const/4 v14, 0x1

    move-object/from16 v9, p2

    move-wide v10, v7

    move-wide v12, v3

    invoke-interface/range {v9 .. v14}, Lnet/tsz/afinal/http/entityhandler/EntityCallBack;->callBack(JJZ)V

    .line 88
    iget-boolean v9, v0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-eqz v9, :cond_9

    cmp-long v9, v3, v7

    if-ltz v9, :cond_8

    goto :goto_3

    .line 89
    :cond_8
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "user stop download thread"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 92
    :cond_9
    :goto_3
    return-object v2

    .line 76
    .end local v15    # "readLen":I
    .end local v18    # "buffer":[B
    :cond_a
    :goto_4
    return-object v2

    .line 46
    .end local v2    # "targetFile":Ljava/io/File;
    .end local v3    # "current":J
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "count":J
    :cond_b
    :goto_5
    const/4 v2, 0x0

    return-object v2
.end method

.method public isStop()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    return v0
.end method

.method public setStop(Z)V
    .locals 0
    .param p1, "stop"    # Z

    .line 40
    iput-boolean p1, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    .line 41
    return-void
.end method
