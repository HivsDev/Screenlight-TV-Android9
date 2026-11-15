.class public Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$WindowMessageID;,
        Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;,
        Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;
    }
.end annotation


# static fields
.field public static Failed:Ljava/lang/String; = null

.field public static Sd:Landroid/content/SharedPreferences; = null

.field private static final TAG:Ljava/lang/String; = "VideoPlayerActivity"

.field private static final TIME:I = 0x1770

.field private static final TOUCH_BRIGHTNESS:I = 0x2

.field private static final TOUCH_NONE:I = 0x0

.field private static final TOUCH_SEEK:I = 0x3

.field private static final TOUCH_VOLUME:I = 0x1

.field public static bsposition:I

.field private static controlHeight:I

.field public static currentPosition:J

.field public static hmblposition:I

.field public static jmposition:I

.field private static menutype:I

.field public static nhposition:I

.field public static phszposition:I

.field public static ptposition:I

.field public static pwposition:I

.field public static qxdposition:I

.field private static rxByte:Ljava/lang/String;

.field public static xjposition:I


# instance fields
.field private Ad_block:I

.field private Ad_block_down:Landroid/widget/LinearLayout;

.field private Ad_block_right:Landroid/widget/LinearLayout;

.field private Ad_block_up:Landroid/widget/LinearLayout;

.field private Adblock:I

.field private Auto_Source:I

.field private Client:Ljava/lang/String;

.field private ClientID:I

.field private Conditions:Ljava/lang/String;

.field private EwmHeight:I

.field private EwmWidth:I

.field private Exclude_content:Ljava/lang/String;

.field private Fburl:Ljava/lang/String;

.field private Lightness:F

.field private MaxClientID:I

.field private Maxtimeout:I

.field private Moviesize:I

.field private Navigation_mode:I

.field private Number:I

.field private Numbermax:I

.field private Play_timeout_debug:I

.field private PlayersNumber:I

.field private Referer:Ljava/lang/String;

.field private final SYNC_Playing:Ljava/lang/Object;

.field private Sniff_debug_mode:I

.field private Trytime:I

.field private Tvplaysize:I

.field private Type:I

.field Vod_Notice_starting_time:I

.field private albumPic:Ljava/lang/String;

.field private collectionTime:I

.field private controlView:Landroid/view/View;

.field private controler:Landroid/widget/PopupWindow;

.field private core:I

.field private core_mode:I

.field private currentPositions:J

.field private currentVolume:I

.field private dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

.field private domain:Ljava/lang/String;

.field private firstTime:J

.field private firstTimen:J

.field private firstTimes:J

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

.field private headposition:I

.field private iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

.field private ib_playStatus:Landroid/widget/ImageButton;

.field private isBack:Z

.field private isCodeBlockExecuted:Z

.field private isControllerShow:Z

.field private isDestroy:Ljava/lang/Boolean;

.field private isDialogShowing:Z

.field private isLast:Ljava/lang/Boolean;

.field private isMenuItemShow:Z

.field private isMenuShow:Z

.field private isNext:Ljava/lang/Boolean;

.field private isPause:Ljava/lang/Boolean;

.field private isSwitch:Z

.field private jump_time:Ljava/lang/String;

.field private jump_time_end:Ljava/lang/String;

.field private jxurl:Ljava/lang/String;

.field private jxurls:I

.field private lastRxByte:J

.field private lastSpeedTime:J

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation
.end field

.field private load:I

.field private logo_url:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsHwDecode:Z

.field private mLastPos:I

.field private mLastPos2:I

.field private mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

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

.field private menulist:Landroid/widget/ListView;

.field private menupopupWindow:Landroid/widget/PopupWindow;

.field private nextlink:Ljava/lang/String;

.field private playIndex:I

.field private playPreCode:I

.field private position:I

.field private ptpositions:Z

.field private safe_mode:I

.field private screenHeight:I

.field private screenWidth:I

.field private seekBar:Landroid/widget/SeekBar;

.field private seizing:I

.field private seizing_time:I

.field private seizings:I

.field private source:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrl;",
            ">;"
        }
    .end annotation
.end field

.field private sourceId:Ljava/lang/String;

.field private sp:Landroid/content/SharedPreferences;

.field private speed:J

.field private speedRunnable:Ljava/lang/Runnable;

.field private speedRunnabless:Ljava/lang/Runnable;

.field private time:Ljava/lang/String;

.field private time_controlView:Landroid/view/View;

.field private time_controler:Landroid/widget/PopupWindow;

.field private timeout:I

.field private tv_currentTime:Landroid/widget/TextView;

.field private tv_logo:Landroid/widget/ImageView;

.field private tv_menu:Landroid/widget/TextView;

.field private tv_mv_name:Landroid/widget/TextView;

.field private tv_mv_speed:Landroid/widget/TextView;

.field private tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

.field private tv_notice_root:Landroid/widget/LinearLayout;

.field private tv_progress_time:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_totalTime:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private videoLength:I

.field private vipstate:I

.field private vmAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

.field vod_caton_check:I

.field private vodname:Ljava/lang/String;

.field private vodstate:Ljava/lang/String;

.field private vodtype:Ljava/lang/String;

