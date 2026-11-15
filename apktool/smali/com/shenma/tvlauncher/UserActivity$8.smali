.class Lcom/shenma/tvlauncher/UserActivity$8;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 449
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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

    .line 453
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 454
    .local v0, "album":Lcom/shenma/tvlauncher/vod/db/Album;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1800(Lcom/shenma/tvlauncher/UserActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 455
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$900(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/UserActivity;->access$1800(Lcom/shenma/tvlauncher/UserActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/shenma/tvlauncher/vod/db/Album;

    .line 457
    :cond_0
    if-eqz p3, :cond_3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    goto/16 :goto_2

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1600(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/UserActivity;->access$1500(Lcom/shenma/tvlauncher/UserActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/UserActivity;->access$902(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)Ljava/util/List;

    .line 476
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$900(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$900(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 477
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->clearDatas()V

    .line 478
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->notifyDataSetChanged()V

    .line 479
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1100(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v3, 0x7f0e00d3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 482
    :cond_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v3, 0x7f0e0030

    const v4, 0x7f07013f

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 484
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1600(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/UserActivity;->access$1500(Lcom/shenma/tvlauncher/UserActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->deleteAllByWhere(I)V

    .line 485
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1802(Lcom/shenma/tvlauncher/UserActivity;I)I

    .line 486
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$2100(Lcom/shenma/tvlauncher/UserActivity;)V

    goto/16 :goto_2

    .line 460
    :cond_3
    if-eqz v0, :cond_4

    .line 461
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1600(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getTypeId()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->deleteByWhere(Ljava/lang/String;Ljava/lang/String;I)V

    .line 462
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1600(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getTypeId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/UserActivity;->access$902(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)Ljava/util/List;

    .line 463
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/UserActivity;->access$1800(Lcom/shenma/tvlauncher/UserActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->remove(I)V

    .line 464
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->notifyDataSetChanged()V

    .line 465
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1100(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v5, 0x7f0e0096

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/UserActivity;->access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v5, 0x7f0e001a

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 468
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v3, 0x7f0e0037

    const v4, 0x7f070140

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 470
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1802(Lcom/shenma/tvlauncher/UserActivity;I)I

    .line 471
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$8;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$2100(Lcom/shenma/tvlauncher/UserActivity;)V

    .line 472
    nop

    .line 489
    :goto_2
    return-void
.end method
