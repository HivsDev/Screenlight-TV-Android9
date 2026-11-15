.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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

    .line 288
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 6
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .line 291
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$802(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 292
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1502(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 293
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->hide()V

    .line 298
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1900(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1900(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    return v1

    .line 309
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 313
    .local v0, "r":Landroid/content/res/Resources;
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_2

    .line 314
    const v2, 0x7f0e006b

    .local v2, "messageId":I
    goto :goto_0

    .line 316
    .end local v2    # "messageId":I
    :cond_2
    const v2, 0x7f0e006c

    .line 319
    .restart local v2    # "messageId":I
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e006a

    new-instance v5, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5$1;

    invoke-direct {v5, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;)V

    .line 321
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 332
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 333
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 335
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v2    # "messageId":I
    :cond_3
    return v1
.end method
