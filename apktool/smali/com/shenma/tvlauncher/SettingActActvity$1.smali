.class Lcom/shenma/tvlauncher/SettingActActvity$1;
.super Landroid/os/Handler;
.source "SettingActActvity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/SettingActActvity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingActActvity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 92
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f0e00d2

    const v2, 0x7f070140

    const v3, 0x7f07013e

    packed-switch v0, :pswitch_data_0

    .line 122
    :pswitch_0
    return-void

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingActActvity;->access$300(Lcom/shenma/tvlauncher/SettingActActvity;)V

    .line 120
    return-void

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/SettingActActvity;->startActivity(Landroid/content/Intent;)V

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    const/high16 v2, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {v0, v2, v4}, Lcom/shenma/tvlauncher/SettingActActvity;->overridePendingTransition(II)V

    .line 115
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-virtual {v4, v1}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/SettingActActvity;->access$000(Lcom/shenma/tvlauncher/SettingActActvity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 116
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/SettingActActvity;->finish()V

    .line 117
    return-void

    .line 110
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-virtual {v4, v1}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/SettingActActvity;->access$000(Lcom/shenma/tvlauncher/SettingActActvity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 111
    return-void

    .line 106
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/SettingActActvity;->context:Landroid/content/Context;

    const v1, 0x7f0e0049

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 107
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingActActvity;->access$100(Lcom/shenma/tvlauncher/SettingActActvity;)V

    .line 108
    return-void

    .line 103
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingActActvity;->access$200(Lcom/shenma/tvlauncher/SettingActActvity;)V

    .line 104
    return-void

    .line 99
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    const v4, 0x7f0e000f

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/SettingActActvity;->access$000(Lcom/shenma/tvlauncher/SettingActActvity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 100
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingActActvity;->access$100(Lcom/shenma/tvlauncher/SettingActActvity;)V

    .line 101
    return-void

    .line 96
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/SettingActActvity;->context:Landroid/content/Context;

    const v1, 0x7f0e0173

    invoke-static {v0, v1, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 97
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
