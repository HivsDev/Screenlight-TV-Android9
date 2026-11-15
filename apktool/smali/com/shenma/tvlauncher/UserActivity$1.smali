.class Lcom/shenma/tvlauncher/UserActivity$1;
.super Landroid/os/Handler;
.source "UserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/UserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 115
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f07013e

    const v2, 0x7f0e00d2

    packed-switch v0, :pswitch_data_0

    .line 140
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v4, v2}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5f53\u524d\u6a21\u5f0f\u7981\u6b62\u9000\u51fa\u8d26\u6237"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 138
    return-void

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v4, v2}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$500(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 135
    return-void

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$500(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070140

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    const-wide/32 v5, 0x2bf20

    const-wide/16 v7, 0x3e8

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;-><init>(Lcom/shenma/tvlauncher/UserActivity;JJ)V

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/UserActivity;->access$602(Lcom/shenma/tvlauncher/UserActivity;Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;)Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    .line 131
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$600(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 132
    return-void

    .line 125
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$300(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0xc8

    const/high16 v7, -0x1000000

    const/4 v8, -0x1

    const-string v4, "UTF-8"

    const-string v5, "H"

    const-string v6, "1"

    invoke-static/range {v1 .. v8}, Lcom/shenma/tvlauncher/utils/Utils;->createQRCodeBitmap(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    .local v0, "empower":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$400(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    return-void

    .line 122
    .end local v0    # "empower":Landroid/graphics/Bitmap;
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$200(Lcom/shenma/tvlauncher/UserActivity;)V

    .line 123
    return-void

    .line 119
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$000(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v0, v1}, Lcom/shenma/tvlauncher/UserActivity;->access$100(Lcom/shenma/tvlauncher/UserActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
