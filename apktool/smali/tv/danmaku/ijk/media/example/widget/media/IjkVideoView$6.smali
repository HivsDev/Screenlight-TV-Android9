.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 340
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "percent"    # I

    .line 342
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0, p2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2102(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 344
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 347
    :cond_0
    return-void
.end method
