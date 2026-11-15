.class Lcom/shenma/tvlauncher/fragment/TopicFragment$4;
.super Ljava/lang/Object;
.source "TopicFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/TopicFragment;->showOnFocusAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

.field final synthetic val$paramInt:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;

    .line 566
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    iput p2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$4;->val$paramInt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 579
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->access$900(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$4;->val$paramInt:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->access$200(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v0

    iget v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$4;->val$paramInt:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 573
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 569
    return-void
.end method