.field private webHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 132
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    .line 133
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    .line 134
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->phszposition:I

    .line 135
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->qxdposition:I

    .line 136
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 137
    const/4 v1, 0x2

    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    .line 138
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 139
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 140
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    .line 141
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlHeight:I

    .line 367
    const-string v0, ""

    sput-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 125
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SYNC_Playing:Ljava/lang/Object;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->albumPic:Ljava/lang/String;

    .line 147
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    .line 153
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTime:J

    .line 154
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 156
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isBack:Z

    .line 157
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    .line 158
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 159
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isLast:Ljava/lang/Boolean;

    .line 160
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuItemShow:Z

    .line 161
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuShow:Z

    .line 162
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isNext:Ljava/lang/Boolean;

    .line 163
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isPause:Ljava/lang/Boolean;

    .line 164
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isSwitch:Z

    .line 167
    iput-wide v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTimes:J

    .line 168
    iput-wide v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTimen:J

    .line 171
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 172
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 174
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mIsHwDecode:Z

    .line 175
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 176
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos2:I

    .line 180
    sget-object v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 184
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    .line 188
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mVideoSource:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 194
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 218
    new-instance v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$1;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$1;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 229
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    .line 230
    new-instance v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    .line 329
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    .line 330
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    .line 331
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->MaxClientID:I

    .line 332
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Type:I

    .line 334
    const-string v2, "Logo_url"

    invoke-static {p0, v2, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->logo_url:Ljava/lang/String;

    .line 336
    const-string v0, "Client"

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Client:Ljava/lang/String;

    .line 338
    const-string v0, "Auto_Source"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Auto_Source:I

    .line 340
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurls:I

    .line 347
    const-string v0, "Sniff_debug_mode"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sniff_debug_mode:I

    .line 349
    const-string v0, "Play_timeout_debug"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Play_timeout_debug:I

    .line 352
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation_mode:I

    .line 354
    const-string v0, "Vod_Notice_starting_time"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Vod_Notice_starting_time:I

    .line 358
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 359
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->load:I

    .line 360
    const/16 v0, 0x12c

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Maxtimeout:I

    .line 361
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Maxtimeout:I

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    .line 364
    sget-object v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->source:Ljava/util/List;

    .line 365
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDialogShowing:Z

    .line 366
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isCodeBlockExecuted:Z

    .line 368
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptpositions:Z

    .line 375
    const/16 v0, 0x63

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    .line 376
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->safe_mode:I

    .line 378
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    .line 379
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    .line 385
    const-string v0, "core_mode"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core_mode:I

    .line 390
    const-string v0, "Adblock"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    .line 397
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->EwmWidth:I

    .line 398
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->EwmHeight:I

    .line 399
    const/16 v0, 0x78

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Moviesize:I

    .line 400
    const/16 v0, 0x46

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Tvplaysize:I

    .line 401
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headposition:I

    .line 414
    const-string/jumbo v0, "vod_caton_check"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vod_caton_check:I

    .line 419
    const-string v0, "seizing_time"

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing_time:I

    return-void
.end method

.method private PrepareVodData(I)V
    .locals 4
    .param p1, "postion"    # I

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isSwitch:Z

    .line 677
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    if-lt v1, v2, :cond_2

    .line 678
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    const-string v2, "MOVIE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 679
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 680
    .local v0, "textView":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    .end local v0    # "textView":Landroid/widget/TextView;
    nop

    .line 684
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->url:Ljava/lang/String;

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vodUrl=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 687
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    .line 689
    :cond_2
    return-void
.end method

.method private PrepareVodDataa()V
    .locals 5

    .line 785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    .line 786
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    if-ge v0, v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->source:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    .line 788
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->source:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v0, "arrayList":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 793
    new-instance v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    invoke-direct {v2}, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;-><init>()V

    .line 794
    .local v2, "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    .line 795
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    .line 796
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    .end local v2    # "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 799
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_3

    .line 802
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v1, "arrayLista":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 804
    new-instance v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    invoke-direct {v3}, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;-><init>()V

    .line 805
    .local v3, "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    .line 806
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->list:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    .line 807
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    .end local v3    # "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 809
    .end local v2    # "i":I
    :cond_2
    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    .line 810
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    .line 811
    .end local v1    # "arrayLista":Ljava/util/ArrayList;
    goto :goto_3

    .line 813
    :cond_3
    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    .line 816
    :goto_3
    return-void
.end method

.method private ResetMovieTime()V
    .locals 2

    .line 2632
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 2633
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_totalTime:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 2634
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2635
    return-void
.end method

.method private SelecteVod(I)V
    .locals 5
    .param p1, "postion"    # I

    .line 694
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string v2, "IJK"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "playcore":Ljava/lang/String;
    const-string/jumbo v1, "\u81ea\u52a8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 696
    sput v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 697
    :cond_0
    const-string/jumbo v1, "\u7cfb\u7edf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    sput v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 700
    const/4 v1, 0x2

    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 701
    :cond_2
    const-string v1, "EXO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 702
    const/4 v1, 0x3

    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 703
    :cond_3
    const-string/jumbo v1, "\u963f\u91cc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 704
    const/4 v1, 0x4

    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    .line 706
    :cond_4
    :goto_0
    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 707
    iput-boolean v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isSwitch:Z

    .line 708
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->stopPlayback()V

    .line 709
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 710
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 712
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    const-string v2, "MOVIE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_5

    goto :goto_1

    .line 716
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 713
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 714
    .local v1, "textView":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    .end local v1    # "textView":Landroid/widget/TextView;
    nop

    .line 718
    :goto_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->url:Ljava/lang/String;

    .line 719
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 721
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    return-void
.end method

.method private Sniffing(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 1556
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1557
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1612
    return-void
.end method

.method private Switchsource(I)V
    .locals 8
    .param p1, "msg"    # I

    .line 820
    const v0, 0x7f07013e

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 821
    const v1, 0x7f0e0197

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 822
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 823
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->finish()V

    .line 825
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_3

    .line 827
    const-string v4, "Fb_type"

    invoke-static {p0, v4, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const v5, 0x7f0e0078

    const-string v6, "-"

    const v7, 0x7f0e0189

    if-nez v4, :cond_1

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v4, v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showUpdateDialog(Ljava/lang/String;Landroid/content/Context;)V

    .line 829
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    goto/16 :goto_1

    .line 831
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v6, v6, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v0}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 832
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/lit8 v5, v4, 0x1

    if-le v0, v5, :cond_2

    .line 834
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 836
    add-int/2addr v4, v3

    iput v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 837
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 838
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    .line 839
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 840
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 842
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 843
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    .line 844
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    .line 846
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 848
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    goto :goto_0

    .line 850
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 851
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->finish()V

    .line 853
    :goto_0
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isCodeBlockExecuted:Z

    .line 855
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v4, v4, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getFailreport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_3
    :goto_1
    if-ne p1, v3, :cond_7

    .line 860
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Number:I

    if-le v0, v3, :cond_6

    .line 861
    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 862
    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    if-lt v4, v0, :cond_4

    .line 863
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    goto :goto_3

    .line 865
    :cond_4
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    add-int/lit8 v4, v1, 0x1

    if-le v4, v0, :cond_5

    .line 866
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    .line 867
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    goto :goto_2

    .line 869
    :cond_5
    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    .line 870
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 872
    :goto_2
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PrepareVodDataa()V

    goto :goto_3

    .line 875
    :cond_6
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    .line 879
    :cond_7
    :goto_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 880
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    .line 881
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Number:I

    const v1, 0x7f070140

    if-le v0, v3, :cond_a

    .line 882
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 883
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    if-lt v2, v0, :cond_8

    .line 885
    const-string/jumbo v0, "\u6700\u5927"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_5

    .line 887
    :cond_8
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    add-int/lit8 v2, v1, 0x1

    if-le v2, v0, :cond_9

    .line 888
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    .line 889
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    goto :goto_4

    .line 891
    :cond_9
    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    .line 892
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 894
    :goto_4
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PrepareVodDataa()V

    goto :goto_5

    .line 898
    :cond_a
    const-string/jumbo v0, "\u5355\u6e90"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 902
    :cond_b
    :goto_5
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Landroid/os/Message;

    .line 125
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->onMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->startSpeed()V

    return-void
.end method

.method static synthetic access$10000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuShow:Z

    return v0
.end method

.method static synthetic access$10002(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuShow:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuItemShow:Z

    return v0
.end method

.method static synthetic access$10102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuItemShow:Z

    return p1
.end method

.method static synthetic access$102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 125
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    return-object p1
.end method

.method static synthetic access$10200()I
    .locals 1

    .line 125
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menutype:I

    return v0
.end method

.method static synthetic access$10202(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 125
    sput p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menutype:I

    return p0
.end method

.method static synthetic access$10300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menulist:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$10402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isSwitch:Z

    return p1
.end method

.method static synthetic access$10500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setDecode()V

    return-void
.end method

.method static synthetic access$10700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getPlayPreferences()V

    return-void
.end method

.method static synthetic access$10800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setJump(I)V

    return-void
.end method

.method static synthetic access$10900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setJump_end(I)V

    return-void
.end method

.method static synthetic access$11000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptpositions:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->endSpeed()V

    return-void
.end method

.method static synthetic access$1300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->selectScales(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ResetMovieTime()V

    return-void
.end method

.method static synthetic access$1500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Trytime:I

    return v0
.end method

.method static synthetic access$1600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getVodGongGao()V

    return-void
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->logo_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodlogoloadImg()V

    return-void
.end method

.method static synthetic access$2200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_logo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurls:I

    return v0
.end method

.method static synthetic access$2402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurls:I

    return p1
.end method

.method static synthetic access$2500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 125
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webHeaders:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Fburl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Fburl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .locals 1

    .line 125
    sget-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->rxByte:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 125
    sput-object p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->rxByte:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->load:I

    return v0
.end method

.method static synthetic access$3002(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->load:I

    return p1
.end method

.method static synthetic access$302(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mVideoSource:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Play_timeout_debug:I

    return v0
.end method

.method static synthetic access$3200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    return v0
.end method

.method static synthetic access$3300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->MaxClientID:I

    return v0
.end method

.method static synthetic access$3400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Maxtimeout:I

    return v0
.end method

.method static synthetic access$3500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    return v0
.end method

.method static synthetic access$3502(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    return p1
.end method

.method static synthetic access$3600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Client:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Auto_Source:I

    return v0
.end method

.method static synthetic access$3800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lastRxByte:J

    return-wide v0
.end method

.method static synthetic access$3902(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # J

    .line 125
    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lastRxByte:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lastSpeedTime:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # J

    .line 125
    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lastSpeedTime:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speed:J

    return-wide v0
.end method

.method static synthetic access$4102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # J

    .line 125
    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speed:J

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPositions:J

    return-wide v0
.end method

.method static synthetic access$4302(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # J

    .line 125
    iput-wide p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPositions:J

    return-wide p1
.end method

.method static synthetic access$4400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    return v0
.end method

.method static synthetic access$4402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    return p1
.end method

.method static synthetic access$4500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Number:I

    return v0
.end method

.method static synthetic access$4600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizings:I

    return v0
.end method

.method static synthetic access$4602(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizings:I

    return p1
.end method

.method static synthetic access$4700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    return v0
.end method

.method static synthetic access$4702(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    return p1
.end method

.method static synthetic access$4800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing_time:I

    return v0
.end method

.method static synthetic access$4900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SYNC_Playing:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    return v0
.end method

.method static synthetic access$5000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    return v0
.end method

.method static synthetic access$502(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    return p1
.end method

.method static synthetic access$5100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headposition:I

    return v0
.end method

.method static synthetic access$5200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    return v0
.end method

.method static synthetic access$5202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    return p1
.end method

.method static synthetic access$5300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos2:I

    return p1
.end method

.method static synthetic access$5500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vipstate:I

    return p1
.end method

.method static synthetic access$5700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    return v0
.end method

.method static synthetic access$5902(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    return p1
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PrepareVodData(I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->albumPic:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nextlink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Conditions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Exclude_content:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideController()V

    return-void
.end method

.method static synthetic access$6800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showMenu()V

    return-void
.end method

.method static synthetic access$6900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    return v0
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->cancelDelayHide()V

    return-void
.end method

.method static synthetic access$7100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    return-void
.end method

.method static synthetic access$7200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideControllerDelay()V

    return-void
.end method

.method static synthetic access$7300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideMenu()V

    return-void
.end method

.method static synthetic access$7400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # I

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    return-void
.end method

.method static synthetic access$7500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateprogress(I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isCodeBlockExecuted:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isCodeBlockExecuted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    return v0
.end method

.method static synthetic access$8102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation_mode:I

    return p1
.end method

.method static synthetic access$8200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    return v0
.end method

.method static synthetic access$8300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block_up:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block_down:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block_right:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenWidth:I

    return v0
.end method

.method static synthetic access$8700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenHeight:I

    return v0
.end method

.method static synthetic access$8800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->EwmWidth:I

    return v0
.end method

.method static synthetic access$8900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->EwmHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Moviesize:I

    return v0
.end method

.method static synthetic access$9100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Tvplaysize:I

    return v0
.end method

.method static synthetic access$9202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    return p1
.end method

.method static synthetic access$9300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isNext:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 125
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isNext:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$9400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isLast:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$9402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 125
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isLast:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$9500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isPause:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$9502(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 125
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isPause:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$9600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroy:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # I

    .line 125
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    return-void
.end method

.method static synthetic access$9902(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDialogShowing:Z

    return p1
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 3284
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 3285
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3286
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x2000000a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3287
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3290
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private analysisUrl(Ljava/lang/String;I)V
    .locals 24
    .param p1, "urls"    # Ljava/lang/String;
    .param p2, "way"    # I

    .line 1241
    move-object/from16 v13, p0

    move/from16 v14, p2

    const-string v0, "Timeout"

    const/16 v1, 0x19

    invoke-static {v13, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    .line 1243
    .local v15, "Timeout":I
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v13, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1245
    iget-object v0, v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string/jumbo v2, "userName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1246
    .local v12, "account":Ljava/lang/String;
    iget-object v0, v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "passWord"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1247
    .local v10, "password":Ljava/lang/String;
    iget-object v0, v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "ckinfo"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1248
    .local v11, "token":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1249
    .local v9, "machineid":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/shenma/tvlauncher/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 1250
    .local v7, "value":D
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v2, v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1253
    .local v6, "name":Ljava/lang/String;
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez v14, :cond_0

    .line 1254
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

    const-string v1, "&line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&new=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1255
    .local v16, "url":Ljava/lang/String;
    new-instance v17, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$9;

    const/4 v2, 0x0

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$7;

    invoke-direct {v1, v13}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$7;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;

    invoke-direct {v0, v13}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$8;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

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

    invoke-direct/range {v0 .. v8}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$9;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    mul-int/lit16 v2, v15, 0x3e8

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v7, v8}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 1286
    iget-object v1, v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 1253
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

    .line 1291
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":D
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v22    # "value":D
    :goto_0
    const/4 v0, 0x1

    if-ne v14, v0, :cond_1

    .line 1292
    move-object/from16 v3, p1

    .line 1293
    .local v3, "url":Ljava/lang/String;
    new-instance v16, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;

    const/4 v2, 0x1

    new-instance v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$10;

    invoke-direct {v4, v13}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$10;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$11;

    invoke-direct {v5, v13}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$11;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

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

    invoke-direct/range {v0 .. v12}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 1326
    .restart local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    mul-int/lit16 v2, v15, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 1329
    iget-object v1, v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_1

    .line 1291
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

    .line 1333
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

    .line 2236
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2237
    return-void
.end method

.method private doBrightnessTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 3122
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 3123
    return-void

    .line 3124
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    .line 3125
    neg-float v0, p1

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 3126
    .local v0, "delta":F
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Lightness:F

    add-float/2addr v1, v0

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 3127
    .local v1, "vol":I
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 3128
    const/4 v2, 0x5

    const/16 v3, 0xff

    const v4, 0x7f0700f0

    const/4 v5, 0x0

    if-ge v1, v2, :cond_1

    .line 3129
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v4, v3, v5, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 3131
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v4, v3, v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 3133
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Lightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "....vol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "...delta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "....mSurfaceYDisplayRange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doBrightnessTouch"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    :cond_2
    return-void
.end method

.method private doSeekTouch(FFZ)V
    .locals 9
    .param p1, "coef"    # F
    .param p2, "gesturesize"    # F
    .param p3, "seek"    # Z

    .line 3139
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 3140
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_5

    .line 3141
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    .line 3142
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 3143
    .local v0, "time":I
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x41224f8000000000L    # 600000.0

    const/high16 v5, 0x41000000    # 8.0f

    div-float v5, p2, v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v5, v5, v3

    const-wide v3, 0x40a7700000000000L    # 3000.0

    add-double/2addr v5, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 3144
    .local v1, "jump":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jump="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doSeekTouch"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    if-lez v1, :cond_1

    add-int v2, v0, v1

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    if-le v2, v3, :cond_1

    .line 3146
    sub-int v1, v3, v0

    .line 3148
    :cond_1
    if-gez v1, :cond_2

    add-int v2, v0, v1

    if-gez v2, :cond_2

    .line 3149
    neg-int v1, v0

    .line 3151
    :cond_2
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    if-lez v2, :cond_5

    .line 3152
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_progress_time:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3153
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_progress_time:Landroid/widget/TextView;

    add-int v4, v0, v1

    invoke-direct {p0, v2, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 3154
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3155
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3157
    if-eqz p3, :cond_5

    .line 3159
    add-int v2, v0, v1

    mul-int/lit16 v2, v2, 0x3e8

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    if-le v2, v4, :cond_4

    .line 3160
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/lit8 v5, v4, 0x1

    if-le v2, v5, :cond_3

    .line 3161
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 3163
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 3164
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 3165
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    .line 3166
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 3167
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 3169
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 3170
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    .line 3171
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    .line 3173
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3175
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    goto :goto_0

    .line 3177
    :cond_3
    const v2, 0x7f070140

    const-string/jumbo v3, "\u5df2\u662f\u6700\u540e\u4e00\u96c6\u4e86!"

    invoke-static {p0, v3, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3180
    :cond_4
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    add-int v3, v0, v1

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 3181
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3187
    .end local v0    # "time":I
    .end local v1    # "jump":I
    :cond_5
    :goto_0
    return-void
.end method

.method private doVolumeTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 3103
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 3104
    return-void

    .line 3105
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    .line 3106
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    int-to-float v0, v0

    div-float v0, p1, v0

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    neg-int v0, v0

    .line 3107
    .local v0, "delta":I
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentVolume:I

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3108
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

    .line 3109
    if-eqz v0, :cond_3

    .line 3110
    if-ge v3, v1, :cond_1

    .line 3111
    const v1, 0x7f0700f3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 3112
    :cond_1
    if-lt v3, v1, :cond_2

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    div-int/lit8 v4, v1, 0x2

    if-ge v3, v4, :cond_2

    .line 3113
    const v4, 0x7f0700f2

    invoke-direct {p0, v4, v1, v3, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 3114
    :cond_2
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    div-int/lit8 v4, v1, 0x2

    if-lt v3, v4, :cond_3

    .line 3115
    const v4, 0x7f0700f1

    invoke-direct {p0, v4, v1, v3, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 3118
    :cond_3
    :goto_0
    return-void
.end method

.method private endSpeed()V
    .locals 2

    .line 3252
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->load:I

    .line 3253
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3254
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3255
    return-void
.end method

.method private fastForward()V
    .locals 4

    .line 2605
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    div-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    div-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v1, v3

    const/16 v3, 0x1e

    if-le v1, v3, :cond_0

    .line 2606
    add-int/lit16 v2, v2, 0x7530

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    goto :goto_0

    .line 2609
    :cond_0
    add-int/lit16 v0, v0, -0x2710

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 2611
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isBack:Z

    .line 2612
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->cancelDelayHide()V

    .line 2613
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2614
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2615
    return-void
.end method

.method private findViewById()V
    .locals 3

    .line 1068
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block_up:Landroid/widget/LinearLayout;

    .line 1069
    const/high16 v0, 0x7f080000

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block_down:Landroid/widget/LinearLayout;

    .line 1070
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block_right:Landroid/widget/LinearLayout;

    .line 1072
    const v0, 0x7f080301

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    .line 1073
    const v0, 0x7f080290

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_logo:Landroid/widget/ImageView;

    .line 1075
    const v0, 0x7f0802a0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    .line 1076
    const v0, 0x7f08029f

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    .line 1077
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0801d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 1078
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f080257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    .line 1079
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0802b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_totalTime:Landroid/widget/TextView;

    .line 1080
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f080294

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_menu:Landroid/widget/TextView;

    .line 1081
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0800e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    .line 1082
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    const v0, 0x7f08018c

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    .line 1084
    const v0, 0x7f0802a1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_progress_time:Landroid/widget/TextView;

    .line 1085
    const v0, 0x7f080297

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    .line 1086
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controlView:Landroid/view/View;

    const v1, 0x7f0802b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_time:Landroid/widget/TextView;

    .line 1087
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controlView:Landroid/view/View;

    const v1, 0x7f080296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    .line 1088
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setVisibility(I)V

    .line 1089
    const/4 v0, 0x0

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 1090
    const-string v0, "libijkplayer.so"

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 1091
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 1092
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const v1, 0x7f0800e2

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setHudView(Landroid/widget/TableLayout;)V

    .line 1093
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "mIsHwDecode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1095
    .local v0, "Decode":I
    if-ne v0, v1, :cond_0

    .line 1096
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1097
    :cond_0
    if-nez v0, :cond_1

    .line 1098
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 1100
    :cond_1
    :goto_0
    return-void
.end method

.method private getFailreport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "vodname"    # Ljava/lang/String;
    .param p2, "episode"    # Ljava/lang/String;
    .param p3, "line"    # Ljava/lang/String;

    .line 2392
    move-object v10, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v10, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 2393
    iget-object v0, v10, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string/jumbo v2, "userName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2394
    .local v11, "account":Ljava/lang/String;
    move-object v8, p1

    .line 2395
    .local v8, "name":Ljava/lang/String;
    move-object/from16 v9, p2

    .line 2396
    .local v9, "vodepisode":Ljava/lang/String;
    move-object/from16 v7, p3

    .line 2397
    .local v7, "vodline":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ot:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2399
    .local v12, "Fb_url":Ljava/lang/String;
    new-instance v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$26;

    new-instance v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$24;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$25;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    const/4 v2, 0x1

    move-object v0, v13

    move-object v1, p0

    move-object v3, v12

    move-object v6, v11

    invoke-direct/range {v0 .. v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$26;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v10, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 2430
    return-void
.end method

.method private getJumpdata()V
    .locals 18

    .line 969
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "10"

    const-string v4, "0"

    const/4 v5, -0x1

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "240"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "180"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_3
    const-string v2, "150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_4
    const-string v2, "120"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_5
    const-string v2, "90"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v2, "60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_7
    const-string v2, "30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v2, "20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_9
    const-string v2, "15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1007
    sput v17, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    goto :goto_2

    .line 1004
    :pswitch_0
    sput v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1005
    goto :goto_2

    .line 1001
    :pswitch_1
    sput v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 1002
    goto :goto_2

    .line 998
    :pswitch_2
    sput v8, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 999
    goto :goto_2

    .line 995
    :pswitch_3
    sput v9, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 996
    goto :goto_2

    .line 992
    :pswitch_4
    sput v10, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 993
    goto :goto_2

    .line 989
    :pswitch_5
    sput v11, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 990
    goto :goto_2

    .line 986
    :pswitch_6
    sput v12, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 987
    goto :goto_2

    .line 983
    :pswitch_7
    sput v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 984
    goto :goto_2

    .line 980
    :pswitch_8
    sput v14, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 981
    goto :goto_2

    .line 977
    :pswitch_9
    sput v15, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 978
    goto :goto_2

    .line 974
    :pswitch_a
    sput v16, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 975
    goto :goto_2

    .line 971
    :pswitch_b
    sput v17, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptposition:I

    .line 972
    nop

    .line 1011
    :goto_2
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :cond_1
    goto/16 :goto_3

    :sswitch_c
    const-string v2, "300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v5, 0xb

    goto/16 :goto_3

    :sswitch_d
    const-string v2, "240"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v5, 0xa

    goto/16 :goto_3

    :sswitch_e
    const-string v2, "180"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v5, 0x9

    goto :goto_3

    :sswitch_f
    const-string v2, "150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v5, 0x8

    goto :goto_3

    :sswitch_10
    const-string v2, "120"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x7

    goto :goto_3

    :sswitch_11
    const-string v2, "90"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x6

    goto :goto_3

    :sswitch_12
    const-string v2, "60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x5

    goto :goto_3

    :sswitch_13
    const-string v2, "30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x4

    goto :goto_3

    :sswitch_14
    const-string v2, "20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x3

    goto :goto_3

    :sswitch_15
    const-string v2, "15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x2

    goto :goto_3

    :sswitch_16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    goto :goto_3

    :sswitch_17
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    :goto_3
    packed-switch v5, :pswitch_data_1

    .line 1049
    sput v17, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    goto :goto_4

    .line 1046
    :pswitch_c
    sput v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1047
    goto :goto_4

    .line 1043
    :pswitch_d
    sput v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1044
    goto :goto_4

    .line 1040
    :pswitch_e
    sput v8, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1041
    goto :goto_4

    .line 1037
    :pswitch_f
    sput v9, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1038
    goto :goto_4

    .line 1034
    :pswitch_10
    sput v10, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1035
    goto :goto_4

    .line 1031
    :pswitch_11
    sput v11, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1032
    goto :goto_4

    .line 1028
    :pswitch_12
    sput v12, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1029
    goto :goto_4

    .line 1025
    :pswitch_13
    sput v13, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1026
    goto :goto_4

    .line 1022
    :pswitch_14
    sput v14, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1023
    goto :goto_4

    .line 1019
    :pswitch_15
    sput v15, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1020
    goto :goto_4

    .line 1016
    :pswitch_16
    sput v16, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1017
    goto :goto_4

    .line 1013
    :pswitch_17
    sput v17, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->pwposition:I

    .line 1014
    nop

    .line 1052
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_b
        0x61f -> :sswitch_a
        0x624 -> :sswitch_9
        0x63e -> :sswitch_8
        0x65d -> :sswitch_7
        0x6ba -> :sswitch_6
        0x717 -> :sswitch_5
        0xbe2f -> :sswitch_4
        0xbe8c -> :sswitch_3
        0xbee9 -> :sswitch_2
        0xc22e -> :sswitch_1
        0xc573 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_17
        0x61f -> :sswitch_16
        0x624 -> :sswitch_15
        0x63e -> :sswitch_14
        0x65d -> :sswitch_13
        0x6ba -> :sswitch_12
        0x717 -> :sswitch_11
        0xbe2f -> :sswitch_10
        0xbe8c -> :sswitch_f
        0xbee9 -> :sswitch_e
        0xc22e -> :sswitch_d
        0xc573 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private getPlayPreferences()V
    .locals 3

    .line 1056
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "playPre"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playPreCode:I

    .line 1057
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playPreCode:I

    if-nez v0, :cond_0

    .line 1059
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->phszposition:I

    goto :goto_0

    .line 1062
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->phszposition:I

    .line 1064
    :goto_0
    return-void
.end method

.method private getScreenSize()V
    .locals 2

    .line 2204
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2205
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenHeight:I

    .line 2206
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenWidth:I

    .line 2207
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenHeight:I

    div-int/lit8 v1, v1, 0x4

    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlHeight:I

    .line 2208
    return-void
.end method

.method private getVodGongGao()V
    .locals 21

    .line 3439
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 3440
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3441
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3442
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3443
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3444
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3445
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3446
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 3447
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$31;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=vod_notice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$29;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$29;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$30;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$30;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$31;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3488
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 3490
    return-void
.end method

.method private hideController()V
    .locals 1

    .line 2227
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2228
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2229
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    .line 2232
    :cond_0
    return-void
.end method

.method private hideControllerDelay()V
    .locals 4

    .line 2241
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->cancelDelayHide()V

    .line 2242
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2243
    return-void
.end method

.method private hideMenu()V
    .locals 2

    .line 2262
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2263
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation()V

    .line 2265
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2266
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2268
    :cond_1
    return-void
.end method

.method private initData()V
    .locals 9

    .line 736
    sget-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sd:Landroid/content/SharedPreferences;

    const-string v1, "arrayList"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "jsonString":Ljava/lang/String;
    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$6;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 738
    .local v1, "listType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 739
    .local v2, "recoveredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VideoInfo;>;"
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 740
    .local v3, "intent":Landroid/content/Intent;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    .line 742
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    .line 743
    const-string v4, "albumPic"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->albumPic:Ljava/lang/String;

    .line 744
    const-string/jumbo v4, "vodtype"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    .line 745
    const-string/jumbo v4, "videoId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoId:Ljava/lang/String;

    .line 746
    const-string/jumbo v4, "vodname"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    .line 747
    const-string v4, "domain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    .line 748
    const-string v4, "nextlink"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nextlink:Ljava/lang/String;

    .line 749
    const-string/jumbo v4, "vodstate"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodstate:Ljava/lang/String;

    .line 750
    const-string v4, "sourceId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    .line 751
    const/4 v4, 0x0

    const-string v5, "playIndex"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 752
    const-string v5, "collectionTime"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 754
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v5, "arrayLista":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->source:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 756
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->source:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 758
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Number:I

    .line 759
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 760
    const-string/jumbo v6, "vod_Logo"

    invoke-static {p0, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 761
    .local v4, "vod_Logo":I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 762
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 765
    :cond_1
    iget v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 766
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 767
    const v6, 0x7f0e017f

    const v7, 0x7f07013e

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 768
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 769
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->finish()V

    .line 770
    return-void

    .line 773
    :cond_2
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    const-string v8, "MOVIE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 774
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 776
    :cond_3
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_name:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v7, v7, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    :goto_1
    iget v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-direct {p0, v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PrepareVodData(I)V

    .line 780
    return-void
.end method

.method private initView()V
    .locals 9

    .line 906
    const/4 v0, 0x0

    const-string v1, "shenma"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    .line 907
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "vip"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time:Ljava/lang/String;

    .line 909
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->gD:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Trytime:I

    .line 910
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 911
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v3, "\u5168\u5c4f\u62c9\u4f38"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, "playratio":Ljava/lang/String;
    const-string/jumbo v2, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    .line 913
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    goto :goto_0

    .line 914
    :cond_0
    const-string v2, "4:3 \u7f29\u653e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 915
    sput v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    goto :goto_0

    .line 916
    :cond_1
    const-string v2, "16:9\u7f29\u653e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 917
    sput v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    goto :goto_0

    .line 918
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 919
    sput v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    goto :goto_0

    .line 920
    :cond_3
    const-string/jumbo v2, "\u7b49\u6bd4\u7f29\u653e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 921
    sput v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    goto :goto_0

    .line 922
    :cond_4
    const-string/jumbo v2, "\u5168\u5c4f\u88c1\u526a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 923
    const/4 v2, 0x5

    sput v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    .line 925
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    const-string v8, "IJK"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 926
    .local v2, "playcore":Ljava/lang/String;
    const-string/jumbo v3, "\u81ea\u52a8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 927
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_1

    .line 928
    :cond_6
    const-string/jumbo v0, "\u7cfb\u7edf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 929
    sput v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_1

    .line 930
    :cond_7
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 931
    sput v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_1

    .line 932
    :cond_8
    const-string v0, "EXO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 933
    sput v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_1

    .line 934
    :cond_9
    const-string/jumbo v0, "\u963f\u91cc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 935
    sput v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    .line 937
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "0"

    const-string v4, "play_jump"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->stringDrawNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    .line 938
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v4, "play_jump_end"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->stringDrawNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    .line 940
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getJumpdata()V

    .line 942
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setDecode()V

    .line 943
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getPlayPreferences()V

    .line 944
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getScreenSize()V

    .line 945
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->loadViewLayout()V

    .line 946
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->findViewById()V

    .line 947
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setListener()V

    .line 948
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setvvListener()V

    .line 950
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v3, 0xa

    const-string v4, "event handler thread"

    invoke-direct {v0, v4, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 951
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 952
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    .line 953
    return-void
.end method

.method private initializeWebView()V
    .locals 6

    .line 1502
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1504
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sniff_debug_mode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1506
    const v0, 0x7f0e004e

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebViewClient;

    invoke-direct {v3}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1509
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1510
    .local v0, "settings":Landroid/webkit/WebSettings;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1512
    const-string/jumbo v3, "utf-8"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 1513
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1514
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 1515
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 1516
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1517
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1518
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 1519
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1520
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1521
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1522
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1523
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 1524
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 1525
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1526
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 1527
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 1528
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 1530
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v3, v5, :cond_2

    .line 1531
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 1533
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v3, v5, :cond_3

    .line 1534
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 1535
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 1537
    :cond_3
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1538
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 1539
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 1540
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 1542
    const-string v3, "database"

    invoke-virtual {p0, v3, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 1544
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 1545
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v4, :cond_4

    .line 1546
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 1548
    :cond_4
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 1549
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_5

    .line 1550
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 1552
    :cond_5
    return-void
.end method

.method private loadViewLayout()V
    .locals 3

    .line 1104
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0a003e

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    .line 1105
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlView:Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    .line 1106
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0a0040

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controlView:Landroid/view/View;

    .line 1107
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controlView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    .line 1108
    return-void
.end method

.method private onMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2273
    if-eqz p1, :cond_b

    .line 2274
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

    .line 2326
    return-void

    .line 2306
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideMenu()V

    .line 2307
    return-void

    .line 2303
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_progress_time:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2304
    return-void

    .line 2322
    :cond_2
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->switchCode()V

    .line 2323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isSwitch:Z

    .line 2324
    return-void

    .line 2309
    :cond_3
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->MaxClientID:I

    if-ge v0, v3, :cond_4

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 2312
    :cond_4
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Auto_Source:I

    if-ne v0, v2, :cond_5

    .line 2314
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    goto :goto_0

    .line 2316
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2317
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    .line 2320
    :goto_0
    return-void

    .line 2300
    :cond_6
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideController()V

    .line 2301
    return-void

    .line 2290
    :cond_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    .line 2291
    .local v0, "currPosition":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    .line 2292
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_currentTime:Landroid/widget/TextView;

    div-int/lit16 v2, v0, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 2293
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_totalTime:Landroid/widget/TextView;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V

    .line 2294
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2295
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    div-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2296
    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 2297
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2298
    return-void

    .line 2276
    .end local v0    # "currPosition":I
    :cond_8
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->MaxClientID:I

    if-ge v0, v3, :cond_9

    .line 2277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Client:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 2279
    :cond_9
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Auto_Source:I

    if-ne v0, v2, :cond_a

    .line 2281
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    goto :goto_1

    .line 2285
    :cond_a
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Switchsource(I)V

    .line 2288
    :goto_1
    return-void

    .line 2329
    :cond_b
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 3294
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3295
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3298
    :cond_0
    return-void
.end method

.method private rewind()V
    .locals 2

    .line 2619
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 2620
    add-int/lit16 v0, v0, -0x7530

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    goto :goto_0

    .line 2622
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 2624
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isBack:Z

    .line 2625
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->cancelDelayHide()V

    .line 2626
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2627
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2628
    return-void
.end method

.method private selectScales(I)V
    .locals 9
    .param p1, "paramInt"    # I

    .line 2922
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_18

    .line 2924
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2925
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 2927
    :cond_0
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2928
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 2930
    :cond_1
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 2931
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 2933
    :cond_2
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 2934
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 2936
    :cond_3
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    .line 2937
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 2939
    :cond_4
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x5

    if-ne v0, v7, :cond_5

    .line 2940
    invoke-direct {p0, v6, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 2942
    :cond_5
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v8, 0x6

    if-ne v0, v8, :cond_6

    .line 2943
    invoke-direct {p0, v6, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 2945
    :cond_6
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/4 v6, 0x7

    if-ne v0, v6, :cond_7

    .line 2946
    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 2948
    :cond_7
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    const/16 v6, 0x8

    if-ne v0, v6, :cond_8

    .line 2949
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 2953
    :cond_8
    if-eqz p1, :cond_16

    if-eq p1, v2, :cond_13

    if-eq p1, v3, :cond_10

    if-eq p1, v4, :cond_d

    if-eq p1, v5, :cond_c

    if-eq p1, v7, :cond_9

    goto/16 :goto_0

    .line 3006
    :cond_9
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    if-ne v0, v2, :cond_b

    .line 3007
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    if-ne v0, v2, :cond_b

    .line 3008
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v4, :cond_a

    if-eq v0, v5, :cond_a

    if-eq v0, v7, :cond_a

    if-ne v0, v8, :cond_b

    .line 3009
    :cond_a
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 3010
    return-void

    .line 3014
    :cond_b
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    goto/16 :goto_0

    .line 3002
    :cond_c
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 3003
    goto/16 :goto_0

    .line 2990
    :cond_d
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    if-ne v0, v2, :cond_f

    .line 2991
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    if-ne v0, v2, :cond_f

    .line 2992
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v4, :cond_e

    if-eq v0, v5, :cond_e

    if-eq v0, v7, :cond_e

    if-ne v0, v8, :cond_f

    .line 2993
    :cond_e
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2994
    return-void

    .line 2998
    :cond_f
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2999
    goto :goto_0

    .line 2978
    :cond_10
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    if-ne v0, v2, :cond_12

    .line 2979
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    if-ne v0, v2, :cond_12

    .line 2980
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v4, :cond_11

    if-eq v0, v5, :cond_11

    if-eq v0, v7, :cond_11

    if-ne v0, v8, :cond_12

    .line 2981
    :cond_11
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2982
    return-void

    .line 2986
    :cond_12
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v5}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2987
    goto :goto_0

    .line 2966
    :cond_13
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    if-ne v0, v2, :cond_15

    .line 2967
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    if-ne v0, v2, :cond_15

    .line 2968
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    if-eq v0, v4, :cond_14

    if-eq v0, v5, :cond_14

    if-eq v0, v7, :cond_14

    if-ne v0, v8, :cond_15

    .line 2969
    :cond_14
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2970
    return-void

    .line 2974
    :cond_15
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v7}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2975
    goto :goto_0

    .line 2956
    :cond_16
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Adblock:I

    if-ne v0, v2, :cond_17

    .line 2957
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    if-ne v0, v2, :cond_17

    .line 2958
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 2959
    return-void

    .line 2962
    :cond_17
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleAspectRatio(I)I

    .line 3018
    :cond_18
    :goto_0
    return-void
.end method

.method private setDecode()V
    .locals 3

    .line 957
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "mIsHwDecode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mIsHwDecode:Z

    .line 959
    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    .line 960
    return-void

    .line 962
    :cond_0
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mIsHwDecode:Z

    .line 963
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    .line 964
    return-void
.end method

.method private setJump(I)V
    .locals 2
    .param p1, "speed"    # I

    .line 3419
    if-nez p1, :cond_0

    .line 3420
    const v0, 0x7f0e008e

    const v1, 0x7f070140

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 3421
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    .line 3422
    return-void

    .line 3424
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    .line 3425
    return-void
.end method

.method private setJump_end(I)V
    .locals 2
    .param p1, "speed"    # I

    .line 3429
    if-nez p1, :cond_0

    .line 3430
    const v0, 0x7f0e008f

    const v1, 0x7f070140

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 3431
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    .line 3432
    return-void

    .line 3434
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    .line 3435
    return-void
.end method

.method private setListener()V
    .locals 2

    .line 1650
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_menu:Landroid/widget/TextView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$14;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$14;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1658
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1727
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$16;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$16;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1753
    return-void
.end method

.method private setSpeed(FI)V
    .locals 6
    .param p1, "speed"    # F
    .param p2, "source"    # I

    .line 3310
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 3312
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v2, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setSpeed(F)V

    .line 3313
    float-to-double v2, p1

    cmpl-double v4, v2, v0

    if-eqz v4, :cond_4

    .line 3314
    return-void

    .line 3319
    :cond_0
    sget v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 3329
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v2, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setSpeed(F)V

    .line 3330
    move v2, p1

    .local v2, "Speed":F
    goto :goto_1

    .line 3320
    .end local v2    # "Speed":F
    :cond_2
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_3

    .line 3321
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setSpeed(F)V

    .line 3322
    const/4 v2, 0x5

    sput v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    .line 3323
    const/high16 v2, 0x40000000    # 2.0f

    .restart local v2    # "Speed":F
    goto :goto_1

    .line 3325
    .end local v2    # "Speed":F
    :cond_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v2, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setSpeed(F)V

    .line 3326
    move v2, p1

    .line 3332
    .restart local v2    # "Speed":F
    :goto_1
    float-to-double v3, p1

    cmpl-double v5, v3, v0

    if-eqz v5, :cond_4

    .line 3333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0e00da

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const v1, 0x7f0e018d

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070140

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3334
    return-void

    .line 3337
    .end local v2    # "Speed":F
    :cond_4
    return-void
.end method

.method private setvvListener()V
    .locals 2

    .line 1759
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$17;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$17;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnPlayingBufferCacheListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 1777
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$18;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 1812
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 2109
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 2180
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$21;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 2200
    return-void
.end method

.method private showController()V
    .locals 4

    .line 2212
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_time:Landroid/widget/TextView;

    const-string v1, ":"

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getStringTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2214
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2215
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2216
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2217
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2218
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->time_controler:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenWidth:I

    sget v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlHeight:I

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2219
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controler:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenWidth:I

    sget v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->controlHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    .line 2221
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2223
    :cond_0
    return-void
.end method

.method private showMenu()V
    .locals 5

    .line 2247
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2248
    new-instance v0, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/VideoPlayUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v3, 0x8

    iget-boolean v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuItemShow:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vmAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    .line 2249
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menulist:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vmAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2250
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f0f0001

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2251
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2252
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06024f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuShow:Z

    .line 2254
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isMenuItemShow:Z

    .line 2255
    return-void

    .line 2257
    :cond_0
    const v0, 0x7f0e00e0

    const v1, 0x7f07013f

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 2258
    return-void
.end method

.method private showUpdateDialog(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 2333
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDialogShowing:Z

    if-eqz v0, :cond_0

    .line 2334
    return-void

    .line 2336
    :cond_0
    new-instance v0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    invoke-direct {v0, p2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2337
    .local v0, "builder":Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    const v1, 0x7f0e0055

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setTitle(I)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2338
    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2339
    const v1, 0x7f0e0097

    new-instance v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$22;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2366
    const v1, 0x7f0e00d5

    new-instance v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 2374
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->create()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/HomeDialog;->show()V

    .line 2375
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDialogShowing:Z

    .line 2376
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isCodeBlockExecuted:Z

    .line 2378
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getFailreport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    return-void
.end method

.method private showVolumeToast(IIILjava/lang/Boolean;)V
    .locals 6
    .param p1, "resId"    # I
    .param p2, "max"    # I
    .param p3, "current"    # I
    .param p4, "isVolume"    # Ljava/lang/Boolean;

    .line 3211
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3212
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 3214
    :cond_0
    invoke-static {p0, p3}, Lcom/shenma/tvlauncher/utils/Utils;->SetLightness(Landroid/app/Activity;I)V

    .line 3219
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    const v2, 0x7f080054

    const v3, 0x7f080053

    if-nez v0, :cond_1

    .line 3220
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    .line 3221
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0a0041

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3222
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3223
    .local v3, "center_image":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 3224
    .local v2, "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 3225
    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3226
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3227
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 3229
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "center_progress":Landroid/widget/ProgressBar;
    .end local v3    # "center_image":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 3230
    .restart local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3231
    .restart local v3    # "center_image":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 3232
    .restart local v2    # "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 3233
    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3234
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3236
    :goto_1
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    const/16 v5, 0x11

    invoke-virtual {v4, v5, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 3237
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 3238
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3239
    return-void
.end method

.method private startSpeed()V
    .locals 4

    .line 3243
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3244
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lastRxByte:J

    .line 3245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->lastSpeedTime:J

    .line 3246
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3247
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_mv_speed:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3248
    return-void
.end method

.method private stopPlayback()V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 732
    :cond_0
    return-void
.end method

.method private switchCode()V
    .locals 5

    .line 3259
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "mIsHwDecode"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3260
    .local v0, "Decode":I
    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 3261
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mIsHwDecode:Z

    .line 3262
    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    goto :goto_0

    .line 3264
    :cond_0
    iput-boolean v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mIsHwDecode:Z

    .line 3265
    sput v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jmposition:I

    .line 3267
    :goto_0
    if-ne v0, v1, :cond_1

    .line 3268
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 3269
    :cond_1
    if-nez v0, :cond_2

    .line 3270
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setDecode(Ljava/lang/Boolean;)V

    .line 3272
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isPause:Ljava/lang/Boolean;

    .line 3273
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->resume()V

    .line 3274
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 3275
    iput v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    .line 3278
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3280
    return-void
.end method

.method private updateTextViewWithTimeFormat(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "second"    # I

    .line 2434
    rem-int/lit16 v0, p2, 0xe10

    div-int/lit8 v0, v0, 0x3c

    .line 2435
    .local v0, "mm":I
    rem-int/lit8 v1, p2, 0x3c

    .line 2436
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

    .line 2437
    return-void
.end method

.method private updateprogress(I)V
    .locals 13
    .param p1, "progress"    # I

    .line 3343
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3344
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation()V

    .line 3347
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoLength:I

    div-int/lit16 v0, v0, 0x3e8

    .line 3349
    .local v0, "Videoduration":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3351
    .local v2, "sum1":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3353
    .local v3, "sum2":I
    add-int v4, v2, v3

    add-int/lit8 v4, v4, 0x1e

    .line 3357
    .local v4, "sum3":I
    iget v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vipstate:I

    if-ne v5, v1, :cond_1

    .line 3359
    iget v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Trytime:I

    mul-int/lit8 v5, v5, 0x3c

    if-lt p1, v5, :cond_1

    .line 3361
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v5}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 3364
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v6, 0x23

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3369
    :cond_1
    iget v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos2:I

    const/4 v6, 0x0

    if-lez v5, :cond_2

    .line 3370
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v7, v5}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 3371
    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos2:I

    .line 3375
    :cond_2
    if-le v0, v4, :cond_6

    .line 3377
    const v5, 0x7f070140

    const v7, 0x7f0e017b

    const-string v8, "-"

    const-string v9, "0"

    if-le v0, v2, :cond_4

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    if-ge p1, v2, :cond_4

    .line 3378
    iget v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    div-int/lit16 v10, v10, 0x3e8

    if-eqz v10, :cond_4

    .line 3379
    iget-boolean v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptpositions:Z

    if-eqz v10, :cond_3

    .line 3380
    return-void

    .line 3382
    :cond_3
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ptpositions:Z

    .line 3383
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v12, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v11, v11, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f0e01a0

    invoke-virtual {p0, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3384
    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    mul-int/lit16 v11, v2, 0x3e8

    invoke-virtual {v10, v11}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 3388
    :cond_4
    if-le v0, v3, :cond_6

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    sub-int v9, v0, v3

    if-le p1, v9, :cond_6

    .line 3390
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    iget v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v8, v8, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0e01a5

    invoke-virtual {p0, v8}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jump_time_end:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3391
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/lit8 v8, v7, 0x1

    if-le v5, v8, :cond_5

    .line 3393
    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 3395
    add-int/2addr v7, v1

    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 3396
    iget v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 3397
    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    .line 3398
    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 3399
    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 3401
    const-wide/16 v7, 0x0

    sput-wide v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 3402
    iput v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    .line 3403
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    .line 3404
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3406
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3408
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    goto :goto_0

    .line 3410
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 3411
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->finish()V

    .line 3415
    :cond_6
    :goto_0
    return-void
.end method

.method private vodlogoloadImg()V
    .locals 2

    .line 3494
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_logo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3495
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->logo_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 3496
    return-void
.end method


# virtual methods
.method public Navigation()V
    .locals 2

    .line 3552
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3553
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1002

    .line 3554
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3555
    return-void
.end method

.method public VodGongGaoError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 3531
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3532
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3535
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    .line 3536
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3539
    :cond_1
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_2

    .line 3540
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3543
    :cond_2
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_3

    .line 3544
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3548
    :cond_3
    return-void
.end method

.method public VodGongGaoResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .line 3500
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3501
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3502
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3503
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3505
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3506
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 3507
    .local v5, "code":I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3508
    .local v6, "msg":Ljava/lang/String;
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 3509
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3510
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3511
    .local v7, "miType":I
    const-string v9, "UTF-8"

    if-ne v7, v8, :cond_0

    .line 3512
    :try_start_1
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3513
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 3514
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3515
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 3516
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice:Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3518
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v9, 0x24

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3519
    nop

    .end local v7    # "miType":I
    goto :goto_1

    .line 3520
    :cond_3
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->tv_notice_root:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3525
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 3523
    :catch_0
    move-exception v4

    .line 3524
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 3526
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public analysisUrlError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 1617
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    .line 1624
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 1631
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    .line 1638
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_0

    .line 1640
    const v0, 0x7f07013f

    const-string/jumbo v1, "\u5ba2\u6237\u7aef\u4e0d\u5b58\u5728!"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1641
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 1642
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->finish()V

    .line 1646
    :cond_0
    return-void
.end method

.method public analysisUrlResponse(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .line 1340
    const-string v0, "IJK"

    const-string v1, "referer"

    const-string v2, "Referer"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v3, "jSONObject":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 1345
    .local v4, "code":I
    const-string v5, "encrypt"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1346
    .local v5, "encrypt":I
    const/16 v6, 0xc8

    const/4 v7, 0x1

    if-ne v4, v6, :cond_16

    .line 1347
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1348
    .local v6, "data":Lorg/json/JSONObject;
    const-string v8, "header"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1349
    .local v8, "header":Lorg/json/JSONObject;
    const-string v9, "User-Agent"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->userAgent:Ljava/lang/String;

    .line 1350
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1351
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Referer:Ljava/lang/String;

    .line 1353
    :cond_0
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1354
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Referer:Ljava/lang/String;

    .line 1356
    :cond_1
    const-string/jumbo v1, "url"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1357
    .local v1, "url":Ljava/lang/String;
    const-string v2, "ClientID"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ClientID:I

    .line 1358
    const-string v2, "MaxClientID"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->MaxClientID:I

    .line 1359
    const-string v2, "Maxtimeout"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Maxtimeout:I

    .line 1360
    const-string v2, "Exclude_content"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Exclude_content:Ljava/lang/String;

    .line 1361
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Maxtimeout:I

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    .line 1362
    const-string v2, "Core"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    .line 1363
    const-string v2, "Safe"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->safe_mode:I

    .line 1364
    const-string v2, "Ad_block"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Ad_block:I

    .line 1365
    const-string v2, "position"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->position:I

    .line 1367
    const-string v2, "EwmWidth"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->EwmWidth:I

    .line 1368
    const-string v2, "EwmHeight"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->EwmHeight:I

    .line 1369
    const-string v2, "Moviesize"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Moviesize:I

    .line 1370
    const-string v2, "Tvplaysize"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Tvplaysize:I

    .line 1371
    const-string v2, "headposition"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headposition:I

    .line 1373
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core_mode:I

    const/4 v9, 0x0

    if-ne v2, v7, :cond_9

    .line 1376
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    const/4 v10, 0x2

    const/16 v11, 0x63

    if-eq v2, v11, :cond_4

    .line 1378
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->safe_mode:I

    if-ne v0, v7, :cond_2

    .line 1379
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 1383
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v0, v2, :cond_3

    .line 1384
    iput v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    .line 1395
    sput v10, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 1397
    :cond_3
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 1403
    :cond_4
    iput v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->core:I

    .line 1404
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v11, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    invoke-interface {v2, v11, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1405
    .local v2, "playcore":Ljava/lang/String;
    const-string/jumbo v11, "\u81ea\u52a8"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1406
    sput v9, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 1407
    :cond_5
    const-string/jumbo v11, "\u7cfb\u7edf"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1408
    sput v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 1409
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1410
    sput v10, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 1411
    :cond_7
    const-string v0, "EXO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1412
    const/4 v0, 0x3

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    goto :goto_0

    .line 1413
    :cond_8
    const-string/jumbo v0, "\u963f\u91cc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1414
    const/4 v0, 0x4

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    .line 1419
    .end local v2    # "playcore":Ljava/lang/String;
    :cond_9
    :goto_0
    const-string v0, "Conditions"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Conditions:Ljava/lang/String;

    .line 1420
    const-string v0, "Type"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Type:I

    .line 1421
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setUserAgent(Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Referer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setReferer(Ljava/lang/String;)V

    .line 1423
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headers:Ljava/util/Map;

    .line 1424
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1425
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1426
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1427
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1428
    .local v10, "value":Ljava/lang/String;
    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headers:Ljava/util/Map;

    invoke-interface {v11, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    goto :goto_1

    .line 1432
    :cond_a
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Type:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, ""

    if-nez v2, :cond_10

    .line 1433
    :try_start_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->webView:Landroid/webkit/WebView;

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1435
    if-ne v5, v7, :cond_d

    .line 1436
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1438
    sget-object v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1439
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v9, v11}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/shenma/tvlauncher/utils/Rc4;->decryptBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v2, v9, v11}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 1441
    :cond_b
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget-object v9, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    invoke-static {v9}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v2, v9, v11}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    .line 1444
    :goto_2
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v2, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decryptBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Fburl:Ljava/lang/String;

    .line 1445
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    invoke-virtual {v2, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 1447
    :cond_c
    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    goto/16 :goto_4

    .line 1450
    :cond_d
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1452
    sget-object v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1453
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v2, v9, v10}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 1455
    :cond_e
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    sget-object v9, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    invoke-static {v9}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v2, v9, v10}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    .line 1458
    :goto_3
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Fburl:Ljava/lang/String;

    .line 1459
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    invoke-virtual {v2, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 1461
    :cond_f
    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    goto :goto_4

    .line 1466
    :cond_10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-ge v2, v11, :cond_11

    .line 1468
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sniff_debug_mode:I

    if-ne v2, v7, :cond_15

    .line 1469
    const v2, 0x7f0e004f

    invoke-static {p0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 1472
    :cond_11
    if-ne v5, v7, :cond_13

    .line 1473
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1474
    iput v9, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurls:I

    .line 1475
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->initializeWebView()V

    .line 1476
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v2, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decryptBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sniffing(Ljava/lang/String;)V

    goto :goto_4

    .line 1478
    :cond_12
    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    goto :goto_4

    .line 1481
    :cond_13
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1482
    iput v9, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->jxurls:I

    .line 1483
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->initializeWebView()V

    .line 1484
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sniffing(Ljava/lang/String;)V

    goto :goto_4

    .line 1486
    :cond_14
    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I

    .line 1491
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "url":Ljava/lang/String;
    .end local v6    # "data":Lorg/json/JSONObject;
    .end local v8    # "header":Lorg/json/JSONObject;
    :cond_15
    :goto_4
    goto :goto_5

    .line 1492
    :cond_16
    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->timeout:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1496
    .end local v3    # "jSONObject":Lorg/json/JSONObject;
    .end local v4    # "code":I
    .end local v5    # "encrypt":I
    :goto_5
    goto :goto_6

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1497
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_6
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2441
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 2442
    iget-boolean v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isBack:Z

    if-eqz v1, :cond_0

    .line 2443
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideControllerDelay()V

    .line 2444
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    invoke-virtual {v1, v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 2445
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2446
    iput-boolean v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isBack:Z

    .line 2448
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2450
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2452
    .local v1, "keyCode":I
    const/4 v5, 0x4

    const-wide/16 v6, 0x7d0

    if-eq v1, v5, :cond_14

    const/16 v5, 0x42

    const v8, 0x7f0700e0

    const v9, 0x7f0700e2

    if-eq v1, v5, :cond_11

    const/16 v5, 0x52

    if-eq v1, v5, :cond_10

    const/16 v5, 0x18

    const/16 v10, 0x11

    const-wide/16 v11, 0x0

    const v13, 0x7f07013f

    const v14, 0x7f070140

    const/4 v15, 0x3

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 2568
    :pswitch_0
    iget-boolean v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    if-nez v3, :cond_2

    .line 2569
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    .line 2571
    :cond_2
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2572
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 2573
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2574
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2575
    goto/16 :goto_0

    .line 2577
    :cond_3
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 2578
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2579
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2580
    goto/16 :goto_0

    .line 2562
    :pswitch_1
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    if-nez v2, :cond_4

    .line 2563
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    .line 2565
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->fastForward()V

    .line 2566
    goto/16 :goto_0

    .line 2556
    :pswitch_2
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    if-nez v2, :cond_5

    .line 2557
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    .line 2559
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->rewind()V

    .line 2560
    goto/16 :goto_0

    .line 2521
    :pswitch_3
    iget v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playPreCode:I

    if-eqz v2, :cond_6

    .line 2522
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v15, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 2523
    goto/16 :goto_0

    .line 2525
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2526
    .local v6, "secondTime":J
    iget-wide v8, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTime:J

    sub-long v8, v6, v8

    const-wide/16 v15, 0x1388

    cmp-long v2, v8, v15

    if-gtz v2, :cond_a

    .line 2527
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v8, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/2addr v8, v4

    if-gt v2, v8, :cond_7

    .line 2528
    const v2, 0x7f0e00d4

    invoke-static {v0, v2, v13}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 2529
    goto/16 :goto_0

    .line 2531
    :cond_7
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    sget-object v8, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v2, v8, :cond_8

    .line 2533
    iput v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 2535
    iget v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 2536
    iget v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 2537
    iput v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 2539
    sput-wide v11, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 2540
    iput v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    .line 2541
    invoke-direct {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    .line 2543
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2546
    :cond_8
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    if-nez v2, :cond_9

    .line 2547
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    .line 2549
    :cond_9
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2550
    goto/16 :goto_0

    .line 2552
    :cond_a
    const v2, 0x7f0e01bc

    invoke-static {v0, v2, v14}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 2553
    iput-wide v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTime:J

    .line 2554
    return v4

    .line 2486
    .end local v6    # "secondTime":J
    :pswitch_4
    iget v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playPreCode:I

    if-eqz v2, :cond_b

    .line 2487
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v15, v4, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 2488
    goto/16 :goto_0

    .line 2491
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2492
    .local v8, "secondTime":J
    iget-wide v14, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTime:J

    sub-long v14, v8, v14

    cmp-long v2, v14, v6

    if-gtz v2, :cond_f

    .line 2493
    iget v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    if-gtz v2, :cond_c

    .line 2494
    const v2, 0x7f0e01ba

    invoke-static {v0, v2, v13}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 2495
    goto/16 :goto_0

    .line 2497
    :cond_c
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    sget-object v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v2, v6, :cond_d

    .line 2498
    iget v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sub-int/2addr v2, v4

    iput v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    .line 2499
    iput v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Numbermax:I

    .line 2501
    iget v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 2502
    iput v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->PlayersNumber:I

    .line 2504
    sput-wide v11, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 2505
    iput v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->seizing:I

    .line 2506
    invoke-direct {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->SelecteVod(I)V

    .line 2508
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2511
    :cond_d
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    if-nez v2, :cond_e

    .line 2512
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    .line 2514
    :cond_e
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2515
    goto/16 :goto_0

    .line 2517
    :cond_f
    const v2, 0x7f0e01bb

    const v3, 0x7f070140

    invoke-static {v0, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 2518
    iput-wide v8, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTime:J

    .line 2519
    return v4

    .line 2596
    .end local v8    # "secondTime":J
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideController()V

    .line 2597
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showMenu()V

    goto/16 :goto_0

    .line 2582
    :cond_11
    iget-boolean v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    if-nez v3, :cond_12

    .line 2583
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    .line 2585
    :cond_12
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_13

    .line 2586
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 2587
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2588
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2589
    goto/16 :goto_0

    .line 2591
    :cond_13
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 2592
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2593
    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2594
    goto/16 :goto_0

    .line 2454
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideController()V

    .line 2455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2456
    .local v2, "secondTime":J
    iget-wide v8, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTime:J

    sub-long v8, v2, v8

    cmp-long v5, v8, v6

    if-gtz v5, :cond_16

    .line 2457
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v5}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v5

    iput v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    .line 2458
    iget v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    if-eqz v5, :cond_15

    .line 2459
    new-instance v5, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-direct {v5}, Lcom/shenma/tvlauncher/vod/db/Album;-><init>()V

    .line 2460
    .local v5, "album":Lcom/shenma/tvlauncher/vod/db/Album;
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->videoId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumId(Ljava/lang/String;)V

    .line 2461
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->sourceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumSourceType(Ljava/lang/String;)V

    .line 2462
    iget v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/db/Album;->setCollectionTime(I)V

    .line 2463
    iget v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/db/Album;->setPlayIndex(I)V

    .line 2464
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->albumPic:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumPic(Ljava/lang/String;)V

    .line 2465
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumType(Ljava/lang/String;)V

    .line 2466
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumTitle(Ljava/lang/String;)V

    .line 2469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u89c2\u770b:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->collectionTime:I

    div-int/lit16 v7, v7, 0x3e8

    div-int/lit8 v7, v7, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u5206\u949f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumState(Ljava/lang/String;)V

    .line 2470
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nextlink:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/db/Album;->setNextLink(Ljava/lang/String;)V

    .line 2471
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/db/Album;->setTime(Ljava/lang/String;)V

    .line 2472
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/db/Album;->setTypeId(I)V

    .line 2473
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-virtual {v6, v5}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->addAlbums(Lcom/shenma/tvlauncher/vod/db/Album;)V

    .line 2477
    .end local v5    # "album":Lcom/shenma/tvlauncher/vod/db/Album;
    :cond_15
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 2478
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->stopPlayback()V

    .line 2479
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->finish()V

    .line 2480
    nop

    .line 2600
    .end local v2    # "secondTime":J
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 2482
    .restart local v2    # "secondTime":J
    :cond_16
    const v5, 0x7f0e0126

    const v6, 0x7f07013e

    invoke-static {v0, v5, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 2483
    iput-wide v2, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->firstTime:J

    .line 2484
    return v4

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 3192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800e4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3194
    :cond_0
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isControllerShow:Z

    if-nez v0, :cond_1

    .line 3195
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showController()V

    .line 3196
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 3197
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 3198
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3199
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    const v1, 0x7f0700e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 3201
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 3202
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3203
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    const v1, 0x7f0700e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3207
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 426
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 427
    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setContentView(I)V

    .line 428
    new-instance v0, Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/dao/VodDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    .line 429
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->stopAutoBrightness(Landroid/app/Activity;)V

    .line 430
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Navigation()V

    .line 433
    :cond_0
    const/4 v0, 0x0

    const-string v1, "TempData"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sd:Landroid/content/SharedPreferences;

    .line 434
    const-string v1, "LIVE"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 435
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->initView()V

    .line 436
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->initData()V

    .line 454
    return-void
.end method

.method public onCreateMenu()V
    .locals 3

    .line 2639
    const v0, 0x7f0a0038

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2640
    .local v0, "menuView":Landroid/view/View;
    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menulist:Landroid/widget/ListView;

    .line 2641
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 2642
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2643
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 2644
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2645
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$27;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2898
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$28;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2918
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 459
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 460
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->stopPlayback()V

    .line 461
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 465
    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 466
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->startAutoBrightness(Landroid/app/Activity;)V

    .line 467
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->overridePendingTransition(II)V

    .line 468
    const-string v0, "VideoPlayerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 657
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 658
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause...mPlayerStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-static {v1}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 661
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 662
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->releaseWakeLock()V

    .line 663
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 665
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mLastPos:I

    .line 666
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    sget-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 668
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    const v1, 0x7f0700e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 670
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideController()V

    .line 671
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 672
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 489
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hideMenu()V

    .line 490
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->playIndex:I

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 491
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 492
    const-string v0, "VideoPlayerActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 493
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 494
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 495
    .local v1, "m_value":Ljava/util/Map;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodname:Ljava/lang/String;

    const-string/jumbo v3, "vodname"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->domain:Ljava/lang/String;

    const-string v3, "domain"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vodtype:Ljava/lang/String;

    const-string/jumbo v3, "vodtype"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v2, "VOD_PLAY"

    invoke-static {p0, v2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 499
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume...mPlayerStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->acquireWakeLock()V

    .line 504
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 505
    new-instance v3, Landroid/os/HandlerThread;

    const/16 v4, 0xa

    const-string v5, "event handler thread"

    invoke-direct {v3, v5, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 506
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 507
    new-instance v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    .line 511
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mVideoSource:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    sget-object v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-ne v3, v4, :cond_1

    .line 512
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mEventHandler:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    .line 513
    const-string v3, "onResume... \u53d1\u8d77\u64ad\u653e"

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_1
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$3;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSpeedHandler:Landroid/os/Handler;

    .line 530
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$4;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnable:Ljava/lang/Runnable;

    .line 584
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$5;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->speedRunnabless:Ljava/lang/Runnable;

    .line 636
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    sget-object v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-ne v0, v3, :cond_3

    .line 637
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    const v2, 0x7f0700e0

    const/4 v3, 0x5

    if-nez v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 640
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 641
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 643
    :cond_2
    sget-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 644
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->iVV:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 645
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 646
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->ib_playStatus:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 647
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 650
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mProgressBar:Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setProgress(I)V

    .line 651
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 653
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 477
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 478
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->isDestroy:Ljava/lang/Boolean;

    .line 479
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 480
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 483
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 484
    const-string v0, "VideoPlayerActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3023
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 3024
    .local v0, "result":Z
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3025
    .local v1, "screen":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3026
    iget v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    if-nez v2, :cond_0

    .line 3027
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    .line 3029
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchY:F

    sub-float/2addr v2, v3

    .line 3030
    .local v2, "y_changed":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchX:F

    sub-float/2addr v3, v4

    .line 3032
    .local v3, "x_changed":F
    div-float v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 3033
    .local v4, "coef":F
    iget v5, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v5, v3, v5

    const v6, 0x40228f5c    # 2.54f

    mul-float v5, v5, v6

    .line 3034
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

    .line 3035
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x0

    const-string v8, "VideoPlayerActivity"

    const/4 v9, 0x1

    if-eqz v6, :cond_6

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v6, v9, :cond_4

    const/4 v11, 0x2

    if-eq v6, v11, :cond_1

    goto/16 :goto_1

    .line 3047
    :cond_1
    const-string v6, "MotionEvent.ACTION_MOVE......."

    invoke-static {v8, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    cmpl-float v6, v4, v10

    if-lez v6, :cond_3

    .line 3049
    const/4 v6, 0x0

    .line 3051
    .local v6, "isSeekTouch":Z
    iget v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchX:F

    iget v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenWidth:I

    div-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v8, v8, v10

    if-lez v8, :cond_2

    .line 3053
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->doVolumeTouch(F)V

    .line 3055
    :cond_2
    iget v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchX:F

    iget v10, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->screenWidth:I

    div-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gez v8, :cond_3

    .line 3057
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->doBrightnessTouch(F)V

    .line 3060
    .end local v6    # "isSeekTouch":Z
    :cond_3
    invoke-direct {p0, v4, v5, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->doSeekTouch(FFZ)V

    .line 3061
    goto/16 :goto_1

    .line 3063
    :cond_4
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mPlayerStatus:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    sget-object v7, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v6, v7, :cond_5

    .line 3064
    sget v6, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->bsposition:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 3090
    :pswitch_0
    const/high16 v6, 0x40a00000    # 5.0f

    invoke-direct {p0, v6, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    goto :goto_0

    .line 3087
    :pswitch_1
    const/high16 v6, 0x40800000    # 4.0f

    invoke-direct {p0, v6, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 3088
    goto :goto_0

    .line 3084
    :pswitch_2
    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {p0, v6, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 3085
    goto :goto_0

    .line 3081
    :pswitch_3
    invoke-direct {p0, v10, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 3082
    goto :goto_0

    .line 3078
    :pswitch_4
    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-direct {p0, v6, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 3079
    goto :goto_0

    .line 3075
    :pswitch_5
    const/high16 v6, 0x3fa00000    # 1.25f

    invoke-direct {p0, v6, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 3076
    goto :goto_0

    .line 3072
    :pswitch_6
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, v6, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 3073
    goto :goto_0

    .line 3069
    :pswitch_7
    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {p0, v6, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 3070
    goto :goto_0

    .line 3066
    :pswitch_8
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {p0, v6, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setSpeed(FI)V

    .line 3094
    :cond_5
    :goto_0
    const-string v6, "MotionEvent.ACTION_UP......."

    invoke-static {v8, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    invoke-direct {p0, v4, v5, v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->doSeekTouch(FFZ)V

    goto :goto_1

    .line 3037
    :cond_6
    const-string v6, "MotionEvent.ACTION_DOWN......."

    invoke-static {v8, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3038
    const/4 v6, 0x1

    .line 3039
    .restart local v6    # "isSeekTouch":Z
    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchAction:I

    .line 3040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchY:F

    .line 3041
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mTouchX:F

    .line 3042
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->maxVolume:I

    .line 3043
    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentVolume:I

    .line 3044
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetLightness(Landroid/app/Activity;)F

    move-result v7

    iput v7, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Lightness:F

    .line 3045
    nop

    .line 3098
    .end local v6    # "isSeekTouch":Z
    :goto_1
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "Client"    # Ljava/lang/String;

    .line 1231
    const-string v0, "Submission_method"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1233
    .local v0, "Submission_method":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1235
    .local v1, "urlEncode":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->analysisUrl(Ljava/lang/String;I)V

    .line 1236
    return-void
.end method
