.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setvvListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 571
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 576
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2900(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1600(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 578
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "tv_back_current":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$3000(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_0

    .line 581
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$3100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "\u4ee5\u5b9e\u9645\u64ad\u653e\u8282\u76ee\u4e3a\u51c6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$3100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 584
    invoke-static {v3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 583
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 584
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 587
    .local v1, "m_value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1600(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u64ad\u653e\u9891\u9053\u7edf\u8ba1"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string/jumbo v2, "\u64ad\u653e\u8282\u76ee\u7edf\u8ba1"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    const-string v3, "TV_BACK"

    invoke-static {v2, v3, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 590
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1800(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/application/MyApplication;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 590
    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/application/MyApplication;->setOnPlay(Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1700()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 594
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    new-instance v3, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    .line 595
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 594
    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2202(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    .line 596
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->notifyDataSetChanged()V

    .line 597
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 598
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 600
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$000(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/view/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/VideoView;->start()V

    .line 601
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$3200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 602
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 603
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1800(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/application/MyApplication;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 603
    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/application/MyApplication;->setOnPlay(Ljava/lang/String;)V

    .line 610
    return-void
.end method
