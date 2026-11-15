.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$17;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->GetMotion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 1186
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$17;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 1188
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$17;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$4100(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1189
    return-void
.end method
