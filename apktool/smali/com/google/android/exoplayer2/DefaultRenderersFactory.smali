.class public Lcom/google/android/exoplayer2/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultRenderersFactory$ExtensionRendererMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L

.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field protected static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "DefaultRenderersFactory"


# instance fields
.field private final allowedVideoJoiningTimeMs:J

.field private final context:Landroid/content/Context;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionRendererMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I

    .line 118
    const-wide/16 v0, 0x1388

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;IJ)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .param p3, "allowedVideoJoiningTimeMs"    # J

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 147
    iput p2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 148
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    .local p2, "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    .local p2, "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const-wide/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IJ)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IJ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "extensionRendererMode"    # I
    .param p4, "allowedVideoJoiningTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    .local p2, "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 163
    iput p3, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 164
    iput-wide p4, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 165
    iput-object p2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 166
    return-void
.end method


# virtual methods
.method protected buildAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .locals 1

    .line 427
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method

.method protected buildAudioRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;ILjava/util/ArrayList;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "audioProcessors"    # [Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p6, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 278
    .local p2, "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local p7, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    move/from16 v10, p6

    move-object/from16 v11, p7

    const-string v12, "DefaultRenderersFactory"

    new-instance v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    sget-object v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 286
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v8

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 278
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    if-nez v10, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 293
    .local v0, "extensionRendererIndex":I
    const/4 v1, 0x2

    if-ne v10, v1, :cond_1

    .line 294
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_0

    .line 293
    :cond_1
    move v2, v0

    .line 300
    .end local v0    # "extensionRendererIndex":I
    .local v2, "extensionRendererIndex":I
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 301
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v3

    const-class v7, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v7, v6, v5

    const-class v7, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v7, v6, v1

    .line 302
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 307
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v7, v4, [Ljava/lang/Object;

    aput-object p4, v7, v3

    aput-object p5, v7, v5

    aput-object p3, v7, v1

    .line 308
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 309
    .local v7, "renderer":Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "extensionRendererIndex":I
    .local v8, "extensionRendererIndex":I
    :try_start_1
    invoke-virtual {v11, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 310
    const-string v2, "Loaded LibopusAudioRenderer."

    invoke-static {v12, v2}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    goto :goto_2

    .line 313
    :catch_0
    move-exception v0

    move v2, v8

    goto :goto_1

    .line 311
    :catch_1
    move-exception v0

    goto :goto_2

    .line 313
    .end local v8    # "extensionRendererIndex":I
    .restart local v2    # "extensionRendererIndex":I
    :catch_2
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating Opus extension"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move v8, v2

    .line 316
    .end local v2    # "extensionRendererIndex":I
    .restart local v8    # "extensionRendererIndex":I
    :goto_2
    nop

    .line 321
    :try_start_2
    const-string v0, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 322
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/Handler;

    aput-object v6, v2, v3

    const-class v6, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v6, v2, v5

    const-class v6, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v6, v2, v1

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 328
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v6, v4, [Ljava/lang/Object;

    aput-object p4, v6, v3

    aput-object p5, v6, v5

    aput-object p3, v6, v1

    .line 329
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/Renderer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 330
    .local v6, "renderer":Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "extensionRendererIndex":I
    .local v7, "extensionRendererIndex":I
    :try_start_3
    invoke-virtual {v11, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 331
    const-string v8, "Loaded LibflacAudioRenderer."

    invoke-static {v12, v8}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    goto :goto_4

    .line 334
    :catch_4
    move-exception v0

    move v8, v7

    goto :goto_3

    .line 332
    :catch_5
    move-exception v0

    goto :goto_4

    .line 334
    .end local v7    # "extensionRendererIndex":I
    .restart local v8    # "extensionRendererIndex":I
    :catch_6
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    move v7, v8

    .line 337
    .end local v8    # "extensionRendererIndex":I
    .restart local v7    # "extensionRendererIndex":I
    :goto_4
    nop

    .line 342
    :try_start_4
    const-string v0, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 343
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 344
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/Handler;

    aput-object v6, v2, v3

    const-class v6, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v6, v2, v5

    const-class v6, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v6, v2, v1

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 350
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v3

    aput-object p5, v4, v5

    aput-object p3, v4, v1

    .line 351
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Renderer;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 352
    .local v1, "renderer":Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "extensionRendererIndex":I
    .local v3, "extensionRendererIndex":I
    :try_start_5
    invoke-virtual {v11, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 353
    const-string v4, "Loaded FfmpegAudioRenderer."

    invoke-static {v12, v4}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_6

    .line 356
    :catch_8
    move-exception v0

    move v7, v3

    goto :goto_5

    .line 354
    :catch_9
    move-exception v0

    goto :goto_6

    .line 356
    .end local v3    # "extensionRendererIndex":I
    .restart local v7    # "extensionRendererIndex":I
    :catch_a
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FFmpeg extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v0

    move v3, v7

    .line 359
    .end local v7    # "extensionRendererIndex":I
    .restart local v3    # "extensionRendererIndex":I
    :goto_6
    nop

    .line 360
    return-void
.end method

.method protected buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;-><init>()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    return-void
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Lcom/google/android/exoplayer2/metadata/MetadataOutput;
    .param p3, "outputLooper"    # Landroid/os/Looper;
    .param p4, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/metadata/MetadataOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 395
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;

    invoke-direct {v0, p2, p3}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 421
    .local p4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Lcom/google/android/exoplayer2/text/TextOutput;
    .param p3, "outputLooper"    # Landroid/os/Looper;
    .param p4, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/text/TextOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 377
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v0, Lcom/google/android/exoplayer2/text/TextRenderer;

    invoke-direct {v0, p2, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;ILjava/util/ArrayList;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "allowedVideoJoiningTimeMs"    # J
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p7, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;J",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 211
    .local p2, "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local p8, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    move/from16 v1, p7

    move-object/from16 v2, p8

    new-instance v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    sget-object v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v9, 0x0

    const/16 v12, 0x32

    move-object v3, v0

    move-object v4, p1

    move-wide/from16 v6, p3

    move-object v8, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    if-nez v1, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 226
    .local v0, "extensionRendererIndex":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 227
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    goto :goto_0

    .line 226
    :cond_1
    move v4, v0

    .line 233
    .end local v0    # "extensionRendererIndex":I
    .local v4, "extensionRendererIndex":I
    :goto_0
    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 234
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v3

    const-class v7, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x4

    aput-object v7, v6, v11

    .line 235
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 242
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v5, v5, [Ljava/lang/Object;

    .line 245
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v8

    .line 246
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v9

    aput-object p5, v5, v3

    aput-object p6, v5, v10

    const/16 v3, 0x32

    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v11

    .line 244
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 250
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "extensionRendererIndex":I
    .local v5, "extensionRendererIndex":I
    :try_start_1
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 251
    const-string v4, "DefaultRenderersFactory"

    const-string v7, "Loaded LibvpxVideoRenderer."

    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_2

    .line 254
    :catch_0
    move-exception v0

    move v4, v5

    goto :goto_1

    .line 252
    :catch_1
    move-exception v0

    goto :goto_2

    .line 254
    .end local v5    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :catch_2
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Error instantiating VP9 extension"

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move v5, v4

    .line 257
    .end local v4    # "extensionRendererIndex":I
    .restart local v5    # "extensionRendererIndex":I
    :goto_2
    nop

    .line 258
    return-void
.end method

.method public createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)[Lcom/google/android/exoplayer2/Renderer;
    .locals 12
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "videoRendererEventListener"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p3, "audioRendererEventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p4, "textRendererOutput"    # Lcom/google/android/exoplayer2/text/TextOutput;
    .param p5, "metadataRendererOutput"    # Lcom/google/android/exoplayer2/metadata/MetadataOutput;
    .param p6    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/google/android/exoplayer2/text/TextOutput;",
            "Lcom/google/android/exoplayer2/metadata/MetadataOutput;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)[",
            "Lcom/google/android/exoplayer2/Renderer;"
        }
    .end annotation

    .line 176
    .local p6, "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    move-object v9, p0

    if-nez p6, :cond_0

    .line 177
    iget-object v0, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-object v10, v0

    .end local p6    # "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local v0, "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    goto :goto_0

    .line 176
    .end local v0    # "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .restart local p6    # "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    :cond_0
    move-object/from16 v10, p6

    .line 179
    .end local p6    # "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local v10, "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 180
    .local v11, "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/Renderer;>;"
    iget-object v1, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-wide v3, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    iget v7, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v0, p0

    move-object v2, v10

    move-object v5, p1

    move-object v6, p2

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildVideoRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;ILjava/util/ArrayList;)V

    .line 182
    iget-object v1, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-result-object v3

    iget v6, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v4, p1

    move-object v5, p3

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildAudioRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;ILjava/util/ArrayList;)V

    .line 184
    iget-object v1, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object/from16 v2, p4

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildTextRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 186
    iget-object v1, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildMetadataRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 188
    iget-object v0, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v1, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    invoke-virtual {p0, v0, v1, v11}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 189
    iget-object v0, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v1, v9, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v2, p1

    invoke-virtual {p0, v0, p1, v1, v11}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 190
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/Renderer;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Renderer;

    return-object v0
.end method
