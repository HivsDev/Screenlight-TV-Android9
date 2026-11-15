.class Lcom/shenma/tvlauncher/utils/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/utils/Utils;->startDownloadApk(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mHandler:Landroid/os/Handler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/shenma/tvlauncher/utils/Utils$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/shenma/tvlauncher/utils/Utils$2;->val$mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/shenma/tvlauncher/utils/Utils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 971
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/Utils$2;->val$url:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "apkName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6587\u4ef6\u8def\u5f84"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zhouchuan"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v1, 0x0

    .line 979
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/shenma/tvlauncher/utils/Utils$2;->val$url:Ljava/lang/String;

    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 980
    .local v2, "hGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 981
    .local v3, "hResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    .line 982
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 983
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 984
    .local v5, "downsize":F
    iget-object v6, p0, Lcom/shenma/tvlauncher/utils/Utils$2;->val$mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 986
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-float v6, v6

    .line 987
    .local v6, "size":F
    iget-object v7, p0, Lcom/shenma/tvlauncher/utils/Utils$2;->val$mHandler:Landroid/os/Handler;

    const/16 v8, 0x3e9

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 989
    .end local v6    # "size":F
    :cond_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/utils/Utils$2;->val$context:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    move-object v1, v6

    .line 990
    const/16 v6, 0x2000

    new-array v6, v6, [B

    .line 991
    .local v6, "buffer":[B
    const/4 v7, 0x0

    move v8, v7

    .line 992
    .local v8, "count":I
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v8, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 993
    iget-object v9, p0, Lcom/shenma/tvlauncher/utils/Utils$2;->val$mHandler:Landroid/os/Handler;

    if-eqz v9, :cond_1

    .line 994
    int-to-float v9, v8

    add-float/2addr v5, v9

    .line 995
    iget-object v9, p0, Lcom/shenma/tvlauncher/utils/Utils$2;->val$mHandler:Landroid/os/Handler;

    const/16 v10, 0x3ea

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 997
    :cond_1
    invoke-virtual {v1, v6, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1000
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1001
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1002
    iget-object v7, p0, Lcom/shenma/tvlauncher/utils/Utils$2;->val$context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/data/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/shenma/tvlauncher/utils/Utils$2;->val$context:Landroid/content/Context;

    invoke-static {v10}, Lcom/shenma/tvlauncher/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/files/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/shenma/tvlauncher/utils/Utils;->installApk(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    .end local v2    # "hGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "hResponse":Lorg/apache/http/HttpResponse;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "downsize":F
    .end local v6    # "buffer":[B
    .end local v8    # "count":I
    :cond_3
    goto :goto_1

    .line 1005
    :catch_0
    move-exception v2

    .line 1006
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1008
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
