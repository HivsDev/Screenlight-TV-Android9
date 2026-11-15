.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_FIXED_MS:J = 0x7530L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_MS:J = 0x7530L

.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_PREFER_MANIFEST_MS:J = -0x1L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L

.field private static final NOTIFY_MANIFEST_INTERVAL_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DashMediaSource"


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private dynamicMediaPresentationEnded:Z

.field private elapsedRealtimeOffsetMs:J

.field private expiredManifestPublishTimeUs:J

.field private firstPeriodId:I

.field private handler:Landroid/os/Handler;

.field private initialManifestUri:Landroid/net/Uri;

.field private final livePresentationDelayMs:J

.field private final livePresentationDelayOverridesManifest:Z

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private manifestFatalError:Ljava/io/IOException;

.field private manifestLoadEndTimestampMs:J

.field private final manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private manifestLoadPending:Z

.field private manifestLoadStartTimestampMs:J

.field private final manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field

.field private manifestUri:Landroid/net/Uri;

.field private final manifestUriLock:Ljava/lang/Object;

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final periodsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

.field private final refreshManifestRunnable:Ljava/lang/Runnable;

.field private final sideloadedManifest:Z

.field private final simulateManifestRefreshRunnable:Ljava/lang/Runnable;

.field private staleManifestReloadAttempt:I

.field private final tag:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-string v0, "goog.exo.dash"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 10
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "manifestDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p4, "minLoadableRetryCount"    # I
    .param p5, "livePresentationDelayMs"    # J
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 497
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 506
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 9
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "manifestDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    const/4 v4, 0x3

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 468
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 15
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "manifestDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p4, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p5, "minLoadableRetryCount"    # I
    .param p6, "livePresentationDelayMs"    # J
    .param p8, "eventHandler"    # Landroid/os/Handler;
    .param p9, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;",
            "IJ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 537
    .local p3, "manifestParser":Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<+Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    new-instance v8, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    new-instance v9, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    move/from16 v14, p5

    invoke-direct {v9, v14}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    const-wide/16 v2, -0x1

    cmp-long v4, p6, v2

    if-nez v4, :cond_0

    const-wide/16 v4, 0x7530

    move-wide v10, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v10, p6

    :goto_0
    cmp-long v4, p6, v2

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JZLjava/lang/Object;)V

    .line 550
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 551
    move-object v2, p0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    goto :goto_2

    .line 550
    :cond_2
    move-object v2, p0

    .line 553
    :goto_2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JZLjava/lang/Object;)V
    .locals 4
    .param p1, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "manifestUri"    # Landroid/net/Uri;
    .param p3, "manifestDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p5, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p6, "compositeSequenceableLoaderFactory"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p7, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p8, "livePresentationDelayMs"    # J
    .param p10, "livePresentationDelayOverridesManifest"    # Z
    .param p11, "tag"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;",
            "Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            "JZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 565
    .local p4, "manifestParser":Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<+Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 566
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    .line 567
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 568
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 569
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 570
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 571
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 572
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 573
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->livePresentationDelayMs:J

    .line 574
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->livePresentationDelayOverridesManifest:Z

    .line 575
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 576
    iput-object p11, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->tag:Ljava/lang/Object;

    .line 577
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    .line 578
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 579
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 580
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 581
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    .line 582
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 583
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz v2, :cond_1

    .line 584
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 585
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    .line 586
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 587
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 588
    new-instance v0, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    goto :goto_1

    .line 590
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    .line 591
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 592
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/-$$Lambda$DashMediaSource$QbzYvqCY1TT8f0KClkalovG-Oxc;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/dash/-$$Lambda$DashMediaSource$QbzYvqCY1TT8f0KClkalovG-Oxc;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 593
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/-$$Lambda$DashMediaSource$e1nzB-O4m3YSG1BkxQDKPaNvDa8;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/dash/-$$Lambda$DashMediaSource$e1nzB-O4m3YSG1BkxQDKPaNvDa8;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 595
    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JZLjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "x1"    # Landroid/net/Uri;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p4, "x3"    # Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .param p5, "x4"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p6, "x5"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p7, "x6"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p8, "x7"    # J
    .param p10, "x8"    # Z
    .param p11, "x9"    # Ljava/lang/Object;
    .param p12, "x10"    # Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;

    .line 68
    invoke-direct/range {p0 .. p11}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JZLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 15
    .param p1, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p3, "minLoadableRetryCount"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 424
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    new-instance v8, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    new-instance v9, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    move/from16 v14, p3

    invoke-direct {v9, v14}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v10, 0x7530

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JZLjava/lang/Object;)V

    .line 435
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 436
    move-object v2, p0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    goto :goto_0

    .line 435
    :cond_0
    move-object v2, p0

    .line 438
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 6
    .param p1, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 399
    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 405
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Lcom/google/android/exoplayer2/upstream/Loader;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    return-object v0
.end method

