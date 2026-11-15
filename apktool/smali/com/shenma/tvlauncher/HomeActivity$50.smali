.class Lcom/shenma/tvlauncher/HomeActivity$50;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->UpdateDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;

.field final synthetic val$updateurl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 2248
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$50;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/HomeActivity$50;->val$updateurl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 2252
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$50;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$50;->val$updateurl:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$50;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$800(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->startDownloadApk(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 2253
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2254
    return-void
.end method
