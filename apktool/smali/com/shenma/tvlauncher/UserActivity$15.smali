.class Lcom/shenma/tvlauncher/UserActivity$15;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->showLogoutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;

.field final synthetic val$Exit:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 605
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$15;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/UserActivity$15;->val$Exit:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 610
    iget v0, p0, Lcom/shenma/tvlauncher/UserActivity$15;->val$Exit:I

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$15;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "userName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "passWord"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "vip"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "fen"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ckinfo"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 612
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$15;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$1000(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0125

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 613
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$15;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$2800(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 614
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$15;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$2900(Lcom/shenma/tvlauncher/UserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 617
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 621
    :goto_0
    return-void
.end method
