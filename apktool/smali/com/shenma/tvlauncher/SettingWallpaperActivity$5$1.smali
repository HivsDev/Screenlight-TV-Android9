.class Lcom/shenma/tvlauncher/SettingWallpaperActivity$5$1;
.super Ljava/lang/Object;
.source "SettingWallpaperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;

    .line 170
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5$1;->this$1:Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5$1;->this$1:Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;

    iget-object v0, v0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->access$100(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0x98

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->smoothScrollBy(II)V

    .line 174
    return-void
.end method
