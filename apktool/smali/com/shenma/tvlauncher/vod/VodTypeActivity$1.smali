.class Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;
.super Landroid/os/Handler;
.source "VodTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VodTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 109
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f07013e

    packed-switch v0, :pswitch_data_0

    .line 145
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0174

    const v2, 0x7f07013f

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 143
    return-void

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0004

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 139
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void

    .line 134
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0003

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 135
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void

    .line 130
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0002

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 131
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void

    .line 126
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e009d

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 127
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void

    .line 123
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    return-void

    .line 120
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    return-void

    .line 116
    :pswitch_8
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0001

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void

    .line 113
    :pswitch_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0173

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 114
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
