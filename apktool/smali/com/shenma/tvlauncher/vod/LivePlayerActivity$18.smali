.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setListener()V
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

    .line 1496
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1499
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 1500
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 1501
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1548
    const-string v0, "LivePlayerActivity"

    const-string v1, "mGestureDetector...onDoubleTapEvent"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1530
    const-string v0, "LivePlayerActivity"

    const-string v1, "mGestureDetector...onDown"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 1542
    const-string v0, "LivePlayerActivity"

    const-string v1, "mGestureDetector...onFling"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1523
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 1524
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 1525
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 1553
    const-string v0, "LivePlayerActivity"

    const-string v1, "mGestureDetector...onScroll"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1507
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 1509
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    goto :goto_0

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 1512
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$5900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 1514
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$18;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$6000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 1516
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1537
    const-string v0, "LivePlayerActivity"

    const-string v1, "mGestureDetector...onSingleTapUp"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
