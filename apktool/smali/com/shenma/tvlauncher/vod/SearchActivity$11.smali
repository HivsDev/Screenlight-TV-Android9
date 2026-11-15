.class Lcom/shenma/tvlauncher/vod/SearchActivity$11;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/SearchActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
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

    .line 533
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 535
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    const v1, 0x7f07013e

    const-string v2, "joychang"

    if-eqz v0, :cond_2

    .line 536
    const-string/jumbo v0, "\u8bf7\u6c42\u8d85\u65f6"

    invoke-static {v2, v0}, Lcom/shenma/tvlauncher/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$000(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    const v3, 0x7f0e0193

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/vod/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 539
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$800(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$800(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$800(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$1102(Lcom/shenma/tvlauncher/vod/SearchActivity;I)I

    .line 543
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$1100(Lcom/shenma/tvlauncher/vod/SearchActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$1402(Lcom/shenma/tvlauncher/vod/SearchActivity;I)I

    goto :goto_1

    .line 540
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$1402(Lcom/shenma/tvlauncher/vod/SearchActivity;I)I

    goto :goto_1

    .line 545
    :cond_2
    instance-of v0, p1, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_3

    .line 546
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$1402(Lcom/shenma/tvlauncher/vod/SearchActivity;I)I

    .line 547
    sget-object v0, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 548
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$900(Lcom/shenma/tvlauncher/vod/SearchActivity;)Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;->notifyDataSetChanged()V

    .line 549
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$000(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "\u4eb2,\u6ca1\u6709\u641c\u7d22\u5230\u76f8\u5173\u5185\u5bb9!"

    invoke-static {v0, v3, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParseError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/shenma/tvlauncher/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 551
    :cond_3
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_4

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthFailureError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/shenma/tvlauncher/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$11;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->closeProgressDialog()V

    .line 555
    return-void
.end method
