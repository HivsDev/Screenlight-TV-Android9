.class Lcom/shenma/tvlauncher/SettingInvActivity$1;
.super Landroid/os/Handler;
.source "SettingInvActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/SettingInvActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingInvActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingInvActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingInvActivity;

    .line 52
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingInvActivity$1;->this$0:Lcom/shenma/tvlauncher/SettingInvActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 59
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity$1;->this$0:Lcom/shenma/tvlauncher/SettingInvActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingInvActivity;->access$000(Lcom/shenma/tvlauncher/SettingInvActivity;)V

    .line 57
    return-void
.end method
