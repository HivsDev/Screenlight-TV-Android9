.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 630
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 634
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1400(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1400(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 643
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->CreateBottomLayout()V

    .line 644
    return-void
.end method
