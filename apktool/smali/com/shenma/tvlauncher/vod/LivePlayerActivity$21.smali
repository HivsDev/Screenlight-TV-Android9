.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$21;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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

    .line 1598
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4
    .param p1, "arg0"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LivePlayerActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1602
    :try_start_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1603
    monitor-exit v0

    return v2

    .line 1605
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1606
    const-string v1, "LivePlayerActivity"

    const-string v3, "onError...SYNC_Playing.notify()"

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x19

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1616
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1617
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6602(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z

    .line 1618
    return v2

    .line 1616
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
