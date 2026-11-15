.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;
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
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 530
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 532
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3002(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 534
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    const/16 v1, 0x12c

    if-ne v0, v2, :cond_1

    .line 535
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    const v4, 0x7f07013f

    const v5, 0x7f0e017a

    const v6, 0x7f0e0062

    const v7, 0x7f0e0081

    if-gt v0, v3, :cond_0

    .line 536
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 537
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v8, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v7, v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v6, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const v6, 0x7f0e000c

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 540
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v8, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v7, v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v6, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const v6, 0x7f0e000d

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 544
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_4

    .line 545
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    const/4 v4, 0x0

    if-ge v0, v3, :cond_2

    .line 546
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3002(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    goto :goto_1

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3002(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 550
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3502(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 551
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 553
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    goto :goto_1

    .line 556
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 557
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 562
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 564
    .local v0, "nowtime":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    .line 565
    .local v4, "nowRxbyte":J
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 566
    .local v6, "rxbyte":J
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v8

    sub-long v8, v0, v8

    .line 567
    .local v8, "time":J
    cmp-long v10, v6, v2

    if-eqz v10, :cond_6

    cmp-long v10, v8, v2

    if-eqz v10, :cond_6

    .line 568
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    div-long v10, v6, v8

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-static {v2, v10, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)J

    .line 569
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v2

    cmp-long v10, v2, v12

    if-ltz v10, :cond_5

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v10

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MB/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2802(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 572
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "KB/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2802(Ljava/lang/String;)Ljava/lang/String;

    .line 574
    :goto_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 576
    :cond_6
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3902(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)J

    .line 577
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4002(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)J

    .line 579
    .end local v0    # "nowtime":J
    .end local v4    # "nowRxbyte":J
    .end local v6    # "rxbyte":J
    .end local v8    # "time":J
    :cond_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 580
    return-void
.end method
