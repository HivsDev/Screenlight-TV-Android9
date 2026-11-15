.class Lcom/shenma/tvlauncher/ClearActivity$5;
.super Ljava/lang/Object;
.source "ClearActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/ClearActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/ClearActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/ClearActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/ClearActivity;

    .line 91
    iput-object p1, p0, Lcom/shenma/tvlauncher/ClearActivity$5;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 94
    if-eqz p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity$5;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/ClearActivity;->access$100(Lcom/shenma/tvlauncher/ClearActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity$5;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/ClearActivity;->access$100(Lcom/shenma/tvlauncher/ClearActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    :goto_0
    return-void
.end method
