.class Lcom/shenma/tvlauncher/UserActivity$43;
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


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 1460
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$43;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1463
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1464
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$43;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/UserActivity;->finish()V

    .line 1465
    return-void
.end method
