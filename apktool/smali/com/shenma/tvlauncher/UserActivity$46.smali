.class Lcom/shenma/tvlauncher/UserActivity$46;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$bind_name_et:Landroid/widget/TextView;

.field final synthetic val$bind_phone_et:Landroid/widget/EditText;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/TextView;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 1510
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$46;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/UserActivity$46;->val$bind_name_et:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/shenma/tvlauncher/UserActivity$46;->val$bind_phone_et:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/shenma/tvlauncher/UserActivity$46;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/shenma/tvlauncher/UserActivity$46;->val$User_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .line 1512
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$46;->val$bind_name_et:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1513
    .local v0, "trim":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$46;->val$bind_phone_et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1514
    .local v1, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f07013e

    if-eqz v2, :cond_0

    .line 1515
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$46;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v4, 0x7f0e002e

    invoke-static {v2, v4, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 1516
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1517
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$46;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$46;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v6, 0x7f0e0120

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$46;->val$type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1518
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x5

    if-gt v2, v4, :cond_2

    .line 1519
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$46;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$46;->val$type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$46;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v6, 0x7f0e0022

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1520
    :cond_2
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1521
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$46;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$46;->val$type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$46;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v6, 0x7f0e00d8

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1523
    :cond_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$46;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$46;->val$bind_phone_et:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$46;->val$User_url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/api.php?app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&act=afcrc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bind"

    invoke-static {v2, v3, v4, v5}, Lcom/shenma/tvlauncher/UserActivity;->access$3300(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :goto_0
    return-void
.end method
