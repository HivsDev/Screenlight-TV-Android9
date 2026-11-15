.class Lcom/shenma/tvlauncher/view/MyServices$1;
.super Landroid/os/Handler;
.source "MyServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/MyServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/MyServices;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/MyServices;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/MyServices;

    .line 22
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 24
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    const v6, 0x7f07013e

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    const v7, 0x7f0e00d2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 54
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-virtual {v8, v7}, Lcom/shenma/tvlauncher/view/MyServices;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "error 108"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 50
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    const-string v2, "Name_check"

    invoke-static {v0, v2, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 51
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->access$000(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-virtual {v8, v7}, Lcom/shenma/tvlauncher/view/MyServices;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "error 107"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 43
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    const-string v2, "Verifysign_check"

    invoke-static {v0, v2, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 44
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->access$000(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 45
    return-void

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    const v2, 0x7f0e005d

    invoke-static {v0, v2, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 31
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    const-string v2, "Vpn_check"

    invoke-static {v0, v2, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->access$000(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    const v2, 0x7f0e005e

    invoke-static {v0, v2, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 36
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    const-string v2, "Xp_check"

    invoke-static {v0, v2, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 37
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->access$000(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 38
    return-void

    .line 26
    :cond_4
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->exit()V

    .line 27
    return-void
.end method
