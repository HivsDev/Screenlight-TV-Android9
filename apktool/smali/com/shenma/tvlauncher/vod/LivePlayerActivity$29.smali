.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onCreateMenu()V
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

    .line 2243
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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

    .line 2247
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v0, :cond_5

    .line 2248
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7502(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z

    .line 2249
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7602(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z

    .line 2250
    if-eqz p3, :cond_4

    if-eq p3, v6, :cond_3

    if-eq p3, v5, :cond_2

    if-eq p3, v4, :cond_1

    if-eq p3, v3, :cond_0

    .line 2288
    return-void

    .line 2283
    :cond_0
    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7702(I)I

    .line 2284
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2285
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->qlposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2286
    return-void

    .line 2277
    :cond_1
    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7702(I)I

    .line 2278
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2279
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2280
    return-void

    .line 2271
    :cond_2
    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7702(I)I

    .line 2272
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2273
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->phszposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2274
    return-void

    .line 2265
    :cond_3
    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7702(I)I

    .line 2266
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2267
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2268
    return-void

    .line 2259
    :cond_4
    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7702(I)I

    .line 2260
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2261
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2262
    return-void

    .line 2290
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2292
    invoke-static {}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7700()I

    move-result v0

    const/16 v8, 0x11

    if-eqz v0, :cond_22

    if-eq v0, v6, :cond_1b

    if-eq v0, v5, :cond_14

    if-eq v0, v4, :cond_11

    if-eq v0, v3, :cond_a

    if-eq v0, v1, :cond_6

    .line 2438
    return-void

    .line 2413
    :cond_6
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->qlposition:I

    .line 2414
    const-string v0, "LIVEs"

    const v1, 0x7f070140

    if-nez p3, :cond_7

    .line 2415
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2416
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2417
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2418
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2419
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2420
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->finish()V

    .line 2421
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const v3, 0x7f0e0015

    invoke-static {v2, v3, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 2422
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    if-ne p3, v6, :cond_8

    .line 2423
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2424
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2425
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->finish()V

    .line 2426
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const v2, 0x7f0e00fc

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 2427
    :cond_8
    if-ne p3, v5, :cond_9

    .line 2428
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2429
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2430
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2431
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2432
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->finish()V

    .line 2433
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const v3, 0x7f0e00fd

    invoke-static {v2, v3, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 2435
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2436
    return-void

    .line 2383
    :cond_a
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    .line 2384
    const-string v0, "live_core"

    if-nez p3, :cond_b

    .line 2385
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2386
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "\u81ea\u52a8"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2387
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2388
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_b
    if-ne p3, v6, :cond_c

    .line 2389
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2390
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "\u7cfb\u7edf"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2391
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2392
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_c
    if-ne p3, v5, :cond_d

    .line 2393
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2394
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "IJK"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2395
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2396
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_d
    if-ne p3, v4, :cond_e

    .line 2397
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2398
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "EXO"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2399
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2400
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_e
    if-ne p3, v3, :cond_f

    .line 2401
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2402
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "\u963f\u91cc"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2403
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2405
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_f
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_10

    .line 2406
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 2407
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2409
    :cond_10
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2410
    return-void

    .line 2369
    :cond_11
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->phszposition:I

    .line 2370
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2371
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "playPre"

    if-nez p3, :cond_12

    .line 2372
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2373
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 2374
    :cond_12
    if-ne p3, v6, :cond_13

    .line 2375
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2378
    :cond_13
    :goto_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2379
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2380
    return-void

    .line 2343
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_14
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    .line 2344
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 2345
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2346
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p3, :cond_15

    .line 2347
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v2, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2348
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 2349
    :cond_15
    if-ne p3, v6, :cond_16

    .line 2350
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string v2, "4:3 \u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2351
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 2352
    :cond_16
    if-ne p3, v5, :cond_17

    .line 2353
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string v2, "16:9\u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2354
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 2355
    :cond_17
    if-ne p3, v4, :cond_18

    .line 2356
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v2, "\u5168\u5c4f\u62c9\u4f38"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2357
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 2358
    :cond_18
    if-ne p3, v3, :cond_19

    .line 2359
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v2, "\u7b49\u6bd4\u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2360
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 2361
    :cond_19
    if-ne p3, v1, :cond_1a

    .line 2362
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v2, "\u5168\u5c4f\u88c1\u526a"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2363
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2365
    :cond_1a
    :goto_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2366
    return-void

    .line 2313
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1b
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    .line 2314
    const-string v0, "mIsHwDecode"

    if-nez p3, :cond_1c

    .line 2315
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2316
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2317
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    const-string/jumbo v3, "\u8f6f\u89e3\u7801"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2318
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 2319
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1c
    if-ne p3, v6, :cond_1d

    .line 2320
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2321
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2322
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    const-string/jumbo v3, "\u786c\u89e3\u7801"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2323
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2325
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1d
    :goto_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$8100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2326
    if-ne p3, v6, :cond_1e

    .line 2327
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$4700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0, v7}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 2328
    :cond_1e
    if-nez p3, :cond_1f

    .line 2329
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$4700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 2331
    :cond_1f
    :goto_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v7}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7202(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2332
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$4700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2333
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$4700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7302(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I

    .line 2335
    :cond_20
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_21

    .line 2336
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2337
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$4700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->resume()V

    .line 2339
    :cond_21
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2340
    return-void

    .line 2295
    :cond_22
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_24

    .line 2296
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v7}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7002(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2297
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7902(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z

    .line 2298
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$102(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I

    .line 2299
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_23

    .line 2300
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 2301
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2303
    :cond_23
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    .line 2306
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2308
    :cond_24
    sput p3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 2309
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 2310
    return-void

    .line 2441
    :cond_25
    return-void
.end method
