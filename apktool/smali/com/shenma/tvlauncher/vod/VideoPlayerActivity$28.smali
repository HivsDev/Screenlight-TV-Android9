.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->onCreateMenu()V
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

    .line 2898
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2900
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 2901
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2903
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2904
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2905
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$11000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2906
    goto :goto_0

    .line 2909
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10002(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z

    .line 2910
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z

    .line 2911
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/VideoPlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v4

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2915
    :cond_2
    :goto_0
    return v2
.end method
