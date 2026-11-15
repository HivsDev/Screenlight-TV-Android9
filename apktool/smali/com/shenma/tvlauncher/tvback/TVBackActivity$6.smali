.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TVBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 468
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 473
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$700(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 475
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2600(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 477
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 497
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$700(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 499
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2600(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 501
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 482
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$800(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$900(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 484
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1000(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 487
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 489
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$6;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 491
    const/4 v0, 0x1

    return v0
.end method
