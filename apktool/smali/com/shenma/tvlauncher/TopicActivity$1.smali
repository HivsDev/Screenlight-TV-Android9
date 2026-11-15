.class Lcom/shenma/tvlauncher/TopicActivity$1;
.super Landroid/os/Handler;
.source "TopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/TopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/TopicActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/TopicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/TopicActivity;

    .line 88
    iput-object p1, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f07013e

    packed-switch v0, :pswitch_data_0

    .line 122
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0e0044

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 119
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0e0003

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 115
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0e0004

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 111
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void

    .line 107
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const v1, 0x7f0e0174

    const v2, 0x7f07013f

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 108
    return-void

    .line 103
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0e0002

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void

    .line 99
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0e009d

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 100
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void

    .line 95
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0e0001

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 96
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void

    .line 92
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0e0173

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 93
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
