.class public Lcom/shenma/tvlauncher/view/MyServices;
.super Landroid/app/Service;
.source "MyServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;
    }
.end annotation


# instance fields
.field private Name:Ljava/lang/String;

.field private Name_check:I

.field private Verifysign:Ljava/lang/String;

.field private Verifysign_check:I

.field private Vpn_check:I

.field private Xp_check:I

.field private mediaHandler:Landroid/os/Handler;

.field private serviceThread:Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Lcom/shenma/tvlauncher/view/MyServices$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/MyServices$1;-><init>(Lcom/shenma/tvlauncher/view/MyServices;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->mediaHandler:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    const-string v1, "Vpn_check"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/MyServices;->Vpn_check:I

    .line 60
    const-string v1, "Xp_check"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/MyServices;->Xp_check:I

    .line 61
    const-string v1, "Verifysign_check"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/MyServices;->Verifysign_check:I

    .line 62
    const-string v1, ""

    const-string v2, "Verifysign"

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/view/MyServices;->Verifysign:Ljava/lang/String;

    .line 63
    const-string v2, "Name_check"

    invoke-static {p0, v2, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->Name_check:I

    .line 64
    const-string v0, "Name"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->Name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/MyServices;

    .line 19
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->mediaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/view/MyServices;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/MyServices;

    .line 19
    iget v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->Vpn_check:I

    return v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/view/MyServices;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/MyServices;

    .line 19
    iget v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->Xp_check:I

    return v0
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/view/MyServices;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/MyServices;

    .line 19
    iget v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->Verifysign_check:I

    return v0
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/view/MyServices;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/MyServices;

    .line 19
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->Verifysign:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/view/MyServices;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/MyServices;

    .line 19
    iget v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->Name_check:I

    return v0
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/view/MyServices;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/MyServices;

    .line 19
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->Name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 84
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->serviceThread:Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->flag:Z

    .line 85
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->thread:Ljava/lang/Thread;

    .line 87
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 74
    new-instance v0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;-><init>(Lcom/shenma/tvlauncher/view/MyServices;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->serviceThread:Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;

    .line 75
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyServices;->serviceThread:Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->thread:Ljava/lang/Thread;

    .line 76
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 97
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
