.class Lcom/shenma/tvlauncher/HistoryActivity$8;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HistoryActivity;->GetMotion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 393
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryActivity$8;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 395
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity$8;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HistoryActivity;->access$400(Lcom/shenma/tvlauncher/HistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    return-void
.end method
