.class Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$7;
.super Ljava/lang/Object;
.source "IjkAliMediaPlayer.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    .line 565
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$7;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 1
    .param p1, "i"    # I

    .line 568
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$7;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->access$1102(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;I)I

    .line 570
    return-void
.end method
