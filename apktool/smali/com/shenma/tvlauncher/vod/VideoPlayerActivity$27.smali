.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 2645
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17
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

    .line 2648
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    .line 2649
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10002(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z

    .line 2650
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z

    .line 2651
    packed-switch v1, :pswitch_data_0

    .line 2701
    return-void

    .line 2696
    :pswitch_0
    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10202(I)I

    .line 2697
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v4, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/VideoPlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2698
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2699
    return-void

    .line 2690
    :pswitch_1
    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10202(I)I

    .line 2691
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/VideoPlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v3, v5, v6, v4, v7}, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2692
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2693
    return-void

    .line 2684
    :pswitch_2
    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10202(I)I

    .line 2685
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/utils/VideoPlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v3, v4, v6, v5, v7}, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2686
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2687
    return-void

    .line 2678
    :pswitch_3
    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10202(I)I

    .line 2679
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/utils/VideoPlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2680
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->phszposition:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2681
    return-void

    .line 2672
    :pswitch_4
    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10202(I)I

    .line 2673
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/utils/VideoPlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v4, v5, v7, v6}, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2674
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2675
    return-void

    .line 2666
    :pswitch_5
    invoke-static {v8}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10202(I)I

    .line 2667
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/utils/VideoPlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v4, v5, v8, v6}, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2668
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2669
    return-void

    .line 2660
    :pswitch_6
    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10202(I)I

    .line 2661
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/utils/VideoPlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v4, v5, v9, v6}, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2662
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2663
    return-void

    .line 2654
    :pswitch_7
    invoke-static {v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10202(I)I

    .line 2655
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v4, v5, v11, v6}, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2656
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2657
    return-void

    .line 2703
    :cond_0
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2705
    invoke-static {}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10200()I

    move-result v2

    const-string v12, "30\u79d2"

    const-string v13, "20\u79d2"

    const-string v14, "15\u79d2"

    const-string v15, "10\u79d2"

    const-string v16, "0\u79d2"

    const/16 v3, 0x11

    const/16 v4, 0xc

    packed-switch v2, :pswitch_data_1

    .line 2893
    return-void

    .line 2863
    :pswitch_8
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    .line 2864
    if-nez v1, :cond_1

    .line 2865
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2866
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string/jumbo v5, "\u81ea\u52a8"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2867
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2868
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    if-ne v1, v9, :cond_2

    .line 2869
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2870
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string/jumbo v5, "\u7cfb\u7edf"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2871
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2872
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    if-ne v1, v8, :cond_3

    .line 2873
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2874
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string v5, "IJK"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2875
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2876
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    if-ne v1, v7, :cond_4

    .line 2877
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2878
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string v5, "EXO"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2879
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2880
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-ne v1, v6, :cond_5

    .line 2881
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2882
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string/jumbo v5, "\u963f\u91cc"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2883
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2885
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    :goto_0
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v2, v4, :cond_6

    .line 2886
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 2887
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2890
    :cond_6
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2891
    return-void

    .line 2852
    :pswitch_9
    new-array v2, v4, [Ljava/lang/String;

    aput-object v16, v2, v11

    aput-object v15, v2, v9

    aput-object v14, v2, v8

    aput-object v13, v2, v7

    aput-object v12, v2, v6

    const-string v3, "60\u79d2"

    aput-object v3, v2, v5

    const-string v3, "90\u79d2"

    const/4 v5, 0x6

    aput-object v3, v2, v5

    const-string v3, "120\u79d2"

    const/4 v5, 0x7

    aput-object v3, v2, v5

    const/16 v3, 0x8

    const-string v5, "150\u79d2"

    aput-object v5, v2, v3

    const/16 v3, 0x9

    const-string v5, "180\u79d2"

    aput-object v5, v2, v3

    const/16 v3, 0xa

    const-string v5, "240\u79d2"

    aput-object v5, v2, v3

    const/16 v3, 0xb

    const-string v5, "300\u79d2"

    aput-object v5, v2, v3

    .line 2853
    .local v2, "jumpEndStrings":[Ljava/lang/String;
    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 2854
    .local v3, "jumpEndValues":[I
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 2855
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 2856
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    aget-object v5, v2, v1

    const-string v6, "play_jump_end"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2857
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2858
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    aget v6, v3, v1

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 2859
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2860
    return-void

    .line 2841
    .end local v2    # "jumpEndStrings":[Ljava/lang/String;
    .end local v3    # "jumpEndValues":[I
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_a
    new-array v2, v4, [Ljava/lang/String;

    aput-object v16, v2, v11

    aput-object v15, v2, v9

    aput-object v14, v2, v8

    aput-object v13, v2, v7

    aput-object v12, v2, v6

    const-string v3, "60\u79d2"

    aput-object v3, v2, v5

    const-string v3, "90\u79d2"

    const/4 v5, 0x6

    aput-object v3, v2, v5

    const-string v3, "120\u79d2"

    const/4 v5, 0x7

    aput-object v3, v2, v5

    const/16 v3, 0x8

    const-string v5, "150\u79d2"

    aput-object v5, v2, v3

    const/16 v3, 0x9

    const-string v5, "180\u79d2"

    aput-object v5, v2, v3

    const/16 v3, 0xa

    const-string v5, "240\u79d2"

    aput-object v5, v2, v3

    const/16 v3, 0xb

    const-string v5, "300\u79d2"

    aput-object v5, v2, v3

    .line 2842
    .local v2, "jumpTimes":[Ljava/lang/String;
    new-array v3, v4, [I

    fill-array-data v3, :array_1

    .line 2843
    .local v3, "jumpValues":[I
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 2844
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 2845
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    aget-object v5, v2, v1

    const-string v6, "play_jump"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2846
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2847
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    aget v6, v3, v1

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 2848
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2849
    return-void

    .line 2827
    .end local v2    # "jumpTimes":[Ljava/lang/String;
    .end local v3    # "jumpValues":[I
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_b
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->phszposition:I

    .line 2828
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2829
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v1, :cond_7

    .line 2830
    const-string v3, "playPre"

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2831
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2832
    :cond_7
    if-ne v1, v9, :cond_8

    .line 2833
    const-string v3, "playPre"

    invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2834
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2836
    :cond_8
    :goto_1
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2837
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2838
    return-void

    .line 2801
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_c
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    .line 2802
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 2803
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2804
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v1, :cond_9

    .line 2805
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v4, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2806
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 2807
    :cond_9
    if-ne v1, v9, :cond_a

    .line 2808
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string v4, "4:3 \u7f29\u653e"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2809
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 2810
    :cond_a
    if-ne v1, v8, :cond_b

    .line 2811
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string v4, "16:9\u7f29\u653e"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2812
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 2813
    :cond_b
    if-ne v1, v7, :cond_c

    .line 2814
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v4, "\u5168\u5c4f\u62c9\u4f38"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2815
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 2816
    :cond_c
    if-ne v1, v6, :cond_d

    .line 2817
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v4, "\u7b49\u6bd4\u7f29\u653e"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2818
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 2819
    :cond_d
    if-ne v1, v5, :cond_e

    .line 2820
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v4, "\u5168\u5c4f\u88c1\u526a"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2821
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2823
    :cond_e
    :goto_2
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2824
    return-void

    .line 2770
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_d
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    .line 2771
    if-nez v1, :cond_f

    .line 2772
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2773
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "mIsHwDecode"

    invoke-interface {v2, v4, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2774
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    const-string/jumbo v5, "\u8f6f\u89e3\u7801"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2775
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 2776
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_f
    if-ne v1, v9, :cond_10

    .line 2777
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2778
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "mIsHwDecode"

    invoke-interface {v2, v4, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2779
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    const-string/jumbo v5, "\u786c\u89e3\u7801"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2780
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2782
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_10
    :goto_3
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2783
    if-ne v1, v9, :cond_11

    .line 2784
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v2

    invoke-virtual {v2, v10}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_4

    .line 2785
    :cond_11
    if-nez v1, :cond_12

    .line 2786
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 2788
    :cond_12
    :goto_4
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9502(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2789
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v2

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2790
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v4

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v4

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2792
    :cond_13
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v2, v4, :cond_14

    .line 2793
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2794
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v2

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->resume()V

    .line 2795
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v2

    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 2797
    :cond_14
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2798
    return-void

    .line 2735
    :pswitch_e
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    .line 2736
    packed-switch v1, :pswitch_data_2

    goto :goto_5

    .line 2763
    :pswitch_f
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    goto :goto_5

    .line 2760
    :pswitch_10
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 2761
    goto :goto_5

    .line 2757
    :pswitch_11
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 2758
    goto :goto_5

    .line 2754
    :pswitch_12
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 2755
    goto :goto_5

    .line 2751
    :pswitch_13
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v2, v3, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 2752
    goto :goto_5

    .line 2748
    :pswitch_14
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-static {v2, v3, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 2749
    goto :goto_5

    .line 2745
    :pswitch_15
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 2746
    goto :goto_5

    .line 2742
    :pswitch_16
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v2, v3, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 2743
    goto :goto_5

    .line 2739
    :pswitch_17
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v3, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 2740
    nop

    .line 2766
    :goto_5
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2767
    return-void

    .line 2708
    :pswitch_18
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_17

    .line 2709
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9302(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2710
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$10402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z

    .line 2711
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2713
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$502(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2714
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4702(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2716
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 2717
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2718
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v2, v4, :cond_15

    .line 2719
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 2722
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2725
    :cond_15
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$6900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2726
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2728
    :cond_16
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2730
    :cond_17
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 2731
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2732
    return-void

    .line 2896
    :cond_18
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_18
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0xa
        0xf
        0x14
        0x1e
        0x3c
        0x5a
        0x78
        0x96
        0xb4
        0xf0
        0x12c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xa
        0xf
        0x14
        0x1e
        0x3c
        0x5a
        0x78
        0x96
        0xb4
        0xf0
        0x12c
    .end array-data
.end method
