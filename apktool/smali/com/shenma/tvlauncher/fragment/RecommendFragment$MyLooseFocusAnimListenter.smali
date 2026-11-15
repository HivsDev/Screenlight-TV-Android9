.class public Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyLooseFocusAnimListenter;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLooseFocusAnimListenter"
.end annotation


# instance fields
.field private paramInt:I

.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/RecommendFragment;
    .param p2, "paramInt"    # I

    .line 1280
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyLooseFocusAnimListenter;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1281
    iput p2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyLooseFocusAnimListenter;->paramInt:I

    .line 1282
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1291
    const-string v0, "joychang"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1300
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1287
    return-void
.end method
