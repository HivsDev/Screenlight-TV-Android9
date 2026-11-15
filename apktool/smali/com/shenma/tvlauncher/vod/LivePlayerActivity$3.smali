.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "LivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 473
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 476
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.example.MY_ACTION_FINISH_LIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v0

    const-string v1, "LIVEs"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 479
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 480
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    const-string v3, "gsLIVEs"

    invoke-static {v0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 484
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2402(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 485
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 486
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->finish()V

    .line 488
    :cond_1
    return-void
.end method
