.class Lcom/shenma/tvlauncher/HomeActivity$54;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->showUserDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;

.field final synthetic val$user_pwd_et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 2379
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->val$user_pwd_et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 2381
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->val$user_pwd_et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2386
    .local v0, "pwd":Ljava/lang/String;
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$2900(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2387
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-string v3, "200"

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/HomeActivity;->access$1602(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2388
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity;->access$1400(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "LIVE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2389
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "userName"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2390
    .local v1, "username":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2391
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2392
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2393
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2394
    .end local v2    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 2395
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 2396
    .local v2, "time":J
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const-string v5, ""

    const-string/jumbo v6, "vip"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2397
    .local v7, "vip":J
    cmp-long v4, v2, v7

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "999999999"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2398
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2399
    .local v4, "mIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v5, v5, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v6, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2400
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v5, v4}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2401
    .end local v4    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 2402
    :cond_1
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$1700(Lcom/shenma/tvlauncher/HomeActivity;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2403
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2404
    .restart local v4    # "mIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v5, v5, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2405
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v5, v4}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2406
    .end local v4    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 2407
    :cond_2
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const v5, 0x7f0e0038

    const v6, 0x7f07013f

    invoke-static {v4, v5, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 2411
    .end local v2    # "time":J
    .end local v7    # "vip":J
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$3000(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 2412
    return-void

    .line 2414
    .end local v1    # "username":Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2415
    .local v1, "pBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$1400(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$1500(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TYPENAME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {v2, v3, v1}, Lcom/shenma/tvlauncher/HomeActivity;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 2418
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$3000(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 2419
    .end local v1    # "pBundle":Landroid/os/Bundle;
    goto :goto_1

    .line 2420
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$1602(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2421
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$54;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const v2, 0x7f0e0119

    const v3, 0x7f07013e

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 2425
    :goto_1
    return-void
.end method
