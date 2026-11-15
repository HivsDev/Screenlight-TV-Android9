.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$4;
.super Landroid/os/Handler;
.source "LivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onResume()V
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

    .line 552
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 554
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 555
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_2

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 568
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 563
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$3000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$3000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    :cond_1
    return-void

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$4;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    return-void
.end method
