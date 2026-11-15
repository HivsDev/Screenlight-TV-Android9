.class Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "UserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/UserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/UserActivity;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .line 1645
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    .line 1646
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1647
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1660
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$3700(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0e0180

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1662
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$3700(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1663
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$3700(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1664
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$3800(Lcom/shenma/tvlauncher/UserActivity;)V

    .line 1665
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .param p1, "millisInFuture"    # J

    .line 1652
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$3700(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1653
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$3700(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1654
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$3700(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1655
    return-void
.end method
