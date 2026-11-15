.class Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;
.super Ljava/lang/Object;
.source "VodTypeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodTypeActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 685
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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

    .line 687
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "username":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 689
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1, p3}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$2000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)V

    goto :goto_0

    .line 690
    :cond_0
    if-nez v0, :cond_1

    .line 691
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0044

    const v3, 0x7f07013e

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 692
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 693
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->overridePendingTransition(II)V

    .line 695
    :cond_1
    :goto_0
    return-void
.end method
