.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;
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

    .line 723
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 728
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const-class v2, Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 729
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TYPE"

    const-string v2, "ALL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 732
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->overridePendingTransition(II)V

    .line 733
    return-void
.end method
