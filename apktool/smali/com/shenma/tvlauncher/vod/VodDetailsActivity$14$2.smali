.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$2;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    .line 1114
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1119
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "username":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1121
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1, p3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$4000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V

    goto :goto_0

    .line 1122
    :cond_0
    if-nez v0, :cond_1

    .line 1123
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0044

    const v3, 0x7f07013e

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1124
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1125
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$2;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->overridePendingTransition(II)V

    .line 1127
    :cond_1
    :goto_0
    return-void
.end method
