.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$30;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getVodGongGao()V
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

    .line 3452
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 3454
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$30;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->VodGongGaoError(Lcom/android/volley/VolleyError;)V

    .line 3455
    return-void
.end method
