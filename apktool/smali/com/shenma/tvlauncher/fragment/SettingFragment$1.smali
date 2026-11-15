.class Lcom/shenma/tvlauncher/fragment/SettingFragment$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/SettingFragment;->showOnFocusAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/SettingFragment;

.field final synthetic val$paramInt:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/SettingFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/SettingFragment;

    .line 374
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    iput p2, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment$1;->val$paramInt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 382
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/SettingFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/SettingFragment;->access$000(Lcom/shenma/tvlauncher/fragment/SettingFragment;)[Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/fragment/SettingFragment$1;->val$paramInt:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 378
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 376
    return-void
.end method
