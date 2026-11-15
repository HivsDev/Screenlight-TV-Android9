.class public Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
.super Landroid/widget/FrameLayout;
.source "IjkVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field public static DECODE:Ljava/lang/Boolean; = null

.field public static final FFP_PROP_FLOAT_PLAYBACK_RATE:I = 0x2713

.field public static final RENDER_NONE:I = 0x0

.field public static final RENDER_SURFACE_VIEW:I = 0x1

.field public static final RENDER_TEXTURE_VIEW:I = 0x2

.field public static Referer:Ljava/lang/String; = null

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final s_allAspectRatio:[I

.field public static userAgent:Ljava/lang/String;


# instance fields
.field private DECODE_HW:Ljava/lang/Boolean;

.field private TAG:Ljava/lang/String;

.field private mAllRenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mCurrentAspectRatio:I

.field private mCurrentAspectRatioIndex:I

.field private mCurrentBufferPercentage:I

.field private mCurrentRender:I

.field private mCurrentRenderIndex:I

.field private mCurrentState:I

.field private mEnableBackgroundPlay:Z

.field private mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

.field private mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mManifestString:Ljava/lang/String;

.field private mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private mPrepareEndTime:J

.field private mPrepareStartTime:J

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

.field mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

.field private mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mSeekEndTime:J

.field private mSeekStartTime:J

.field private mSeekWhenPrepared:I

.field private mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

.field mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private subtitleDisplay:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    .line 223
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE:Ljava/lang/Boolean;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 425
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 99
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 102
    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    .line 126
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 127
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 138
    new-instance v2, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 156
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 157
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 158
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 159
    new-instance v4, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;

    invoke-direct {v4, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 214
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 216
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    .line 224
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 237
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 287
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 339
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 349
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 357
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 365
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 417
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 418
    sget-object v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v1, v1, v0

    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 420
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 421
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 422
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 426
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 427
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 430
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 99
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 102
    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    .line 126
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 127
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 138
    new-instance v2, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 156
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 157
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 158
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 159
    new-instance v4, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;

    invoke-direct {v4, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 214
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 216
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    .line 224
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 237
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 287
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 339
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 349
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 357
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 365
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 417
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 418
    sget-object v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v1, v1, v0

    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 420
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 421
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 422
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 431
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 432
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 435
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 99
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 102
    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    .line 126
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 127
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 138
    new-instance v2, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 156
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 157
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 158
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 159
    new-instance v4, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;

    invoke-direct {v4, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 214
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 216
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    .line 224
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 237
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 287
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 339
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 349
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 357
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 365
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 417
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 418
    sget-object v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v1, v1, v0

    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 420
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 421
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 422
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 436
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 437
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 441
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 89
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 99
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 102
    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    .line 126
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 127
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 138
    new-instance v2, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 156
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 157
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 158
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 159
    new-instance v4, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;

    invoke-direct {v4, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 214
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 216
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    .line 224
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 237
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 287
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 339
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 349
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 357
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 365
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 417
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 418
    sget-object v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v1, v1, v0

    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 420
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 421
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 422
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 442
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 443
    return-void
.end method

.method private native _setPropertyFloat(IF)V
.end method

.method static synthetic access$000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    return-object v0
.end method

.method static synthetic access$1200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1300(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1302(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1402(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1502(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1600(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1700(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1802(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoRotationDegree:I

    return p1
.end method

.method static synthetic access$1900(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    return v0
.end method

.method static synthetic access$2000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$2102(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$2300(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J
    .locals 2
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;J)J
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # J

    .line 66
    iput-wide p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J
    .locals 2
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    return-wide v0
.end method

.method static synthetic access$2500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2602(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 66
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2700(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "x2"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 66
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    return-void
.end method

.method static synthetic access$2800(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$300(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    return v0
.end method

.method static synthetic access$302(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    return-object v0
.end method

.method static synthetic access$500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J
    .locals 2
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    return-wide v0
.end method

.method static synthetic access$502(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;J)J
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # J

    .line 66
    iput-wide p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    return-wide p1
.end method

.method static synthetic access$600(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J
    .locals 2
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    return-object v0
.end method

.method static synthetic access$802(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$900(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 66
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 3

    .line 728
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v0, :cond_1

    .line 729
    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 730
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 732
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->setAnchorView(Landroid/view/View;)V

    .line 733
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->setEnabled(Z)V

    .line 735
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "holder"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 807
    if-nez p1, :cond_0

    .line 808
    return-void

    .line 810
    :cond_0
    if-nez p2, :cond_1

    .line 811
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 812
    return-void

    .line 815
    :cond_1
    invoke-interface {p2, p1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 816
    return-void
.end method

.method private buildLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .line 1706
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    const-string v0, "und"

    return-object v0

    .line 1708
    :cond_0
    return-object p1
.end method

.method private buildResolution(IIII)Ljava/lang/String;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sarNum"    # I
    .param p4, "sarDen"    # I

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1654
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1655
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1658
    const/4 v1, 0x1

    if-gt p3, v1, :cond_0

    if-le p4, v1, :cond_1

    .line 1659
    :cond_0
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1661
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1663
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildTimeMilli(J)Ljava/lang/String;
    .locals 17
    .param p1, "duration"    # J

    .line 1670
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1671
    .local v0, "total_seconds":J
    const-wide/16 v2, 0xe10

    div-long v4, v0, v2

    .line 1672
    .local v4, "hours":J
    rem-long v2, v0, v2

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    .line 1673
    .local v2, "minutes":J
    rem-long v6, v0, v6

    .line 1674
    .local v6, "seconds":J
    const-wide/16 v8, 0x0

    cmp-long v10, p1, v8

    if-gtz v10, :cond_0

    .line 1675
    const-string v8, "--:--"

    return-object v8

    .line 1677
    :cond_0
    const-wide/16 v10, 0x64

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    cmp-long v16, v4, v10

    if-ltz v16, :cond_1

    .line 1678
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v15

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v13

    const-string v10, "%d:%02d:%02d"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1679
    :cond_1
    cmp-long v10, v4, v8

    if-lez v10, :cond_2

    .line 1680
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v15

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v13

    const-string v10, "%02d:%02d:%02d"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1682
    :cond_2
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v14

    const-string v10, "%02d:%02d"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private buildTrackType(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .line 1687
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1688
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 1701
    const v1, 0x7f0e005a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1698
    :cond_0
    const v1, 0x7f0e0057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1694
    :cond_1
    const v1, 0x7f0e0058

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1696
    :cond_2
    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1692
    :cond_3
    const v1, 0x7f0e0056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1690
    :cond_4
    const v1, 0x7f0e005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPlayerText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "player"    # I

    .line 466
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 480
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    goto :goto_0

    .line 477
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    const v0, 0x7f0e006e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 478
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 474
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    const v0, 0x7f0e006f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 471
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 468
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    const v0, 0x7f0e006d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    .restart local v0    # "text":Ljava/lang/String;
    nop

    .line 483
    :goto_0
    return-object v0
.end method

.method public static getRenderText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "render"    # I

    .line 447
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 458
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    goto :goto_0

    .line 455
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    const v0, 0x7f0e0074

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 452
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 449
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    const v0, 0x7f0e0072

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    .restart local v0    # "text":Ljava/lang/String;
    nop

    .line 461
    :goto_0
    return-object v0
.end method

.method private initBackground()V
    .locals 2

    .line 1562
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getEnableBackgroundPlay()Z

    move-result v0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 1563
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    if-eqz v0, :cond_0

    .line 1564
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerService;->intentToStart(Landroid/content/Context;)V

    .line 1565
    invoke-static {}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerService;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 1566
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    if-eqz v0, :cond_0

    .line 1567
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1569
    :cond_0
    return-void
.end method

.method private initRenders()V
    .locals 3

    .line 1070
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1071
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getEnableSurfaceView()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getEnableTextureView()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 1074
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getEnableNoView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    :cond_2
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1079
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    :cond_3
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 1081
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRender(I)V

    .line 1082
    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 489
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    .line 490
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/Settings;

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/Settings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    .line 492
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initBackground()V

    .line 493
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initRenders()V

    .line 495
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    .line 496
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    .line 499
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setFocusable(Z)V

    .line 500
    invoke-virtual {p0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setFocusableInTouchMode(Z)V

    .line 501
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->requestFocus()Z

    .line 503
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 504
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 506
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    .line 507
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 508
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 509
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 513
    .local v0, "layoutParams_txt":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 1033
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private openVideo()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 650
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 656
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->release(Z)V

    .line 658
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 659
    .local v1, "am":Landroid/media/AudioManager;
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 662
    const/4 v2, -0x1

    :try_start_0
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v5}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getPlayer()I

    move-result v5

    invoke-virtual {p0, v5}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v5

    iput-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 666
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 670
    .local v5, "context":Landroid/content/Context;
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 671
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 672
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 673
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 674
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 675
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 676
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 677
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    .line 678
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentBufferPercentage:I

    .line 679
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 680
    .local v6, "scheme":Ljava/lang/String;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_2

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    .line 681
    invoke-virtual {v7}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getUsingMediaDataSource()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 682
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 683
    :cond_1
    new-instance v7, Ltv/danmaku/ijk/media/example/widget/media/FileMediaDataSource;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ltv/danmaku/ijk/media/example/widget/media/FileMediaDataSource;-><init>(Ljava/io/File;)V

    .line 684
    .local v7, "dataSource":Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;
    iget-object v8, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v8, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    .line 685
    .end local v7    # "dataSource":Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;
    goto :goto_0

    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_3

    .line 686
    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v8, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    iget-object v9, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    iget-object v10, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {v7, v8, v9, v10}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    .line 688
    :cond_3
    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v8, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 690
    :goto_0
    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v8, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    invoke-direct {p0, v7, v8}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    .line 691
    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v7, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 692
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 694
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 695
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    if-eqz v3, :cond_4

    .line 696
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v3, v7}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 702
    :cond_4
    iput v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 703
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "scheme":Ljava/lang/String;
    goto :goto_1

    .line 714
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 709
    :catch_0
    move-exception v3

    .line 711
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_1
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 712
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 713
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v5, v4, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 716
    nop

    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 704
    :catch_1
    move-exception v3

    .line 706
    .local v3, "ex":Ljava/io/IOException;
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 707
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 708
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v5, v4, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    nop

    .line 717
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_1
    return-void

    .line 716
    :goto_2
    throw v0

    .line 652
    .end local v1    # "am":Landroid/media/AudioManager;
    :cond_5
    :goto_3
    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 626
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    .line 627
    iput-object p2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHeaders:Ljava/util/Map;

    .line 628
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    .line 629
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->openVideo()V

    .line 630
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->requestLayout()V

    .line 631
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->invalidate()V

    .line 632
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .line 899
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->hide()V

    goto :goto_0

    .line 902
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show()V

    .line 904
    :goto_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 1041
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 1046
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 1051
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 16
    .param p1, "playerType"    # I

    .line 1111
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 1113
    .local v2, "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    const/4 v3, 0x1

    if-eq v1, v3, :cond_b

    const/4 v4, 0x3

    if-eq v1, v4, :cond_a

    const/4 v5, 0x4

    if-eq v1, v5, :cond_9

    .line 1124
    const/4 v6, 0x0

    .line 1125
    .local v6, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    iget-object v7, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v7, :cond_8

    .line 1126
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "IjkMediaPlayer is Running."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1127
    new-instance v7, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    move-object v6, v7

    .line 1129
    iget-object v7, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v8, "Ijk_log_debug"

    invoke-static {v7, v8, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 1130
    .local v7, "Ijk_log_debug":I
    if-nez v7, :cond_0

    .line 1131
    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 1136
    :cond_0
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mManifestString:Ljava/lang/String;

    const-string v8, "manifest_string"

    invoke-virtual {v6, v3, v8, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v4, "probsize"

    const-string v8, "4096"

    invoke-virtual {v6, v3, v4, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-wide/32 v8, 0x1e8480

    const-string v4, "analyzemaxduration"

    invoke-virtual {v6, v3, v4, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1181
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    sget-object v10, Lcom/shenma/tvlauncher/utils/Constant;->mt:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v4, v10, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    int-to-long v12, v4

    const-string v4, "packet-buffering"

    invoke-virtual {v6, v5, v4, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1190
    const-wide/16 v12, 0x1

    const-string v4, "flush_packets"

    invoke-virtual {v6, v3, v4, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1206
    const/4 v4, 0x2

    iget-object v10, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const/16 v14, 0x30

    const-string v15, "skip_loop_filter"

    invoke-static {v10, v15, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    int-to-long v8, v10

    invoke-virtual {v6, v4, v15, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1215
    sget-object v4, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->userAgent:Ljava/lang/String;

    const-string/jumbo v8, "user_agent"

    invoke-virtual {v6, v3, v8, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v4, "delay-optimization"

    invoke-virtual {v6, v3, v4, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1228
    const-wide/16 v8, 0x4e20

    const-string v4, "cache-buffer-duration"

    invoke-virtual {v6, v3, v4, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1240
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->Me:Ljava/lang/String;

    const/4 v9, 0x5

    invoke-static {v4, v8, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    int-to-long v8, v4

    const-string v4, "reconnect"

    invoke-virtual {v6, v5, v4, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1244
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->kV:Ljava/lang/String;

    invoke-static {v8, v9, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v3, v4, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1251
    const-wide/32 v8, 0xf00000

    const-string v4, "max-buffer-size"

    invoke-virtual {v6, v5, v4, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1258
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v8, "mediacodec"

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_3

    .line 1260
    invoke-virtual {v6, v5, v8, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1261
    const-string v4, "mediacodec_all_videos"

    invoke-virtual {v6, v5, v4, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1262
    const-string v4, "mediacodec-avc"

    invoke-virtual {v6, v5, v4, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1263
    const-string v4, "mediacodec-hevc"

    invoke-virtual {v6, v5, v4, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1264
    const-string v4, "mediacodec-mpeg2"

    invoke-virtual {v6, v5, v4, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1265
    const-string v4, "mediacodec-mpeg4"

    invoke-virtual {v6, v5, v4, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1266
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getUsingMediaCodecAutoRotate()Z

    move-result v4

    const-string v8, "mediacodec-auto-rotate"

    if-eqz v4, :cond_1

    .line 1267
    invoke-virtual {v6, v5, v8, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    .line 1269
    :cond_1
    invoke-virtual {v6, v5, v8, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1271
    :goto_0
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getMediaCodecHandleResolutionChange()Z

    move-result v4

    const-string v8, "mediacodec-handle-resolution-change"

    if-eqz v4, :cond_2

    .line 1272
    invoke-virtual {v6, v5, v8, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    .line 1274
    :cond_2
    invoke-virtual {v6, v5, v8, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    .line 1278
    :cond_3
    invoke-virtual {v6, v5, v8, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1281
    :goto_1
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getUsingOpenSLES()Z

    move-result v4

    const-string v8, "opensles"

    if-eqz v4, :cond_4

    .line 1282
    invoke-virtual {v6, v5, v8, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_2

    .line 1284
    :cond_4
    invoke-virtual {v6, v5, v8, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1287
    :goto_2
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getPixelFormat()Ljava/lang/String;

    move-result-object v4

    .line 1288
    .local v4, "pixelFormat":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v14, "overlay-format"

    if-eqz v8, :cond_5

    .line 1289
    const-wide/32 v9, 0x32335652

    invoke-virtual {v6, v5, v14, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_3

    .line 1291
    :cond_5
    invoke-virtual {v6, v5, v14, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1304
    :goto_3
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const/16 v9, 0x78

    const-string v10, "framedrop"

    invoke-static {v8, v10, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    int-to-long v8, v8

    const-string v10, "framedrop"

    invoke-virtual {v6, v5, v10, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1315
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v9, "start_on_prepared"

    invoke-static {v8, v9, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    int-to-long v8, v8

    const-string v10, "start-on-prepared"

    invoke-virtual {v6, v5, v10, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1324
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->YK:Ljava/lang/String;

    invoke-static {v8, v9, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    int-to-long v8, v8

    const-string v10, "http-detect-range-support"

    invoke-virtual {v6, v3, v10, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1332
    const-string v8, "dns_cache_clear"

    invoke-virtual {v6, v3, v8, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1344
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->mJ:Ljava/lang/String;

    const/16 v10, 0xf

    invoke-static {v8, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    int-to-long v8, v8

    const-string v10, "timeout"

    invoke-virtual {v6, v3, v10, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1359
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v9, "async_init_decoder"

    invoke-static {v8, v9, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    int-to-long v8, v8

    const-string v10, "async-init-decoder"

    invoke-virtual {v6, v5, v10, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1399
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v9, "LIVE"

    invoke-static {v8, v9, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 1400
    .local v8, "nhposition":I
    const-string v9, "infbuf"

    if-ne v8, v3, :cond_6

    .line 1404
    const-string v10, "analyzeduration"

    const-wide/32 v14, 0x1e8480

    invoke-virtual {v6, v3, v10, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1409
    const-wide/32 v14, 0x7d000

    const-string v10, "probesize"

    invoke-virtual {v6, v3, v10, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1426
    iget-object v10, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v14, "no_time_adjust"

    invoke-static {v10, v14, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    int-to-long v14, v10

    const-string v10, "no-time-adjust"

    invoke-virtual {v6, v5, v10, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1438
    const-string v10, "find_stream_info"

    invoke-virtual {v6, v5, v10, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1444
    const-string v10, "skip-calc-frame-rate"

    invoke-virtual {v6, v5, v10, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1450
    const-wide/16 v14, 0x1388

    const-string v10, "accurate-seek-timeout"

    invoke-virtual {v6, v5, v10, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1482
    const-wide/32 v14, 0x23c34600

    const-string v10, "dns_cache_timeout"

    invoke-virtual {v6, v3, v10, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1509
    iget-object v10, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-static {v10, v9, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    int-to-long v14, v10

    invoke-virtual {v6, v5, v9, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-wide/16 v14, 0x0

    goto :goto_4

    .line 1511
    :cond_6
    const-wide/16 v14, 0x0

    invoke-virtual {v6, v5, v9, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1515
    :goto_4
    const-string v9, "icy"

    invoke-virtual {v6, v3, v9, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1522
    iget-object v9, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v10, "live_streaming"

    invoke-static {v9, v10, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    int-to-long v9, v9

    const-string v11, "live-streaming"

    invoke-virtual {v6, v3, v11, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1529
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v3, v9, :cond_7

    .line 1530
    const-string v3, "soundtouch"

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v5, v3, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_5

    .line 1532
    :cond_7
    const-string v3, "soundtouch"

    invoke-virtual {v6, v5, v3, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1535
    .end local v4    # "pixelFormat":Ljava/lang/String;
    .end local v7    # "Ijk_log_debug":I
    .end local v8    # "nhposition":I
    :cond_8
    :goto_5
    move-object v2, v6

    .line 1537
    .end local v6    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    goto :goto_6

    .line 1547
    :cond_9
    new-instance v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;-><init>(Landroid/content/Context;)V

    .line 1548
    .local v3, "IjkAliMediaPlayer":Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
    move-object v2, v3

    .line 1549
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "IjkAliMediaPlayer is Running."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 1540
    .end local v3    # "IjkAliMediaPlayer":Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
    :cond_a
    new-instance v3, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;-><init>(Landroid/content/Context;)V

    .line 1541
    .local v3, "IjkExoMediaPlayer":Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    move-object v2, v3

    .line 1542
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "IjkExoMediaPlayer is Running."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1544
    .end local v3    # "IjkExoMediaPlayer":Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    goto :goto_6

    .line 1116
    :cond_b
    new-instance v3, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>(Landroid/content/Context;)V

    .line 1117
    .local v3, "AndroidMediaPlayer":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    move-object v2, v3

    .line 1118
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "AndroidMediaPlayer is Running."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1120
    .end local v3    # "AndroidMediaPlayer":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    nop

    .line 1554
    :goto_6
    iget-object v3, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getEnableDetachedSurfaceTextureView()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1555
    new-instance v3, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    invoke-direct {v3, v2}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    move-object v2, v3

    .line 1558
    :cond_c
    return-object v2
.end method

.method public deselectTrack(I)V
    .locals 1
    .param p1, "stream"    # I

    .line 1723
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->deselectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 1724
    return-void
.end method

.method public enterBackground()V
    .locals 1

    .line 1576
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerService;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1577
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1056
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1026
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 1027
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentBufferPercentage:I

    return v0

    .line 1029
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 958
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 961
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 949
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 953
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 581
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 1
    .param p1, "trackType"    # I

    .line 1727
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v0

    return v0
.end method

.method public getTcpSpeed()J
    .locals 2

    .line 983
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_0

    .line 984
    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTcpSpeed()J

    move-result-wide v0

    return-wide v0

    .line 986
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .line 1712
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v0, :cond_0

    .line 1713
    const/4 v0, 0x0

    return-object v0

    .line 1715
    :cond_0
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 790
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 798
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 794
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    return v0
.end method

.method public getmVideoSarDen()I
    .locals 1

    .line 802
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    return v0
.end method

.method public isBackgroundPlayEnabled()Z
    .locals 1

    .line 1572
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 977
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 859
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 866
    .local v1, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v2, :cond_9

    .line 867
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_7

    const/16 v2, 0x55

    if-ne p1, v2, :cond_1

    goto :goto_2

    .line 877
    :cond_1
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_3

    .line 878
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    .line 879
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 880
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->hide()V

    .line 882
    :cond_2
    return v0

    .line 883
    :cond_3
    const/16 v2, 0x56

    if-eq p1, v2, :cond_5

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_4

    goto :goto_1

    .line 891
    :cond_4
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleMediaControlsVisiblity()V

    goto :goto_4

    .line 885
    :cond_5
    :goto_1
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 886
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 887
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show()V

    .line 889
    :cond_6
    return v0

    .line 869
    :cond_7
    :goto_2
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 870
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 871
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show()V

    goto :goto_3

    .line 873
    :cond_8
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 874
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->hide()V

    .line 876
    :goto_3
    return v0

    .line 895
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 843
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 844
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleMediaControlsVisiblity()V

    .line 846
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 851
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 852
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleMediaControlsVisiblity()V

    .line 854
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .line 917
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 920
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 923
    :cond_0
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 924
    return-void
.end method

.method public release(Z)V
    .locals 3
    .param p1, "cleartargetstate"    # Z

    .line 827
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 828
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 829
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 832
    const/4 v1, 0x0

    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 833
    if-eqz p1, :cond_0

    .line 834
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 836
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 837
    .local v1, "am":Landroid/media/AudioManager;
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 839
    .end local v1    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public releaseWithoutStop()V
    .locals 2

    .line 819
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 820
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 821
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 944
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->openVideo()V

    .line 945
    return-void
.end method

.method public seekTo(I)V
    .locals 3
    .param p1, "msec"    # I

    .line 966
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 968
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 969
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 971
    :cond_0
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    .line 973
    :goto_0
    return-void
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "stream"    # I

    .line 1719
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->selectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 1720
    return-void
.end method

.method public setDecode(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "decode"    # Ljava/lang/Boolean;

    .line 780
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    .line 782
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE:Ljava/lang/Boolean;

    goto :goto_0

    .line 784
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    .line 785
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE:Ljava/lang/Boolean;

    .line 787
    :goto_0
    return-void
.end method

.method public setHudView(Landroid/widget/TableLayout;)V
    .locals 2
    .param p1, "tableLayout"    # Landroid/widget/TableLayout;

    .line 577
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;-><init>(Landroid/content/Context;Landroid/widget/TableLayout;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    .line 578
    return-void
.end method

.method public setMediaController(Ltv/danmaku/ijk/media/example/widget/media/IMediaController;)V
    .locals 1
    .param p1, "controller"    # Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    .line 720
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 721
    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->hide()V

    .line 723
    :cond_0
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    .line 724
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->attachMediaController()V

    .line 725
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 754
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 755
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 766
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 767
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 776
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 777
    return-void
.end method

.method public setOnPlayingBufferCacheListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 1739
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 1740
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 744
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 745
    return-void
.end method

.method public setReferer(Ljava/lang/String;)V
    .locals 0
    .param p1, "Referer"    # Ljava/lang/String;

    .line 1735
    sput-object p1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->Referer:Ljava/lang/String;

    .line 1736
    return-void
.end method

.method public setRender(I)V
    .locals 3
    .param p1, "render"    # I

    .line 550
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 556
    .local v0, "renderView":Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_1

    .line 557
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->getSurfaceHolder()Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 558
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setVideoSize(II)V

    .line 559
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 560
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setAspectRatio(I)V

    .line 562
    :cond_1
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRenderView(Ltv/danmaku/ijk/media/example/widget/media/IRenderView;)V

    .line 563
    goto :goto_0

    .line 566
    .end local v0    # "renderView":Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;
    :cond_2
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 567
    .local v0, "renderView":Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRenderView(Ltv/danmaku/ijk/media/example/widget/media/IRenderView;)V

    .line 568
    goto :goto_0

    .line 552
    .end local v0    # "renderView":Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRenderView(Ltv/danmaku/ijk/media/example/widget/media/IRenderView;)V

    .line 553
    nop

    .line 574
    :goto_0
    return-void
.end method

.method public setRenderView(Ltv/danmaku/ijk/media/example/widget/media/IRenderView;)V
    .locals 4
    .param p1, "renderView"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    .line 517
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 519
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 521
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    .line 522
    .local v0, "renderUIView":Landroid/view/View;
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->removeRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V

    .line 523
    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    .line 524
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->removeView(Landroid/view/View;)V

    .line 527
    .end local v0    # "renderUIView":Landroid/view/View;
    :cond_1
    if-nez p1, :cond_2

    .line 528
    return-void

    .line 530
    :cond_2
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    .line 531
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setAspectRatio(I)V

    .line 532
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    if-lez v0, :cond_3

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    if-lez v1, :cond_3

    .line 533
    invoke-interface {p1, v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSize(II)V

    .line 534
    :cond_3
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    if-lez v0, :cond_4

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    if-lez v1, :cond_4

    .line 535
    invoke-interface {p1, v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 537
    :cond_4
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    .line 538
    .restart local v0    # "renderUIView":Landroid/view/View;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 542
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->addView(Landroid/view/View;)V

    .line 545
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->addRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V

    .line 546
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    iget v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoRotationDegree:I

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoRotation(I)V

    .line 547
    return-void
.end method

.method public setSpeed(F)V
    .locals 2
    .param p1, "speed"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.5
            to = 5.0
        .end annotation
    .end param

    .line 1011
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_0

    .line 1012
    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    goto :goto_0

    .line 1013
    :cond_0
    instance-of v1, v0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    if-eqz v1, :cond_1

    .line 1014
    check-cast v0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setSpeed(FF)V

    goto :goto_0

    .line 1015
    :cond_1
    instance-of v1, v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    if-eqz v1, :cond_2

    .line 1016
    check-cast v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->setSpeed(F)V

    goto :goto_0

    .line 1017
    :cond_2
    instance-of v1, v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v1, :cond_3

    .line 1018
    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setSpeed(F)V

    goto :goto_0

    .line 1020
    :cond_3
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v1, "not support setSpeed! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :goto_0
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 1731
    sput-object p1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->userAgent:Ljava/lang/String;

    .line 1732
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 590
    const-string v0, "adaptationSet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mManifestString:Ljava/lang/String;

    .line 592
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 593
    return-void

    .line 595
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 596
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 608
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "adaptationSet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mManifestString:Ljava/lang/String;

    .line 610
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {p0, v0, p2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 611
    return-void

    .line 613
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 614
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 604
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 605
    return-void
.end method

.method public showMediaInfo()V
    .locals 18

    .line 1587
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v1, :cond_0

    .line 1588
    return-void

    .line 1590
    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v1

    .line 1591
    .local v1, "selectedVideoTrack":I
    iget-object v3, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v3

    .line 1592
    .local v3, "selectedAudioTrack":I
    iget-object v5, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v5

    .line 1594
    .local v5, "selectedSubtitleTrack":I
    new-instance v6, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;-><init>(Landroid/content/Context;)V

    .line 1595
    .local v6, "builder":Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;
    const v7, 0x7f0e0109

    invoke-virtual {v6, v7}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(I)Landroid/view/View;

    .line 1596
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v8}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getName(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1597
    const v7, 0x7f0e0107

    invoke-virtual {v6, v7}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(I)Landroid/view/View;

    .line 1598
    iget v7, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    iget v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    iget v9, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    iget v10, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    invoke-direct {v0, v7, v8, v9, v10}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->buildResolution(IIII)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0e010b

    invoke-virtual {v6, v8, v7}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1599
    const v7, 0x7f0e0106

    iget-object v9, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v9}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->buildTimeMilli(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1601
    iget-object v7, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v7

    .line 1602
    .local v7, "trackInfos":[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    if-eqz v7, :cond_9

    .line 1603
    const/4 v9, -0x1

    .line 1604
    .local v9, "index":I
    array-length v10, v7

    const/4 v11, 0x0

    move v12, v9

    const/4 v9, 0x0

    .end local v9    # "index":I
    .local v12, "index":I
    :goto_0
    if-ge v9, v10, :cond_8

    aget-object v13, v7, v9

    .line 1605
    .local v13, "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    add-int/lit8 v12, v12, 0x1

    .line 1607
    invoke-interface {v13}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v14

    .line 1608
    .local v14, "trackType":I
    const-string v15, " "

    if-ne v12, v1, :cond_1

    .line 1609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v8

    move/from16 v16, v1

    .end local v1    # "selectedVideoTrack":I
    .local v16, "selectedVideoTrack":I
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v1, v11

    const v11, 0x7f0e010d

    invoke-virtual {v8, v11, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v8, 0x7f0e0100

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1610
    .end local v16    # "selectedVideoTrack":I
    .restart local v1    # "selectedVideoTrack":I
    :cond_1
    move/from16 v16, v1

    .end local v1    # "selectedVideoTrack":I
    .restart local v16    # "selectedVideoTrack":I
    if-ne v12, v3, :cond_2

    .line 1611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0x0

    aput-object v11, v8, v17

    const v11, 0x7f0e010d

    invoke-virtual {v4, v11, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f0e00fe

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    const/4 v11, 0x0

    goto :goto_1

    .line 1612
    :cond_2
    if-ne v12, v5, :cond_3

    .line 1613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0x0

    aput-object v11, v8, v17

    const v11, 0x7f0e010d

    invoke-virtual {v4, v11, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f0e00ff

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    const/4 v11, 0x0

    goto :goto_1

    .line 1615
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v4, v11

    const v8, 0x7f0e010d

    invoke-virtual {v1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    .line 1617
    :goto_1
    const v1, 0x7f0e010e

    invoke-direct {v0, v14}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->buildTrackType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1618
    const v1, 0x7f0e0105

    invoke-interface {v13}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->buildLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1620
    invoke-interface {v13}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getFormat()Ltv/danmaku/ijk/media/player/misc/IMediaFormat;

    move-result-object v1

    .line 1621
    .local v1, "mediaFormat":Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    if-nez v1, :cond_4

    const/4 v2, 0x2

    const v11, 0x7f0e010b

    goto/16 :goto_2

    .line 1622
    :cond_4
    instance-of v4, v1, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    if-eqz v4, :cond_7

    .line 1623
    const-string v4, "ijk-bit-rate-ui"

    const-string v15, "ijk-profile-level-ui"

    const-string v8, "ijk-codec-long-name-ui"

    const v11, 0x7f0e0103

    if-eq v14, v2, :cond_6

    const/4 v2, 0x2

    if-eq v14, v2, :cond_5

    const v11, 0x7f0e010b

    goto/16 :goto_2

    .line 1633
    :cond_5
    invoke-interface {v1, v8}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1634
    invoke-interface {v1, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const v11, 0x7f0e010a

    invoke-virtual {v6, v11, v8}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1635
    const v8, 0x7f0e010c

    const-string v11, "ijk-sample-rate-ui"

    invoke-interface {v1, v11}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1636
    const v8, 0x7f0e0102

    const-string v11, "ijk-channel-ui"

    invoke-interface {v1, v11}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1637
    invoke-interface {v1, v4}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f0e0101

    invoke-virtual {v6, v8, v4}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1638
    const v11, 0x7f0e010b

    goto :goto_2

    .line 1625
    :cond_6
    const/4 v2, 0x2

    invoke-interface {v1, v8}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1626
    invoke-interface {v1, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const v11, 0x7f0e010a

    invoke-virtual {v6, v11, v8}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1627
    const v8, 0x7f0e0108

    const-string v11, "ijk-pixel-format-ui"

    invoke-interface {v1, v11}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1628
    const-string v8, "ijk-resolution-ui"

    invoke-interface {v1, v8}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const v11, 0x7f0e010b

    invoke-virtual {v6, v11, v8}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1629
    const v8, 0x7f0e0104

    const-string v15, "ijk-frame-rate-ui"

    invoke-interface {v1, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v8, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1630
    invoke-interface {v1, v4}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f0e0101

    invoke-virtual {v6, v8, v4}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1631
    goto :goto_2

    .line 1622
    :cond_7
    const/4 v2, 0x2

    const v11, 0x7f0e010b

    .line 1604
    .end local v1    # "mediaFormat":Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    .end local v13    # "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .end local v14    # "trackType":I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v16

    const/4 v2, 0x1

    const/4 v4, 0x2

    const v8, 0x7f0e010b

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v16    # "selectedVideoTrack":I
    .local v1, "selectedVideoTrack":I
    :cond_8
    move/from16 v16, v1

    .end local v1    # "selectedVideoTrack":I
    .restart local v16    # "selectedVideoTrack":I
    goto :goto_3

    .line 1602
    .end local v12    # "index":I
    .end local v16    # "selectedVideoTrack":I
    .restart local v1    # "selectedVideoTrack":I
    :cond_9
    move/from16 v16, v1

    .line 1646
    .end local v1    # "selectedVideoTrack":I
    .restart local v16    # "selectedVideoTrack":I
    :goto_3
    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->buildAlertDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1647
    .local v1, "adBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e00fb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1648
    const v2, 0x7f0e0092

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1649
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1650
    return-void
.end method

.method public start()V
    .locals 2

    .line 908
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 910
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 912
    :cond_0
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 913
    return-void
.end method

.method public stopBackgroundPlay()V
    .locals 1

    .line 1580
    const/4 v0, 0x0

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerService;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1581
    return-void
.end method

.method public stopPlayback()V
    .locals 3

    .line 635
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 636
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 637
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 639
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    if-eqz v1, :cond_0

    .line 640
    invoke-virtual {v1, v0}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 641
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 642
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 643
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 644
    .local v1, "am":Landroid/media/AudioManager;
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 646
    .end local v1    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 1

    .line 927
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->release(Z)V

    .line 928
    return-void
.end method

.method public toggleAspectRatio(I)I
    .locals 2
    .param p1, "paramInt"    # I

    .line 1062
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 1064
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    if-eqz v0, :cond_0

    .line 1065
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setAspectRatio(I)V

    .line 1066
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    return v0
.end method

.method public togglePlayer()I
    .locals 1

    .line 1097
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 1098
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 1100
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    if-eqz v0, :cond_1

    .line 1101
    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1102
    :cond_1
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->openVideo()V

    .line 1103
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getPlayer()I

    move-result v0

    return v0
.end method

.method public toggleRender()I
    .locals 2

    .line 1085
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 1086
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 1088
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 1089
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRender(I)V

    .line 1090
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    return v0
.end method
