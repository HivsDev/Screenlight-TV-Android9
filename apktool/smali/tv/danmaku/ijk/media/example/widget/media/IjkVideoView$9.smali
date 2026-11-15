.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;


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

    .line 365
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 368
    invoke-interface {p1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 370
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0, p3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1302(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 374
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0, p4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1402(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 375
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 376
    .local v0, "isValidState":Z
    :goto_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    invoke-interface {v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->shouldWaitForResize()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-ne v1, p3, :cond_2

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-ne v1, p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    move v1, v2

    .line 377
    .local v1, "hasValidSize":Z
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 378
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 379
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 381
    :cond_4
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 383
    :cond_5
    return-void
.end method

.method public onSurfaceCreated(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;II)V
    .locals 2
    .param p1, "holder"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 387
    invoke-interface {p1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 389
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2602(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 393
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2700(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 396
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2800(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    .line 397
    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 401
    invoke-interface {p1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 403
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2602(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 410
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->releaseWithoutStop()V

    .line 411
    return-void
.end method
