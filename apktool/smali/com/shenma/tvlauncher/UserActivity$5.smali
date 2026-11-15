.class Lcom/shenma/tvlauncher/UserActivity$5;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 387
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$5;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 391
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$5;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$800(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$5;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/UserActivity;->access$1802(Lcom/shenma/tvlauncher/UserActivity;I)I

    .line 393
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$5;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$1900(Lcom/shenma/tvlauncher/UserActivity;)V

    .line 395
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
