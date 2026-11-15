.class public Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
.super Landroid/app/Activity;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/vod/LivePlayerActivity$WindowMessageID;,
        Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;,
        Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;
    }
.end annotation


# static fields
.field public static Failed:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LivePlayerActivity"

.field private static final TIME:I = 0x1770

.field private static final TOUCH_BRIGHTNESS:I = 0x2

.field private static final TOUCH_NONE:I = 0x0

.field private static final TOUCH_VOLUME:I = 0x1

.field private static controlHeight:I

.field public static gsposition:I

.field public static hmblposition:I

.field public static jmposition:I

.field public static keyChanne:Ljava/lang/String;

.field private static menutype:I

.field public static nhposition:I

.field public static phszposition:I

.field public static qlposition:I

.field private static rxByte:Ljava/lang/String;

.field private static rxBytes:Ljava/lang/String;

.field public static xjposition:I


# instance fields
.field private Api_url:Ljava/lang/String;

.field private Auto_Source:I

.field private BASE_HOST:Ljava/lang/String;

.field private Client:Ljava/lang/String;

.field private ClientID:I

.field private KEYCODE_DPAD_DOWN:Z

.field private KEYCODE_DPAD_UP:Z

.field private Lightness:F

.field private MaxClientID:I

.field private Maxtimeout:I

.field private Navigation_mode:I

.field private PlayersNumber:I

.field private Referer:Ljava/lang/String;

.field private SP:Landroid/content/SharedPreferences;

.field private final SYNC_Playing:Ljava/lang/Object;

.field private Tackle_mode:I

.field private Type:I

.field Vod_Notice_starting_time:I

.field caton_check:I

.field check_time:I

.field private controlView:Landroid/view/View;

.field private controler:Landroid/widget/PopupWindow;

.field private core:I

.field private core_mode:I

.field private currentVolume:I

.field private epg:I

.field private firstTime:J

.field private gsplayIndex:I

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

.field private ib_playStatus:Landroid/widget/ImageButton;

.field private isBack:Z

.field private isCodeBlockExecuted:Z

.field private isControllerShow:Z

.field private isDestroy:Ljava/lang/Boolean;

.field private isLast:Ljava/lang/Boolean;

.field private isMenuItemShow:Z

.field private isMenuItemShows:Z

.field private isMenuItemShowss:Z

.field private isMenuShow:Z

.field private isNext:Ljava/lang/Boolean;

.field private isPause:Ljava/lang/Boolean;

.field private isSwitch:Z

.field private isUpKeyPressed:Z

.field private lastRxByte:J

.field private lastRxBytes:J

.field private lastSpeedTime:J

.field private lastSpeedTimes:J

.field private live_no_source:I

.field private ll_epg1:Landroid/support/constraint/ConstraintLayout;

.field private ll_epg2:Landroid/widget/LinearLayout;

.field private ll_forfend:Landroid/widget/LinearLayout;

.field private load:I

.field private logo_url:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsHwDecode:Z

.field private mLastPos:I

.field private mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

.field private mProgramNum:Landroid/widget/TextView;

.field private mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mSpeedHandler:Landroid/os/Handler;

.field private mSurfaceYDisplayRange:I

.field private mToast:Landroid/widget/Toast;

.field private mTouchAction:I

.field private mTouchX:F

.field private mTouchY:F

.field private mVideoSource:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maxVolume:I

.field private final mediaHandler:Landroid/os/Handler;

.field private memory_channel:I

.field private memory_source:I

.field private menulist:Landroid/widget/ListView;

.field private menulists:Landroid/widget/ListView;

.field private menulistss:Landroid/widget/ListView;

.field private menupopupWindow:Landroid/widget/PopupWindow;

.field private menupopupWindows:Landroid/widget/PopupWindow;

.field private networkspeed:I

.field private now_source:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrl;",
            ">;"
        }
    .end annotation
.end field

