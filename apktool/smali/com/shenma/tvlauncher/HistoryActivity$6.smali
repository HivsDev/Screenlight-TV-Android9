.class Lcom/shenma/tvlauncher/HistoryActivity$6;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HistoryActivity;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 289
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

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

    .line 293
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 294
    .local v0, "album":Lcom/shenma/tvlauncher/vod/db/Album;
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$000(Lcom/shenma/tvlauncher/HistoryActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 295
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$600(Lcom/shenma/tvlauncher/HistoryActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HistoryActivity;->access$000(Lcom/shenma/tvlauncher/HistoryActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/shenma/tvlauncher/vod/db/Album;

    .line 297
    :cond_0
    if-eqz p3, :cond_3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    goto/16 :goto_2

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$700(Lcom/shenma/tvlauncher/HistoryActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/HistoryActivity;->access$602(Lcom/shenma/tvlauncher/HistoryActivity;Ljava/util/List;)Ljava/util/List;

    .line 315
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$600(Lcom/shenma/tvlauncher/HistoryActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$600(Lcom/shenma/tvlauncher/HistoryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$800(Lcom/shenma/tvlauncher/HistoryActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->clearDatas()V

    .line 317
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$800(Lcom/shenma/tvlauncher/HistoryActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    const v3, 0x7f0e0030

    const v5, 0x7f07013f

    invoke-static {v1, v3, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 321
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$700(Lcom/shenma/tvlauncher/HistoryActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->deleteAllByWhere(I)V

    .line 322
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/HistoryActivity;->access$002(Lcom/shenma/tvlauncher/HistoryActivity;I)I

    .line 323
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$900(Lcom/shenma/tvlauncher/HistoryActivity;)V

    goto :goto_2

    .line 300
    :cond_3
    if-eqz v0, :cond_4

    .line 301
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$700(Lcom/shenma/tvlauncher/HistoryActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getTypeId()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->deleteByWhere(Ljava/lang/String;Ljava/lang/String;I)V

    .line 302
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$700(Lcom/shenma/tvlauncher/HistoryActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getTypeId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/HistoryActivity;->access$602(Lcom/shenma/tvlauncher/HistoryActivity;Ljava/util/List;)Ljava/util/List;

    .line 303
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$800(Lcom/shenma/tvlauncher/HistoryActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HistoryActivity;->access$000(Lcom/shenma/tvlauncher/HistoryActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->remove(I)V

    .line 304
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$800(Lcom/shenma/tvlauncher/HistoryActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 307
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    const v3, 0x7f0e0037

    const v4, 0x7f070140

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 309
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/HistoryActivity;->access$002(Lcom/shenma/tvlauncher/HistoryActivity;I)I

    .line 310
    iget-object v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$6;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HistoryActivity;->access$900(Lcom/shenma/tvlauncher/HistoryActivity;)V

    .line 311
    nop

    .line 326
    :goto_2
    return-void
.end method
