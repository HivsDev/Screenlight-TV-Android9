.class Lcom/shenma/tvlauncher/HistoryActivity$5;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HistoryActivity;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 274
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryActivity$5;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 277
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 278
    return v1

    .line 280
    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity$5;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HistoryActivity;->access$500(Lcom/shenma/tvlauncher/HistoryActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 285
    :goto_0
    return v1
.end method
