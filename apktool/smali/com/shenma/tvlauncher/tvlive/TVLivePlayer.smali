.class public Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "TVLivePlayer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$SortTime;,
        Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;,
        Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$MyThread;,
        Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;,
        Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;,
        Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$Config;,
        Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;
    }
.end annotation


# static fields
.field private static final CLASS_TYPE:Ljava/lang/String; = "class_type"

.field private static final CLOSE_LINE_DIALOG:I = 0x3

.field public static final DATA_FILE_NAME:Ljava/lang/String; = "data.xml"

.field private static final DELAY_NEXT_TIME:I = 0xea60

.field private static DELAY_TIME:I = 0x0

.field public static final ENGER_FILE_NAME:Ljava/lang/String; = "enter.xml"

.field private static final EVENT_PLAY:I = 0x4

.field private static final FILE_NAME:Ljava/lang/String; = "play_file"

.field public static final NEWS_FILE_NAME:Ljava/lang/String; = "news.xml"

.field private static final POWER_LOCK:Ljava/lang/String; = "TVLivePlayer"

.field private static final PROGRAM_TYPE:Ljava/lang/String; = "program_type"

.field private static final PROGRESSBAR_GONE:I = 0x2

.field private static final PROGRESSBAR_VISIBLE:I = 0x1

.field private static final START_SPEED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TVLivePlayer"

.field private static final TOUCH_BRIGHTNESS:I = 0x2

.field private static final TOUCH_NONE:I = 0x0

.field private static final TOUCH_SEEK:I = 0x3

.field private static final TOUCH_VOLUME:I = 0x1

.field private static final TRUN_RIGHT:I = 0x2

.field private static final TURN_LEFT:I = 0x1

.field public static hmblposition:I

.field public static jmposition:I

.field public static keyChanne:Ljava/lang/String;

.field public static phszposition:I

.field public static qycsposition:I

.field private static rxByte:Ljava/lang/String;

.field private static tvmenutype:I


# instance fields
.field private Lightness:F

.field private Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

.field private TVTYPE:Ljava/lang/String;

.field classManager:Lcom/shenma/tvlauncher/tvlive/network/ClassManager;

.field private curren_tv_title:Landroid/widget/TextView;

.field private currentVolume:I

.field private downview:Landroid/widget/ImageView;

.field private epg1:Landroid/widget/TextView;

.field private epg2:Landroid/widget/TextView;

.field private epg_layout:Landroid/widget/RelativeLayout;

.field private firstTime:J

.field private iletv:Lcom/wepower/live/parser/ILetv;

.field private iplay:Lcom/wepower/live/parser/IPlay;

.field private isMenuItemShow:Z

.field private isMenuShow:Z

.field private isNext:Z

.field private isSendNext:Z

.field private keyChannenum:I

.field private lastRxByte:J

.field private lastSpeedTime:J

.field private lastTime:J

.field private liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

.field private mAdapter:Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mClassPoint:I

.field private mCurEpg:Ljava/lang/String;

.field private mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

.field private mDialog:Landroid/app/Dialog;

.field private mDownEpg:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;

.field private mEnterList:Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

.field private mEventHandler:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsHwDecode:Z

.field private mLeftLayout:Landroid/view/View;

.field private mLeftView:Landroid/widget/ImageView;

.field private mPlayerStatus:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

.field private mProgramNews:Landroid/widget/TextView;

.field private mProgramNum:Landroid/widget/TextView;

.field private mProgramPoint:I

.field private mProgramTitle:Landroid/widget/TextView;

.field private mProgranList:Landroid/widget/ListView;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mRightView:Landroid/widget/ImageView;

.field private mSourcePoint:I

.field private mSpeedHandler:Landroid/os/Handler;

.field private mSurfaceYDisplayRange:I

.field private mSwitchDialog:Landroid/app/Dialog;

.field private mTimeOut:J

.field private mTouchAction:I

.field private mTouchX:F

.field private mTouchY:F

.field private mVV:Lcom/baidu/cyberplayer/core/BVideoView;

.field private mVideoSource:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maxVolume:I

.field private menulist:Landroid/widget/ListView;

.field private menupopupWindow:Landroid/widget/PopupWindow;

.field myHandler:Landroid/os/Handler;

.field private newsString:Ljava/lang/String;

.field private playPreCode:I

.field private port:J

.field private rl_progressBar:Landroid/widget/RelativeLayout;

.field private screenHeight:I

.field private screenWidth:I

.field private speed:J

.field private speedRunnable:Ljava/lang/Runnable;

.field private tv_line:Landroid/widget/TextView;

.field private tv_name:Landroid/widget/TextView;

.field private tv_speed:Landroid/widget/TextView;

.field private tvliveMenuAdapter:Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

.field private tvlive_server:I

