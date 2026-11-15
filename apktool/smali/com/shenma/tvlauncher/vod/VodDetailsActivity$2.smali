.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$2;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->CreateBottomLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

.field final synthetic val$number:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 400
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$2;->val$number:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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

    .line 403
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$102(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)I

    .line 405
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$2;->val$number:I

    invoke-static {v1, p3, v2}, Lcom/shenma/tvlauncher/utils/Utils;->getVideolvDatas(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lv_lists:Ljava/util/List;

    .line 406
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lv_lists:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;->changData(Ljava/util/List;)V

    .line 407
    return-void
.end method
