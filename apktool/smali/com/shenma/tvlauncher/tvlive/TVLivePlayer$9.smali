.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$9;
.super Ljava/lang/Object;
.source "TVLivePlayer.java"

# interfaces
.implements Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->setvvListener()V
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

    .line 665
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$9;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(II)Z
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .line 669
    const/16 v0, 0x2bd

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2be

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$9;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$9;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 676
    nop

    .line 685
    :goto_0
    return v1
.end method
