.class Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;
.super Ljava/lang/Object;
.source "VodTypeActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodTypeActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 641
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 643
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    const v1, 0x7f07013e

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    const v3, 0x7f0e0193

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 646
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1200(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1802(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)I

    goto :goto_1

    .line 647
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1802(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)I

    goto :goto_1

    .line 651
    :cond_2
    instance-of v0, p1, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_3

    .line 652
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v2, "\u51710\u90e8"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$1802(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)I

    .line 657
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e002d

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_1

    .line 659
    :cond_3
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 662
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->closeProgressDialog()V

    .line 663
    return-void
.end method
