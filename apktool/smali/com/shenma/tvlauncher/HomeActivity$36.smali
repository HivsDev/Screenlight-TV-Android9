.class Lcom/shenma/tvlauncher/HomeActivity$36;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 1636
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$36;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/HomeActivity$36;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 1639
    if-eqz p2, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$36;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1642
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$36;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1644
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$36;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity;->access$1200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/HomeActivity$36;->val$index:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 1645
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$36;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity;->access$1300(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v2, p0, Lcom/shenma/tvlauncher/HomeActivity$36;->val$index:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$36;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity;->access$1200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/HomeActivity$36;->val$index:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 1649
    :goto_0
    return-void
.end method
