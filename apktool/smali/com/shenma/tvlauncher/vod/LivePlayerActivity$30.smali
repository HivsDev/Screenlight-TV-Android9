.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onCreateMenu()V
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

    .line 2446
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2448
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 2449
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2451
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2452
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2453
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2454
    goto :goto_0

    .line 2457
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7502(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z

    .line 2458
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7602(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z

    .line 2459
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2464
    :cond_2
    :goto_0
    return v2
.end method
