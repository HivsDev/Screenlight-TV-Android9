.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;
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

    .line 529
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v0, "arrayLista":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 536
    sget-object v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 539
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e002f

    const v3, 0x7f07013e

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 540
    return-void

    .line 542
    :cond_1
    const/4 v1, 0x0

    .line 543
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 544
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 545
    .local v3, "radioButton":Landroid/widget/RadioButton;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "rb"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 547
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    sget-object v5, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$402(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    sget-object v4, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v1

    .line 543
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 554
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v2, "arrayList":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 556
    new-instance v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;-><init>()V

    .line 557
    .local v4, "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    .line 558
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    .line 559
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    .end local v4    # "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 561
    .end local v3    # "i":I
    :cond_4
    sget-object v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Sd:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "arrayList"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 562
    const/4 v3, 0x0

    .line 563
    .local v3, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const-class v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v4

    .line 565
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "albumPic"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vodtype"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vodstate"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$800(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "nextlink"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "videoId"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vodname"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1100(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sourceId"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$400(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "domain"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 574
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const/high16 v5, 0x10a0000

    const v6, 0x10a0001

    invoke-virtual {v4, v5, v6}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->overridePendingTransition(II)V

    .line 575
    return-void
.end method
