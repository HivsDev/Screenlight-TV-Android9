.class Lcom/shenma/tvlauncher/fragment/AppFragment$3;
.super Ljava/lang/Object;
.source "AppFragment.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/AppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 105
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .line 109
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "i":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 111
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-object v0
.end method
