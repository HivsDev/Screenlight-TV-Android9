.class Lcom/shenma/tvlauncher/AboutActivity$1;
.super Landroid/os/Handler;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/AboutActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/AboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/AboutActivity;

    .line 36
    iput-object p1, p0, Lcom/shenma/tvlauncher/AboutActivity$1;->this$0:Lcom/shenma/tvlauncher/AboutActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 43
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/AboutActivity$1;->this$0:Lcom/shenma/tvlauncher/AboutActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AboutActivity;->access$000(Lcom/shenma/tvlauncher/AboutActivity;)V

    .line 41
    return-void
.end method
