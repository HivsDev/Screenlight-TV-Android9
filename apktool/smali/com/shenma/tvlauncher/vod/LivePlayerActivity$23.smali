.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setvvListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 1649
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3
    .param p1, "arg0"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompletion\u4e2dThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LivePlayerActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1654
    :try_start_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1655
    const-string v1, "LivePlayerActivity"

    const-string v2, "onCompletion...SYNC_Playing.notify()"

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5202(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 1658
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNext="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".....isLast="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "....isPause="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "....isDestroy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LivePlayerActivity"

    invoke-static {v2, v0}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7002(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1672
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1673
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1674
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$102(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I

    .line 1675
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v0

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 1676
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7302(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I

    .line 1677
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1679
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7102(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 1680
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1681
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7202(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 1682
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1683
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1696
    :cond_4
    :goto_0
    return-void

    .line 1656
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
