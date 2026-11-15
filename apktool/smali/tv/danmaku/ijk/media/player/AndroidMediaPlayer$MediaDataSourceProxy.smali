.class Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;
.super Landroid/media/MediaDataSource;
.source "AndroidMediaPlayer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaDataSourceProxy"
.end annotation


# instance fields
.field private final mMediaDataSource:Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .locals 0
    .param p1, "mediaDataSource"    # Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;

    .line 398
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 399
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;->mMediaDataSource:Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;

    .line 400
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;->mMediaDataSource:Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;->close()V

    .line 415
    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;->mMediaDataSource:Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .param p1, "position"    # J
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;->mMediaDataSource:Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;->readAt(J[BII)I

    move-result v0

    return v0
.end method