.method private getManifestLoadRetryDelayMillis()J
    .locals 2

    .line 1033
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getNowUnixTimeUs()J
    .locals 5

    .line 1043
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1044
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    .line 1046
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$QbzYvqCY1TT8f0KClkalovG-Oxc(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    return-void
.end method

.method private onUtcTimestampResolutionError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "error"    # Ljava/io/IOException;

    .line 898
    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve UtcTiming element."

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 900
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    .line 901
    return-void
.end method

.method private onUtcTimestampResolved(J)V
    .locals 1
    .param p1, "elapsedRealtimeOffsetMs"    # J

    .line 893
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 894
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    .line 895
    return-void
.end method

.method private processManifest(Z)V
    .locals 40
    .param p1, "scheduleRefresh"    # Z

    .line 905
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 906
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 907
    .local v2, "id":I
    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    if-lt v2, v3, :cond_0

    .line 908
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    .line 905
    .end local v2    # "id":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .line 915
    .local v1, "windowChangingImplicitly":Z
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 916
    .local v2, "lastPeriodIndex":I
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v3

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 917
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v5

    .line 916
    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->createPeriodSeekInfo(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-result-object v3

    .line 918
    .local v3, "firstPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 919
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    .line 918
    invoke-static {v5, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->createPeriodSeekInfo(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-result-object v5

    .line 921
    .local v5, "lastPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableStartTimeUs:J

    .line 922
    .local v6, "currentStartTimeUs":J
    iget-wide v8, v5, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableEndTimeUs:J

    .line 923
    .local v8, "currentEndTimeUs":J
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v10, v10, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v10, :cond_5

    iget-boolean v10, v5, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->isIndexExplicit:Z

    if-nez v10, :cond_5

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getNowUnixTimeUs()J

    move-result-wide v15

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v17, v5

    .end local v5    # "lastPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .local v17, "lastPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    iget-wide v4, v10, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    sub-long/2addr v15, v4

    .line 927
    .local v15, "liveStreamDurationUs":J
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 928
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    sub-long v4, v15, v4

    .line 929
    .local v4, "liveStreamEndPositionInLastPeriodUs":J
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 930
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v11, v10, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    cmp-long v10, v11, v13

    if-eqz v10, :cond_4

    .line 931
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v10

    .line 932
    .local v10, "timeShiftBufferDepthUs":J
    sub-long v20, v8, v10

    .line 933
    .local v20, "offsetInPeriodUs":J
    move v12, v2

    move-wide/from16 v13, v20

    .line 934
    .end local v20    # "offsetInPeriodUs":J
    .local v12, "periodIndex":I
    .local v13, "offsetInPeriodUs":J
    :goto_1
    const-wide/16 v18, 0x0

    cmp-long v20, v13, v18

    if-gez v20, :cond_2

    if-lez v12, :cond_2

    .line 935
    move/from16 v20, v1

    .end local v1    # "windowChangingImplicitly":Z
    .local v20, "windowChangingImplicitly":Z
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v24

    add-long v13, v13, v24

    move/from16 v1, v20

    goto :goto_1

    .line 934
    .end local v20    # "windowChangingImplicitly":Z
    .restart local v1    # "windowChangingImplicitly":Z
    :cond_2
    move/from16 v20, v1

    .line 937
    .end local v1    # "windowChangingImplicitly":Z
    .restart local v20    # "windowChangingImplicitly":Z
    if-nez v12, :cond_3

    .line 938
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move/from16 v21, v2

    goto :goto_2

    .line 942
    :cond_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "lastPeriodIndex":I
    .local v21, "lastPeriodIndex":I
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    goto :goto_2

    .line 930
    .end local v10    # "timeShiftBufferDepthUs":J
    .end local v12    # "periodIndex":I
    .end local v13    # "offsetInPeriodUs":J
    .end local v20    # "windowChangingImplicitly":Z
    .end local v21    # "lastPeriodIndex":I
    .restart local v1    # "windowChangingImplicitly":Z
    .restart local v2    # "lastPeriodIndex":I
    :cond_4
    move/from16 v20, v1

    move/from16 v21, v2

    .line 945
    .end local v1    # "windowChangingImplicitly":Z
    .end local v2    # "lastPeriodIndex":I
    .restart local v20    # "windowChangingImplicitly":Z
    .restart local v21    # "lastPeriodIndex":I
    :goto_2
    const/4 v1, 0x1

    .end local v20    # "windowChangingImplicitly":Z
    .restart local v1    # "windowChangingImplicitly":Z
    goto :goto_3

    .line 923
    .end local v4    # "liveStreamEndPositionInLastPeriodUs":J
    .end local v15    # "liveStreamDurationUs":J
    .end local v17    # "lastPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .end local v21    # "lastPeriodIndex":I
    .restart local v2    # "lastPeriodIndex":I
    .restart local v5    # "lastPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    :cond_5
    move/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v17, v5

    .line 947
    .end local v1    # "windowChangingImplicitly":Z
    .end local v2    # "lastPeriodIndex":I
    .end local v5    # "lastPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .restart local v17    # "lastPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .restart local v20    # "windowChangingImplicitly":Z
    .restart local v21    # "lastPeriodIndex":I
    move/from16 v1, v20

    .end local v20    # "windowChangingImplicitly":Z
    .restart local v1    # "windowChangingImplicitly":Z
    :goto_3
    sub-long v4, v8, v6

    .line 948
    .local v4, "windowDurationUs":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v2, v10, :cond_6

    .line 949
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v10

    add-long/2addr v4, v10

    .line 948
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 951
    .end local v2    # "i":I
    :cond_6
    const-wide/16 v10, 0x0

    .line 952
    .local v10, "windowDefaultStartPositionUs":J
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v2, :cond_9

    .line 953
    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->livePresentationDelayMs:J

    .line 954
    .local v12, "presentationDelayForManifestMs":J
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->livePresentationDelayOverridesManifest:Z

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v14, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v14, v22

    if-eqz v2, :cond_7

    .line 956
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v12, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    .line 959
    :cond_7
    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v14

    sub-long v10, v4, v14

    .line 960
    const-wide/32 v14, 0x4c4b40

    cmp-long v2, v10, v14

    if-gez v2, :cond_8

    .line 964
    const-wide/16 v24, 0x2

    move-object/from16 v16, v3

    .end local v3    # "firstPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .local v16, "firstPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    div-long v2, v4, v24

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v10, v2

    .end local v10    # "windowDefaultStartPositionUs":J
    .local v2, "windowDefaultStartPositionUs":J
    goto :goto_5

    .line 960
    .end local v2    # "windowDefaultStartPositionUs":J
    .end local v16    # "firstPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .restart local v3    # "firstPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .restart local v10    # "windowDefaultStartPositionUs":J
    :cond_8
    move-object/from16 v16, v3

    .end local v3    # "firstPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .restart local v16    # "firstPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    goto :goto_5

    .line 952
    .end local v12    # "presentationDelayForManifestMs":J
    .end local v16    # "firstPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .restart local v3    # "firstPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    :cond_9
    move-object/from16 v16, v3

    .line 968
    .end local v3    # "firstPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .restart local v16    # "firstPeriodSeekInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    :goto_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 969
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v12

    iget-wide v12, v12, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    add-long/2addr v2, v12

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 970
    .local v2, "windowStartTimeMs":J
    new-instance v12, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v13, v13, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    iget v15, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    move-wide/from16 v38, v8

    .end local v8    # "currentEndTimeUs":J
    .local v38, "currentEndTimeUs":J
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->tag:Ljava/lang/Object;

    move-object/from16 v24, v12

    move-wide/from16 v25, v13

    move-wide/from16 v27, v2

    move/from16 v29, v15

    move-wide/from16 v30, v6

    move-wide/from16 v32, v4

    move-wide/from16 v34, v10

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    invoke-direct/range {v24 .. v37}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;-><init>(JJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Ljava/lang/Object;)V

    move-object v8, v12

    .line 980
    .local v8, "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 982
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-nez v9, :cond_e

    .line 984
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 986
    if-eqz v1, :cond_a

    .line 987
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v13, 0x1388

    invoke-virtual {v9, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 989
    :cond_a
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    if-eqz v9, :cond_b

    .line 990
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    move v9, v1

    move-wide/from16 v24, v2

    move-wide/from16 v22, v4

    goto :goto_6

    .line 991
    :cond_b
    if-eqz p1, :cond_d

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v9, v9, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v9, :cond_d

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v12, v9, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v12, v14

    if-eqz v9, :cond_d

    .line 995
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v12, v9, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    .line 996
    .local v12, "minUpdatePeriodMs":J
    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_c

    .line 1001
    const-wide/16 v12, 0x1388

    .line 1003
    :cond_c
    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    add-long/2addr v14, v12

    .line 1004
    .local v14, "nextLoadTimestampMs":J
    nop

    .line 1005
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move v9, v1

    move-wide/from16 v24, v2

    .end local v1    # "windowChangingImplicitly":Z
    .end local v2    # "windowStartTimeMs":J
    .local v9, "windowChangingImplicitly":Z
    .local v24, "windowStartTimeMs":J
    sub-long v1, v14, v22

    move-wide/from16 v22, v4

    const-wide/16 v3, 0x0

    .end local v4    # "windowDurationUs":J
    .local v22, "windowDurationUs":J
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1006
    .local v1, "delayUntilNextLoadMs":J
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh(J)V

    goto :goto_6

    .line 991
    .end local v9    # "windowChangingImplicitly":Z
    .end local v12    # "minUpdatePeriodMs":J
    .end local v14    # "nextLoadTimestampMs":J
    .end local v22    # "windowDurationUs":J
    .end local v24    # "windowStartTimeMs":J
    .local v1, "windowChangingImplicitly":Z
    .restart local v2    # "windowStartTimeMs":J
    .restart local v4    # "windowDurationUs":J
    :cond_d
    move v9, v1

    move-wide/from16 v24, v2

    move-wide/from16 v22, v4

    .end local v1    # "windowChangingImplicitly":Z
    .end local v2    # "windowStartTimeMs":J
    .end local v4    # "windowDurationUs":J
    .restart local v9    # "windowChangingImplicitly":Z
    .restart local v22    # "windowDurationUs":J
    .restart local v24    # "windowStartTimeMs":J
    goto :goto_6

    .line 982
    .end local v9    # "windowChangingImplicitly":Z
    .end local v22    # "windowDurationUs":J
    .end local v24    # "windowStartTimeMs":J
    .restart local v1    # "windowChangingImplicitly":Z
    .restart local v2    # "windowStartTimeMs":J
    .restart local v4    # "windowDurationUs":J
    :cond_e
    move v9, v1

    move-wide/from16 v24, v2

    move-wide/from16 v22, v4

    .line 1009
    .end local v1    # "windowChangingImplicitly":Z
    .end local v2    # "windowStartTimeMs":J
    .end local v4    # "windowDurationUs":J
    .restart local v9    # "windowChangingImplicitly":Z
    .restart local v22    # "windowDurationUs":J
    .restart local v24    # "windowStartTimeMs":J
    :goto_6
    return-void
.end method

.method private resolveUtcTimingElement(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .locals 3
    .param p1, "timingElement"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    .line 861
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->schemeIdUri:Ljava/lang/String;

    .line 862
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "urn:mpeg:dash:utc:direct:2014"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 863
    const-string/jumbo v1, "urn:mpeg:dash:utc:direct:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 865
    :cond_0
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 866
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-iso:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 868
    :cond_1
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 869
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 873
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unsupported UTC timing scheme"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    goto :goto_3

    .line 870
    :cond_3
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_3

    .line 867
    :cond_4
    :goto_1
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_3

    .line 864
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementDirect(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    .line 875
    :goto_3
    return-void
.end method

.method private resolveUtcTimingElementDirect(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .locals 4
    .param p1, "timingElement"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    .line 879
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 880
    .local v0, "utcTimestampMs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    sub-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    .end local v0    # "utcTimestampMs":J
    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Lcom/google/android/exoplayer2/ParserException;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    .line 884
    .end local v0    # "e":Lcom/google/android/exoplayer2/ParserException;
    :goto_0
    return-void
.end method

.method private resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 4
    .param p1, "timingElement"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 888
    .local p2, "parser":Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<Ljava/lang/Long;>;"
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    .line 890
    return-void
.end method

.method private scheduleManifestRefresh(J)V
    .locals 2
    .param p1, "delayUntilNextLoadMs"    # J

    .line 1012
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1013
    return-void
.end method

.method private startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V
    .locals 5
    .param p3, "minRetryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1038
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<TT;>;"
    .local p2, "callback":Lcom/google/android/exoplayer2/upstream/Loader$Callback;, "Lcom/google/android/exoplayer2/upstream/Loader$Callback<Lcom/google/android/exoplayer2/upstream/ParsingLoadable<TT;>;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v0

    .line 1039
    .local v0, "elapsedRealtimeMs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V

    .line 1040
    return-void
.end method

.method private startLoadingManifest()V
    .locals 5

    .line 1016
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1017
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    .line 1019
    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 1024
    .local v1, "manifestUri":Landroid/net/Uri;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    .line 1026
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 1029
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v3

    .line 1026
    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    .line 1030
    return-void

    .line 1024
    .end local v1    # "manifestUri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 19
    .param p1, "periodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 634
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int/2addr v2, v3

    .line 635
    .local v2, "periodIndex":I
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 636
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v3

    .line 637
    .local v3, "periodEventDispatcher":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    new-instance v18, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int v5, v4, v2

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    move-object/from16 v4, v18

    move v7, v2

    move-object/from16 v17, v11

    move-object v11, v3

    move-object/from16 v16, v15

    move-object/from16 v15, p2

    invoke-direct/range {v4 .. v17}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;-><init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;)V

    .line 651
    .local v4, "mediaPeriod":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 652
    return-object v4
.end method

.method public synthetic lambda$new$0$DashMediaSource()V
    .locals 1

    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 630
    return-void
.end method

.method onDashLiveMediaPresentationEndSignalEncountered()V
    .locals 1

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dynamicMediaPresentationEnded:Z

    .line 696
    return-void
.end method

.method onDashManifestPublishTimeExpired(J)V
    .locals 5
    .param p1, "expiredManifestPublishTimeUs"    # J

    .line 699
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 701
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 703
    :cond_1
    return-void
.end method

.method onDashManifestRefreshRequested()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 691
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    .line 692
    return-void
.end method

.method onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 13
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "*>;JJ)V"
        }
    .end annotation

    .line 848
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<*>;"
    move-object v0, p1

    move-object v1, p0

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 850
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 851
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 855
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    .line 848
    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 856
    return-void
.end method

.method onManifestLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 16
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ)V"
        }
    .end annotation

    .line 709
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v14, p2

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 711
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 712
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    iget v7, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 716
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    .line 709
    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 717
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 719
    .local v3, "newManifest":Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    :goto_0
    move v5, v0

    .line 720
    .local v5, "periodCount":I
    const/4 v0, 0x0

    .line 721
    .local v0, "removedPeriodCount":I
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v6

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    move v8, v0

    .line 722
    .end local v0    # "removedPeriodCount":I
    .local v6, "newFirstPeriodStartTimeMs":J
    .local v8, "removedPeriodCount":I
    :goto_1
    if-ge v8, v5, :cond_1

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 723
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    cmp-long v0, v9, v6

    if-gez v0, :cond_1

    .line 724
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 727
    :cond_1
    iget-boolean v0, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_7

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "isManifestStale":Z
    sub-int v9, v5, v8

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v10

    if-le v9, v10, :cond_2

    .line 735
    const-string v9, "DashMediaSource"

    const-string v10, "Loaded out of sync manifest"

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const/4 v0, 0x1

    goto :goto_2

    .line 737
    :cond_2
    iget-boolean v9, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dynamicMediaPresentationEnded:Z

    if-nez v9, :cond_3

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v9, v11

    if-eqz v13, :cond_4

    iget-wide v9, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    cmp-long v13, v9, v11

    if-gtz v13, :cond_4

    .line 743
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loaded stale dynamic manifest: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dynamicMediaPresentationEnded:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DashMediaSource"

    invoke-static {v10, v9}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const/4 v0, 0x1

    .line 754
    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    .line 755
    iget v4, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    add-int/lit8 v9, v4, 0x1

    iput v9, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v10, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 756
    invoke-interface {v9, v10}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getManifestLoadRetryDelayMillis()J

    move-result-wide v9

    invoke-direct {v1, v9, v10}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh(J)V

    goto :goto_3

    .line 759
    :cond_5
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;-><init>()V

    iput-object v4, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    .line 761
    :goto_3
    return-void

    .line 763
    :cond_6
    iput v4, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 767
    .end local v0    # "isManifestStale":Z
    :cond_7
    iput-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 768
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v9, v9, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    and-int/2addr v0, v9

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    .line 769
    sub-long v9, v14, p4

    iput-wide v9, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 770
    iput-wide v14, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 771
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    const/4 v9, 0x1

    if-eqz v0, :cond_a

    .line 772
    iget-object v10, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v10

    .line 776
    :try_start_0
    iget-object v0, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v11, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    if-ne v0, v11, :cond_8

    const/4 v4, 0x1

    :cond_8
    move v0, v4

    .line 777
    .local v0, "isSameUriInstance":Z
    if-eqz v0, :cond_9

    .line 778
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    iput-object v4, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 780
    .end local v0    # "isSameUriInstance":Z
    :cond_9
    monitor-exit v10

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 783
    :cond_a
    :goto_4
    if-nez v5, :cond_c

    .line 784
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    if-eqz v0, :cond_b

    .line 785
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElement(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    goto :goto_5

    .line 787
    :cond_b
    invoke-direct {v1, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_5

    .line 790
    :cond_c
    iget v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int/2addr v0, v8

    iput v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    .line 791
    invoke-direct {v1, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    .line 793
    :goto_5
    return-void
.end method

.method onManifestLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 16
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    .line 800
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    move-object/from16 v0, p1

    move-object/from16 v14, p6

    instance-of v15, v14, Lcom/google/android/exoplayer2/ParserException;

    .line 801
    .local v15, "isFatal":Z
    move-object/from16 v13, p0

    iget-object v1, v13, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 803
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 804
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v4

    iget v5, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 808
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    .line 801
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    move v13, v15

    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    .line 811
    if-eqz v15, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    :goto_0
    return-object v1
.end method

.method onUtcTimestampLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 13
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 816
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Ljava/lang/Long;>;"
    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 818
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 819
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 823
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    .line 816
    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 824
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    .line 825
    return-void
.end method

.method onUtcTimestampLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 15
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    .line 832
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Ljava/lang/Long;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 834
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 835
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 839
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    .line 832
    const/4 v14, 0x1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move-object/from16 v13, p6

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    .line 842
    move-object/from16 v2, p6

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    .line 843
    sget-object v3, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-object v3
.end method

.method public prepareSourceInternal(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p2, "isTopLevelSource"    # Z
    .param p3, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 616
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 617
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz v0, :cond_0

    .line 618
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_0

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 621
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "Loader:DashMediaSource"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 622
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 623
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    .line 625
    :goto_0
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 3
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 657
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    .line 658
    .local v0, "dashMediaPeriod":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->release()V

    .line 659
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 660
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 5

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    .line 665
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 666
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v2, :cond_0

    .line 667
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    .line 668
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 670
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 671
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 672
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iput-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 673
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 674
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    .line 675
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 676
    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 677
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 679
    :cond_2
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 680
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 681
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 682
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dynamicMediaPresentationEnded:Z

    .line 683
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    .line 684
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 685
    return-void
.end method

.method public replaceManifestUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "manifestUri"    # Landroid/net/Uri;

    .line 603
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 605
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    .line 606
    monitor-exit v0

    .line 607
    return-void

    .line 606
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
