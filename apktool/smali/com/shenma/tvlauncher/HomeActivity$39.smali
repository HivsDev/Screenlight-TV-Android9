.class Lcom/shenma/tvlauncher/HomeActivity$39;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;

.field final synthetic val$typeEn:Ljava/lang/String;

.field final synthetic val$typeName:Ljava/lang/String;

.field final synthetic val$typeStatus:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 1728
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeEn:Ljava/lang/String;

    iput-object p3, p0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeName:Ljava/lang/String;

    iput p4, p0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16
    .param p1, "v"    # Landroid/view/View;

    .line 1731
    move-object/from16 v0, p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1732
    .local v1, "pBundle":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeEn:Ljava/lang/String;

    const-string v3, "TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeName:Ljava/lang/String;

    const-string v3, "TYPENAME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iget v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeStatus:I

    const v4, 0x7f0e0038

    const-string v5, "999999999"

    const-wide/16 v6, 0x3e8

    const-string v8, "EMPOWER"

    const-string v9, "USER"

    const-string v10, "LIVE"

    const/4 v11, 0x1

    const-string v12, ""

    const-string/jumbo v13, "vip"

    const/4 v14, 0x0

    const-string/jumbo v15, "userName"

    if-eq v2, v11, :cond_8

    .line 1735
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeEn:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->access$1402(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1736
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->access$1502(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1737
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$1600(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1738
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1739
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v15, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1740
    .local v2, "username":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1741
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1742
    .local v3, "mIntent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1743
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1744
    .end local v3    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1745
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v6

    .line 1746
    .local v8, "time":J
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v13, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1747
    .local v6, "vip":J
    cmp-long v3, v8, v6

    if-lez v3, :cond_1

    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v13, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1748
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1749
    .restart local v3    # "mIntent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1750
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1751
    .end local v3    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1752
    :cond_1
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->access$1700(Lcom/shenma/tvlauncher/HomeActivity;)I

    move-result v3

    if-ne v3, v11, :cond_2

    .line 1753
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1754
    .restart local v3    # "mIntent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1755
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1756
    .end local v3    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1757
    :cond_2
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const v5, 0x7f07013f

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1761
    .end local v6    # "vip":J
    .end local v8    # "time":J
    :goto_0
    return-void

    .line 1763
    .end local v2    # "username":Ljava/lang/String;
    :cond_3
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {v2, v3, v1}, Lcom/shenma/tvlauncher/HomeActivity;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 1765
    :cond_4
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1766
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1767
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1768
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1769
    return-void

    .line 1770
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_5
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1771
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v15, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1772
    .local v2, "username":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1773
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1774
    .restart local v3    # "mIntent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1775
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1776
    .end local v3    # "mIntent":Landroid/content/Intent;
    goto :goto_1

    .line 1777
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1778
    .restart local v3    # "mIntent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1779
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1781
    .end local v3    # "mIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1783
    .end local v2    # "username":Ljava/lang/String;
    :cond_7
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$1800(Lcom/shenma/tvlauncher/HomeActivity;)V

    goto/16 :goto_4

    .line 1787
    :cond_8
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1788
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v15, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1789
    .restart local v2    # "username":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1790
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1791
    .restart local v3    # "mIntent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1792
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1793
    .end local v3    # "mIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1794
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v6

    .line 1795
    .restart local v8    # "time":J
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v13, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1796
    .restart local v6    # "vip":J
    cmp-long v3, v8, v6

    if-lez v3, :cond_a

    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v13, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1797
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1798
    .restart local v3    # "mIntent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1799
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1800
    .end local v3    # "mIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1801
    :cond_a
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->access$1700(Lcom/shenma/tvlauncher/HomeActivity;)I

    move-result v3

    if-ne v3, v11, :cond_b

    .line 1802
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1803
    .restart local v3    # "mIntent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1804
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1805
    .end local v3    # "mIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1806
    :cond_b
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const v5, 0x7f07013f

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1810
    .end local v6    # "vip":J
    .end local v8    # "time":J
    :goto_2
    return-void

    .line 1811
    .end local v2    # "username":Ljava/lang/String;
    :cond_c
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1812
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1813
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1814
    iget-object v3, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1815
    return-void

    .line 1816
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_d
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1817
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v15, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1818
    .local v2, "username":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1819
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1820
    .restart local v3    # "mIntent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1821
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1822
    .end local v3    # "mIntent":Landroid/content/Intent;
    goto :goto_3

    .line 1823
    :cond_e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1824
    .restart local v3    # "mIntent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1825
    iget-object v4, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1827
    .end local v3    # "mIntent":Landroid/content/Intent;
    :goto_3
    return-void

    .line 1829
    .end local v2    # "username":Ljava/lang/String;
    :cond_f
    iget-object v2, v0, Lcom/shenma/tvlauncher/HomeActivity$39;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {v2, v3, v1}, Lcom/shenma/tvlauncher/HomeActivity;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1831
    :goto_4
    return-void
.end method
