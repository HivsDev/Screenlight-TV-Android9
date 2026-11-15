.class Lcom/shenma/tvlauncher/UserActivity$44;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->showUserDialogbinding(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;

.field final synthetic val$User_url:Ljava/lang/String;

.field final synthetic val$bind_code_et:Landroid/widget/EditText;

.field final synthetic val$bind_name_et:Landroid/widget/TextView;

.field final synthetic val$bind_phone_et:Landroid/widget/EditText;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 1483
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$44;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$bind_name_et:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$bind_phone_et:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$bind_code_et:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$type:Ljava/lang/String;

    iput-object p6, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$User_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1485
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$bind_name_et:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1486
    .local v0, "trim":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$bind_phone_et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1487
    .local v1, "email":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$bind_code_et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1488
    .local v2, "send_code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const v4, 0x7f07013e

    if-eqz v3, :cond_0

    .line 1489
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$44;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v5, 0x7f0e002e

    invoke-static {v3, v5, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 1490
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1491
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$44;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity$44;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v7, 0x7f0e0120

    invoke-virtual {v6, v7}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1492
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x5

    if-gt v3, v5, :cond_2

    .line 1493
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$44;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity$44;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v7, 0x7f0e0022

    invoke-virtual {v6, v7}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1494
    :cond_2
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1495
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$44;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity$44;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v7, 0x7f0e00d8

    invoke-virtual {v6, v7}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1496
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1497
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$44;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v5, 0x7f0e0063

    invoke-static {v3, v5, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1499
    :cond_4
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$44;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$bind_phone_et:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$bind_code_et:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$44;->val$User_url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/api.php?app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&act=email_bind"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/shenma/tvlauncher/UserActivity;->access$3600(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1501
    :goto_0
    return-void
.end method
