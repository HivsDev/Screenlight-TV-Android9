.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;
.super Landroid/os/Handler;
.source "TVLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1829
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 1830
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1831
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1835
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1840
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$5500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TVLivePlayer"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/baidu/cyberplayer/core/BVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$5500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1848
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/baidu/cyberplayer/core/BVideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->showCacheInfo(Z)V

    .line 1852
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/baidu/cyberplayer/core/BVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->start()V

    .line 1853
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    sget-object v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;->PLAYER_PREPARING:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3002(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;)Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    .line 1856
    :goto_0
    return-void
.end method
