.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setListener()V
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

    .line 356
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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

    .line 360
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$700(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$800(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$900(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 363
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1000(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 366
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 369
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1800(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/application/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/application/MyApplication;->getOnPlay()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1700()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1700()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$000(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/view/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->bringToFront()V

    .line 375
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1900(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V

    .line 376
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$800(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$900(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    goto/16 :goto_1

    .line 393
    :cond_2
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1700()Ljava/util/ArrayList;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 393
    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 395
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2102(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)I

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "nowProgram":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1800(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/application/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/application/MyApplication;->setOnPlay(Ljava/lang/String;)V

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nowProgram=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TVBackActivity"

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    new-instance v3, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    .line 402
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 401
    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2202(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    .line 403
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->notifyDataSetChanged()V

    .line 404
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 405
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->setSelection(I)V

    .line 406
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 407
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramUrl()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "media_url":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    const/4 v4, 0x4

    invoke-static {v3, v1, v4}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2400(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/String;I)V

    .line 409
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    const v4, 0x7f0e00f4

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 410
    const-string v3, "lv_tv_back_videos....loadingShow_tv"

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .end local v0    # "nowProgram":Ljava/lang/String;
    .end local v1    # "media_url":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method
