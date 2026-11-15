.class Lcom/shenma/tvlauncher/HomeActivity$48;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->notice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 2189
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2192
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const v1, 0x7f08014d

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2193
    .local v0, "viewById":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2195
    return-void
.end method
