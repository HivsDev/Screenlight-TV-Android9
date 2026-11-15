.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


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

    .line 159
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 161
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$502(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;J)J

    .line 162
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$700(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J

    move-result-wide v1

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$600(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->updateLoadCost(J)V

    .line 163
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$802(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 168
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$900(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$900(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 171
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->setEnabled(Z)V

    .line 174
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$002(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 175
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$102(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 177
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v0

    .line 178
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_2

    .line 179
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 181
    :cond_2
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_6

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 184
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 185
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    iget-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSize(II)V

    .line 186
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    iget-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$300(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 187
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    invoke-interface {v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->shouldWaitForResize()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1300(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    if-ne v1, v3, :cond_7

    .line 191
    :cond_3
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 192
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 193
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 194
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    invoke-interface {v1}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show()V

    goto :goto_0

    .line 196
    :cond_4
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v0, :cond_5

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 197
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_7

    .line 198
    :cond_5
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 200
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show(I)V

    goto :goto_0

    .line 208
    :cond_6
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 209
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 212
    :cond_7
    :goto_0
    return-void
.end method
