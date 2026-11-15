.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastPosition:J

.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 637
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->lastPosition:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 640
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$4700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 641
    .local v0, "currentPosition":J
    iget-wide v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->lastPosition:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 642
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$4800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 644
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$3700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    goto :goto_0

    .line 652
    :cond_1
    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->lastPosition:J

    .line 654
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$4100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$4900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget v4, v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->check_time:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 655
    return-void
.end method
