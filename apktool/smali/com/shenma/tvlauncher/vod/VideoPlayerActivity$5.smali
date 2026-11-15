.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastPosition:J

.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 584
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->lastPosition:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 588
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4302(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)J

    .line 589
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->lastPosition:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_4

    .line 590
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v0

    sput-wide v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 591
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    goto/16 :goto_0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 596
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    const v2, 0x7f07013f

    if-le v0, v4, :cond_3

    .line 597
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4602(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 599
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 600
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const v3, 0x7f0e017e

    invoke-virtual {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 603
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4702(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 606
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 607
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const v1, 0x7f0e0122

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 611
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    goto :goto_0

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 615
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const v1, 0x7f0e0186

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 623
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->lastPosition:J

    .line 625
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 628
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 630
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 632
    :cond_6
    return-void
.end method
