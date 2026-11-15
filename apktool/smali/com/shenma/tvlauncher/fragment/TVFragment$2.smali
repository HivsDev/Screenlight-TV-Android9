.class Lcom/shenma/tvlauncher/fragment/TVFragment$2;
.super Ljava/lang/Object;
.source "TVFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/TVFragment;->initClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/TVFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/TVFragment;

    .line 121
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "paramInt":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080288

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    if-eqz p2, :cond_1

    .line 132
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/fragment/TVFragment;->access$000(Lcom/shenma/tvlauncher/fragment/TVFragment;I)V

    .line 133
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/TVFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/TVFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TVFragment;

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/fragment/TVFragment;->access$100(Lcom/shenma/tvlauncher/fragment/TVFragment;I)V

    .line 140
    :cond_2
    :goto_1
    return-void
.end method
