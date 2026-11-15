.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$1;
.super Landroid/os/Handler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 218
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 221
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 223
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/os/Message;)V

    .line 224
    return-void
.end method
