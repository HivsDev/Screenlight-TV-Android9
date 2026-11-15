.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;
.super Ljava/lang/Object;
.source "TVLivePlayer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 1524
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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

    .line 1528
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    .line 1529
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3602(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)Z

    .line 1530
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3702(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)Z

    .line 1531
    if-eqz p3, :cond_3

    if-eq p3, v5, :cond_2

    if-eq p3, v4, :cond_1

    if-eq p3, v3, :cond_0

    goto/16 :goto_0

    .line 1549
    :cond_0
    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3802(I)I

    .line 1550
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v5}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v4, v1, v3, v5}, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1544
    :cond_1
    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3802(I)I

    .line 1545
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v5}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1546
    goto :goto_0

    .line 1539
    :cond_2
    invoke-static {v5}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3802(I)I

    .line 1540
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1541
    goto :goto_0

    .line 1534
    :cond_3
    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3802(I)I

    .line 1535
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v5}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v5}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1536
    nop

    .line 1551
    :goto_0
    goto/16 :goto_5

    .line 1553
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1554
    const/4 v0, 0x0

    .line 1555
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$3800()I

    move-result v6

    if-eqz v6, :cond_13

    if-eq v6, v5, :cond_e

    if-eq v6, v4, :cond_b

    if-eq v6, v3, :cond_5

    goto/16 :goto_5

    .line 1616
    :cond_5
    sput p3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->qycsposition:I

    .line 1617
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$5100(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1618
    const-string v2, "delay_time"

    if-nez p3, :cond_6

    .line 1619
    const/16 v1, 0x1388

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1620
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 1621
    :cond_6
    if-ne p3, v5, :cond_7

    .line 1622
    const/16 v1, 0x1f40

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1623
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 1624
    :cond_7
    if-ne p3, v4, :cond_8

    .line 1625
    const/16 v1, 0x2710

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1626
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 1627
    :cond_8
    if-ne p3, v3, :cond_9

    .line 1628
    const/16 v1, 0x2ee0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1629
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 1630
    :cond_9
    if-ne p3, v1, :cond_a

    .line 1631
    const/16 v1, 0x3a98

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1632
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1634
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$5200(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1635
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    goto/16 :goto_5

    .line 1602
    :cond_b
    sput p3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->phszposition:I

    .line 1603
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1604
    const-string v1, "playPre"

    if-nez p3, :cond_c

    .line 1605
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1606
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 1607
    :cond_c
    if-ne p3, v5, :cond_d

    .line 1608
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1609
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1611
    :cond_d
    :goto_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$5000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1612
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1613
    goto/16 :goto_5

    .line 1581
    :cond_e
    sput p3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->hmblposition:I

    .line 1583
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/baidu/cyberplayer/core/BVideoView;

    move-result-object v2

    sget v6, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->hmblposition:I

    iget-object v7, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v7}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v7

    iget-object v8, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v8}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->selectScales(Landroid/content/Context;Lcom/baidu/cyberplayer/core/BVideoView;III)V

    .line 1584
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1585
    const-string v1, "play_ratio"

    if-nez p3, :cond_f

    .line 1586
    const-string/jumbo v2, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1587
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 1588
    :cond_f
    if-ne p3, v5, :cond_10

    .line 1589
    const-string v2, "4:3 \u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1590
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 1591
    :cond_10
    if-ne p3, v4, :cond_11

    .line 1592
    const-string v2, "16:9\u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1593
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 1594
    :cond_11
    if-ne p3, v3, :cond_12

    .line 1595
    const-string/jumbo v2, "\u9ed8\u8ba4\u5168\u5c4f"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1596
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1598
    :cond_12
    :goto_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1599
    goto :goto_5

    .line 1558
    :cond_13
    sput p3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->jmposition:I

    .line 1559
    const-string v1, "play_decode"

    const-string v3, "mIsHwDecode"

    if-nez p3, :cond_14

    .line 1560
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1561
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1562
    const-string/jumbo v2, "\u8f6f\u89e3\u7801"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1563
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 1564
    :cond_14
    if-ne p3, v5, :cond_15

    .line 1565
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4100(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1566
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1567
    const-string/jumbo v2, "\u786c\u89e3\u7801"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1568
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1570
    :cond_15
    :goto_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4200(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1571
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/baidu/cyberplayer/core/BVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4300(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/core/BVideoView;->setDecodeMode(I)V

    .line 1575
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$4500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1576
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v1, v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1639
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_16
    :goto_5
    return-void
.end method
