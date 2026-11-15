.class Lcom/shenma/tvlauncher/view/MyService$TimeDisplay$1;
.super Ljava/lang/Object;
.source "MyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/view/MyService$TimeDisplay;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/view/MyService$TimeDisplay;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/MyService$TimeDisplay;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/view/MyService$TimeDisplay;

    .line 80
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/MyService$TimeDisplay$1;->this$1:Lcom/shenma/tvlauncher/view/MyService$TimeDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyService$TimeDisplay$1;->this$1:Lcom/shenma/tvlauncher/view/MyService$TimeDisplay;

    iget-object v0, v0, Lcom/shenma/tvlauncher/view/MyService$TimeDisplay;->this$0:Lcom/shenma/tvlauncher/view/MyService;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyService;->access$200(Lcom/shenma/tvlauncher/view/MyService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 83
    return-void
.end method
