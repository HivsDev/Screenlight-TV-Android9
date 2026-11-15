.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;
.super Landroid/os/Handler;
.source "LivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1185
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 1186
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1187
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1189
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1216
    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1195
    :try_start_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 1196
    const-string v1, "LivePlayerActivity"

    const-string v2, "SYNC_Playing.wait()"

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    goto :goto_0

    .line 1201
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1197
    :catch_0
    move-exception v1

    .line 1199
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1201
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1203
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler$1;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1210
    return-void

    .line 1212
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$4700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 1213
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_PREPARING:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5202(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 1214
    return-void
.end method
