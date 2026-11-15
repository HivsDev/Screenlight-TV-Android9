.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$5;
.super Landroid/os/Handler;
.source "TVLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 468
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$5;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 473
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 474
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$5;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$2400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$2300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :goto_0
    return-void
.end method
