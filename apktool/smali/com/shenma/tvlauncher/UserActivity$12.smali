.class Lcom/shenma/tvlauncher/UserActivity$12;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->showUserDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;

.field final synthetic val$User_url:Ljava/lang/String;

.field final synthetic val$user_name_et:Landroid/widget/EditText;

.field final synthetic val$user_pass_et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 565
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$12;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/UserActivity$12;->val$user_name_et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/shenma/tvlauncher/UserActivity$12;->val$user_pass_et:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/shenma/tvlauncher/UserActivity$12;->val$User_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 567
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$12;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const-string v1, "login_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "&act=user_reg"

    const-string v2, "/api.php?app="

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 569
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$12;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$12;->val$user_name_et:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$12;->val$user_pass_et:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$2300(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$12;->val$User_url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v4, v5, v1}, Lcom/shenma/tvlauncher/UserActivity;->access$2400(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$12;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$12;->val$user_name_et:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$12;->val$user_pass_et:Landroid/widget/EditText;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$12;->val$User_url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v4, v5, v1}, Lcom/shenma/tvlauncher/UserActivity;->access$2400(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 574
    :goto_0
    return-void
.end method
