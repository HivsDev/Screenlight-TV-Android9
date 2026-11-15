.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;
.super Landroid/os/Handler;
.source "VodDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 152
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const v2, 0x7f07013e

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 183
    return-void

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0174

    const v2, 0x7f07013f

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 181
    return-void

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 177
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void

    .line 172
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 173
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void

    .line 168
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 169
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void

    .line 164
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e009d

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 165
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 160
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0173

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 157
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
