.class Lcom/shenma/tvlauncher/TopicActivity$6;
.super Ljava/lang/Object;
.source "TopicActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/TopicActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/TopicActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/TopicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/TopicActivity;

    .line 290
    iput-object p1, p0, Lcom/shenma/tvlauncher/TopicActivity$6;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 293
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$6;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const v1, 0x7f0e002d

    const v2, 0x7f07013e

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 294
    return-void
.end method
