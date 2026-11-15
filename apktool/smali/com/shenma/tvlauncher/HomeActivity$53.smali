.class Lcom/shenma/tvlauncher/HomeActivity$53;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->queryInstalledApp()V
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

    .line 2279
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$53;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2282
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$53;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity;->packLst:Ljava/util/List;

    .line 2283
    return-void
.end method
