.class Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;
.super Ljava/lang/Object;
.source "VodTypeActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodTypeActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 581
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V
    .locals 7
    .param p1, "response"    # Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    .line 583
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->closeProgressDialog()V

    .line 584
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 587
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1302(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    .line 612
    nop

    .line 613
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 614
    .local v0, "vodDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 616
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 617
    .local v1, "vodTypeActivity":Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 618
    .local v3, "vodTypeActivity2":Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1200(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)I

    move-result v4

    add-int/2addr v4, v2

    .line 619
    .local v4, "access$20":I
    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1202(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)I

    .line 620
    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1202(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)I

    .line 621
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1600(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    move-result-object v2

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;->changData(Ljava/util/ArrayList;)V

    .line 622
    return-void

    .line 624
    .end local v1    # "vodTypeActivity":Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .end local v3    # "vodTypeActivity2":Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .end local v4    # "access$20":I
    :cond_1
    return-void

    .line 588
    .end local v0    # "vodDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1202(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)I

    .line 589
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1, p1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1302(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    .line 591
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5171"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1300(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getVideonum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u90e8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "EpisodesNumber"

    invoke-static {v1, v3, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 594
    .local v0, "EpisodesNumber":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1400(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/os/Handler;

    move-result-object v1

    if-ne v0, v2, :cond_3

    const/4 v2, 0x4

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 596
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1300(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getTotalpage()I

    move-result v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1502(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)I

    .line 597
    nop

    .line 598
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 599
    .local v1, "vodDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 606
    :cond_4
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1102(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 607
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    new-instance v3, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v6, v6, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v3, v4, v5, v6}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1602(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;)Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    .line 608
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/GridView;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1600(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 609
    return-void

    .line 626
    .end local v0    # "EpisodesNumber":I
    .end local v1    # "vodDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_6

    goto :goto_2

    .line 632
    :cond_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1200(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1802(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)I

    goto :goto_3

    .line 627
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1102(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 628
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    new-instance v2, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v2, v3, v4, v5}, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1602(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;)Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    .line 629
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1600(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 630
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1802(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)I

    .line 635
    :goto_3
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 581
    check-cast p1, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V

    return-void
.end method
