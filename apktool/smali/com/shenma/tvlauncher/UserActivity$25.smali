.class Lcom/shenma/tvlauncher/UserActivity$25;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->showUserDialogpwd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;

.field final synthetic val$User_url:Ljava/lang/String;

.field final synthetic val$user_phone_et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 918
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$25;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/UserActivity$25;->val$user_phone_et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/shenma/tvlauncher/UserActivity$25;->val$User_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .line 920
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$25;->val$user_phone_et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f07013e

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$25;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v3, 0x7f0e0031

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 923
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-gt v1, v3, :cond_1

    .line 924
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$25;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v3, 0x7f0e001f

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 925
    :cond_1
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 926
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$25;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v3, 0x7f0e001e

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 928
    :cond_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$25;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$25;->val$user_phone_et:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$25;->val$User_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/api.php?app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&act=afcrc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "seek"

    invoke-static {v1, v2, v3, v4}, Lcom/shenma/tvlauncher/UserActivity;->access$3300(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :goto_0
    return-void
.end method
