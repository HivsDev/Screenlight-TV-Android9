.class Lcom/shenma/tvlauncher/fragment/AppFragment$4;
.super Landroid/os/Handler;
.source "AppFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/AppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 127
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 132
    .local v0, "drawable":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$100(Lcom/shenma/tvlauncher/fragment/AppFragment;)Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$000(Lcom/shenma/tvlauncher/fragment/AppFragment;)Landroid/widget/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f070004

    invoke-static {v2, v3, v3}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 134
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$000(Lcom/shenma/tvlauncher/fragment/AppFragment;)Landroid/widget/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageSwitcher;->showNext()V

    .line 136
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$208(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    .line 137
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$200(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    .line 138
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$202(Lcom/shenma/tvlauncher/fragment/AppFragment;I)I

    .line 143
    .end local v0    # "drawable":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method
