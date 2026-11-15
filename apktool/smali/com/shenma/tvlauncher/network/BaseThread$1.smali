.class Lcom/shenma/tvlauncher/network/BaseThread$1;
.super Ljava/lang/Thread;
.source "BaseThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/network/BaseThread;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/network/BaseThread;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/network/BaseThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/network/BaseThread;

    .line 40
    iput-object p1, p0, Lcom/shenma/tvlauncher/network/BaseThread$1;->this$0:Lcom/shenma/tvlauncher/network/BaseThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 47
    const-string v0, "BaseThread"

    const-string v1, "run() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/network/BaseThread$1;->this$0:Lcom/shenma/tvlauncher/network/BaseThread;

    iget-object v1, v1, Lcom/shenma/tvlauncher/network/BaseThread;->mState:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    sget-object v2, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->RUN:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    if-ne v1, v2, :cond_1

    .line 52
    iget-object v1, p0, Lcom/shenma/tvlauncher/network/BaseThread$1;->this$0:Lcom/shenma/tvlauncher/network/BaseThread;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/network/BaseThread;->_done()V

    .line 54
    iget-object v1, p0, Lcom/shenma/tvlauncher/network/BaseThread$1;->this$0:Lcom/shenma/tvlauncher/network/BaseThread;

    iget-wide v1, v1, Lcom/shenma/tvlauncher/network/BaseThread;->mTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 55
    iget-object v1, p0, Lcom/shenma/tvlauncher/network/BaseThread$1;->this$0:Lcom/shenma/tvlauncher/network/BaseThread;

    iget-wide v1, v1, Lcom/shenma/tvlauncher/network/BaseThread;->mTimeout:J

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/network/BaseThread$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :cond_1
    goto :goto_1

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 61
    iget-object v2, p0, Lcom/shenma/tvlauncher/network/BaseThread$1;->this$0:Lcom/shenma/tvlauncher/network/BaseThread;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/network/BaseThread;->_interrupted()V

    .line 64
    iget-object v2, p0, Lcom/shenma/tvlauncher/network/BaseThread$1;->this$0:Lcom/shenma/tvlauncher/network/BaseThread;

    sget-object v3, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->ERROR:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    iput-object v3, v2, Lcom/shenma/tvlauncher/network/BaseThread;->mState:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    .line 67
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const-string v1, "run() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method
