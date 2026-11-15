.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$19;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setListener()V
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

    .line 1557
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 1574
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Landroid/widget/TextView;I)V

    .line 1575
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 1576
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 1567
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1568
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 1560
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 1561
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1562
    return-void
.end method
