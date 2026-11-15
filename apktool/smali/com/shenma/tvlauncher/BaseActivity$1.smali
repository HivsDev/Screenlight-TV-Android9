.class Lcom/shenma/tvlauncher/BaseActivity$1;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/BaseActivity;
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

    .line 108
    iput-object p1, p0, Lcom/shenma/tvlauncher/BaseActivity$1;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    const v4, 0x7f07013e

    const/4 v5, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v5, :cond_0

    .line 123
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 121
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$1;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    const v1, 0x7f0e005e

    invoke-static {v0, v1, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$1;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/BaseActivity;->access$000(Lcom/shenma/tvlauncher/BaseActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 118
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$1;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    const v1, 0x7f0e005d

    invoke-static {v0, v1, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 113
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$1;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/BaseActivity;->access$000(Lcom/shenma/tvlauncher/BaseActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    return-void
.end method
