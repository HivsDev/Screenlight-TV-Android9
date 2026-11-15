.class Lcom/shenma/tvlauncher/SplashActivity$7;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SplashActivity;->findViewById()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SplashActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 1003
    iput-object p1, p0, Lcom/shenma/tvlauncher/SplashActivity$7;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .line 1005
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$7;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/SplashActivity;->access$302(Lcom/shenma/tvlauncher/SplashActivity;I)I

    .line 1007
    return-void
.end method
