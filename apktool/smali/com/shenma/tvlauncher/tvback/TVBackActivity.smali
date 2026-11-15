.class public Lcom/shenma/tvlauncher/tvback/TVBackActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "TVBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/tvback/TVBackActivity$WindowMessageID;,
        Lcom/shenma/tvlauncher/tvback/TVBackActivity$MenuType;
    }
.end annotation


# static fields
.field private static final DURATION_TIME:I = 0x493e0

.field private static final POWER_LOCK:Ljava/lang/String; = "TVBackActivity"

.field private static final SCREEN_DEFAULT:I = 0x1

.field private static final SCREEN_FULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TVBackActivity"

.field private static final TIME:I = 0x1770

.field private static final TOUCH_BRIGHTNESS:I = 0x2

.field private static final TOUCH_NONE:I = 0x0

.field private static final TOUCH_SEEK:I = 0x3

.field private static final TOUCH_VOLUME:I = 0x1

.field private static WD_Selector:[I

.field private static loadFlag:Z

.field private static mChannelDatelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mNowProgramlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mProgramlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mchannellist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static medialist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static rb:[Landroid/widget/RadioButton;

.field public static rbChecked:I


# instance fields
.field private ISCNTV:Z

.field private Lightness:F

.field private back_video_blck:Landroid/widget/ImageView;

.field private channelAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;

.field private controlHeight:I

.field private controlView:Landroid/view/View;

.field private controler:Landroid/widget/PopupWindow;

.field private currentVolume:I

.field private firstTime:J

.field private isControllerShow:Z

.field private isFull:Z

.field private isMenuItemShow:Z

.field private isOnline:Ljava/lang/Boolean;

.field private isProgress:Z

.field private lv_tv_back_channles:Landroid/widget/ListView;

.field private lv_tv_back_videos:Landroid/widget/ListView;

.field private mApp:Lcom/shenma/tvlauncher/application/MyApplication;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mPostion:I

.field private mProgramPostion:I

.field private mProgressHandler:Landroid/os/Handler;

.field private mSurfaceYDisplayRange:I

.field private mToast:Landroid/widget/Toast;

.field private mTouchAction:I

.field private mTouchX:F

.field private mTouchY:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maxVolume:I

.field private menulist:Landroid/widget/ListView;

.field private menupopupWindow:Landroid/widget/PopupWindow;

.field pose:I

.field pose_start:I

.field private programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

.field private rb_tv_back_rd_1:Landroid/widget/RadioButton;

.field private rb_tv_back_rd_2:Landroid/widget/RadioButton;

.field private rb_tv_back_rd_3:Landroid/widget/RadioButton;

.field private rb_tv_back_rd_4:Landroid/widget/RadioButton;

.field private rb_tv_back_rd_5:Landroid/widget/RadioButton;

.field private rb_tv_back_rd_6:Landroid/widget/RadioButton;

.field private rb_tv_back_rd_7:Landroid/widget/RadioButton;

.field private rl_ProgressBar:Landroid/widget/RelativeLayout;

.field private screenHeight:I

.field private screenWidth:I

.field private seekBar:Landroid/widget/SeekBar;

.field private tv_back_current_channel:Landroid/widget/TextView;

.field private tv_back_current_tv:Landroid/widget/TextView;

.field private tv_back_next_tv:Landroid/widget/TextView;

.field private tv_currentTime:Landroid/widget/TextView;

.field private tv_totalTime:Landroid/widget/TextView;

.field private tvbackname:Ljava/lang/String;

.field updateThread:Ljava/lang/Runnable;

.field private updateinfo:Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

.field private videoLength:I

.field private vv:Lcom/shenma/tvlauncher/view/VideoView;

.field private weekdays:Landroid/widget/RadioGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadFlag:Z

    .line 94
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->WD_Selector:[I

    return-void

    :array_0
    .array-data 4
        0x7f070149
        0x7f07014d
        0x7f07014f
        0x7f07014c
        0x7f070148
        0x7f07014a
        0x7f07014b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    .line 103
    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    .line 120
    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    .line 121
    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    .line 122
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    .line 123
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isProgress:Z

    .line 127
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->firstTime:J

    .line 130
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    .line 131
    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlHeight:I

    .line 134
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isOnline:Ljava/lang/Boolean;

    .line 136
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateinfo:Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

    .line 137
    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 139
    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 140
    const-string v2, ""

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tvbackname:Ljava/lang/String;

    .line 141
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    .line 144
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isMenuItemShow:Z

    .line 145
    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    .line 152
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->ISCNTV:Z

    .line 153
    new-instance v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$1;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    .line 166
    new-instance v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$2;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/view/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->ISCNTV:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideControllerDelay()V

    return-void
.end method

.method static synthetic access$1100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->cancelDelayHide()V

    return-void
.end method

.method static synthetic access$1200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    return-void
.end method

.method static synthetic access$1300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideMenu()V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/ArrayList;
    .locals 1

    .line 75
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1402(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .line 75
    sput-object p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tvbackname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tvbackname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .locals 1

    .line 75
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .line 75
    sput-object p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramlist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/application/MyApplication;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mApp:Lcom/shenma/tvlauncher/application/MyApplication;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .param p1, "x1"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setVideoScale(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    return v0
.end method

.method static synthetic access$2000()Ljava/util/ArrayList;
    .locals 1

    .line 75
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .line 75
    sput-object p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .param p1, "x1"    # I

    .line 75
    iput p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    return p1
.end method

.method static synthetic access$208(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    return v0
.end method

.method static synthetic access$2100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    return v0
.end method

.method static synthetic access$2102(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .param p1, "x1"    # I

    .line 75
    iput p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    return p1
.end method

.method static synthetic access$2108(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    return v0
.end method

.method static synthetic access$2200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    .line 75
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadMediaFromXml(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2500()[Landroid/widget/RadioButton;
    .locals 1

    .line 75
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showMenu()V

    return-void
.end method

.method static synthetic access$2700()Ljava/util/ArrayList;
    .locals 1

    .line 75
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2702(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .line 75
    sput-object p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 75
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isOnline:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_channel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_next_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBarUpdate()V

    return-void
.end method

.method static synthetic access$3300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400()Ljava/util/ArrayList;
    .locals 1

    .line 75
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3402(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .line 75
    sput-object p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateinfo:Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;)Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

    .line 75
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateinfo:Lcom/shenma/tvlauncher/tvback/domain/UpdateInfo;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menulist:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_currentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .param p1, "x1"    # Landroid/os/Message;

    .line 75
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->onMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    return v0
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    return v0
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 75
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showController()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 205
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 207
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x2000000a

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 210
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 212
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private cancelDelayHide()V
    .locals 2

    .line 1151
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1152
    return-void
.end method

.method private doBrightnessTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 1518
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchAction:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 1519
    return-void

    .line 1520
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchAction:I

    .line 1521
    neg-float v0, p1

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mSurfaceYDisplayRange:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 1522
    .local v0, "delta":F
    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->Lightness:F

    add-float/2addr v1, v0

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 1524
    .local v1, "vol":I
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 1525
    const/4 v2, 0x5

    const/16 v3, 0xff

    const v4, 0x7f0700f0

    const/4 v5, 0x0

    if-ge v1, v2, :cond_1

    .line 1526
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v4, v3, v5, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 1528
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v4, v3, v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 1530
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->Lightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "....vol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "...delta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "....mSurfaceYDisplayRange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mSurfaceYDisplayRange:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doBrightnessTouch"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    :cond_2
    return-void
.end method

.method private doVolumeTouch(F)V
    .locals 6
    .param p1, "y_changed"    # F

    .line 1489
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchAction:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 1490
    return-void

    .line 1491
    :cond_0
    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchAction:I

    .line 1492
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mSurfaceYDisplayRange:I

    int-to-float v0, v0

    div-float v0, p1, v0

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    neg-int v0, v0

    .line 1493
    .local v0, "delta":I
    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->currentVolume:I

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1494
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

    .line 1495
    if-eqz v0, :cond_3

    .line 1496
    if-ge v3, v1, :cond_1

    .line 1497
    const v1, 0x7f0700f3

    iget v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    .line 1498
    nop

    .line 1497
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 1500
    :cond_1
    if-lt v3, v1, :cond_2

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    div-int/lit8 v4, v1, 0x2

    if-ge v3, v4, :cond_2

    .line 1501
    const v4, 0x7f0700f2

    .line 1502
    nop

    .line 1501
    invoke-direct {p0, v4, v1, v3, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    goto :goto_0

    .line 1505
    :cond_2
    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    div-int/lit8 v4, v1, 0x2

    if-lt v3, v4, :cond_3

    .line 1506
    const v4, 0x7f0700f1

    .line 1507
    nop

    .line 1506
    invoke-direct {p0, v4, v1, v3, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showVolumeToast(IIILjava/lang/Boolean;)V

    .line 1512
    :cond_3
    :goto_0
    return-void
.end method

.method private fastForward()V
    .locals 4

    .line 1330
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->videoLength:I

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    sub-int v2, v0, v1

    const/16 v3, 0x3a98

    if-le v2, v3, :cond_0

    .line 1331
    add-int/2addr v1, v3

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    goto :goto_0

    .line 1333
    :cond_0
    sub-int/2addr v0, v3

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    .line 1335
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isProgress:Z

    .line 1336
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->cancelDelayHide()V

    .line 1337
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1338
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1339
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_currentTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->toTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    return-void
.end method

.method private getScreenSize()V
    .locals 2

    .line 1200
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1201
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenHeight:I

    .line 1202
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenWidth:I

    .line 1203
    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenHeight:I

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlHeight:I

    .line 1204
    return-void
.end method

.method private hideController()V
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    .line 1148
    :cond_0
    return-void
.end method

.method private hideControllerDelay()V
    .locals 4

    .line 1155
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->cancelDelayHide()V

    .line 1156
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1157
    return-void
.end method

.method private hideMenu()V
    .locals 1

    .line 1431
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1434
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 2

    .line 277
    const v0, 0x7f0e00f4

    invoke-static {p0, v0}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 278
    const/4 v0, 0x0

    sput-boolean v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadFlag:Z

    .line 279
    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V

    .line 280
    return-void
.end method

.method private loadDataFromXml(Ljava/lang/String;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "menuType"    # I

    .line 676
    const-string v0, "TVBackActivity"

    const-string v1, "_loadDataFromXml() start"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    move-object v1, p1

    .line 679
    .local v1, "encodeUrl":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 683
    goto :goto_0

    .line 680
    :catch_0
    move-exception v2

    .line 681
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 682
    move-object v1, p1

    .line 684
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    new-instance v2, Lcom/shenma/tvlauncher/network/PullXmlParserThread;

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;

    invoke-direct {v5, p0, p2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/shenma/tvlauncher/network/PullXmlParserThread;-><init>(JLcom/shenma/tvlauncher/network/PullXmlParserCallback;Ljava/lang/String;)V

    .line 837
    .local v2, "parser":Lcom/shenma/tvlauncher/network/PullXmlParserThread;
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->start()Z

    .line 839
    const-string v3, "_loadDataFromXml() end"

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method private loadMainUI()V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->initView()V

    .line 255
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->initData()V

    .line 256
    return-void
.end method

.method private loadMediaFromXml(Ljava/lang/String;I)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "menuType"    # I

    .line 916
    move-object v0, p1

    .line 917
    .local v0, "encodeUrl":Ljava/lang/String;
    new-instance v1, Lcom/shenma/tvlauncher/network/PullXmlParserThread;

    new-instance v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;

    invoke-direct {v2, p0, p2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$14;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4, v2, p1}, Lcom/shenma/tvlauncher/network/PullXmlParserThread;-><init>(JLcom/shenma/tvlauncher/network/PullXmlParserCallback;Ljava/lang/String;)V

    .line 1001
    .local v1, "parser":Lcom/shenma/tvlauncher/network/PullXmlParserThread;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/network/PullXmlParserThread;->start()Z

    .line 1003
    return-void
.end method

.method private onMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1043
    const-string v0, "TVBackActivity"

    if-eqz p1, :cond_7

    .line 1044
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-eq v1, v3, :cond_5

    const/16 v3, 0x10

    if-eq v1, v3, :cond_4

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1095
    :pswitch_0
    iput-boolean v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->ISCNTV:Z

    .line 1096
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1097
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->ISCNTV:Z

    .line 1098
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;->getMediaurl()Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, "mediaurl":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1100
    .end local v1    # "mediaurl":Ljava/lang/String;
    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    add-int/lit8 v4, v3, 0x1

    if-le v1, v4, :cond_1

    .line 1101
    add-int/2addr v3, v2

    iput v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    .line 1102
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 1103
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 1102
    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadMediaFromXml(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1105
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/VideoView;->stopPlayback()V

    .line 1107
    goto/16 :goto_0

    .line 1088
    :pswitch_1
    new-instance v1, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    sget-object v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramlist:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    .line 1090
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1091
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1092
    goto/16 :goto_0

    .line 1109
    :pswitch_2
    const v1, 0x7f0e01a9

    .line 1110
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1111
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1112
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1113
    goto/16 :goto_0

    .line 1075
    :pswitch_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mApp:Lcom/shenma/tvlauncher/application/MyApplication;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    iget v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    .line 1076
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    iget v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    .line 1077
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1075
    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/application/MyApplication;->setOnPlay(Ljava/lang/String;)V

    .line 1078
    new-instance v1, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    sget-object v3, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v3}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    .line 1080
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1081
    sget-boolean v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadFlag:Z

    if-nez v1, :cond_2

    .line 1082
    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->notifyData(I)V

    .line 1084
    :cond_2
    sput-boolean v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadFlag:Z

    .line 1085
    goto/16 :goto_0

    .line 1063
    :pswitch_4
    new-instance v1, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;

    sget-object v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->channelAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;

    .line 1065
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_channles:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->channelAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1066
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1067
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->getChanneUrl()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "dataUrl":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->getChanneName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tvbackname:Ljava/lang/String;

    .line 1069
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_channel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tvbackname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V

    .line 1071
    .end local v1    # "dataUrl":Ljava/lang/String;
    goto :goto_0

    .line 1047
    :pswitch_5
    const-string v1, ""

    .line 1048
    .local v1, "programUrl":Ljava/lang/String;
    const v2, 0x7f0e00f4

    invoke-static {p0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1049
    const-string/jumbo v2, "\u8bbe\u7f6e\u65e5\u671f\u5217\u8868....loadingShow_tv"

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadFlag:Z

    if-nez v2, :cond_3

    .line 1051
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setChannelDate()V

    .line 1052
    sget-object v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->getChannelDate_Url()Ljava/lang/String;

    move-result-object v1

    .line 1053
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V

    goto :goto_0

    .line 1055
    :cond_3
    sget-object v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    sget v3, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    .line 1056
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->getChannelDate_Url()Ljava/lang/String;

    move-result-object v1

    .line 1057
    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V

    .line 1060
    goto :goto_0

    .line 1123
    .end local v1    # "programUrl":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rl_ProgressBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1124
    goto :goto_0

    .line 1119
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rl_ProgressBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1121
    goto :goto_0

    .line 1116
    :cond_6
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    .line 1130
    :cond_7
    :goto_0
    const-string v1, "_onMessage() end"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 219
    :cond_0
    return-void
.end method

.method private rewind()V
    .locals 2

    .line 1347
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    const/16 v1, 0x3a98

    if-le v0, v1, :cond_0

    .line 1348
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    goto :goto_0

    .line 1350
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    .line 1352
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isProgress:Z

    .line 1353
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->cancelDelayHide()V

    .line 1354
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1355
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1356
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_currentTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->toTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    return-void
.end method

.method private seekBarUpdate()V
    .locals 2

    .line 1208
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isOnline:Ljava/lang/Boolean;

    .line 1209
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/VideoView;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->videoLength:I

    .line 1210
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1211
    const v0, 0x493e0

    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int v1, v1, v0

    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->videoLength:I

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->videoLength:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1214
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_totalTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->videoLength:I

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->toTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideControllerDelay()V

    .line 1216
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1217
    return-void
.end method

.method private setVideoScale(I)V
    .locals 5
    .param p1, "flag"    # I

    .line 1165
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->back_video_blck:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1180
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenWidth:I

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1182
    .local v0, "fl_def":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 1183
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060265

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1184
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060442

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1182
    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1185
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v2, v0}, Lcom/shenma/tvlauncher/view/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1186
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setFocusable(Z)V

    .line 1187
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setClickable(Z)V

    .line 1188
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    .line 1189
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 1190
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgramPostion:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1167
    .end local v0    # "fl_def":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->back_video_blck:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1168
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/VideoView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenWidth:I

    .line 1169
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/VideoView;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenHeight:I

    .line 1170
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1172
    .local v2, "fl_full":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1173
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1174
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    .line 1175
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/view/VideoView;->setFocusable(Z)V

    .line 1176
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->requestFocus()Z

    .line 1177
    nop

    .line 1193
    .end local v2    # "fl_full":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void
.end method

.method private setvvListener()V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 571
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$9;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 614
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 638
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$11;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$11;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 659
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$12;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$12;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setOnPlayingBufferCacheListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 666
    return-void
.end method

.method private showController()V
    .locals 4

    .line 1135
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1136
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    const/4 v2, 0x0

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1137
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlHeight:I

    div-int/lit8 v1, v1, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    .line 1139
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1140
    return-void
.end method

.method private showMenu()V
    .locals 4

    .line 1412
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menulist:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->programAdapter:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1413
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1414
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    const/4 v2, 0x0

    const/16 v3, 0x35

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1415
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 1416
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0602f6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1415
    const/4 v3, -0x2

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1418
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isMenuItemShow:Z

    .line 1419
    return-void
.end method

.method private showVolumeToast(IIILjava/lang/Boolean;)V
    .locals 6
    .param p1, "resId"    # I
    .param p2, "max"    # I
    .param p3, "current"    # I
    .param p4, "isVolume"    # Ljava/lang/Boolean;

    .line 1545
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1546
    invoke-static {p0, p3}, Lcom/shenma/tvlauncher/utils/Utils;->SetLightness(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 1549
    invoke-virtual {v0, v2, p3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1551
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    const v2, 0x7f080054

    const v3, 0x7f080053

    if-nez v0, :cond_1

    .line 1552
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    .line 1553
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0a0041

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1555
    .local v0, "view":Landroid/view/View;
    nop

    .line 1556
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1559
    .local v3, "center_image":Landroid/widget/ImageView;
    nop

    .line 1560
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 1561
    .local v2, "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1562
    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1563
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1564
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1565
    .end local v2    # "center_progress":Landroid/widget/ProgressBar;
    .end local v3    # "center_image":Landroid/widget/ImageView;
    goto :goto_1

    .line 1566
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 1569
    .restart local v0    # "view":Landroid/view/View;
    nop

    .line 1570
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1571
    .restart local v3    # "center_image":Landroid/widget/ImageView;
    nop

    .line 1572
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 1573
    .restart local v2    # "center_progress":Landroid/widget/ProgressBar;
    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1574
    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1575
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1577
    .end local v2    # "center_progress":Landroid/widget/ProgressBar;
    .end local v3    # "center_image":Landroid/widget/ImageView;
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 1579
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 1580
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1581
    return-void
.end method

.method private updataMenu()V
    .locals 4

    .line 1423
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    const/4 v2, 0x0

    const/16 v3, 0x35

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1424
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 1425
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0602f6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1424
    const/4 v3, -0x2

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1427
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1221
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1222
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isProgress:Z

    if-eqz v0, :cond_2

    .line 1223
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideControllerDelay()V

    .line 1224
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->ISCNTV:Z

    if-eqz v0, :cond_1

    .line 1225
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    const v1, 0x493e0

    if-le v0, v1, :cond_0

    .line 1226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    .line 1227
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    .line 1228
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    if-le v0, v2, :cond_0

    .line 1229
    iput v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    .line 1230
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    sget-object v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->medialist:Ljava/util/ArrayList;

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mPostion:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    .line 1231
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;->getMediaurl()Ljava/lang/String;

    move-result-object v2

    .line 1230
    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1234
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    rem-int/2addr v0, v1

    .line 1235
    .local v0, "pose_end":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/view/VideoView;->seekTo(I)V

    .line 1236
    .end local v0    # "pose_end":I
    goto :goto_0

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->seekTo(I)V

    .line 1240
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isProgress:Z

    .line 1243
    :cond_2
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1245
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1246
    .local v0, "keyCode":I
    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    const/16 v1, 0x42

    if-eq v0, v1, :cond_7

    const/16 v1, 0x52

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1300
    :pswitch_0
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_6

    .line 1301
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    .line 1302
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showMenu()V

    goto :goto_1

    .line 1286
    :pswitch_1
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_b

    .line 1287
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    if-nez v1, :cond_4

    .line 1288
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showController()V

    .line 1290
    :cond_4
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->fastForward()V

    goto/16 :goto_2

    .line 1278
    :pswitch_2
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_b

    .line 1279
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    if-nez v1, :cond_5

    .line 1280
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showController()V

    .line 1282
    :cond_5
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rewind()V

    goto/16 :goto_2

    .line 1318
    :pswitch_3
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_b

    .line 1319
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    goto/16 :goto_2

    .line 1311
    :pswitch_4
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_b

    .line 1312
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isControllerShow:Z

    if-nez v1, :cond_b

    .line 1313
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showController()V

    goto/16 :goto_2

    .line 1305
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_b

    .line 1306
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    .line 1307
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showMenu()V

    goto :goto_2

    .line 1294
    :cond_7
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v1, :cond_b

    .line 1295
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    .line 1296
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->showMenu()V

    goto :goto_2

    .line 1248
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "weekdays.requestFocus()==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    .line 1249
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->requestFocus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1248
    const-string v3, "TVBackActivity"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lv_tv_back_videos.hasFocus()==="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    .line 1253
    invoke-virtual {v4}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1250
    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1255
    .local v2, "secondTime":J
    iget-boolean v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->isFull:Z

    if-eqz v4, :cond_9

    .line 1256
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->hideController()V

    .line 1257
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setVideoScale(I)V

    .line 1258
    return v1

    .line 1259
    :cond_9
    iget-wide v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->firstTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xbb8

    cmp-long v8, v4, v6

    if-lez v8, :cond_a

    .line 1260
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->requestFocus()Z

    .line 1261
    const v4, 0x7f0e0126

    const v5, 0x7f07013e

    invoke-static {p0, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1263
    iput-wide v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->firstTime:J

    .line 1264
    return v1

    .line 1266
    :cond_a
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->finish()V

    .line 1276
    nop

    .line 1323
    .end local v2    # "secondTime":J
    :cond_b
    :goto_2
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected findViewById()V
    .locals 3

    .line 286
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/RadioButton;

    sput-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    .line 287
    const v0, 0x7f080236

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_channles:Landroid/widget/ListView;

    .line 288
    const v0, 0x7f08023f

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    .line 289
    const v0, 0x7f080237

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_channel:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f080238

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_tv:Landroid/widget/TextView;

    .line 291
    const v0, 0x7f08023c

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_next_tv:Landroid/widget/TextView;

    .line 292
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->back_video_blck:Landroid/widget/ImageView;

    .line 293
    const v0, 0x7f0801b9

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    .line 294
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    .line 295
    const v1, 0x7f08019c

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_1:Landroid/widget/RadioButton;

    .line 296
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_1:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 297
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    .line 298
    const v1, 0x7f08019d

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_2:Landroid/widget/RadioButton;

    .line 299
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_2:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 300
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    .line 301
    const v1, 0x7f08019e

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_3:Landroid/widget/RadioButton;

    .line 302
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_3:Landroid/widget/RadioButton;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 303
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    .line 304
    const v1, 0x7f08019f

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_4:Landroid/widget/RadioButton;

    .line 305
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_4:Landroid/widget/RadioButton;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 306
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    .line 307
    const v1, 0x7f0801a0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_5:Landroid/widget/RadioButton;

    .line 308
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_5:Landroid/widget/RadioButton;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 309
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    .line 310
    const v1, 0x7f0801a1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_6:Landroid/widget/RadioButton;

    .line 311
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_6:Landroid/widget/RadioButton;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 312
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    .line 313
    const v1, 0x7f0801a2

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_7:Landroid/widget/RadioButton;

    .line 314
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb_tv_back_rd_7:Landroid/widget/RadioButton;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 315
    const v0, 0x7f0802d6

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/VideoView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    .line 316
    const v0, 0x7f0801c7

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rl_ProgressBar:Landroid/widget/RelativeLayout;

    .line 317
    return-void
.end method

.method protected initView()V
    .locals 1

    .line 262
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 263
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 264
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getScreenSize()V

    .line 265
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadViewLayout()V

    .line 266
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->findViewById()V

    .line 267
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setListener()V

    .line 268
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setvvListener()V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    .line 270
    return-void
.end method

.method protected loadViewLayout()V
    .locals 3

    .line 320
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlView:Landroid/view/View;

    .line 322
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlView:Landroid/view/View;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controler:Landroid/widget/PopupWindow;

    .line 324
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0801d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBar:Landroid/widget/SeekBar;

    .line 325
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlView:Landroid/view/View;

    .line 326
    const v1, 0x7f080257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_currentTime:Landroid/widget/TextView;

    .line 327
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->controlView:Landroid/view/View;

    const v1, 0x7f0802b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_totalTime:Landroid/widget/TextView;

    .line 328
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->onCreateMenu()V

    .line 329
    return-void
.end method

.method protected notifyData(I)V
    .locals 3
    .param p1, "postion"    # I

    .line 1022
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_channel:Landroid/widget/TextView;

    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mchannellist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->getChanneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_current_tv:Landroid/widget/TextView;

    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 1024
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v1

    .line 1023
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_next_tv:Landroid/widget/TextView;

    const-string/jumbo v1, "\u4ee5\u5b9e\u9645\u64ad\u653e\u8282\u76ee\u4e3a\u51c6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->tv_back_next_tv:Landroid/widget/TextView;

    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 1029
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v1

    .line 1028
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    :goto_0
    const v0, 0x7f0e00f4

    invoke-static {p0, v0}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1032
    const-string v0, "TVBackActivity"

    const-string/jumbo v1, "\u5237\u65b0\u8282\u76ee\u5217\u8868....loadingShow_tv"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mNowProgramlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadMediaFromXml(Ljava/lang/String;I)V

    .line 1035
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 177
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setContentView(I)V

    .line 179
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity---->onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/application/MyApplication;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mApp:Lcom/shenma/tvlauncher/application/MyApplication;

    .line 181
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadMainUI()V

    .line 182
    return-void
.end method

.method public onCreateMenu()V
    .locals 3

    .line 1363
    const v0, 0x7f0a0067

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1364
    .local v0, "menuView":Landroid/view/View;
    nop

    .line 1365
    const v1, 0x7f08023a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menulist:Landroid/widget/ListView;

    .line 1366
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 1368
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1369
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1370
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1371
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity$15;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$15;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1385
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1408
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 223
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 224
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 225
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->vv:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->stopPlayback()V

    .line 228
    :cond_0
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity---->onDestroy"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 234
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 235
    const-string v0, "TVBackActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 236
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 237
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->releaseWakeLock()V

    .line 238
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    const-string v1, "TVBackActivity---->onPause"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 192
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 193
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->acquireWakeLock()V

    .line 194
    const-string v0, "TVBackActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 195
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 199
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    const-string v1, "TVBackActivity---->onResume"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 186
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 187
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity---->onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 244
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 245
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 246
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity---->onStop"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1440
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1442
    .local v0, "result":Z
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1443
    .local v1, "screen":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1444
    iget v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mSurfaceYDisplayRange:I

    if-nez v2, :cond_0

    .line 1445
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mSurfaceYDisplayRange:I

    .line 1447
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchY:F

    sub-float/2addr v2, v3

    .line 1448
    .local v2, "y_changed":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchX:F

    sub-float/2addr v3, v4

    .line 1450
    .local v3, "x_changed":F
    div-float v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1451
    .local v4, "coef":F
    iget v5, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v5, v3, v5

    const v6, 0x40228f5c    # 2.54f

    mul-float v5, v5, v6

    .line 1452
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

    .line 1455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    const-string v8, "TVBackActivity"

    if-eqz v6, :cond_4

    if-eq v6, v7, :cond_3

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1

    goto :goto_0

    .line 1468
    :cond_1
    const-string v6, "MotionEvent.ACTION_MOVE......."

    invoke-static {v8, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_5

    .line 1471
    iget v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchX:F

    iget v8, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenWidth:I

    div-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    .line 1473
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->doVolumeTouch(F)V

    .line 1475
    :cond_2
    iget v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchX:F

    iget v8, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->screenWidth:I

    div-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_5

    .line 1476
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->doBrightnessTouch(F)V

    goto :goto_0

    .line 1481
    :cond_3
    const-string v6, "MotionEvent.ACTION_UP......."

    invoke-static {v8, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1457
    :cond_4
    const-string v6, "MotionEvent.ACTION_DOWN......."

    invoke-static {v8, v6}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const/4 v6, 0x0

    iput v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchAction:I

    .line 1459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchY:F

    .line 1460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mTouchX:F

    .line 1461
    iget-object v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1462
    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->maxVolume:I

    .line 1463
    iget-object v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1464
    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->currentVolume:I

    .line 1465
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetLightness(Landroid/app/Activity;)F

    move-result v6

    iput v6, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->Lightness:F

    .line 1466
    nop

    .line 1484
    :cond_5
    :goto_0
    return v7
.end method

.method protected setChannelDate()V
    .locals 17

    .line 847
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string/jumbo v2, "\u661f\u671f\u65e5"

    const-string/jumbo v4, "\u661f\u671f\u516d"

    const-string/jumbo v6, "\u661f\u671f\u4e94"

    const v7, 0x7f07014f

    const-string/jumbo v8, "\u661f\u671f\u56db"

    const v9, 0x7f07014d

    const-string/jumbo v10, "\u661f\u671f\u4e09"

    const v11, 0x7f070149

    const-string/jumbo v12, "\u661f\u671f\u4e8c"

    const-string/jumbo v13, "\u661f\u671f\u4e00"

    const-string v14, "/"

    const/4 v15, 0x1

    const/4 v1, 0x6

    if-le v0, v1, :cond_8

    .line 848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_7

    .line 849
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->getChannelDate_label()Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, "mdate":Ljava/lang/String;
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getWeekToDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, "mweek":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v5, v16, 0x1

    .line 852
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    .line 851
    invoke-virtual {v1, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 853
    .local v5, "text":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 854
    sget-object v15, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v15, v15, v0

    invoke-virtual {v15, v11}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 855
    sget-object v15, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v15, v15, v0

    invoke-virtual {v15, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 856
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 857
    sget-object v15, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v15, v15, v0

    invoke-virtual {v15, v9}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 858
    sget-object v15, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v15, v15, v0

    invoke-virtual {v15, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 859
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 860
    sget-object v15, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v15, v15, v0

    invoke-virtual {v15, v7}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 861
    sget-object v15, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v15, v15, v0

    invoke-virtual {v15, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 862
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 863
    sget-object v15, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v15, v15, v0

    const v7, 0x7f07014c

    invoke-virtual {v15, v7}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 864
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 865
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 866
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    const v15, 0x7f070148

    invoke-virtual {v7, v15}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 867
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 868
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 869
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    const v15, 0x7f07014a

    invoke-virtual {v7, v15}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 870
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 871
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 872
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    const v15, 0x7f07014b

    invoke-virtual {v7, v15}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 873
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 848
    .end local v1    # "mdate":Ljava/lang/String;
    .end local v3    # "mweek":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const v7, 0x7f07014f

    const/4 v15, 0x1

    goto/16 :goto_0

    .end local v0    # "i":I
    :cond_7
    goto/16 :goto_4

    .line 877
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 878
    sget-object v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->getChannelDate_label()Ljava/lang/String;

    move-result-object v1

    .line 879
    .restart local v1    # "mdate":Ljava/lang/String;
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getWeekToDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 880
    .restart local v3    # "mweek":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    .line 881
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 880
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 882
    .restart local v5    # "text":Ljava/lang/String;
    if-eqz v3, :cond_9

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 883
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v11}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 884
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f07014f

    goto/16 :goto_3

    .line 885
    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 886
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 887
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f07014f

    goto/16 :goto_3

    .line 888
    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 889
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    const v15, 0x7f07014f

    invoke-virtual {v7, v15}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 890
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 888
    :cond_b
    const v15, 0x7f07014f

    .line 891
    if-eqz v3, :cond_c

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 892
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    const v9, 0x7f07014c

    invoke-virtual {v7, v9}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 893
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 891
    :cond_c
    const v9, 0x7f07014c

    .line 894
    if-eqz v3, :cond_d

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 895
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    const v9, 0x7f070148

    invoke-virtual {v7, v9}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 896
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 894
    :cond_d
    const v9, 0x7f070148

    .line 897
    if-eqz v3, :cond_e

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 898
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    const v9, 0x7f07014a

    invoke-virtual {v7, v9}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 899
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 897
    :cond_e
    const v9, 0x7f07014a

    .line 900
    if-eqz v3, :cond_f

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 901
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    const v9, 0x7f07014b

    invoke-virtual {v7, v9}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 902
    sget-object v7, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 877
    .end local v1    # "mdate":Ljava/lang/String;
    .end local v3    # "mweek":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :cond_f
    :goto_3
    add-int/lit8 v0, v0, 0x1

    const v9, 0x7f07014d

    goto/16 :goto_2

    .line 906
    .end local v0    # "i":I
    :cond_10
    :goto_4
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rb:[Landroid/widget/RadioButton;

    sget v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 907
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_channles:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 909
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_channles:Landroid/widget/ListView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$3;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->lv_tv_back_videos:Landroid/widget/ListView;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->weekdays:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 468
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 504
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 542
    return-void
.end method

.method protected setProgramData(I)V
    .locals 3
    .param p1, "type"    # I

    .line 1009
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1010
    sget-object v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->mChannelDatelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->getChannelDate_Url()Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "dataUrl":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V

    .line 1012
    const v1, 0x7f0e00f4

    invoke-static {p0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1013
    const-string v1, "TVBackActivity"

    const-string/jumbo v2, "\u52a0\u8f7d\u754c\u9762\u5217\u8868....loadingShow_tv"

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    .end local v0    # "dataUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method