.field private parts:[Ljava/lang/String;

.field private pauseVideoReceiver:Landroid/content/BroadcastReceiver;

.field private playIndex:I

.field private playPreCode:I

.field private reverse:I

.field private safe_mode:I

.field private screenHeight:I

.field private screenWidth:I

.field private seekBar:Landroid/widget/SeekBar;

.field private sp:Landroid/content/SharedPreferences;

.field private speed:J

.field private speedRunnable:Ljava/lang/Runnable;

.field private speedRunnables:Ljava/lang/Runnable;

.field private speedRunnabless:Ljava/lang/Runnable;

.field private speeds:J

.field private splitCount:I

.field private switchs:I

.field private time_controlView:Landroid/view/View;

.field private time_controler:Landroid/widget/PopupWindow;

.field private timeout:I

.field private tv_channelname1:Landroid/widget/TextView;

.field private tv_channelname2:Landroid/widget/TextView;

.field private tv_channelnum1:Landroid/widget/TextView;

.field private tv_channelnum2:Landroid/widget/TextView;

.field private tv_currentTime:Landroid/widget/TextView;

.field private tv_logo:Landroid/widget/ImageView;

.field private tv_menu:Landroid/widget/TextView;

.field private tv_mv_name:Landroid/widget/TextView;

.field private tv_mv_speed:Landroid/widget/TextView;

.field private tv_netspeedinfo:Landroid/widget/TextView;

.field private tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

.field private tv_notice_root:Landroid/widget/LinearLayout;

.field private tv_progress_time:Landroid/widget/TextView;

.field private tv_srcinfo1:Landroid/widget/TextView;

.field private tv_srcinfo2:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_totalTime:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private videoInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private videoInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private videoLength:I

.field private vmAdapter:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

.field private vmAdapters:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

.field private vmAdapterss:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 123
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    .line 124
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    .line 125
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->phszposition:I

    .line 126
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 127
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    .line 128
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->qlposition:I

    .line 129
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlHeight:I

    .line 336
    const-string v1, ""

    sput-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Failed:Ljava/lang/String;

    .line 360
    sput-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    .line 440
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 117
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SYNC_Playing:Ljava/lang/Object;

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->firstTime:J

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 140
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isBack:Z

    .line 141
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    .line 142
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 143
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isLast:Ljava/lang/Boolean;

    .line 144
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShow:Z

    .line 145
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShows:Z

    .line 146
    iput-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShowss:Z

    .line 147
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuShow:Z

    .line 148
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isNext:Ljava/lang/Boolean;

    .line 149
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isPause:Ljava/lang/Boolean;

    .line 150
    iput-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    .line 153
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 154
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 156
    iput-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mIsHwDecode:Z

    .line 157
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 158
    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 162
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    .line 166
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mVideoSource:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 174
    const-string v2, "LIVEs"

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 175
    const-string v2, "gsLIVEs"

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    .line 199
    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$1;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    .line 313
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    .line 314
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    .line 315
    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    .line 316
    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->MaxClientID:I

    .line 317
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Type:I

    .line 319
    const-string v2, "Logo_url"

    invoke-static {p0, v2, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->logo_url:Ljava/lang/String;

    .line 321
    const-string v2, ""

    const-string v4, "Client"

    invoke-static {p0, v4, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    .line 323
    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Auto_Source:I

    .line 328
    const-string v4, "Navigation_mode"

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation_mode:I

    .line 330
    const-string v4, "Vod_Notice_starting_time"

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Vod_Notice_starting_time:I

    .line 331
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->load:I

    .line 332
    const/16 v4, 0x12c

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    .line 333
    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I

    .line 335
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isCodeBlockExecuted:Z

    .line 337
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->now_source:Ljava/util/List;

    .line 338
    const-string v4, "Api_url"

    invoke-static {p0, v4, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Api_url:Ljava/lang/String;

    .line 339
    const-string v4, "BASE_HOST"

    invoke-static {p0, v4, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->BASE_HOST:Ljava/lang/String;

    .line 344
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_UP:Z

    .line 345
    iput-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_DOWN:Z

    .line 361
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgramNum:Landroid/widget/TextView;

    .line 374
    const-string v0, "caton_check"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->caton_check:I

    .line 381
    const-string v0, "check_time"

    const/16 v2, 0xa

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->check_time:I

    .line 389
    const-string v0, "Tackle_mode"

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Tackle_mode:I

    .line 397
    const-string v0, "networkspeed"

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->networkspeed:I

    .line 406
    const-string v0, "epg"

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->epg:I

    .line 414
    const-string v0, "switchs"

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->switchs:I

    .line 422
    const-string v0, "memory_source"

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_source:I

    .line 430
    const-string v0, "memory_channel"

    invoke-static {p0, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_channel:I

    .line 438
    const-string v0, "live_no_source"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->live_no_source:I

    .line 442
    const/16 v0, 0x63

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    .line 443
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->safe_mode:I

    .line 447
    const-string v0, "core_mode"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core_mode:I

    .line 452
    const-string v0, "reverse"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->reverse:I

    .line 1895
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    return-void
.end method

.method private PrepareVodData(I)V
    .locals 8
    .param p1, "postion"    # I

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    .line 696
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    if-lt v1, v2, :cond_4

    .line 697
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 698
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelname1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelname2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelnum1:Landroid/widget/TextView;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelnum2:Landroid/widget/TextView;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    .line 705
    .local v2, "str":Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    .line 706
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    .line 708
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_source:I

    const/4 v4, 0x0

    if-ne v3, v0, :cond_0

    .line 709
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 712
    :cond_0
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    if-le v3, v5, :cond_1

    .line 713
    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 714
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    goto :goto_1

    .line 716
    :cond_1
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_source:I

    if-ne v3, v0, :cond_2

    .line 717
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    goto :goto_0

    .line 719
    :cond_2
    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 722
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    .line 725
    :goto_1
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    const-string v5, "/"

    const-string/jumbo v6, "\u6e90:"

    if-le v3, v4, :cond_3

    .line 726
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 729
    :cond_3
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    :goto_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 735
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    .line 737
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private ResetMovieTime()V
    .locals 2

    .line 2229
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 2230
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_totalTime:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 2231
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2232
    return-void
.end method

.method private SelecteVod(I)V
    .locals 8
    .param p1, "postion"    # I

    .line 741
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 746
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 747
    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    .line 748
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    .line 753
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 769
    :cond_1
    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 770
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    .line 771
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 772
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 773
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 774
    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 775
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 776
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelname1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v4, v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelname2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v4, v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelnum1:Landroid/widget/TextView;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelnum2:Landroid/widget/TextView;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    .line 782
    .local v3, "str":Ljava/lang/String;
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    .line 783
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    .line 785
    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_source:I

    if-ne v4, v2, :cond_2

    .line 786
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 789
    :cond_2
    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    if-le v4, v5, :cond_3

    .line 790
    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 791
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    aget-object v0, v4, v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    goto :goto_1

    .line 793
    :cond_3
    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_source:I

    if-ne v4, v2, :cond_4

    .line 794
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    goto :goto_0

    .line 796
    :cond_4
    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 799
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    .line 802
    :goto_1
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v0, v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    const-string v5, "/"

    const-string/jumbo v6, "\u6e90:"

    if-le v0, v4, :cond_5

    .line 803
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 806
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v7, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    :goto_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method private Switchsource(I)V
    .locals 7
    .param p1, "msg"    # I

    .line 944
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 945
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    .line 946
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->live_no_source:I

    const/16 v4, 0x11

    if-nez v3, :cond_0

    .line 953
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 954
    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 955
    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 956
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 958
    :cond_0
    iget-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_UP:Z

    if-eqz v3, :cond_2

    .line 959
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    if-lez v3, :cond_1

    .line 960
    sub-int/2addr v3, v1

    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 961
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 962
    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 963
    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 964
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 965
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    goto :goto_0

    .line 967
    :cond_1
    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 968
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 969
    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 970
    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 971
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 972
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 975
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_DOWN:Z

    if-eqz v3, :cond_4

    .line 976
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    add-int/lit8 v6, v5, 0x1

    if-le v3, v6, :cond_3

    .line 977
    add-int/2addr v5, v1

    iput v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 978
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 979
    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 980
    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 981
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 982
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    goto :goto_1

    .line 984
    :cond_3
    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 985
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 986
    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 987
    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 988
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 989
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 996
    :cond_4
    :goto_1
    if-ne p1, v1, :cond_a

    .line 998
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->epg:I

    if-ne v3, v1, :cond_5

    .line 999
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg1:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    goto :goto_2

    .line 1000
    :cond_5
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1001
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1008
    :cond_6
    :goto_2
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->switchs:I

    if-ne v3, v1, :cond_7

    .line 1009
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_forfend:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1012
    :cond_7
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 1013
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    if-le v4, v5, :cond_8

    .line 1014
    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 1015
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    .line 1016
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1029
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Switchsource(I)V

    goto/16 :goto_3

    .line 1031
    :cond_8
    add-int/2addr v3, v1

    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 1032
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    aget-object v4, v0, v3

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    .line 1034
    add-int/2addr v3, v1

    array-length v0, v0

    if-le v3, v0, :cond_9

    .line 1035
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6e90:1/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1038
    :cond_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6e90:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    :goto_3
    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->load:I

    .line 1044
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 1046
    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Landroid/os/Message;

    .line 117
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # I

    .line 117
    iput p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getVodGongGao()V

    return-void
.end method

.method static synthetic access$1200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->logo_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vodlogoloadImg()V

    return-void
.end method

.method static synthetic access$1400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_logo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 117
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 117
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    return v0
.end method

.method static synthetic access$1702(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # I

    .line 117
    iput p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    return p1
.end method

.method static synthetic access$1800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgramNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PrepareVodData(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_forfend:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/support/constraint/ConstraintLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg1:Landroid/support/constraint/ConstraintLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_channel:I

    return v0
.end method

.method static synthetic access$2400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 117
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    return-void
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .line 117
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->rxByte:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 117
    sput-object p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->rxByte:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->networkspeed:I

    return v0
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    .line 117
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->rxBytes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 117
    sput-object p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->rxBytes:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_netspeedinfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->load:I

    return v0
.end method

.method static synthetic access$3102(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # I

    .line 117
    iput p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->load:I

    return p1
.end method

.method static synthetic access$3200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I

    return v0
.end method

.method static synthetic access$3202(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # I

    .line 117
    iput p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I

    return p1
.end method

.method static synthetic access$3300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    return v0
.end method

.method static synthetic access$3400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->MaxClientID:I

    return v0
.end method

.method static synthetic access$3500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Auto_Source:I

    return v0
.end method

.method static synthetic access$3700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Switchsource(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastRxByte:J

    return-wide v0
.end method

.method static synthetic access$3802(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # J

    .line 117
    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastRxByte:J

    return-wide p1
.end method

.method static synthetic access$3900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastSpeedTime:J

    return-wide v0
.end method

.method static synthetic access$3902(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # J

    .line 117
    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastSpeedTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->startSpeed()V

    return-void
.end method

.method static synthetic access$4000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speed:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # J

    .line 117
    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speed:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastRxBytes:J

    return-wide v0
.end method

.method static synthetic access$4302(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # J

    .line 117
    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastRxBytes:J

    return-wide p1
.end method

.method static synthetic access$4400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastSpeedTimes:J

    return-wide v0
.end method

.method static synthetic access$4402(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # J

    .line 117
    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastSpeedTimes:J

    return-wide p1
.end method

.method static synthetic access$4500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speeds:J

    return-wide v0
.end method

.method static synthetic access$4502(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # J

    .line 117
    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speeds:J

    return-wide p1
.end method

.method static synthetic access$4600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnables:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Tackle_mode:I

    return v0
.end method

.method static synthetic access$4900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->endSpeed()V

    return-void
.end method

.method static synthetic access$5000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->now_source:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 117
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->now_source:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;)Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 117
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SYNC_Playing:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    return-void
.end method

.method static synthetic access$5500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showMenu()V

    return-void
.end method

.method static synthetic access$5600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->cancelDelayHide()V

    return-void
.end method

.method static synthetic access$5800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showController()V

    return-void
.end method

.method static synthetic access$5900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideControllerDelay()V

    return-void
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->selectScales(I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideMenu()V

    return-void
.end method

.method static synthetic access$6100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showMenus()V

    return-void
.end method

.method static synthetic access$6200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->updateprogress()V

    return-void
.end method

.method static synthetic access$6500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isCodeBlockExecuted:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isCodeBlockExecuted:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_source:I

    return v0
.end method

.method static synthetic access$6800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    return v0
.end method

.method static synthetic access$6900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ResetMovieTime()V

    return-void
.end method

.method static synthetic access$7000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isNext:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 117
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isNext:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isLast:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 117
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isLast:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isPause:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 117
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isPause:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # I

    .line 117
    iput p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    return p1
.end method

.method static synthetic access$7402(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuShow:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuShow:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShow:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShow:Z

    return p1
.end method

.method static synthetic access$7700()I
    .locals 1

    .line 117
    sget v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menutype:I

    return v0
.end method

.method static synthetic access$7702(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 117
    sput p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menutype:I

    return p0
.end method

.method static synthetic access$7800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulist:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    return p1
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setDecode()V

    return-void
.end method

.method static synthetic access$8200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getPlayPreferences()V

    return-void
.end method

.method static synthetic access$8300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulists:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 2872
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 2873
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2874
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x2000000a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2875
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2878
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private analysisUrl(Ljava/lang/String;I)V
    .locals 24
    .param p1, "urls"    # Ljava/lang/String;
    .param p2, "way"    # I

    .line 1234
    move-object/from16 v13, p0

    move/from16 v14, p2

    const-string v0, "Timeout"

    const/16 v1, 0x19

    invoke-static {v13, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    .line 1236
    .local v15, "Timeout":I
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v13, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v13, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1238
    iget-object v0, v13, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string/jumbo v2, "userName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1239
    .local v12, "account":Ljava/lang/String;
    iget-object v0, v13, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "passWord"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1240
    .local v10, "password":Ljava/lang/String;
    iget-object v0, v13, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "ckinfo"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1241
    .local v11, "token":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1242
    .local v9, "machineid":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/shenma/tvlauncher/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 1243
    .local v7, "value":D
    iget-object v0, v13, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v1, v13, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1246
    .local v6, "name":Ljava/lang/String;
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez v14, :cond_0

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&machineid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&edition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&vodname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&line=live&new=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1248
    .local v16, "url":Ljava/lang/String;
    new-instance v17, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$13;

    const/4 v2, 0x0

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$11;

    invoke-direct {v1, v13}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$11;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$12;

    invoke-direct {v0, v13}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$12;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v18

    move-object/from16 v18, v6

    .end local v6    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    move-object v6, v12

    move-wide/from16 v22, v7

    .end local v7    # "value":D
    .local v22, "value":D
    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$13;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    mul-int/lit16 v2, v15, 0x3e8

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v7, v8}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 1279
    iget-object v1, v13, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 1246
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v16    # "url":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v22    # "value":D
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "value":D
    :cond_0
    move-object/from16 v18, v6

    move-wide/from16 v22, v7

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1284
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":D
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v22    # "value":D
    :goto_0
    const/4 v0, 0x1

    if-ne v14, v0, :cond_1

    .line 1285
    move-object/from16 v3, p1

    .line 1286
    .local v3, "url":Ljava/lang/String;
    new-instance v16, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;

    const/4 v2, 0x1

    new-instance v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$14;

    invoke-direct {v4, v13}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$14;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$15;

    invoke-direct {v5, v13}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$15;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v6, v12

    move-object v7, v10

    move-object v8, v11

    move-object/from16 v17, v9

    .end local v9    # "machineid":Ljava/lang/String;
    .local v17, "machineid":Ljava/lang/String;
    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .end local v10    # "password":Ljava/lang/String;
    .end local v11    # "token":Ljava/lang/String;
    .local v19, "password":Ljava/lang/String;
    .local v20, "token":Ljava/lang/String;
    move-wide/from16 v10, v22

    move-object/from16 v21, v12

    .end local v12    # "account":Ljava/lang/String;
    .local v21, "account":Ljava/lang/String;
    move-object/from16 v12, v18

    invoke-direct/range {v0 .. v12}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 1319
    .restart local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    mul-int/lit16 v2, v15, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 1322
    iget-object v1, v13, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_1

    .line 1284
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v3    # "url":Ljava/lang/String;
    .end local v17    # "machineid":Ljava/lang/String;
    .end local v19    # "password":Ljava/lang/String;
    .end local v20    # "token":Ljava/lang/String;
    .end local v21    # "account":Ljava/lang/String;
    .restart local v9    # "machineid":Ljava/lang/String;
    .restart local v10    # "password":Ljava/lang/String;
    .restart local v11    # "token":Ljava/lang/String;
    .restart local v12    # "account":Ljava/lang/String;
    :cond_1
    move-object/from16 v17, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    .line 1325
    .end local v9    # "machineid":Ljava/lang/String;
    .end local v10    # "password":Ljava/lang/String;
    .end local v11    # "token":Ljava/lang/String;
    .end local v12    # "account":Ljava/lang/String;
    .restart local v17    # "machineid":Ljava/lang/String;
    .restart local v19    # "password":Ljava/lang/String;
    .restart local v20    # "token":Ljava/lang/String;
    .restart local v21    # "account":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private cancelDelayHide()V
    .locals 2

    .line 1756
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1757
    return-void
.end method

.method private createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 927
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$10;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    return-object v0
.end method

.method private createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;",
            ">;"
        }
    .end annotation

    .line 867
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$9;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$9;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    return-object v0
.end method

.method private doBrightnessTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 2739
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchAction:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 2740
    return-void

    .line 2741
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchAction:I

    .line 2742
    neg-float v0, p1

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSurfaceYDisplayRange:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 2743
    .local v0, "delta":F
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Lightness:F

    add-float/2addr v1, v0

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 2744
    .local v1, "vol":I
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 2745
    const/4 v2, 0x5

    const/16 v3, 0xff

    const v4, 0x7f0700f0

    const/4 v5, 0x0

    if-ge v1, v2, :cond_1

    .line 2746
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v4, v3, v5, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 2748
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v4, v3, v1, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 2750
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Lightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "....vol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "...delta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "....mSurfaceYDisplayRange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSurfaceYDisplayRange:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doBrightnessTouch"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    :cond_2
    return-void
.end method

.method private doVolumeTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 2720
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchAction:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 2721
    return-void

    .line 2722
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchAction:I

    .line 2723
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSurfaceYDisplayRange:I

    int-to-float v0, v0

    div-float v0, p1, v0

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    neg-int v0, v0

    .line 2724
    .local v0, "delta":I
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->currentVolume:I

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2725
    .local v3, "vol":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vol===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "...delta="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "doVolumeTouch"

    invoke-static {v5, v4}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    if-eqz v0, :cond_3

    .line 2727
    if-ge v3, v1, :cond_1

    .line 2728
    const v1, 0x7f0700f3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 2729
    :cond_1
    if-lt v3, v1, :cond_2

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    div-int/lit8 v4, v1, 0x2

    if-ge v3, v4, :cond_2

    .line 2730
    const v4, 0x7f0700f2

    invoke-direct {p0, v4, v1, v3, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 2731
    :cond_2
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    div-int/lit8 v4, v1, 0x2

    if-lt v3, v4, :cond_3

    .line 2732
    const v4, 0x7f0700f1

    invoke-direct {p0, v4, v1, v3, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 2735
    :cond_3
    :goto_0
    return-void
.end method

.method private endSpeed()V
    .locals 4

    .line 2828
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->load:I

    .line 2829
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2830
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2837
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnables:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2838
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastRxBytes:J

    .line 2839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastSpeedTimes:J

    .line 2840
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnables:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2843
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->caton_check:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2844
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->check_time:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2847
    :cond_0
    return-void
.end method

.method private fastForward(I)V
    .locals 7
    .param p1, "postion"    # I

    .line 2166
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 2167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    .line 2168
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2169
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2170
    const/4 v1, 0x0

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 2171
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 2172
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2174
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 2175
    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int v4, v3, p1

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    if-le v4, v5, :cond_0

    .line 2176
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 2177
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    aget-object v1, v3, v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    goto :goto_0

    .line 2179
    :cond_0
    add-int/2addr v3, p1

    iput v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 2180
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    .line 2182
    :goto_0
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    const-string v4, "/"

    const-string/jumbo v5, "\u6e90:"

    if-le v1, v3, :cond_1

    .line 2183
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2184
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2186
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2187
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2189
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 2190
    return-void
.end method

.method private findViewById()V
    .locals 3

    .line 1118
    const v0, 0x7f080301

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->webView:Landroid/webkit/WebView;

    .line 1119
    const v0, 0x7f080290

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_logo:Landroid/widget/ImageView;

    .line 1120
    const v0, 0x7f0802a0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    .line 1121
    const v0, 0x7f08029f

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    .line 1122
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0801d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 1123
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f080257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    .line 1124
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0802b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_totalTime:Landroid/widget/TextView;

    .line 1125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f080294

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_menu:Landroid/widget/TextView;

    .line 1126
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0800e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    .line 1127
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    const v0, 0x7f08018c

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    .line 1129
    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg1:Landroid/support/constraint/ConstraintLayout;

    .line 1130
    const v0, 0x7f080251

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelname1:Landroid/widget/TextView;

    .line 1131
    const v0, 0x7f0802ae

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    .line 1132
    const v0, 0x7f080253

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelnum1:Landroid/widget/TextView;

    .line 1134
    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg2:Landroid/widget/LinearLayout;

    .line 1135
    const v0, 0x7f080252

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelname2:Landroid/widget/TextView;

    .line 1136
    const v0, 0x7f0802af

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    .line 1137
    const v0, 0x7f080254

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_channelnum2:Landroid/widget/TextView;

    .line 1138
    const v0, 0x7f080188

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgramNum:Landroid/widget/TextView;

    .line 1139
    const v0, 0x7f080299

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_netspeedinfo:Landroid/widget/TextView;

    .line 1145
    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_forfend:Landroid/widget/LinearLayout;

    .line 1146
    const v0, 0x7f0802a1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_progress_time:Landroid/widget/TextView;

    .line 1147
    const v0, 0x7f080297

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    .line 1148
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controlView:Landroid/view/View;

    const v1, 0x7f0802b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_time:Landroid/widget/TextView;

    .line 1149
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controlView:Landroid/view/View;

    const v1, 0x7f080296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 1150
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setVisibility(I)V

    .line 1162
    const/4 v0, 0x0

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 1163
    const-string v0, "libijkplayer.so"

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 1164
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 1165
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const v1, 0x7f0800e2

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setHudView(Landroid/widget/TableLayout;)V

    .line 1166
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "mIsHwDecode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1168
    .local v0, "Decode":I
    if-ne v0, v1, :cond_0

    .line 1169
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1170
    :cond_0
    if-nez v0, :cond_1

    .line 1171
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 1173
    :cond_1
    :goto_0
    return-void
.end method

.method private getPlayPreferences()V
    .locals 3

    .line 1106
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "playPre"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playPreCode:I

    .line 1107
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playPreCode:I

    if-nez v0, :cond_0

    .line 1109
    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->phszposition:I

    goto :goto_0

    .line 1112
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->phszposition:I

    .line 1114
    :goto_0
    return-void
.end method

.method private getScreenSize()V
    .locals 2

    .line 1724
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1725
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenHeight:I

    .line 1726
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenWidth:I

    .line 1727
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenHeight:I

    div-int/lit8 v1, v1, 0x4

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlHeight:I

    .line 1728
    return-void
.end method

.method private getVodGongGao()V
    .locals 21

    .line 2898
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 2899
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2900
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2901
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2902
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2903
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2904
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2905
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 2906
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=live_notice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$35;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$35;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$36;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$36;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 2949
    return-void
.end method

.method private hideController()V
    .locals 1

    .line 1747
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1749
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    .line 1752
    :cond_0
    return-void
.end method

.method private hideControllerDelay()V
    .locals 4

    .line 1761
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->cancelDelayHide()V

    .line 1762
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1763
    return-void
.end method

.method private hideMenu()V
    .locals 2

    .line 1801
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1802
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation()V

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1805
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1807
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1808
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1810
    :cond_2
    return-void
.end method

.method private initData()V
    .locals 5

    .line 823
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/domain/RequestVo;-><init>()V

    .line 825
    .local v0, "vo":Lcom/shenma/tvlauncher/vod/domain/RequestVo;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 826
    .local v1, "User_url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/api.php?app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&act=iptv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    .line 827
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V

    .line 828
    const-string/jumbo v2, "vod_Logo"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 829
    .local v2, "vod_Logo":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 830
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 832
    :cond_0
    return-void
.end method

.method private initMessage(I)V
    .locals 4
    .param p1, "what"    # I

    .line 1881
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1882
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    .line 1885
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgramNum:Landroid/widget/TextView;

    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMessage...keyChanne="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LivePlayerActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1892
    return-void
.end method

.method private initView()V
    .locals 9

    .line 1050
    const/4 v0, 0x0

    const-string v1, "shenma"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    .line 1051
    const-string v1, "live"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SP:Landroid/content/SharedPreferences;

    .line 1052
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1053
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v3, "\u5168\u5c4f\u62c9\u4f38"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1054
    .local v1, "playratio":Ljava/lang/String;
    const-string/jumbo v2, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    .line 1055
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1056
    :cond_0
    const-string v2, "4:3 \u7f29\u653e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1057
    sput v7, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1058
    :cond_1
    const-string v2, "16:9\u7f29\u653e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1059
    sput v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1060
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1061
    sput v5, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1062
    :cond_3
    const-string/jumbo v2, "\u7b49\u6bd4\u7f29\u653e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1063
    sput v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    goto :goto_0

    .line 1064
    :cond_4
    const-string/jumbo v2, "\u5168\u5c4f\u88c1\u526a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1065
    const/4 v2, 0x5

    sput v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    .line 1067
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "\u81ea\u52a8"

    const-string v8, "live_core"

    invoke-interface {v2, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1068
    .local v2, "live_core":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1069
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_1

    .line 1070
    :cond_6
    const-string/jumbo v3, "\u7cfb\u7edf"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1071
    sput v7, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_1

    .line 1072
    :cond_7
    const-string v3, "IJK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1073
    sput v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_1

    .line 1074
    :cond_8
    const-string v3, "EXO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1075
    sput v5, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_1

    .line 1076
    :cond_9
    const-string/jumbo v3, "\u963f\u91cc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1077
    sput v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    .line 1079
    :cond_a
    :goto_1
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->qlposition:I

    .line 1080
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setDecode()V

    .line 1081
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getPlayPreferences()V

    .line 1082
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getScreenSize()V

    .line 1083
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->loadViewLayout()V

    .line 1084
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->findViewById()V

    .line 1085
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setListener()V

    .line 1086
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setvvListener()V

    .line 1088
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v3, 0xa

    const-string v4, "event handler thread"

    invoke-direct {v0, v4, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1089
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1090
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    .line 1091
    return-void
.end method

.method private loadViewLayout()V
    .locals 3

    .line 1177
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0a003f

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    .line 1178
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlView:Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    .line 1179
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0a0040

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controlView:Landroid/view/View;

    .line 1180
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controlView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    .line 1181
    return-void
.end method

.method private onMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1815
    if-eqz p1, :cond_b

    .line 1816
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    const/4 v3, 0x7

    if-eq v0, v3, :cond_6

    const/16 v3, 0x19

    if-eq v0, v3, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 1868
    return-void

    .line 1847
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideMenu()V

    .line 1848
    return-void

    .line 1844
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_progress_time:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1845
    return-void

    .line 1864
    :cond_2
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->switchCode()V

    .line 1865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    .line 1866
    return-void

    .line 1850
    :cond_3
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->MaxClientID:I

    if-ge v0, v3, :cond_4

    .line 1851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1853
    :cond_4
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Auto_Source:I

    if-ne v0, v2, :cond_5

    .line 1855
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Switchsource(I)V

    goto :goto_0

    .line 1857
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1858
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Switchsource(I)V

    .line 1862
    :goto_0
    return-void

    .line 1841
    :cond_6
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    .line 1842
    return-void

    .line 1831
    :cond_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    .line 1832
    .local v0, "currPosition":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoLength:I

    .line 1833
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    div-int/lit16 v2, v0, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 1834
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_totalTime:Landroid/widget/TextView;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoLength:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 1835
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoLength:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1836
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    div-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1837
    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 1838
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1839
    return-void

    .line 1818
    .end local v0    # "currPosition":I
    :cond_8
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->MaxClientID:I

    if-ge v0, v3, :cond_9

    .line 1819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 1821
    :cond_9
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Auto_Source:I

    if-ne v0, v2, :cond_a

    .line 1823
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Switchsource(I)V

    goto :goto_1

    .line 1826
    :cond_a
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Switchsource(I)V

    .line 1829
    :goto_1
    return-void

    .line 1871
    :cond_b
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 2882
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2883
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2886
    :cond_0
    return-void
.end method

.method private rewind(I)V
    .locals 7
    .param p1, "postion"    # I

    .line 2194
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 2195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isSwitch:Z

    .line 2196
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2197
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2198
    const/4 v1, 0x0

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 2199
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 2200
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2202
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 2203
    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    sub-int v3, v2, p1

    if-gez v3, :cond_0

    .line 2204
    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->splitCount:I

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 2205
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    aget-object v2, v3, v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    goto :goto_0

    .line 2207
    :cond_0
    sub-int/2addr v2, p1

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    .line 2208
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    .line 2219
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6e90:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2220
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_srcinfo2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->PlayersNumber:I

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->parts:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2223
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 2225
    return-void
.end method

.method private selectScales(I)V
    .locals 5
    .param p1, "paramInt"    # I

    .line 2608
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_6

    .line 2610
    const/4 v1, 0x2

    if-eqz p1, :cond_5

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v4, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 2633
    :cond_0
    invoke-virtual {v0, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    goto :goto_0

    .line 2629
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2630
    goto :goto_0

    .line 2625
    :cond_2
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2626
    goto :goto_0

    .line 2621
    :cond_3
    invoke-virtual {v0, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2622
    goto :goto_0

    .line 2617
    :cond_4
    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2618
    goto :goto_0

    .line 2613
    :cond_5
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2637
    :cond_6
    :goto_0
    return-void
.end method

.method private setDecode()V
    .locals 3

    .line 1095
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "mIsHwDecode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mIsHwDecode:Z

    .line 1097
    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    .line 1098
    return-void

    .line 1100
    :cond_0
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mIsHwDecode:Z

    .line 1101
    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    .line 1102
    return-void
.end method

.method private setListener()V
    .locals 2

    .line 1488
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_menu:Landroid/widget/TextView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$17;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$17;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1496
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1557
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$19;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$19;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1578
    return-void
.end method

.method private setvvListener()V
    .locals 2

    .line 1583
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$20;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$20;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnPlayingBufferCacheListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 1598
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$21;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$21;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 1623
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$22;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 1649
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$23;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 1700
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 1720
    return-void
.end method

.method private showController()V
    .locals 4

    .line 1732
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_time:Landroid/widget/TextView;

    const-string v1, ":"

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getStringTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1734
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1735
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1736
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1737
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1738
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenWidth:I

    sget v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlHeight:I

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1739
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controler:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenWidth:I

    sget v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->controlHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    .line 1741
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1743
    :cond_0
    return-void
.end method

.method private showMenu()V
    .locals 5

    .line 1767
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1768
    new-instance v0, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/LivePlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShow:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vmAdapter:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    .line 1769
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulist:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vmAdapter:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1770
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f0f0001

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1771
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1772
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06025e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuShow:Z

    .line 1774
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isMenuItemShow:Z

    .line 1775
    return-void

    .line 1777
    :cond_0
    const v0, 0x7f0e00e0

    const v1, 0x7f07013f

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1778
    return-void
.end method

.method private showMenus()V
    .locals 10

    .line 1782
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1785
    new-instance v7, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vmAdapters:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    .line 1786
    new-instance v7, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vmAdapterss:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    .line 1787
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulists:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vmAdapters:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1788
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulists:Landroid/widget/ListView;

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1789
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->vmAdapterss:Lcom/shenma/tvlauncher/vod/adapter/LiveMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1790
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1791
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1792
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1793
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenHeight:I

    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1794
    return-void

    .line 1796
    :cond_0
    const v0, 0x7f0e00e0

    const v1, 0x7f07013f

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1797
    return-void
.end method

.method private showVolumeToast(IIILjava/lang/Boolean;)V
    .locals 6
    .param p1, "resId"    # I
    .param p2, "max"    # I
    .param p3, "current"    # I
    .param p4, "isVolume"    # Ljava/lang/Boolean;

    .line 2767
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2768
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 2770
    :cond_0
    invoke-static {p0, p3}, Lcom/shenma/tvlauncher/utils/Utils;->SetLightness(Landroid/app/Activity;I)V

    .line 2775
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    const v2, 0x7f080054

    const v3, 0x7f080053

    if-nez v0, :cond_1

    .line 2776
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    .line 2777
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0a0041

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2778
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2779
    .local v3, "center_image":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 2780
    .local v2, "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2781
    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2782
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2783
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 2785
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "center_progress":Landroid/widget/ProgressBar;
    .end local v3    # "center_image":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 2786
    .restart local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2787
    .restart local v3    # "center_image":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 2788
    .restart local v2    # "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2789
    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2790
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2792
    :goto_1
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    const/16 v5, 0x11

    invoke-virtual {v4, v5, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 2793
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 2794
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2795
    return-void
.end method

.method private startSpeed()V
    .locals 4

    .line 2799
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2800
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2801
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastRxByte:J

    .line 2802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->lastSpeedTime:J

    .line 2803
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2804
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2807
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->epg:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2808
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg1:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 2809
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 2810
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_epg2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2821
    :cond_1
    :goto_0
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->switchs:I

    if-ne v0, v2, :cond_2

    .line 2822
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ll_forfend:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2824
    :cond_2
    return-void
.end method

.method private stopPlayback()V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 819
    :cond_0
    return-void
.end method

.method private switchCode()V
    .locals 4

    .line 2851
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "mIsHwDecode"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2852
    .local v0, "Decode":I
    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 2853
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mIsHwDecode:Z

    .line 2854
    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    goto :goto_0

    .line 2856
    :cond_0
    iput-boolean v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mIsHwDecode:Z

    .line 2857
    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->jmposition:I

    .line 2859
    :goto_0
    if-ne v0, v1, :cond_1

    .line 2860
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 2861
    :cond_1
    if-nez v0, :cond_2

    .line 2862
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 2864
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isPause:Ljava/lang/Boolean;

    .line 2865
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->resume()V

    .line 2866
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 2867
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2868
    return-void
.end method

.method private updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "second"    # I

    .line 1875
    rem-int/lit16 v0, p2, 0xe10

    div-int/lit8 v0, v0, 0x3c

    .line 1876
    .local v0, "mm":I
    rem-int/lit8 v1, p2, 0x3c

    .line 1877
    .local v1, "ss":I
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit16 v3, p2, 0xe10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "%02d:%02d:%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1878
    return-void
.end method

.method private updateprogress()V
    .locals 2

    .line 3014
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3015
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation()V

    .line 3017
    :cond_0
    return-void
.end method

.method private vodlogoloadImg()V
    .locals 2

    .line 2953
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_logo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2954
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->logo_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 2955
    return-void
.end method


# virtual methods
.method public Navigation()V
    .locals 2

    .line 3021
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3022
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1002

    .line 3023
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3024
    return-void
.end method

.method public VodGongGaoError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 2992
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2993
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2996
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    .line 2997
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3000
    :cond_1
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_2

    .line 3001
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3004
    :cond_2
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_3

    .line 3005
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3009
    :cond_3
    return-void
.end method

.method public VodGongGaoResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .line 2959
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2960
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2961
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2962
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2965
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2966
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 2967
    .local v5, "code":I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2968
    .local v6, "msg":Ljava/lang/String;
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 2969
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2970
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2971
    .local v7, "miType":I
    const-string v9, "UTF-8"

    if-ne v7, v8, :cond_0

    .line 2972
    :try_start_1
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2973
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 2974
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2975
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 2976
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2978
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v9, 0x24

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2980
    nop

    .end local v7    # "miType":I
    goto :goto_1

    .line 2981
    :cond_3
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2986
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 2984
    :catch_0
    move-exception v4

    .line 2985
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2987
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public analysisUrlError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 1455
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    .line 1456
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    .line 1462
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    .line 1463
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    .line 1469
    :cond_1
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_2

    .line 1470
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    .line 1476
    :cond_2
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_3

    .line 1477
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    .line 1484
    :cond_3
    return-void
.end method

.method public analysisUrlResponse(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .line 1331
    const-string v0, "IJK"

    const-string v1, "Safe"

    const-string v2, "Core"

    const-string v3, "referer"

    const-string v4, "Referer"

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1332
    .local v5, "jSONObject":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1333
    .local v6, "code":I
    const-string v7, "encrypt"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 1334
    .local v7, "encrypt":I
    const/16 v8, 0xc8

    const/4 v9, 0x1

    if-ne v6, v8, :cond_13

    .line 1335
    const-string v8, "data"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1336
    .local v8, "data":Lorg/json/JSONObject;
    const-string v10, "header"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1337
    .local v10, "header":Lorg/json/JSONObject;
    const-string v11, "User-Agent"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->userAgent:Ljava/lang/String;

    .line 1338
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1339
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Referer:Ljava/lang/String;

    .line 1341
    :cond_0
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1342
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Referer:Ljava/lang/String;

    .line 1344
    :cond_1
    const-string/jumbo v3, "url"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1345
    .local v3, "url":Ljava/lang/String;
    const-string v4, "ClientID"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->ClientID:I

    .line 1346
    const-string v4, "MaxClientID"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->MaxClientID:I

    .line 1347
    const-string v4, "Maxtimeout"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    .line 1348
    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Maxtimeout:I

    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I

    .line 1349
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1350
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    .line 1352
    :cond_2
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1353
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->safe_mode:I

    .line 1355
    :cond_3
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core_mode:I

    if-ne v1, v9, :cond_b

    .line 1358
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    const/4 v2, 0x2

    const/16 v4, 0x63

    if-eq v1, v4, :cond_6

    .line 1360
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->safe_mode:I

    if-ne v0, v9, :cond_4

    .line 1361
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1365
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_5

    .line 1366
    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    .line 1379
    sput v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1381
    :cond_5
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1387
    :cond_6
    iput v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->core:I

    .line 1388
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->vy:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, "live_core":Ljava/lang/String;
    const-string/jumbo v4, "\u81ea\u52a8"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1390
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1391
    :cond_7
    const-string/jumbo v4, "\u7cfb\u7edf"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1392
    sput v9, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1393
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1394
    sput v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1395
    :cond_9
    const-string v0, "EXO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1396
    const/4 v0, 0x3

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    goto :goto_0

    .line 1397
    :cond_a
    const-string/jumbo v0, "\u963f\u91cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1398
    const/4 v0, 0x4

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    .line 1403
    .end local v1    # "live_core":Ljava/lang/String;
    :cond_b
    :goto_0
    const-string v0, "Type"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Type:I

    .line 1404
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setUserAgent(Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Referer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setReferer(Ljava/lang/String;)V

    .line 1406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->headers:Ljava/util/Map;

    .line 1407
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1408
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1409
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1410
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1411
    .local v2, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->headers:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    nop

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 1415
    :cond_c
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Type:I

    if-nez v1, :cond_12

    .line 1416
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->webView:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1418
    const-string v1, ""

    if-ne v7, v9, :cond_f

    .line 1419
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1421
    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Failed:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1422
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decryptBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v2, v1, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 1424
    :cond_d
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Failed:Ljava/lang/String;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    .line 1426
    :goto_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    invoke-virtual {v1, v9}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 1428
    :cond_e
    iput v9, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I

    goto :goto_4

    .line 1431
    :cond_f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1433
    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Failed:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1434
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 1436
    :cond_10
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Failed:Ljava/lang/String;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    .line 1438
    :goto_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    invoke-virtual {v1, v9}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 1440
    :cond_11
    iput v9, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I

    .line 1444
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "url":Ljava/lang/String;
    .end local v8    # "data":Lorg/json/JSONObject;
    .end local v10    # "header":Lorg/json/JSONObject;
    :cond_12
    :goto_4
    goto :goto_5

    .line 1445
    :cond_13
    iput v9, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->timeout:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1449
    .end local v5    # "jSONObject":Lorg/json/JSONObject;
    .end local v6    # "code":I
    .end local v7    # "encrypt":I
    :goto_5
    goto :goto_6

    .line 1447
    :catch_0
    move-exception v0

    .line 1448
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1450
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_6
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1897
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1898
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isBack:Z

    if-eqz v0, :cond_0

    .line 1899
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideControllerDelay()V

    .line 1900
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 1901
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1902
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isBack:Z

    .line 1904
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1906
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1908
    .local v0, "keyCode":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_18

    const/16 v3, 0x42

    if-eq v0, v3, :cond_17

    const/16 v3, 0x52

    if-eq v0, v3, :cond_16

    packed-switch v0, :pswitch_data_0

    const/16 v3, 0x11

    const/16 v4, 0x18

    const/4 v5, 0x3

    const-wide/16 v6, 0xbb8

    const-wide/16 v8, 0x3e8

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 2153
    :pswitch_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    .line 2154
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showMenus()V

    .line 2155
    goto/16 :goto_3

    .line 2130
    :pswitch_1
    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    .line 2131
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    if-nez v1, :cond_2

    .line 2132
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    .line 2133
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$28;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$28;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2139
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    .line 2143
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->fastForward(I)V

    .line 2145
    :cond_2
    return v2

    .line 2147
    :cond_3
    invoke-super {p0, v0, p1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2101
    :pswitch_2
    const/16 v1, 0x15

    if-ne v0, v1, :cond_5

    .line 2102
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    if-nez v1, :cond_4

    .line 2103
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    .line 2104
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$27;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$27;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2110
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    .line 2114
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->rewind(I)V

    .line 2116
    :cond_4
    return v2

    .line 2118
    :cond_5
    invoke-super {p0, v0, p1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2041
    :pswitch_3
    const/16 v6, 0x14

    if-ne v0, v6, :cond_d

    .line 2042
    iget-boolean v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    if-nez v6, :cond_c

    .line 2043
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    .line 2044
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$26;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$26;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2050
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_UP:Z

    .line 2051
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_DOWN:Z

    .line 2052
    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playPreCode:I

    if-eqz v6, :cond_6

    .line 2053
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, -0x1

    invoke-virtual {v1, v5, v3, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 2054
    return v2

    .line 2056
    :cond_6
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    sget-object v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-eq v5, v6, :cond_b

    .line 2057
    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->reverse:I

    if-nez v5, :cond_8

    .line 2058
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    add-int/lit8 v7, v6, 0x1

    if-gt v5, v7, :cond_7

    .line 2059
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    goto :goto_0

    .line 2061
    :cond_7
    add-int/2addr v6, v2

    iput v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    goto :goto_0

    .line 2064
    :cond_8
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    if-gtz v1, :cond_9

    .line 2065
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    goto :goto_0

    .line 2067
    :cond_9
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 2070
    :goto_0
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 2073
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v1, v5, :cond_a

    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    add-int/2addr v1, v2

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    add-int/2addr v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v1, v5, :cond_a

    .line 2074
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    .line 2075
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 2081
    :cond_a
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 2082
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2084
    :cond_b
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    .line 2087
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2089
    :cond_c
    return v2

    .line 2091
    :cond_d
    invoke-super {p0, v0, p1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1966
    :pswitch_4
    const/16 v6, 0x13

    if-ne v0, v6, :cond_15

    .line 1967
    iget-boolean v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    if-nez v6, :cond_14

    .line 1968
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isUpKeyPressed:Z

    .line 1969
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$25;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$25;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1975
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_UP:Z

    .line 1976
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->KEYCODE_DPAD_DOWN:Z

    .line 1977
    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playPreCode:I

    if-eqz v6, :cond_e

    .line 1978
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1979
    return v2

    .line 1981
    :cond_e
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    sget-object v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-eq v5, v6, :cond_13

    .line 1982
    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->reverse:I

    if-nez v5, :cond_10

    .line 1983
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    if-gtz v1, :cond_f

    .line 1984
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    goto :goto_1

    .line 1986
    :cond_f
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    goto :goto_1

    .line 1989
    :cond_10
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    add-int/lit8 v7, v6, 0x1

    if-gt v5, v7, :cond_11

    .line 1990
    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    goto :goto_1

    .line 1992
    :cond_11
    add-int/2addr v6, v2

    iput v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    .line 1995
    :goto_1
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 1999
    add-int/lit8 v1, v1, 0x2

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->videoInfos:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v1, v5, :cond_12

    .line 2000
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    .line 2001
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 2004
    :cond_12
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->SelecteVod(I)V

    .line 2005
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2007
    :cond_13
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    .line 2010
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2012
    :cond_14
    return v2

    .line 2014
    :cond_15
    invoke-super {p0, v0, p1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1919
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->initMessage(I)V

    .line 1920
    goto :goto_3

    .line 2149
    :cond_16
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    .line 2150
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showMenu()V

    .line 2151
    goto :goto_3

    .line 2157
    :cond_17
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    .line 2158
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showMenus()V

    goto :goto_3

    .line 1922
    :cond_18
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    .line 1923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1924
    .local v3, "secondTime":J
    iget-wide v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->firstTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x7d0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_1a

    .line 1926
    iget v5, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->memory_channel:I

    const-string v6, "LIVEs"

    if-ne v5, v2, :cond_19

    .line 1927
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    invoke-static {p0, v6, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1928
    iget v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsplayIndex:I

    const-string v5, "gsLIVEs"

    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 1930
    :cond_19
    invoke-static {p0, v6, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1932
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 1933
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 1934
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->finish()V

    .line 1935
    nop

    .line 2161
    .end local v3    # "secondTime":J
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1937
    .restart local v3    # "secondTime":J
    :cond_1a
    const v1, 0x7f0e0126

    const v5, 0x7f07013e

    invoke-static {p0, v1, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1938
    iput-wide v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->firstTime:J

    .line 1939
    return v2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V
    .locals 8
    .param p1, "reqVo"    # Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    .line 837
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 838
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;

    iget-object v4, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    const-class v5, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;

    .line 839
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v6

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 862
    .local v0, "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 863
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 2757
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800e4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2759
    :cond_0
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isControllerShow:Z

    if-nez v0, :cond_1

    .line 2760
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->showController()V

    .line 2763
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 462
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 463
    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setContentView(I)V

    .line 464
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->stopAutoBrightness(Landroid/app/Activity;)V

    .line 465
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Navigation()V

    .line 469
    :cond_0
    const-string v0, "LIVE"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 470
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->initView()V

    .line 471
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->initData()V

    .line 473
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$3;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->pauseVideoReceiver:Landroid/content/BroadcastReceiver;

    .line 491
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->pauseVideoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.example.MY_ACTION_FINISH_LIVE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 492
    return-void
.end method

.method public onCreateMenu()V
    .locals 3

    .line 2236
    const v0, 0x7f0a0038

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2237
    .local v0, "menuView":Landroid/view/View;
    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulist:Landroid/widget/ListView;

    .line 2238
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 2239
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2240
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 2241
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2243
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$29;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2446
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$30;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2468
    return-void
.end method

.method public onCreateMenus()V
    .locals 3

    .line 2472
    const v0, 0x7f0a003a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2473
    .local v0, "menuView":Landroid/view/View;
    const v1, 0x7f08013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulists:Landroid/widget/ListView;

    .line 2474
    const v1, 0x7f08013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    .line 2475
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    .line 2476
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2477
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 2478
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menupopupWindows:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2480
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulists:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$31;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2496
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulists:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$32;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$32;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2518
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$33;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2584
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->menulistss:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$34;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$34;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2604
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 496
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 497
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 498
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->stopPlayback()V

    .line 499
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 500
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnables:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 505
    :cond_0
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->startAutoBrightness(Landroid/app/Activity;)V

    .line 506
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->overridePendingTransition(II)V

    .line 507
    const-string v0, "LivePlayerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->pauseVideoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 510
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->pauseVideoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 512
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 677
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 678
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause...mPlayerStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LivePlayerActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-static {v1}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 681
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 682
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->releaseWakeLock()V

    .line 683
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 685
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mLastPos:I

    .line 686
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 687
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideController()V

    .line 690
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 691
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 528
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hideMenu()V

    .line 529
    iget v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->playIndex:I

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 531
    const-string v0, "LivePlayerActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 532
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 533
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 534
    .local v1, "m_value":Ljava/util/Map;
    const-string v2, "VOD_PLAY"

    invoke-static {p0, v2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 535
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume...mPlayerStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->acquireWakeLock()V

    .line 540
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 541
    new-instance v3, Landroid/os/HandlerThread;

    const/16 v4, 0xa

    const-string v5, "event handler thread"

    invoke-direct {v3, v5, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 542
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 543
    new-instance v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    .line 547
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mVideoSource:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    sget-object v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-ne v3, v4, :cond_1

    .line 548
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    .line 549
    const-string v3, "onResume... \u53d1\u8d77\u64ad\u653e"

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_1
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$4;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    .line 573
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$5;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$5;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    .line 614
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnables:Ljava/lang/Runnable;

    .line 637
    new-instance v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;-><init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    .line 660
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    sget-object v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    if-ne v0, v3, :cond_3

    .line 661
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    goto :goto_0

    .line 665
    :cond_2
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 666
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 667
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 670
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setProgress(I)V

    .line 671
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 673
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 516
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 517
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 518
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 521
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 522
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 523
    const-string v0, "LivePlayerActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2642
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2643
    .local v0, "result":Z
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2644
    .local v1, "screen":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2645
    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSurfaceYDisplayRange:I

    if-nez v2, :cond_0

    .line 2646
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mSurfaceYDisplayRange:I

    .line 2648
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchY:F

    sub-float/2addr v2, v3

    .line 2649
    .local v2, "y_changed":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchX:F

    sub-float/2addr v3, v4

    .line 2651
    .local v3, "x_changed":F
    div-float v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2652
    .local v4, "coef":F
    iget v5, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v5, v3, v5

    const v6, 0x40228f5c    # 2.54f

    mul-float v5, v5, v6

    .line 2653
    .local v5, "xgesturesize":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "y_changed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "...x_changed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "...coef="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "...xgesturesize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "joychang"

    invoke-static {v7, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    const-string v8, "LivePlayerActivity"

    if-eqz v6, :cond_4

    if-eq v6, v7, :cond_3

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1

    goto :goto_0

    .line 2666
    :cond_1
    const-string v6, "MotionEvent.ACTION_MOVE......."

    invoke-static {v8, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_5

    .line 2668
    const/4 v6, 0x0

    .line 2670
    .local v6, "isSeekTouch":Z
    iget v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchX:F

    iget v10, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenWidth:I

    div-int/2addr v10, v9

    int-to-float v10, v10

    cmpl-float v8, v8, v10

    if-lez v8, :cond_2

    .line 2672
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->doVolumeTouch(F)V

    .line 2674
    :cond_2
    iget v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchX:F

    iget v10, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->screenWidth:I

    div-int/2addr v10, v9

    int-to-float v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    .line 2676
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->doBrightnessTouch(F)V

    goto :goto_0

    .line 2681
    .end local v6    # "isSeekTouch":Z
    :cond_3
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    sget-object v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    .line 2712
    const-string v6, "MotionEvent.ACTION_UP......."

    invoke-static {v8, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2656
    :cond_4
    const-string v6, "MotionEvent.ACTION_DOWN......."

    invoke-static {v8, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    const/4 v6, 0x1

    .line 2658
    .restart local v6    # "isSeekTouch":Z
    const/4 v8, 0x0

    iput v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchAction:I

    .line 2659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchY:F

    .line 2660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mTouchX:F

    .line 2661
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    iput v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->maxVolume:I

    .line 2662
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    iput v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->currentVolume:I

    .line 2663
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetLightness(Landroid/app/Activity;)F

    move-result v8

    iput v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->Lightness:F

    .line 2664
    nop

    .line 2715
    .end local v6    # "isSeekTouch":Z
    :cond_5
    :goto_0
    return v7
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "Client"    # Ljava/lang/String;

    .line 1225
    const-string v0, "Submission_method"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1227
    .local v0, "Submission_method":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1229
    .local v1, "urlEncode":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->analysisUrl(Ljava/lang/String;I)V

    .line 1230
    return-void
.end method
