.class Lcom/shenma/tvlauncher/HomeActivity$1;
.super Landroid/os/Handler;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 161
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$1;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 163
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 165
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$1;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/HomeActivity;->access$000(Lcom/shenma/tvlauncher/HomeActivity;Landroid/os/Message;)V

    .line 166
    return-void
.end method
