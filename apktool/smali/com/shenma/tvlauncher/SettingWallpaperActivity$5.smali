.class Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;
.super Ljava/lang/Object;
.source "SettingWallpaperActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SettingWallpaperActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastIndex:I

.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    .line 163
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 168
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;->lastIndex:I

    const/4 v1, 0x5

    if-le p3, v0, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p3, v0

    const/16 v2, 0xe

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;->lastIndex:I

    sub-int v0, p3, v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    rem-int/2addr v2, v1

    sub-int/2addr v0, v2

    :goto_0
    if-ge p3, v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->access$100(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5$1;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 178
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p3, v0

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;->lastIndex:I

    sub-int/2addr v0, p3

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->access$100(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5$2;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5$2;-><init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 187
    :cond_2
    :goto_1
    iput p3, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$5;->lastIndex:I

    .line 188
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 192
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
