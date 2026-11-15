.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onCreateMenus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 2518
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2522
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2524
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_5

    .line 2525
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7002(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2526
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7902(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z

    .line 2527
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$102(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I

    .line 2528
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_4

    .line 2530
    const/4 v0, -0x1

    .line 2531
    .local v0, "maxUrlValueSoFar":I
    const/4 v1, -0x1

    .line 2533
    .local v1, "maxUrlIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2535
    :try_start_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2537
    .local v3, "currentUrlValue":I
    add-int/lit8 v4, p3, 0x1

    if-gt v3, v4, :cond_0

    if-le v3, v0, :cond_0

    .line 2539
    move v0, v3

    .line 2540
    move v1, v2

    goto :goto_1

    .line 2541
    :cond_0
    add-int/lit8 v4, p3, 0x1

    if-le v3, v4, :cond_1

    .line 2542
    goto :goto_3

    .line 2546
    .end local v3    # "currentUrlValue":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 2544
    :catch_0
    move-exception v3

    .line 2545
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2533
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2548
    .end local v2    # "i":I
    :cond_2
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 2549
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1702(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I

    .line 2550
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v2

    sput v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 2569
    :cond_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 2570
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2572
    .end local v0    # "maxUrlValueSoFar":I
    .end local v1    # "maxUrlIndex":I
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    .line 2575
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2577
    :cond_5
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 2578
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2579
    return-void
.end method
