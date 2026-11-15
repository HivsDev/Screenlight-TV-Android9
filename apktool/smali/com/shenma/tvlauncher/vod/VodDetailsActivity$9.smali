.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;
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

    .line 677
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 682
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryZJById(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    .line 684
    .local v0, "b":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v3, 0x7f070140

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v1

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v2}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->deleteByWhere(Ljava/lang/String;Ljava/lang/String;I)V

    .line 686
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1800(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f070165

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 687
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const v2, 0x7f0e0050

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 689
    :cond_0
    new-instance v1, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-direct {v1}, Lcom/shenma/tvlauncher/vod/db/Album;-><init>()V

    .line 690
    .local v1, "al":Lcom/shenma/tvlauncher/vod/db/Album;
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumId(Ljava/lang/String;)V

    .line 691
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumType(Ljava/lang/String;)V

    .line 692
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumState(Ljava/lang/String;)V

    .line 693
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$800(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setNextLink(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->setTypeId(I)V

    .line 695
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumPic(Ljava/lang/String;)V

    .line 696
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumTitle(Ljava/lang/String;)V

    .line 697
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->addAlbums(Lcom/shenma/tvlauncher/vod/db/Album;)V

    .line 698
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1800(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;

    move-result-object v2

    const v4, 0x7f070164

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 699
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const v4, 0x7f0e0052

    invoke-static {v2, v4, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 702
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v1    # "al":Lcom/shenma/tvlauncher/vod/db/Album;
    :cond_1
    :goto_0
    return-void
.end method
