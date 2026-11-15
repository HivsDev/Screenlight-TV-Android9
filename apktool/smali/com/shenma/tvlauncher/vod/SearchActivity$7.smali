.class Lcom/shenma/tvlauncher/vod/SearchActivity$7;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/SearchActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 310
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 315
    sub-int v0, p4, p3

    .line 316
    .local v0, "i":I
    if-ge p2, v0, :cond_0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<firstVisibleItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".....i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "joychang"

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$700(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    .line 322
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 312
    return-void
.end method
