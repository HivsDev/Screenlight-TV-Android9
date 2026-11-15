.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$15;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->analysisUrl(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 1291
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 1293
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->analysisUrlError(Lcom/android/volley/VolleyError;)V

    .line 1294
    return-void
.end method
