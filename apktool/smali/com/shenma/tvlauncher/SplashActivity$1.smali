.class Lcom/shenma/tvlauncher/SplashActivity$1;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SplashActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 65
    iput-object p1, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3a98

    const v3, 0x7f07013e

    const/16 v4, 0x12

    if-eqz v0, :cond_8

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_6

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x3

    if-eq v0, v5, :cond_4

    if-eq v0, v9, :cond_2

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 119
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$500(Lcom/shenma/tvlauncher/SplashActivity;)V

    .line 100
    goto/16 :goto_1

    .line 112
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 113
    return-void

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    const v4, 0x7f0e00d2

    invoke-virtual {v2, v4}, Lcom/shenma/tvlauncher/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SplashActivity;->access$700(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 116
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$000(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/SplashActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$600(Lcom/shenma/tvlauncher/SplashActivity;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$000(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    :goto_0
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    const v1, 0x7f0e000b

    invoke-static {v0, v1, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 110
    goto/16 :goto_1

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$300(Lcom/shenma/tvlauncher/SplashActivity;)I

    move-result v0

    if-lez v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$400(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/SplashActivity;->access$300(Lcom/shenma/tvlauncher/SplashActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$300(Lcom/shenma/tvlauncher/SplashActivity;)I

    move-result v1

    sub-int/2addr v1, v6

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/SplashActivity;->access$302(Lcom/shenma/tvlauncher/SplashActivity;I)I

    .line 93
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$000(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    return-void

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$500(Lcom/shenma/tvlauncher/SplashActivity;)V

    .line 97
    goto/16 :goto_1

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$300(Lcom/shenma/tvlauncher/SplashActivity;)I

    move-result v0

    if-lez v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$400(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/SplashActivity;->access$300(Lcom/shenma/tvlauncher/SplashActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$300(Lcom/shenma/tvlauncher/SplashActivity;)I

    move-result v1

    sub-int/2addr v1, v6

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/SplashActivity;->access$302(Lcom/shenma/tvlauncher/SplashActivity;I)I

    .line 84
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$000(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    return-void

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$500(Lcom/shenma/tvlauncher/SplashActivity;)V

    .line 88
    goto :goto_1

    .line 74
    :cond_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$100(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$100(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_7

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/SplashActivity;->access$100(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/SplashActivity;->access$200(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 78
    :cond_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$000(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    goto :goto_1

    .line 69
    :cond_8
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    const v5, 0x7f0e0173

    invoke-static {v0, v5, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 70
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->access$000(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    nop

    .line 121
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
