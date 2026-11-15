.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


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

    .line 1623
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4
    .param p1, "arg0"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 1628
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1629
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x26

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget v2, v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Vod_Notice_starting_time:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1637
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x30

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1638
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x31

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1641
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5202(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 1642
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1643
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1644
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1645
    return-void
.end method
