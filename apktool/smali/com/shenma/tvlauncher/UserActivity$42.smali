.class Lcom/shenma/tvlauncher/UserActivity$42;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->showUpdateDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 1452
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$42;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/UserActivity$42;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1455
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$42;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$42;->val$type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/UserActivity;->access$3500(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/String;)V

    .line 1456
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1457
    return-void
.end method
