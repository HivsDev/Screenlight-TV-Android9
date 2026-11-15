.class Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;
.super Landroid/os/Handler;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f07013e

    packed-switch v0, :pswitch_data_0

    .line 117
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const v2, 0x7f0e0044

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 114
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const v2, 0x7f0e0003

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 110
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const v2, 0x7f0e0004

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 106
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void

    .line 102
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const v1, 0x7f0e0174

    const v2, 0x7f07013f

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 103
    return-void

    .line 98
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const v2, 0x7f0e0002

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 99
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void

    .line 94
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const v2, 0x7f0e009d

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 95
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void

    .line 90
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const v2, 0x7f0e0001

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 91
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void

    .line 87
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const v2, 0x7f0e0173

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

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
