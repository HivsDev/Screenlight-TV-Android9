.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 459
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>.PostResponseHandler;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 460
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 461
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 465
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>.PostResponseHandler;"
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 466
    .local v0, "requestAndResponse":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 467
    .local v1, "request":Ljava/lang/Object;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 468
    .local v2, "response":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$100(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 474
    goto :goto_0

    .line 470
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    nop

    .line 479
    :goto_0
    return-void
.end method