.field private uName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    const-string v0, ""

    sput-object v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->phszposition:I

    .line 136
    sput v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->jmposition:I

    .line 137
    sput v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->hmblposition:I

    .line 138
    sput v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->qycsposition:I

    .line 139
    const/16 v0, 0x1f40

    sput v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->DELAY_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 108
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 143
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->classManager:Lcom/shenma/tvlauncher/tvlive/network/ClassManager;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVV:Lcom/baidu/cyberplayer/core/BVideoView;

    .line 145
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftView:Landroid/widget/ImageView;

    .line 146
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mRightView:Landroid/widget/ImageView;

    .line 147
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->downview:Landroid/widget/ImageView;

    .line 148
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramTitle:Landroid/widget/TextView;

    .line 149
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramNum:Landroid/widget/TextView;

    .line 150
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramNews:Landroid/widget/TextView;

    .line 151
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgranList:Landroid/widget/ListView;

    .line 152
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    .line 153
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    .line 154
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    .line 155
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAdapter:Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;

    .line 156
    const/4 v1, 0x0

    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 157
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    .line 158
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    .line 159
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSwitchDialog:Landroid/app/Dialog;

    .line 160
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 161
    new-instance v2, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    invoke-direct {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;-><init>()V

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mEnterList:Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    .line 162
    const-string v2, ""

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->newsString:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 164
    iput-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurEpg:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mDownEpg:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;

    .line 166
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTimeOut:J

    .line 167
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isSendNext:Z

    .line 174
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 175
    iput-wide v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->firstTime:J

    .line 176
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChannenum:I

    .line 177
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 182
    sget-object v4, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    iput-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mPlayerStatus:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    .line 184
    const-string v4, "TVLIVE"

    iput-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->TVTYPE:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVideoSource:Ljava/lang/String;

    .line 186
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mIsHwDecode:Z

    .line 187
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isNext:Z

    .line 193
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isMenuShow:Z

    .line 194
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isMenuItemShow:Z

    .line 198
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tvlive_server:I

    .line 199
    iput-wide v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->lastTime:J

    .line 211
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method private ChannelLast()V
    .locals 2

    .line 1084
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    if-nez v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 1086
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1087
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    goto :goto_0

    .line 1089
    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    .line 1091
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 1092
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    .line 1093
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 1094
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    .line 1095
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1097
    return-void
.end method

.method private ChannelNext()V
    .locals 3

    .line 1100
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 1101
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1102
    iput v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    goto :goto_0

    .line 1104
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    .line 1106
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 1107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    .line 1108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 1109
    iput v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    .line 1110
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1113
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->initIntent()V

    return-void
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->initUI()V

    return-void
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->newsString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->newsString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->TVTYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tvlive_server:I

    return v0
.end method

.method static synthetic access$1300(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramNews:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    return v0
.end method

.method static synthetic access$1402(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    return p1
.end method

.method static synthetic access$1408(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    return v0
.end method

.method static synthetic access$1500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    return v0
.end method

.method static synthetic access$1600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;)Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 108
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    return p1
.end method

.method static synthetic access$1900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->rl_progressBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->swichLine(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->closeLineDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showLineToast()V

    return-void
.end method

.method static synthetic access$2200(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->uName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->uName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->rxByte:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 108
    sput-object p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->rxByte:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tv_speed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-wide v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->lastRxByte:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # J

    .line 108
    iput-wide p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->lastRxByte:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-wide v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->lastSpeedTime:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # J

    .line 108
    iput-wide p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->lastSpeedTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-wide v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->speed:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # J

    .line 108
    iput-wide p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->speed:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSpeedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->speedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 108
    sget v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->DELAY_TIME:I

    return v0
.end method

.method static synthetic access$3002(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;)Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    .line 108
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mPlayerStatus:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isNext:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isSendNext:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showMenu()V

    return-void
.end method

.method static synthetic access$3400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getFocused()V

    return-void
.end method

.method static synthetic access$3600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isMenuShow:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isMenuShow:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isMenuItemShow:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isMenuItemShow:Z

    return p1
.end method

.method static synthetic access$3800()I
    .locals 1

    .line 108
    sget v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tvmenutype:I

    return v0
.end method

.method static synthetic access$3802(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 108
    sput p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tvmenutype:I

    return p0
.end method

.method static synthetic access$3900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menulist:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->setDecode()V

    return-void
.end method

.method static synthetic access$4300(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mIsHwDecode:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/baidu/cyberplayer/core/BVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVV:Lcom/baidu/cyberplayer/core/BVideoView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->hideMenu()V

    return-void
.end method

.method static synthetic access$4600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mWidth:I

    return v0
.end method

.method static synthetic access$4700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mHeight:I

    return v0
.end method

.method static synthetic access$4800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getPlayPreferences()V

    return-void
.end method

.method static synthetic access$5100(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getdelay_time()V

    return-void
.end method

.method static synthetic access$5300(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menupopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->initData()V

    return-void
.end method

.method static synthetic access$5500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVideoSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tv_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->curren_tv_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->initSelectChannle(I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;

    .line 108
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epgPosition(Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;)V

    return-void
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mEnterList:Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    return-object v0
.end method

.method static synthetic access$802(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    .line 108
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mEnterList:Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    return-object p1
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 108
    iget-wide v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTimeOut:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;J)J
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p1, "x1"    # J

    .line 108
    iput-wide p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTimeOut:J

    return-wide p1
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 1804
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 1805
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1807
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x2000000a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1808
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1810
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private closeDialog()V
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->dismiss()V

    .line 1195
    :cond_0
    return-void
.end method

.method private closeLineDialog()V
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tv_line:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->endSpeed()V

    .line 1144
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1145
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramNum:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1146
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg_layout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1148
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1149
    :cond_1
    return-void
.end method

.method private createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 442
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$4;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$4;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    return-object v0
.end method

.method private createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 432
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$3;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    return-object v0
.end method

.method private doBrightnessTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 888
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchAction:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 889
    return-void

    .line 890
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchAction:I

    .line 891
    neg-float v0, p1

    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSurfaceYDisplayRange:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 892
    .local v0, "delta":F
    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Lightness:F

    add-float/2addr v1, v0

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 893
    .local v1, "vol":I
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 894
    const/4 v2, 0x5

    const/16 v3, 0xff

    const v4, 0x7f0700f0

    const/4 v5, 0x0

    if-ge v1, v2, :cond_1

    .line 895
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v4, v3, v5, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 897
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v4, v3, v1, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 899
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Lightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "....vol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "...delta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "....mSurfaceYDisplayRange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSurfaceYDisplayRange:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doBrightnessTouch"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_2
    return-void
.end method

.method private doVolumeTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 864
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchAction:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 865
    return-void

    .line 866
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchAction:I

    .line 867
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSurfaceYDisplayRange:I

    int-to-float v0, v0

    div-float v0, p1, v0

    iget v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->maxVolume:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    neg-int v0, v0

    .line 868
    .local v0, "delta":I
    iget v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->currentVolume:I

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->maxVolume:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 869
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

    .line 870
    if-eqz v0, :cond_3

    .line 871
    if-ge v3, v1, :cond_1

    .line 872
    const v1, 0x7f0700f3

    iget v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->maxVolume:I

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 874
    :cond_1
    if-lt v3, v1, :cond_2

    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->maxVolume:I

    div-int/lit8 v4, v1, 0x2

    if-ge v3, v4, :cond_2

    .line 875
    const v4, 0x7f0700f2

    invoke-direct {p0, v4, v1, v3, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 877
    :cond_2
    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->maxVolume:I

    div-int/lit8 v4, v1, 0x2

    if-lt v3, v4, :cond_3

    .line 878
    const v4, 0x7f0700f1

    invoke-direct {p0, v4, v1, v3, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 882
    :cond_3
    :goto_0
    return-void
.end method

.method private endSpeed()V
    .locals 2

    .line 1763
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1764
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tv_speed:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1765
    return-void
.end method

.method private epgPosition(Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;)V
    .locals 9
    .param p1, "epgs"    # Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;

    .line 1435
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1436
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 1439
    :cond_0
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$SortTime;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$SortTime;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1440
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1441
    .local v0, "currentDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 1442
    .local v1, "hours":I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 1443
    .local v2, "minutes":I
    mul-int/lit8 v3, v1, 0x3c

    add-int/2addr v3, v2

    .line 1444
    .local v3, "keysValue":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hours:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  minutes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  keysValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "handan"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const/4 v4, -0x1

    .line 1447
    .local v4, "position":I
    const/4 v5, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v5, :cond_2

    .line 1448
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1449
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;

    .line 1450
    invoke-virtual {v7}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->getKeyTime()Ljava/lang/String;

    move-result-object v7

    .line 1449
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 1451
    move v4, v6

    .line 1452
    goto :goto_1

    .line 1448
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1457
    .end local v6    # "i":I
    :cond_2
    :goto_1
    const/4 v6, -0x1

    if-eq v4, v6, :cond_5

    .line 1458
    if-lez v4, :cond_3

    .line 1459
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;

    .line 1460
    invoke-virtual {v6}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->getValueContent()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1461
    .local v6, "str":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 1462
    iget-object v7, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->curren_tv_title:Landroid/widget/TextView;

    aget-object v5, v6, v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1463
    iget-object v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tv_name:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v7}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1469
    .end local v6    # "str":[Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg1:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->getValueContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    add-int/lit8 v4, v4, 0x1

    .line 1471
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 1472
    iget-object v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->getValueContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1474
    :cond_4
    iget-object v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->getValueContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    :cond_5
    :goto_2
    return-void

    .line 1437
    .end local v0    # "currentDate":Ljava/util/Date;
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "keysValue":I
    .end local v4    # "position":I
    :cond_6
    :goto_3
    return-void
.end method

.method public static getCPUSerial()Ljava/lang/String;
    .locals 7

    .line 357
    const-string v0, ""

    .local v0, "str":Ljava/lang/String;
    const-string v1, ""

    .local v1, "strCPU":Ljava/lang/String;
    const-string v2, "0000000000000000"

    .line 359
    .local v2, "cpuAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "cat /proc/cpuinfo"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 360
    .local v3, "pp":Ljava/lang/Process;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 361
    .local v4, "ir":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/LineNumberReader;

    invoke-direct {v5, v4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 362
    .local v5, "input":Ljava/io/LineNumberReader;
    invoke-virtual {v5}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 363
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v3    # "pp":Ljava/lang/Process;
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .end local v5    # "input":Ljava/io/LineNumberReader;
    :cond_0
    goto :goto_0

    .line 370
    :catch_0
    move-exception v3

    .line 372
    :goto_0
    return-object v2
.end method

.method private getConfig(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 1269
    const-string v0, "play_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1271
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getFocused()V
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgranList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 945
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgranList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 946
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgranList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 947
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgranList:Landroid/widget/ListView;

    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 948
    return-void
.end method

.method private getPlayPreferences()V
    .locals 3

    .line 1715
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "playPre"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->playPreCode:I

    .line 1716
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->playPreCode:I

    if-nez v0, :cond_0

    .line 1718
    sput v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->phszposition:I

    goto :goto_0

    .line 1721
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->phszposition:I

    .line 1723
    :goto_0
    return-void
.end method

.method private getPlayServerPreferences()V
    .locals 3

    .line 1750
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->sp:Landroid/content/SharedPreferences;

    const-string v1, "open_tvlive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tvlive_server:I

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5f53\u524d\u670d\u52a1\u5668\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tvlive_server:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TVLivePlayer"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    return-void
.end method

.method private getScreenSize()V
    .locals 2

    .line 1694
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1695
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->screenHeight:I

    .line 1696
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->screenWidth:I

    .line 1698
    return-void
.end method

.method private getdelay_time()V
    .locals 4

    .line 1726
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->sp:Landroid/content/SharedPreferences;

    const/16 v1, 0x1f40

    const-string v2, "delay_time"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->DELAY_TIME:I

    .line 1727
    sget v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->DELAY_TIME:I

    const/16 v2, 0x1388

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2ee0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a98

    if-eq v0, v1, :cond_0

    .line 1744
    sput v3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->qycsposition:I

    goto :goto_0

    .line 1741
    :cond_0
    const/4 v0, 0x4

    sput v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->qycsposition:I

    .line 1742
    goto :goto_0

    .line 1738
    :cond_1
    const/4 v0, 0x3

    sput v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->qycsposition:I

    .line 1739
    goto :goto_0

    .line 1735
    :cond_2
    const/4 v0, 0x2

    sput v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->qycsposition:I

    .line 1736
    goto :goto_0

    .line 1732
    :cond_3
    const/4 v0, 0x1

    sput v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->qycsposition:I

    .line 1733
    goto :goto_0

    .line 1729
    :cond_4
    sput v3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->qycsposition:I

    .line 1730
    nop

    .line 1747
    :goto_0
    return-void
.end method

.method private hideMenu()V
    .locals 1

    .line 1684
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1687
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 5

    .line 405
    const-string v0, "231231"

    .line 406
    .local v0, "ckinfo":Ljava/lang/String;
    new-instance v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.smtvzm.com/index.php/user/getmychannel.xml?loginname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->uName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&ckinfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v3

    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$2;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 416
    .local v1, "sr":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 417
    return-void
.end method

.method private initIntent()V
    .locals 4

    .line 591
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tvlive_server:I

    const/4 v1, 0x4

    const-string v2, "data.xml"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 593
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;

    const-string v3, "http://live.lsott.com/wepower/wephd_v3.xml"

    invoke-direct {v0, p0, v3, v2, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->start()V

    goto :goto_0

    .line 595
    :cond_0
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;

    const-string v3, "http://live.lsott.com/wepower/wephd_test.xml"

    invoke-direct {v0, p0, v3, v2, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->start()V

    .line 598
    :goto_0
    new-instance v0, Lcom/forcetech/android/ForceTV;

    invoke-direct {v0}, Lcom/forcetech/android/ForceTV;-><init>()V

    invoke-virtual {v0}, Lcom/forcetech/android/ForceTV;->initForceClient()V

    .line 599
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->initPlugs()V

    .line 600
    return-void
.end method

.method private initMessage(I)V
    .locals 4
    .param p1, "what"    # I

    .line 1316
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1317
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1318
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    .line 1320
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramNum:Landroid/widget/TextView;

    sget-object v2, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMessage...keyChanne="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TVLivePlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1323
    return-void
.end method

.method private initPlugs()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->classManager:Lcom/shenma/tvlauncher/tvlive/network/ClassManager;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->initFile()V

    .line 422
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->classManager:Lcom/shenma/tvlauncher/tvlive/network/ClassManager;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->getLetvClass()Lcom/wepower/live/parser/ILetv;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->iletv:Lcom/wepower/live/parser/ILetv;

    .line 423
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->sp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/shenma/tvlauncher/tvlive/network/LiveConstant;->SO_NAME:Ljava/lang/String;

    const-string v2, "libutp.so"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "soName":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->iletv:Lcom/wepower/live/parser/ILetv;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->context:Landroid/content/Context;

    invoke-interface {v1, v0, v2}, Lcom/wepower/live/parser/ILetv;->loadLetv(Ljava/lang/String;Landroid/content/Context;)V

    .line 425
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->iletv:Lcom/wepower/live/parser/ILetv;

    invoke-interface {v1}, Lcom/wepower/live/parser/ILetv;->start()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->port:J

    .line 426
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->classManager:Lcom/shenma/tvlauncher/tvlive/network/ClassManager;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/network/ClassManager;->getPlayClass()Lcom/wepower/live/parser/IPlay;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->iplay:Lcom/wepower/live/parser/IPlay;

    .line 427
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->iplay:Lcom/wepower/live/parser/IPlay;

    invoke-interface {v1}, Lcom/wepower/live/parser/IPlay;->returnIP()Ljava/lang/String;

    .line 428
    return-void
.end method

.method private initSelectChannle(I)V
    .locals 5
    .param p1, "selectNum"    # I

    .line 1326
    const/4 v0, 0x0

    .line 1327
    .local v0, "totleNum":I
    const/4 v1, 0x0

    .line 1329
    .local v1, "channleNum":I
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 1330
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 1331
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    .line 1332
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 1333
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr p1, v2

    .line 1334
    add-int/lit8 v0, v0, 0x1

    .line 1339
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1340
    return-void

    .line 1336
    :cond_1
    move v1, p1

    .line 1337
    nop

    .line 1343
    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 1344
    if-eqz v1, :cond_2

    .line 1345
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1347
    :cond_2
    const/4 v1, 0x0

    .line 1349
    :goto_0
    iget v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 1350
    return-void

    .line 1352
    :cond_3
    iget v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 1353
    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 1354
    return-void

    .line 1356
    :cond_4
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    .line 1357
    const/4 v2, 0x0

    iput v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    .line 1358
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 1359
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 1360
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->updateData()V

    .line 1361
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgranList:Landroid/widget/ListView;

    iget v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 1362
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1364
    return-void
.end method

.method private initUI()V
    .locals 5

    .line 603
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;-><init>()V

    .line 604
    .local v0, "parse":Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->parseFileXml(Ljava/io/File;)Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    .line 606
    const/4 v1, 0x0

    const-string v2, "class_type"

    invoke-direct {p0, v2, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getConfig(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 607
    const-string v2, "program_type"

    invoke-direct {p0, v2, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getConfig(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    .line 608
    iget v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 609
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 610
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    .line 612
    :cond_0
    iget v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 613
    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 614
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 615
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    .line 617
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 618
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 619
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    if-nez v2, :cond_2

    .line 620
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 621
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    .line 623
    :cond_2
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->updateData()V

    .line 624
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getFocused()V

    .line 625
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->closeDialog()V

    .line 626
    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChannenum:I

    if-eqz v1, :cond_3

    .line 627
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->initSelectChannle(I)V

    goto :goto_0

    .line 629
    :cond_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 633
    :goto_0
    return-void
.end method

.method private playUrl(I)V
    .locals 5
    .param p1, "point"    # I

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "epg===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getEpg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TVLivePlayer"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getEpg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->startTask(Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mPlayerStatus:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    sget-object v2, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    if-eq v0, v2, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVV:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->stopPlayback()V

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    if-nez v0, :cond_1

    .line 1223
    return-void

    .line 1225
    :cond_1
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, "currentMedia":Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 1229
    :cond_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->TVTYPE:Ljava/lang/String;

    const-string v3, "TVLIVE_DIY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1230
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVideoSource:Ljava/lang/String;

    goto :goto_0

    .line 1232
    :cond_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->iplay:Lcom/wepower/live/parser/IPlay;

    invoke-interface {v2, v0}, Lcom/wepower/live/parser/IPlay;->returnPlayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVideoSource:Ljava/lang/String;

    .line 1234
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVideoSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "---port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->port:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    sget-object v2, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mPlayerStatus:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    .line 1236
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mEventHandler:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1237
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mEventHandler:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;->removeMessages(I)V

    .line 1238
    :cond_4
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mEventHandler:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;->sendEmptyMessage(I)Z

    .line 1239
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVideoSource:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    iget-boolean v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isSendNext:Z

    if-nez v2, :cond_5

    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSendNext..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isSendNext:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1243
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isSendNext:Z

    .line 1248
    :cond_5
    return-void

    .line 1227
    :cond_6
    :goto_1
    return-void
.end method

.method private putConfig(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1261
    const-string v0, "play_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1263
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1264
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1265
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1266
    return-void
.end method

.method private recycle()V
    .locals 1

    .line 1183
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->closeDialog()V

    .line 1184
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->closeLineDialog()V

    .line 1185
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->finish()V

    .line 1186
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1187
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 1813
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1818
    :cond_0
    return-void
.end method

.method private setDecode()V
    .locals 3

    .line 1704
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "mIsHwDecode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1705
    .local v0, "Decode":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1706
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mIsHwDecode:Z

    .line 1707
    sput v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->jmposition:I

    goto :goto_0

    .line 1709
    :cond_0
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mIsHwDecode:Z

    .line 1710
    sput v2, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->jmposition:I

    .line 1712
    :goto_0
    return-void
.end method

.method private setvvListener()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVV:Lcom/baidu/cyberplayer/core/BVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$7;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->setOnErrorListener(Lcom/baidu/cyberplayer/core/BVideoView$OnErrorListener;)V

    .line 649
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVV:Lcom/baidu/cyberplayer/core/BVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$8;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->setOnPreparedListener(Lcom/baidu/cyberplayer/core/BVideoView$OnPreparedListener;)V

    .line 665
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVV:Lcom/baidu/cyberplayer/core/BVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$9;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$9;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->setOnInfoListener(Lcom/baidu/cyberplayer/core/BVideoView$OnInfoListener;)V

    .line 688
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVV:Lcom/baidu/cyberplayer/core/BVideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$10;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$10;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->setOnCompletionListener(Lcom/baidu/cyberplayer/core/BVideoView$OnCompletionListener;)V

    .line 702
    return-void
.end method

.method private showLineToast()V
    .locals 6

    .line 1122
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->lastTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 1124
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->playUrl(I)V

    .line 1125
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1127
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->startSpeed()V

    .line 1128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->lastTime:J

    .line 1129
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tv_line:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 1131
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6e90"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tv_line:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyChanne="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TVLivePlayer"

    invoke-static {v3, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramNum:Landroid/widget/TextView;

    sget-object v3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    sget v3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->DELAY_TIME:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1138
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1139
    return-void
.end method

.method private showLogoutDialog()V
    .locals 5

    .line 1771
    new-instance v0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1772
    .local v0, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->context:Landroid/content/Context;

    const v2, 0x7f0a0035

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1773
    .local v1, "mView":Landroid/view/View;
    const v2, 0x7f080291

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1774
    .local v2, "tv_logout_msg":Landroid/widget/TextView;
    const-string/jumbo v3, "\u4eb2!\u8bf7\u5728\u4e2a\u4eba\u4e2d\u5fc3\u8fdb\u884c\u6ce8\u518c\u767b\u5f55.\u7535\u8111\u767b\u5f55www.smtvzm.com\u53ef\u6dfb\u52a0\u89c2\u770b\u60a8\u81ea\u5b9a\u4e49\u7684\u8282\u76ee.\u5f53\u7136!\u73b0\u5728\u65e0\u9700\u767b\u5f55\u5c31\u53ef\u89c2\u770b\u4f53\u9a8c\u795e\u9a6c\u5c0f\u7ec4\u81ea\u5b9a\u4e49\u7684\u8282\u76ee\u5566!"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1775
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1776
    new-instance v3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$14;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$14;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    const-string/jumbo v4, "\u786e\u8ba4"

    invoke-virtual {v0, v4, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1789
    new-instance v3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$15;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$15;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    const-string/jumbo v4, "\u9000\u51fa"

    invoke-virtual {v0, v4, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1797
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->create()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mDialog:Landroid/app/Dialog;

    .line 1798
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1799
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mDialog:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1800
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1801
    return-void
.end method

.method private showMenu()V
    .locals 5

    .line 1667
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1668
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1669
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1670
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isMenuItemShow:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tvliveMenuAdapter:Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    .line 1671
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menulist:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tvliveMenuAdapter:Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1672
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menupopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f0f0001

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1673
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVV:Lcom/baidu/cyberplayer/core/BVideoView;

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1674
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06024f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->screenHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isMenuShow:Z

    .line 1676
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->isMenuItemShow:Z

    goto :goto_0

    .line 1678
    :cond_0
    const v0, 0x7f07013f

    const-string/jumbo v1, "\u83dc\u5355\u52a0\u8f7d\u672a\u5b8c\u6210"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1680
    :goto_0
    return-void
.end method

.method private showProgressDialog(I)V
    .locals 2
    .param p1, "msgId"    # I

    .line 1173
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->dismiss()V

    .line 1176
    :cond_0
    new-instance v0, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    .line 1177
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->setLoadingMsg(I)V

    .line 1178
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 1179
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->show()V

    .line 1180
    return-void
.end method

.method private showVolumeToast(IIILjava/lang/Boolean;)V
    .locals 6
    .param p1, "resId"    # I
    .param p2, "max"    # I
    .param p3, "current"    # I
    .param p4, "isVolume"    # Ljava/lang/Boolean;

    .line 911
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 912
    invoke-static {p0, p3}, Lcom/shenma/tvlauncher/utils/Utils;->SetLightness(Landroid/app/Activity;I)V

    goto :goto_0

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 916
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mToast:Landroid/widget/Toast;

    const v2, 0x7f080054

    const v3, 0x7f080053

    if-nez v0, :cond_1

    .line 917
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mToast:Landroid/widget/Toast;

    .line 918
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0a0041

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 920
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 922
    .local v3, "center_image":Landroid/widget/ImageView;
    nop

    .line 923
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 924
    .local v2, "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 925
    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 926
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 927
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 928
    .end local v2    # "center_progress":Landroid/widget/ProgressBar;
    .end local v3    # "center_image":Landroid/widget/ImageView;
    goto :goto_1

    .line 929
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 931
    .restart local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 932
    .restart local v3    # "center_image":Landroid/widget/ImageView;
    nop

    .line 933
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 934
    .restart local v2    # "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 935
    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 936
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 938
    .end local v2    # "center_progress":Landroid/widget/ProgressBar;
    .end local v3    # "center_image":Landroid/widget/ImageView;
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mToast:Landroid/widget/Toast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 939
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 940
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 941
    return-void
.end method

.method private startSpeed()V
    .locals 4

    .line 1755
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1756
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->lastRxByte:J

    .line 1757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->lastSpeedTime:J

    .line 1758
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->speedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1759
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tv_speed:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1760
    return-void
.end method

.method private startTask(Ljava/lang/String;)V
    .locals 4
    .param p1, "epg"    # Ljava/lang/String;

    .line 1422
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurEpg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1423
    return-void

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mDownEpg:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1426
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;->cancel(Z)Z

    .line 1428
    :cond_1
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurEpg:Ljava/lang/String;

    .line 1429
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;

    invoke-direct {v0, p0, p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mDownEpg:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;

    .line 1430
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mDownEpg:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1432
    return-void
.end method

.method private swichLine(I)V
    .locals 3
    .param p1, "flag"    # I

    .line 1152
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1161
    :cond_0
    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ne v1, v2, :cond_1

    .line 1162
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    goto :goto_0

    .line 1164
    :cond_1
    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    goto :goto_0

    .line 1154
    :cond_2
    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    if-nez v1, :cond_3

    .line 1155
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    goto :goto_0

    .line 1157
    :cond_3
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    .line 1159
    nop

    .line 1168
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1170
    return-void
.end method

.method private updateData()V
    .locals 4

    .line 1251
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 1252
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAdapter:Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;

    .line 1253
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgranList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAdapter:Lcom/shenma/tvlauncher/tvlive/adapter/ContentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1254
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 1255
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannleClass()Ljava/lang/String;

    move-result-object v1

    .line 1254
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1257
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1258
    return-void
.end method


# virtual methods
.method public callCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .line 1388
    const-string v0, ""

    .line 1389
    .local v0, "result":Ljava/lang/String;
    const-string v1, ""

    .line 1391
    .local v1, "line":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1392
    .local v2, "proc":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1393
    .local v3, "is":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1395
    .local v4, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    if-eqz v5, :cond_0

    .line 1396
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    goto :goto_0

    .line 1400
    :cond_0
    move-object v0, v1

    .line 1403
    .end local v2    # "proc":Ljava/lang/Process;
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 1401
    :catch_0
    move-exception v2

    .line 1402
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1404
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method protected findViewById()V
    .locals 3

    .line 713
    const v0, 0x7f0802fe

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/core/BVideoView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVV:Lcom/baidu/cyberplayer/core/BVideoView;

    .line 714
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftView:Landroid/widget/ImageView;

    .line 715
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mRightView:Landroid/widget/ImageView;

    .line 716
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->downview:Landroid/widget/ImageView;

    .line 717
    const v0, 0x7f08018b

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramTitle:Landroid/widget/TextView;

    .line 718
    const v0, 0x7f080188

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramNum:Landroid/widget/TextView;

    .line 719
    const v0, 0x7f08018a

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgranList:Landroid/widget/ListView;

    .line 720
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgranList:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 721
    const v0, 0x7f080120

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    .line 722
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg1:Landroid/widget/TextView;

    .line 723
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg2:Landroid/widget/TextView;

    .line 724
    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg_layout:Landroid/widget/RelativeLayout;

    .line 725
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->curren_tv_title:Landroid/widget/TextView;

    .line 726
    const v0, 0x7f080298

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tv_name:Landroid/widget/TextView;

    .line 727
    const v0, 0x7f0801c7

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->rl_progressBar:Landroid/widget/RelativeLayout;

    .line 728
    const v0, 0x7f08028e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tv_line:Landroid/widget/TextView;

    .line 729
    const v0, 0x7f0802ac

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->tv_speed:Landroid/widget/TextView;

    .line 730
    const-string v0, ""

    invoke-static {v0, v0}, Lcom/baidu/cyberplayer/core/BVideoView;->setAKSK(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVV:Lcom/baidu/cyberplayer/core/BVideoView;

    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mIsHwDecode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->setDecodeMode(I)V

    .line 732
    return-void
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 5

    .line 1367
    const-string v0, ""

    .line 1368
    .local v0, "result":Ljava/lang/String;
    const-string v1, ""

    .line 1369
    .local v1, "Mac":Ljava/lang/String;
    const-string v2, "HWaddr"

    const-string v3, "busybox ifconfig eth0"

    invoke-virtual {p0, v3, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->callCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1371
    if-nez v0, :cond_0

    .line 1372
    const-string v2, "555666"

    return-object v2

    .line 1374
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1375
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    .line 1376
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 1375
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1378
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 1379
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1384
    :cond_1
    return-object v1
.end method

.method protected initView()V
    .locals 5

    .line 1483
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 1484
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->sp:Landroid/content/SharedPreferences;

    const-string v1, "play_ratio"

    const-string v2, "16:9"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "playratio":Ljava/lang/String;
    const-string/jumbo v1, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1486
    const/4 v1, 0x0

    sput v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->hmblposition:I

    goto :goto_0

    .line 1487
    :cond_0
    const-string v1, "4:3 \u7f29\u653e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1488
    const/4 v1, 0x1

    sput v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->hmblposition:I

    goto :goto_0

    .line 1489
    :cond_1
    const-string v1, "16:9\u7f29\u653e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1490
    const/4 v1, 0x2

    sput v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->hmblposition:I

    goto :goto_0

    .line 1491
    :cond_2
    const-string/jumbo v1, "\u9ed8\u8ba4\u5168\u5c4f"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1492
    const/4 v1, 0x3

    sput v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->hmblposition:I

    .line 1494
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->setDecode()V

    .line 1495
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getPlayPreferences()V

    .line 1496
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getdelay_time()V

    .line 1497
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getPlayServerPreferences()V

    .line 1498
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getScreenSize()V

    .line 1499
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->loadViewLayout()V

    .line 1500
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById()V

    .line 1501
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->setListener()V

    .line 1502
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->setvvListener()V

    .line 1503
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVV:Lcom/baidu/cyberplayer/core/BVideoView;

    sget v2, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->hmblposition:I

    iget v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mWidth:I

    iget v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mHeight:I

    invoke-static {p0, v1, v2, v3, v4}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->selectScales(Landroid/content/Context;Lcom/baidu/cyberplayer/core/BVideoView;III)V

    .line 1507
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    const-string v3, "event handler thread"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1508
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1509
    new-instance v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mEventHandler:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;

    .line 1510
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 707
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->onCreateMenu()V

    .line 708
    return-void
.end method

.method public onBackPressed()V
    .locals 8

    .line 559
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->closeDialog()V

    .line 561
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSwitchDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->closeLineDialog()V

    .line 565
    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 569
    return-void

    .line 571
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 572
    .local v0, "secondTime":J
    iget-wide v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->firstTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    const-string v6, "TVLivePlayer"

    cmp-long v7, v2, v4

    if-lez v7, :cond_3

    .line 573
    const-string/jumbo v2, "\u518d\u6309\u4e00\u6b21"

    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const v2, 0x7f0e0126

    const v3, 0x7f07013e

    invoke-static {p0, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 575
    iput-wide v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->firstTime:J

    .line 576
    return-void

    .line 578
    :cond_3
    const-string v2, "finish()..."

    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_4

    .line 580
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 583
    :cond_4
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->finish()V

    .line 584
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 586
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1276
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080075

    const/4 v2, 0x2

    if-eq v0, v1, :cond_6

    const v1, 0x7f080123

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x7f0801c3

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1293
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_1

    .line 1294
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    goto :goto_0

    .line 1296
    :cond_1
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 1298
    :goto_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->updateData()V

    goto :goto_2

    .line 1300
    :cond_2
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->swichLine(I)V

    .line 1304
    goto :goto_2

    .line 1278
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 1279
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    if-nez v0, :cond_4

    .line 1280
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    goto :goto_1

    .line 1282
    :cond_4
    sub-int/2addr v0, v3

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 1284
    :goto_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->updateData()V

    goto :goto_2

    .line 1286
    :cond_5
    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->swichLine(I)V

    .line 1290
    goto :goto_2

    .line 1306
    :cond_6
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->swichLine(I)V

    .line 1307
    nop

    .line 1313
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 377
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 382
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->setContentView(I)V

    .line 383
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 384
    const v0, 0x7f080187

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramNews:Landroid/widget/TextView;

    .line 385
    const v0, 0x7f0e00f4

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showProgressDialog(I)V

    .line 386
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mQueue:Lcom/android/volley/RequestQueue;

    .line 387
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->initView()V

    .line 388
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEYCHANNE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChannenum:I

    .line 390
    const-string v1, "TVTYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->TVTYPE:Ljava/lang/String;

    .line 391
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->TVTYPE:Ljava/lang/String;

    const-string v2, "TVLIVE_DIY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->sp:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string/jumbo v3, "userName"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->uName:Ljava/lang/String;

    .line 393
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->uName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->initData()V

    goto :goto_0

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showLogoutDialog()V

    goto :goto_0

    .line 400
    :cond_1
    new-instance v1, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->isUpdate()V

    .line 402
    :goto_0
    return-void
.end method

.method public onCreateMenu()V
    .locals 3

    .line 1516
    const v0, 0x7f0a0038

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1517
    .local v0, "menuView":Landroid/view/View;
    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menulist:Landroid/widget/ListView;

    .line 1518
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 1520
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menupopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1522
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1523
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1524
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1641
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$13;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1663
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 546
    const-string v0, "TVLivePlayer"

    const-string v1, "onDestroy()..."

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->iletv:Lcom/wepower/live/parser/ILetv;

    if-eqz v0, :cond_1

    .line 551
    invoke-interface {v0}, Lcom/wepower/live/parser/ILetv;->stop()V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->iletv:Lcom/wepower/live/parser/ILetv;

    .line 554
    :cond_1
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 555
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1199
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    .line 1200
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 1201
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 1202
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSourcePoint:I

    .line 1203
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1205
    .local v0, "m_value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mCurrentMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlename()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TVLiveName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    const-string v1, "TVLive"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1208
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1410
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1411
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1413
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 955
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_b

    const/16 v0, 0x42

    const-wide/16 v2, 0x2710

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eq p1, v0, :cond_8

    const/16 v0, 0x52

    if-eq p1, v0, :cond_7

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    const/4 v7, 0x3

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    .line 957
    :pswitch_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7, v0, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 960
    return v1

    .line 963
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7, v1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 966
    return v1

    .line 1032
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1036
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 1039
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getFocused()V

    .line 1041
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1042
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 981
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 982
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    .line 983
    iput v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    goto :goto_0

    .line 985
    :cond_1
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 987
    :goto_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->updateData()V

    goto/16 :goto_2

    .line 989
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->swichLine(I)V

    .line 992
    goto/16 :goto_2

    .line 968
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 969
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    if-nez v0, :cond_3

    .line 970
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->liveData:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    goto :goto_1

    .line 972
    :cond_3
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    .line 974
    :goto_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->updateData()V

    goto/16 :goto_2

    .line 976
    :cond_4
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->swichLine(I)V

    .line 979
    goto/16 :goto_2

    .line 994
    :pswitch_5
    iget v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->playPreCode:I

    if-nez v2, :cond_5

    .line 995
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 996
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    .line 997
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->ChannelNext()V

    goto/16 :goto_2

    .line 999
    :cond_5
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_a

    .line 1000
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7, v0, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_2

    .line 1006
    :pswitch_6
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->playPreCode:I

    if-nez v0, :cond_6

    .line 1007
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 1008
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    .line 1009
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->ChannelLast()V

    goto :goto_2

    .line 1011
    :cond_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 1012
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7, v1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_2

    .line 1070
    :pswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->initMessage(I)V

    .line 1071
    goto :goto_2

    .line 1046
    :cond_7
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showMenu()V

    .line 1056
    goto :goto_2

    .line 1018
    :cond_8
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 1019
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->epg_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1021
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1022
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1024
    :cond_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 1025
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getFocused()V

    .line 1027
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1028
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1080
    :cond_a
    :goto_2
    return v5

    .line 1058
    :cond_b
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->onBackPressed()V

    .line 1059
    return v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1419
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 511
    const-string v0, "TVLivePlayer"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 513
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 514
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mClassPoint:I

    const-string v1, "class_type"

    invoke-direct {p0, v1, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->putConfig(Ljava/lang/String;I)V

    .line 515
    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgramPoint:I

    const-string v1, "program_type"

    invoke-direct {p0, v1, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->putConfig(Ljava/lang/String;I)V

    .line 516
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->releaseWakeLock()V

    .line 520
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 524
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mPlayerStatus:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    sget-object v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;->PLAYER_PREPARED:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$PLAYER_STATUS;

    if-ne v0, v1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mVV:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->stopPlayback()V

    .line 527
    :cond_0
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 528
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 457
    const-string v0, "TVLivePlayer"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 458
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 459
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->acquireWakeLock()V

    .line 460
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "event handler thread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 465
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 466
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mEventHandler:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$EventHandler;

    .line 468
    :cond_0
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$5;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$5;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSpeedHandler:Landroid/os/Handler;

    .line 483
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->speedRunnable:Ljava/lang/Runnable;

    .line 507
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 508
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 533
    const-string v0, "TVLivePlayer"

    const-string v1, "onStop()..."

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 537
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->closeDialog()V

    .line 538
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 539
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->overridePendingTransition(II)V

    .line 540
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 541
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 794
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchX:F

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06025a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 795
    return v1

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 799
    .local v0, "result":Z
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 800
    .local v2, "screen":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 801
    iget v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSurfaceYDisplayRange:I

    if-nez v3, :cond_1

    .line 802
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mSurfaceYDisplayRange:I

    .line 804
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchY:F

    sub-float/2addr v3, v4

    .line 805
    .local v3, "y_changed":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchX:F

    sub-float/2addr v4, v5

    .line 806
    .local v4, "x_changed":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTouchX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TVLivePlayer"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTouchY="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchY:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    div-float v5, v3, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 809
    .local v5, "coef":F
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v7, v4, v7

    const v8, 0x40228f5c    # 2.54f

    mul-float v7, v7, v8

    .line 810
    .local v7, "xgesturesize":F
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "y_changed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, "...x_changed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, "...coef="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, "...xgesturesize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "joychang"

    invoke-static {v9, v8}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_9

    const/4 v10, 0x2

    if-eq v8, v1, :cond_5

    if-eq v8, v10, :cond_2

    goto/16 :goto_0

    .line 822
    :cond_2
    const-string v8, "MotionEvent.ACTION_MOVE......."

    invoke-static {v6, v8}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    .line 825
    iget-object v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v8, 0x8

    if-ne v6, v8, :cond_3

    iget v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchX:F

    iget v9, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->screenWidth:I

    div-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v6, v6, v9

    if-lez v6, :cond_3

    .line 827
    iput v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchAction:I

    .line 828
    iget v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->playPreCode:I

    if-eqz v6, :cond_3

    .line 829
    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->doVolumeTouch(F)V

    .line 832
    :cond_3
    iget-object v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_a

    iget v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchX:F

    iget v8, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->screenWidth:I

    div-int/2addr v8, v10

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_a

    .line 833
    iput v10, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchAction:I

    .line 834
    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->doBrightnessTouch(F)V

    goto :goto_0

    .line 837
    :cond_4
    iput v9, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchAction:I

    .line 839
    goto :goto_0

    .line 841
    :cond_5
    const-string v8, "MotionEvent.ACTION_UP......."

    invoke-static {v6, v8}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchAction:I

    if-ne v6, v1, :cond_7

    iget v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->playPreCode:I

    if-nez v6, :cond_7

    .line 844
    const/high16 v6, 0x42a00000    # 80.0f

    cmpl-float v6, v3, v6

    if-lez v6, :cond_6

    .line 845
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->ChannelNext()V

    goto :goto_0

    .line 846
    :cond_6
    const/high16 v6, -0x3d600000    # -80.0f

    cmpg-float v6, v3, v6

    if-gez v6, :cond_a

    .line 847
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->ChannelLast()V

    goto :goto_0

    .line 849
    :cond_7
    iget v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchAction:I

    if-ne v6, v9, :cond_a

    .line 851
    const/high16 v6, 0x43160000    # 150.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_8

    .line 852
    invoke-direct {p0, v10}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->swichLine(I)V

    goto :goto_0

    .line 853
    :cond_8
    const/high16 v6, -0x3cea0000    # -150.0f

    cmpg-float v6, v4, v6

    if-gez v6, :cond_a

    .line 854
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->swichLine(I)V

    goto :goto_0

    .line 813
    :cond_9
    const-string v8, "MotionEvent.ACTION_DOWN......."

    invoke-static {v6, v8}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const/4 v6, 0x0

    iput v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchAction:I

    .line 815
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchY:F

    .line 816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mTouchX:F

    .line 817
    iget-object v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->maxVolume:I

    .line 818
    iget-object v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->currentVolume:I

    .line 819
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetLightness(Landroid/app/Activity;)F

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->Lightness:F

    .line 820
    nop

    .line 859
    :cond_a
    :goto_0
    return v1
.end method

.method protected setListener()V
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->downview:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgranList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 741
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mProgranList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 743
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$11;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 787
    return-void
.end method
