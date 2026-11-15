.class Lcom/shenma/tvlauncher/HomeActivity$2;
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

    .line 169
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 195
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity;->access$700(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$800(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->startDownloadzip(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 193
    return-void

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity;->access$600(Lcom/shenma/tvlauncher/HomeActivity;)V

    .line 190
    return-void

    .line 186
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity;->access$500(Lcom/shenma/tvlauncher/HomeActivity;)V

    .line 187
    return-void

    .line 183
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity;->access$200(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$300(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$400(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void

    .line 180
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const v1, 0x7f0e0016

    const v2, 0x7f07013f

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 181
    return-void

    .line 177
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$100(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const v3, 0x7f0e0076

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070140

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 178
    return-void

    .line 173
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const v1, 0x7f0e0173

    const v2, 0x7f07013e

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 174
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
