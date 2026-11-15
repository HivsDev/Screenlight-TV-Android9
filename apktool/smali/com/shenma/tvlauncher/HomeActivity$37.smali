.class Lcom/shenma/tvlauncher/HomeActivity$37;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1651
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$37;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/HomeActivity$37;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .line 1656
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$37;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1657
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$37;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1659
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$37;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity;->access$1300(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/HomeActivity$37;->val$index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1660
    return-void
.end method
