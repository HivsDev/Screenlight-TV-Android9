.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setvvListener()V
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

    .line 2180
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1
    .param p1, "arg0"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 2183
    const/16 v0, 0x2bd

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2189
    :cond_0
    nop

    .line 2196
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
