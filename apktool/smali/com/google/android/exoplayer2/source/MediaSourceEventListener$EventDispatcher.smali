.class public final Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    }
.end annotation


# instance fields
.field private final listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mediaTimeOffsetMs:J

.field public final windowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 306
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    .line 311
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V
    .locals 0
    .param p2, "windowIndex"    # I
    .param p3, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "mediaTimeOffsetMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;I",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "J)V"
        }
    .end annotation

    .line 317
    .local p1, "listenerAndHandlers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 319
    iput p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 320
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 321
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaTimeOffsetMs:J

    .line 322
    return-void
.end method

.method private adjustMediaTime(J)J
    .locals 5
    .param p1, "mediaTimeUs"    # J

    .line 717
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    .line 718
    .local v0, "mediaTimeMs":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaTimeOffsetMs:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method private postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 722
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 723
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    :goto_0
    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 347
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method

.method public downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .locals 14
    .param p1, "trackType"    # I
    .param p2, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "trackSelectionReason"    # I
    .param p4, "trackSelectionData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "mediaTimeUs"    # J

    .line 695
    move-object v0, p0

    new-instance v11, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 702
    move-wide/from16 v12, p5

    invoke-direct {p0, v12, v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    const/4 v2, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v11

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 695
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    .line 704
    return-void
.end method

.method public downstreamFormatChanged(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 5
    .param p1, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 708
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 709
    .local v1, "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 710
    .local v2, "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$ES4FdQzWtupQEe6zuV_1M9-f9xU;

    invoke-direct {v4, p0, v2, p1}, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$ES4FdQzWtupQEe6zuV_1M9-f9xU;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 713
    .end local v1    # "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v2    # "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    goto :goto_0

    .line 714
    :cond_0
    return-void
.end method

.method public synthetic lambda$downstreamFormatChanged$8$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 712
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public synthetic lambda$loadCanceled$4$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p2, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 563
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public synthetic lambda$loadCompleted$3$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p2, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 499
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public synthetic lambda$loadError$5$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 7
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p2, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 648
    iget v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public synthetic lambda$loadStarted$2$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p2, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 435
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public synthetic lambda$mediaPeriodCreated$0$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 371
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onMediaPeriodCreated(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public synthetic lambda$mediaPeriodReleased$1$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 382
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onMediaPeriodReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public synthetic lambda$readingStarted$6$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 660
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onReadingStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public synthetic lambda$upstreamDiscarded$7$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 684
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    invoke-interface {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public loadCanceled(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 5
    .param p1, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 559
    .local v1, "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 560
    .local v2, "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$1-VoN1d1C8yHbFOrB_mXtUwAn3M;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$1-VoN1d1C8yHbFOrB_mXtUwAn3M;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 564
    .end local v1    # "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v2    # "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    goto :goto_0

    .line 565
    :cond_0
    return-void
.end method

.method public loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 17
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "dataType"    # I
    .param p5, "trackType"    # I
    .param p6, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "trackSelectionReason"    # I
    .param p8, "trackSelectionData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "mediaStartTimeUs"    # J
    .param p11, "mediaEndTimeUs"    # J
    .param p13, "elapsedRealtimeMs"    # J
    .param p15, "loadDurationMs"    # J
    .param p17, "bytesLoaded"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Lcom/google/android/exoplayer2/Format;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ)V"
        }
    .end annotation

    .line 543
    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    new-instance v11, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v12, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 552
    move-wide/from16 v13, p9

    invoke-direct {v0, v13, v14}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    .line 553
    move-wide/from16 v9, p11

    invoke-direct {v0, v9, v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v15

    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-wide v9, v15

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 543
    invoke-virtual {v0, v11, v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    .line 554
    return-void
.end method

.method public loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V
    .locals 19
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "dataType"    # I
    .param p5, "elapsedRealtimeMs"    # J
    .param p7, "loadDurationMs"    # J
    .param p9, "bytesLoaded"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ)V"
        }
    .end annotation

    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    .line 512
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 526
    return-void
.end method

.method public loadCompleted(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 5
    .param p1, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 495
    .local v1, "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 496
    .local v2, "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$IejPnkXyHgj2V1iyO1dqtBKfihI;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$IejPnkXyHgj2V1iyO1dqtBKfihI;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 500
    .end local v1    # "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v2    # "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method

.method public loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 17
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "dataType"    # I
    .param p5, "trackType"    # I
    .param p6, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "trackSelectionReason"    # I
    .param p8, "trackSelectionData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "mediaStartTimeUs"    # J
    .param p11, "mediaEndTimeUs"    # J
    .param p13, "elapsedRealtimeMs"    # J
    .param p15, "loadDurationMs"    # J
    .param p17, "bytesLoaded"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Lcom/google/android/exoplayer2/Format;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ)V"
        }
    .end annotation

    .line 479
    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    new-instance v11, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v12, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 488
    move-wide/from16 v13, p9

    invoke-direct {v0, v13, v14}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    .line 489
    move-wide/from16 v9, p11

    invoke-direct {v0, v9, v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v15

    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-wide v9, v15

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 479
    invoke-virtual {v0, v11, v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    .line 490
    return-void
.end method

.method public loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V
    .locals 19
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "dataType"    # I
    .param p5, "elapsedRealtimeMs"    # J
    .param p7, "loadDurationMs"    # J
    .param p9, "bytesLoaded"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ)V"
        }
    .end annotation

    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    .line 448
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 462
    return-void
.end method

.method public loadError(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 13
    .param p1, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;
    .param p3, "error"    # Ljava/io/IOException;
    .param p4, "wasCanceled"    # Z

    .line 643
    move-object v7, p0

    iget-object v0, v7, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 644
    .local v9, "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v10, v9, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 645
    .local v10, "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    iget-object v11, v9, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$0X-TAsNqR4TUW1yA_ZD1_p3oT84;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    invoke-direct {p0, v11, v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 650
    .end local v9    # "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v10    # "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    goto :goto_0

    .line 651
    :cond_0
    return-void
.end method

.method public loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 17
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "dataType"    # I
    .param p5, "trackType"    # I
    .param p6, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "trackSelectionReason"    # I
    .param p8, "trackSelectionData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "mediaStartTimeUs"    # J
    .param p11, "mediaEndTimeUs"    # J
    .param p13, "elapsedRealtimeMs"    # J
    .param p15, "loadDurationMs"    # J
    .param p17, "bytesLoaded"    # J
    .param p19, "error"    # Ljava/io/IOException;
    .param p20, "wasCanceled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Lcom/google/android/exoplayer2/Format;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ",
            "Ljava/io/IOException;",
            "Z)V"
        }
    .end annotation

    .line 619
    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    new-instance v11, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v12, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 628
    move-wide/from16 v13, p9

    invoke-direct {v0, v13, v14}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    .line 629
    move-wide/from16 v9, p11

    invoke-direct {v0, v9, v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v15

    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-wide v9, v15

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 619
    move-object/from16 v1, p19

    move/from16 v2, p20

    invoke-virtual {v0, v11, v12, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    .line 632
    return-void
.end method

.method public loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V
    .locals 21
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "dataType"    # I
    .param p5, "elapsedRealtimeMs"    # J
    .param p7, "loadDurationMs"    # J
    .param p9, "bytesLoaded"    # J
    .param p11, "error"    # Ljava/io/IOException;
    .param p12, "wasCanceled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ",
            "Ljava/io/IOException;",
            "Z)V"
        }
    .end annotation

    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    move-object/from16 v19, p11

    move/from16 v20, p12

    .line 581
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 597
    return-void
.end method

.method public loadStarted(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 5
    .param p1, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 432
    .local v1, "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 433
    .local v2, "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$WQKVpIh5ilpOizOGmbnyUThugMU;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$WQKVpIh5ilpOizOGmbnyUThugMU;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 436
    .end local v1    # "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v2    # "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method public loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 23
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "mediaStartTimeUs"    # J
    .param p9, "mediaEndTimeUs"    # J
    .param p11, "elapsedRealtimeMs"    # J

    .line 411
    move-object/from16 v0, p0

    new-instance v11, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    move-object/from16 v12, p1

    iget-object v3, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 415
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide/from16 v5, p11

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 425
    move-wide/from16 v2, p7

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v19

    .line 426
    move-wide/from16 v4, p9

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v21

    move-object v13, v1

    move/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, p6

    invoke-direct/range {v13 .. v22}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 411
    invoke-virtual {v0, v11, v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    .line 427
    return-void
.end method

.method public loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V
    .locals 13
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "elapsedRealtimeMs"    # J

    .line 388
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v11, p3

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 398
    return-void
.end method

.method public mediaPeriodCreated()V
    .locals 6

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 367
    .local v0, "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 368
    .local v2, "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 369
    .local v3, "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$N-EOPAK5UK0--YMNjezq7UM3UNI;

    invoke-direct {v5, p0, v3, v0}, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$N-EOPAK5UK0--YMNjezq7UM3UNI;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 372
    .end local v2    # "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v3    # "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    goto :goto_0

    .line 373
    :cond_0
    return-void
.end method

.method public mediaPeriodReleased()V
    .locals 6

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 378
    .local v0, "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 379
    .local v2, "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 380
    .local v3, "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$zyck4ebRbqvR6eQIjdzRcIBkRbI;

    invoke-direct {v5, p0, v3, v0}, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$zyck4ebRbqvR6eQIjdzRcIBkRbI;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 383
    .end local v2    # "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v3    # "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    goto :goto_0

    .line 384
    :cond_0
    return-void
.end method

.method public readingStarted()V
    .locals 6

    .line 655
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 656
    .local v0, "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 657
    .local v2, "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 658
    .local v3, "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PV8wmqGm7vRMJNlt--V3zhXfxiE;

    invoke-direct {v5, p0, v3, v0}, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PV8wmqGm7vRMJNlt--V3zhXfxiE;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 661
    .end local v2    # "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v3    # "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    goto :goto_0

    .line 662
    :cond_0
    return-void
.end method

.method public removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 3
    .param p1, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 358
    .local v1, "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-ne v2, p1, :cond_0

    .line 359
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 361
    .end local v1    # "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    :cond_0
    goto :goto_0

    .line 362
    :cond_1
    return-void
.end method

.method public upstreamDiscarded(IJJ)V
    .locals 16
    .param p1, "trackType"    # I
    .param p2, "mediaStartTimeUs"    # J
    .param p4, "mediaEndTimeUs"    # J

    .line 666
    move-object/from16 v0, p0

    new-instance v11, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 673
    move-wide/from16 v12, p2

    invoke-direct {v0, v12, v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    .line 674
    move-wide/from16 v14, p4

    invoke-direct {v0, v14, v15}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v11

    move/from16 v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 666
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    .line 675
    return-void
.end method

.method public upstreamDiscarded(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 6
    .param p1, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    .line 679
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 680
    .local v0, "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 681
    .local v2, "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 682
    .local v3, "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$BtPa14lQQTv1oUeMy_9QaCysWHY;

    invoke-direct {v5, p0, v3, v0, p1}, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$BtPa14lQQTv1oUeMy_9QaCysWHY;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 685
    .end local v2    # "listenerAndHandler":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v3    # "listener":Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    goto :goto_0

    .line 686
    :cond_0
    return-void
.end method

.method public withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 7
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mediaTimeOffsetMs"    # J
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 336
    new-instance v6, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    return-object v6
.end method
