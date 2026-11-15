.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 1658
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1661
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$6700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 1662
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$6800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 1663
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1718
    const-string v0, "VideoPlayerActivity"

    const-string v1, "mGestureDetector...onDoubleTapEvent"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1699
    const-string v0, "VideoPlayerActivity"

    const-string v1, "mGestureDetector...onDown"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
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

    .line 1712
    const-string v0, "VideoPlayerActivity"

    const-string v1, "mGestureDetector...onFling"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1687
    const-string v0, "VideoPlayerActivity"

    const-string v1, "mGestureDetector...onLongPress"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;FI)V

    .line 1692
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 1723
    const-string v0, "VideoPlayerActivity"

    const-string v1, "mGestureDetector...onScroll"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1669
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$6900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 1671
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$6700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    goto :goto_0

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 1674
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 1676
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 1678
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1707
    const-string v0, "VideoPlayerActivity"

    const-string v1, "mGestureDetector...onSingleTapUp"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
