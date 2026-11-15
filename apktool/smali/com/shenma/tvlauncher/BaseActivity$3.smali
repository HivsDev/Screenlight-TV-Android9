.class Lcom/shenma/tvlauncher/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/BaseActivity;->showExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/BaseActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/BaseActivity;

    .line 351
    iput-object p1, p0, Lcom/shenma/tvlauncher/BaseActivity$3;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 354
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$3;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/BaseActivity;->finish()V

    .line 355
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 356
    return-void
.end method
