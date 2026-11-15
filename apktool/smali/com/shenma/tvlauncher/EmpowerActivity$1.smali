.class Lcom/shenma/tvlauncher/EmpowerActivity$1;
.super Landroid/os/Handler;
.source "EmpowerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/EmpowerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/EmpowerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 81
    iput-object p1, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f07013e

    packed-switch v0, :pswitch_data_0

    .line 119
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$900(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    .line 117
    return-void

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    const v2, 0x7f0e003d

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 114
    return-void

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$800(Lcom/shenma/tvlauncher/EmpowerActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->Querypay()V

    .line 111
    :cond_0
    return-void

    .line 105
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    const v4, 0x7f0e00d2

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/EmpowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$700(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 106
    return-void

    .line 102
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$600(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    .line 103
    return-void

    .line 99
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$400(Lcom/shenma/tvlauncher/EmpowerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$500(Lcom/shenma/tvlauncher/EmpowerActivity;I)V

    .line 100
    return-void

    .line 90
    :pswitch_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 91
    .local v0, "time":J
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, ""

    const-string/jumbo v4, "vip"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 92
    .local v4, "vip":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$000(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0e0019

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$000(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$300(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    return-void

    .line 85
    .end local v0    # "time":J
    .end local v4    # "vip":J
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$000(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0023

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$100(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$200(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
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
