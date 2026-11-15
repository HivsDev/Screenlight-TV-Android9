.class Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;
.super Ljava/lang/Object;
.source "IjkExoMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onBufferingUpdate"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;


# direct methods
.method private constructor <init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V
    .locals 0

    .line 606
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    .param p2, "x1"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$1;

    .line 606
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;-><init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 609
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v0

    .line 611
    .local v0, "percent":I
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    iget-object v1, v1, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->handler:Landroid/os/Handler;

    new-instance v2, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate$1;

    invoke-direct {v2, p0, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate$1;-><init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 620
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 621
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    iget-object v1, v1, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->handler:Landroid/os/Handler;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$400(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 623
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    iget-object v1, v1, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->handler:Landroid/os/Handler;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$400(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 626
    .end local v0    # "percent":I
    :cond_1
    :goto_0
    return-void
.end method
