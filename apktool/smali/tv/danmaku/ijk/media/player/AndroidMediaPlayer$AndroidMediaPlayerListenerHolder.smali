.class Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnTimedTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidMediaPlayerListenerHolder"
.end annotation


# instance fields
.field public final mWeakMediaPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)V
    .locals 0
    .param p2, "mp"    # Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 427
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    .line 429
    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .line 465
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 466
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 467
    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->access$000(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->mt:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 469
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1, p2}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnBufferingUpdate(I)V

    .line 472
    :cond_1
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 476
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 477
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 478
    return-void

    .line 480
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnCompletion()V

    .line 481
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 440
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 441
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1, p2, p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnError(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 433
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 434
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1, p2, p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnInfo(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 485
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 486
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 487
    return-void

    .line 489
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnPrepared()V

    .line 490
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 456
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 457
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnSeekComplete()V

    .line 461
    return-void
.end method

.method public onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "text"    # Landroid/media/TimedText;

    .line 494
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 495
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 496
    return-void

    .line 498
    :cond_0
    const/4 v1, 0x0

    .line 500
    .local v1, "ijkText":Ltv/danmaku/ijk/media/player/IjkTimedText;
    if-eqz p2, :cond_1

    .line 501
    new-instance v2, Ltv/danmaku/ijk/media/player/IjkTimedText;

    invoke-virtual {p2}, Landroid/media/TimedText;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p2}, Landroid/media/TimedText;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltv/danmaku/ijk/media/player/IjkTimedText;-><init>(Landroid/graphics/Rect;Ljava/lang/String;)V

    move-object v1, v2

    .line 504
    :cond_1
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v2, v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnTimedText(Ltv/danmaku/ijk/media/player/IjkTimedText;)V

    .line 505
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 447
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 448
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 449
    return-void

    .line 451
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, p3, v2, v2}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    .line 452
    return-void
.end method
