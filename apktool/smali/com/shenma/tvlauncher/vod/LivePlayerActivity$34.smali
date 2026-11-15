.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$34;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onCreateMenus()V
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

    .line 2584
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$34;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2586
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 2587
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2589
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$34;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2590
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$34;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2591
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$34;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2592
    goto :goto_0

    .line 2595
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$34;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7502(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z

    .line 2596
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$34;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7602(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z

    .line 2600
    :cond_2
    :goto_0
    return v1
.end method
