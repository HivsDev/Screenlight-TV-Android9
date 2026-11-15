.class public Lcz/msebera/android/httpclient/impl/DefaultHttpServerConnection;
.super Lcz/msebera/android/httpclient/impl/SocketHttpServerConnection;
.source "DefaultHttpServerConnection.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpServerConnection;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const-string v0, "Socket"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultHttpServerConnection;->assertNotOpen()V

    .line 56
    const/4 v0, 0x1

    const-string v1, "http.tcp.nodelay"

    invoke-interface {p2, v1, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 57
    const/4 v1, 0x0

    const-string v2, "http.socket.timeout"

    invoke-interface {p2, v2, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 58
    const-string v2, "http.socket.keepalive"

    invoke-interface {p2, v2, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 59
    const-string v2, "http.socket.linger"

    const/4 v3, -0x1

    invoke-interface {p2, v2, v3}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v2

    .line 60
    .local v2, "linger":I
    if-ltz v2, :cond_1

    .line 61
    if-lez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 63
    :cond_1
    if-ltz v2, :cond_3

    .line 64
    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 66
    :cond_3
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/SocketHttpServerConnection;->bind(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 67
    return-void
.end method
