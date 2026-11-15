.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$25;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 1969
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1972
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$25;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$7402(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Z)Z

    .line 1973
    return-void
.end method
