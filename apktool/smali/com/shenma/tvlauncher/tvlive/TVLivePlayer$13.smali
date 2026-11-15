.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;
.super Ljava/lang/Object;
.source "TVLivePlayer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 1641
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1646
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1647
    return v2

    .line 1649
    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 1651
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1652
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3602(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)Z

    .line 1653
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3702(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)Z

    .line 1654
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v6}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1655
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1656
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$5300(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1660
    :cond_3
    :goto_0
    return v2
.end method
