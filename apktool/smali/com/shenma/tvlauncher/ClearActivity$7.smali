.class Lcom/shenma/tvlauncher/ClearActivity$7;
.super Ljava/lang/Object;
.source "ClearActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 122
    iput-object p1, p0, Lcom/shenma/tvlauncher/ClearActivity$7;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity$7;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/ClearActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wallpaperFileName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity$7;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/ClearActivity;->access$000(Lcom/shenma/tvlauncher/ClearActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->deleteAllByWhere(I)V

    .line 127
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity$7;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/ClearActivity;->access$000(Lcom/shenma/tvlauncher/ClearActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->deleteAllByWhere(I)V

    .line 128
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity$7;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/ClearActivity;->access$000(Lcom/shenma/tvlauncher/ClearActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->deleteAllByWhere(I)V

    .line 129
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity$7;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/ClearActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/CacheDataManager;->clearAllCache(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity$7;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/ClearActivity;->context:Landroid/content/Context;

    const v1, 0x7f0e0011

    const v2, 0x7f070140

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 131
    return-void
.end method
