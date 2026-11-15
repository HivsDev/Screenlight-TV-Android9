.class Lcom/shenma/tvlauncher/EmpowerActivity$31;
.super Ljava/lang/Object;
.source "EmpowerActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/EmpowerActivity;->loadImg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/EmpowerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 1181
    iput-object p1, p0, Lcom/shenma/tvlauncher/EmpowerActivity$31;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1187
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$31;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->access$2400(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1188
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1191
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1184
    return-void
.end method
