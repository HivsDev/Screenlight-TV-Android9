.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


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

    .line 238
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 240
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1700(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1700(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 243
    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/16 v0, 0x2711

    if-eq p2, v0, :cond_3

    const/16 v0, 0x385

    if-eq p2, v0, :cond_2

    const/16 v0, 0x386

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 267
    :pswitch_0
    goto :goto_0

    .line 264
    :pswitch_1
    goto :goto_0

    .line 261
    :pswitch_2
    goto :goto_0

    .line 258
    :pswitch_3
    goto :goto_0

    .line 255
    :pswitch_4
    goto :goto_0

    .line 252
    :pswitch_5
    goto :goto_0

    .line 246
    :pswitch_6
    goto :goto_0

    .line 273
    :cond_1
    goto :goto_0

    .line 270
    :cond_2
    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0, p3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1802(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 277
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 278
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    invoke-interface {v0, p3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoRotation(I)V

    goto :goto_0

    .line 249
    :cond_4
    nop

    .line 284
    :cond_5
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x320
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
