.class public Lcom/shenma/tvlauncher/utils/RemoteServer;
.super Ljava/lang/Object;
.source "RemoteServer.java"


# static fields
.field public static final REMOTE_INSTALLATION_INSTALL_RESULT:I = 0x3ea

.field public static final REMOTE_INSTALLATION_START_INSTALL:I = 0x3e9


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public mPackName:Ljava/lang/String;

.field private server:Lnet/sunniwell/android/httpserver/HttpServer;

.field private upLoadFileHandler:Lcom/shenma/tvlauncher/utils/UploadFileHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->mPackName:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/shenma/tvlauncher/utils/RemoteServer$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/utils/RemoteServer$1;-><init>(Lcom/shenma/tvlauncher/utils/RemoteServer;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/utils/RemoteServer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/utils/RemoteServer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/utils/RemoteServer;->startInstallAPK(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/utils/RemoteServer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/utils/RemoteServer;

    .line 15
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/utils/RemoteServer;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/utils/RemoteServer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/utils/RemoteServer;->showPromptMessage(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/utils/RemoteServer;)Lcom/shenma/tvlauncher/utils/UploadFileHandler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/utils/RemoteServer;

    .line 15
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->upLoadFileHandler:Lcom/shenma/tvlauncher/utils/UploadFileHandler;

    return-object v0
.end method

.method private showPromptMessage(ILjava/lang/String;Z)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "apkName"    # Ljava/lang/String;
    .param p3, "result"    # Z

    .line 149
    const/16 v0, 0x3e9

    const v1, 0x7f070140

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    if-eqz p3, :cond_1

    .line 155
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5b89\u88c5\u6210\u529f!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5b89\u88c5\u5931\u8d25!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07013e

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5f00\u59cb\u5b89\u88c5!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 152
    nop

    .line 161
    :goto_0
    return-void
.end method

.method private startInstallAPK(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/shenma/tvlauncher/utils/RemoteServer$2;

    invoke-direct {v0, p0, p1}, Lcom/shenma/tvlauncher/utils/RemoteServer$2;-><init>(Lcom/shenma/tvlauncher/utils/RemoteServer;Ljava/lang/String;)V

    .line 138
    .local v0, "installThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method


# virtual methods
.method public setSuccessResult(ILjava/lang/String;)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 83
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    .line 85
    iget-object v1, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 86
    return-void
.end method

.method public start(I)V
    .locals 4
    .param p1, "port"    # I

    .line 95
    :try_start_0
    new-instance v0, Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-direct {v0, p1}, Lnet/sunniwell/android/httpserver/HttpServer;-><init>(I)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    .line 96
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-virtual {v0}, Lnet/sunniwell/android/httpserver/HttpServer;->getHttpRequestHandlerRegistry()Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    move-result-object v0

    .line 97
    .local v0, "registry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    new-instance v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;

    iget-object v2, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/UploadFileHandler;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->upLoadFileHandler:Lcom/shenma/tvlauncher/utils/UploadFileHandler;

    .line 98
    const-string v1, "/upload.action"

    iget-object v2, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->upLoadFileHandler:Lcom/shenma/tvlauncher/utils/UploadFileHandler;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 99
    const-string v1, "*"

    new-instance v2, Lcom/shenma/tvlauncher/utils/HttpFileHandler;

    iget-object v3, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/shenma/tvlauncher/utils/HttpFileHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 100
    iget-object v1, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-virtual {v1}, Lnet/sunniwell/android/httpserver/HttpServer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "registry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 103
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/RemoteServer;->server:Lnet/sunniwell/android/httpserver/HttpServer;

    invoke-virtual {v0}, Lnet/sunniwell/android/httpserver/HttpServer;->stop()V

    .line 110
    return-void
.end method
