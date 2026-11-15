.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->showUpdateDialog(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 2366
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 2369
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2370
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->finish()V

    .line 2371
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$23;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9902(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z

    .line 2372
    return-void
.end method
