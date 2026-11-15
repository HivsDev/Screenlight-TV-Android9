.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$15;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
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

    .line 1137
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 1140
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 1141
    const v2, 0x7f0e0193

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1140
    const v2, 0x7f07013e

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1143
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1145
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 1148
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$15;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->closeProgressDialog()V

    .line 1149
    return-void
.end method
