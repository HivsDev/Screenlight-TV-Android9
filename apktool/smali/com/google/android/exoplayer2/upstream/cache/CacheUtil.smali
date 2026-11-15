.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000

.field public static final DEFAULT_CACHE_KEY_FACTORY:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/-$$Lambda$u97poD-IIwob7OPYcVJkh9jokx0;->INSTANCE:Lcom/google/android/exoplayer2/upstream/cache/-$$Lambda$u97poD-IIwob7OPYcVJkh9jokx0;

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->DEFAULT_CACHE_KEY_FACTORY:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 9
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "upstream"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "counters"    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "isCanceled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 130
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    const/high16 v0, 0x20000

    new-array v3, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 140
    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 25
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .param p3, "buffer"    # [B
    .param p4, "priorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .param p5, "priority"    # I
    .param p6, "counters"    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "isCanceled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "enableEOFException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 177
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p6

    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    if-eqz v0, :cond_0

    .line 182
    invoke-static {v11, v12, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    move-object v13, v0

    goto :goto_0

    .line 185
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    move-object v0, v1

    move-object v13, v0

    .line 188
    .end local p6    # "counters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .local v13, "counters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v14

    .line 189
    .local v14, "key":Ljava/lang/String;
    iget-wide v0, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 190
    .local v0, "start":J
    iget-wide v2, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v15, -0x1

    cmp-long v4, v2, v15

    if-eqz v4, :cond_1

    iget-wide v2, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_1

    :cond_1
    invoke-interface {v12, v14}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1
    move-wide/from16 v19, v0

    move-wide/from16 v17, v2

    .line 191
    .end local v0    # "start":J
    .local v17, "left":J
    .local v19, "start":J
    :goto_2
    const-wide/16 v21, 0x0

    cmp-long v0, v17, v21

    if-eqz v0, :cond_7

    .line 192
    invoke-static/range {p7 .. p7}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 193
    cmp-long v0, v17, v15

    if-eqz v0, :cond_2

    move-wide/from16 v4, v17

    goto :goto_3

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    move-wide v4, v0

    .line 194
    :goto_3
    move-object/from16 v0, p1

    move-object v1, v14

    move-wide/from16 v2, v19

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    .line 195
    .local v0, "blockLength":J
    cmp-long v2, v0, v21

    if-lez v2, :cond_3

    move-wide/from16 v23, v0

    goto :goto_4

    .line 199
    :cond_3
    neg-long v9, v0

    .line 200
    .end local v0    # "blockLength":J
    .local v9, "blockLength":J
    nop

    .line 201
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide v3, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v23, v9

    .end local v9    # "blockLength":J
    .local v23, "blockLength":J
    move-object v9, v13

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;)J

    move-result-wide v0

    .line 211
    .local v0, "read":J
    cmp-long v2, v0, v23

    if-gez v2, :cond_5

    .line 213
    if-eqz p8, :cond_7

    cmp-long v2, v17, v15

    if-nez v2, :cond_4

    goto :goto_6

    .line 214
    :cond_4
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 219
    .end local v0    # "read":J
    :cond_5
    :goto_4
    add-long v19, v19, v23

    .line 220
    cmp-long v0, v17, v15

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    move-wide/from16 v21, v23

    :goto_5
    sub-long v17, v17, v21

    .line 221
    .end local v23    # "blockLength":J
    goto :goto_2

    .line 222
    :cond_7
    :goto_6
    return-void
.end method

.method public static generateKey(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .line 66
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V
    .locals 20
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "counters"    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "key":Ljava/lang/String;
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 91
    .local v2, "start":J
    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v9, -0x1

    cmp-long v6, v4, v9

    if-eqz v6, :cond_0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    move-object/from16 v11, p1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p1

    invoke-interface {v11, v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    .line 92
    .local v4, "left":J
    :goto_0
    iput-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 93
    const-wide/16 v12, 0x0

    iput-wide v12, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    .line 94
    iput-wide v12, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    move-wide/from16 v16, v2

    move-wide v14, v4

    .line 95
    .end local v2    # "start":J
    .end local v4    # "left":J
    .local v14, "left":J
    .local v16, "start":J
    :goto_1
    cmp-long v2, v14, v12

    if-eqz v2, :cond_5

    .line 96
    const-wide v18, 0x7fffffffffffffffL

    cmp-long v2, v14, v9

    if-eqz v2, :cond_1

    move-wide v6, v14

    goto :goto_2

    :cond_1
    move-wide/from16 v6, v18

    .line 97
    :goto_2
    move-object/from16 v2, p1

    move-object v3, v8

    move-wide/from16 v4, v16

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v2

    .line 98
    .local v2, "blockLength":J
    cmp-long v4, v2, v12

    if-lez v4, :cond_2

    .line 99
    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    goto :goto_3

    .line 101
    :cond_2
    neg-long v2, v2

    .line 102
    cmp-long v4, v2, v18

    if-nez v4, :cond_3

    .line 103
    return-void

    .line 106
    :cond_3
    :goto_3
    add-long v16, v16, v2

    .line 107
    cmp-long v4, v14, v9

    if-nez v4, :cond_4

    move-wide v4, v12

    goto :goto_4

    :cond_4
    move-wide v4, v2

    :goto_4
    sub-long/2addr v14, v4

    .line 108
    .end local v2    # "blockLength":J
    goto :goto_1

    .line 109
    :cond_5
    return-void
.end method

.method public static getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .locals 1
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;)J
    .locals 17
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "absoluteStreamPosition"    # J
    .param p3, "length"    # J
    .param p5, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p6, "buffer"    # [B
    .param p7, "priorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .param p8, "priority"    # I
    .param p9, "counters"    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .param p10, "isCanceled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p0

    .line 253
    .end local p0    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .local v4, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :goto_0
    if-eqz p7, :cond_0

    .line 255
    invoke-virtual/range {p7 .. p8}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 258
    :cond_0
    :try_start_0
    invoke-static/range {p10 .. p10}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 261
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v6, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget v7, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    iget-object v8, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    iget-wide v9, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long v9, v9, p1

    iget-wide v11, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long v11, v9, v11

    const-wide/16 v13, -0x1

    iget-object v15, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v5, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    or-int/lit8 v16, v5, 0x2

    move-object v5, v0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    move-object v4, v0

    .line 271
    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    .line 272
    .local v5, "resolvedLength":J
    iget-wide v7, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-nez v0, :cond_1

    cmp-long v0, v5, v9

    if-eqz v0, :cond_1

    .line 273
    iget-wide v7, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    add-long/2addr v7, v5

    iput-wide v7, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 275
    :cond_1
    const-wide/16 v7, 0x0

    .line 276
    .local v7, "totalRead":J
    :goto_1
    cmp-long v0, v7, p3

    if-eqz v0, :cond_4

    .line 277
    invoke-static/range {p10 .. p10}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 278
    const/4 v0, 0x0

    cmp-long v11, p3, v9

    if-eqz v11, :cond_2

    array-length v11, v2

    int-to-long v11, v11

    sub-long v13, p3, v7

    .line 279
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    goto :goto_2

    :cond_2
    array-length v12, v2

    .line 278
    :goto_2
    invoke-interface {v1, v2, v0, v12}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 281
    .local v0, "read":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_3

    .line 282
    iget-wide v11, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    cmp-long v13, v11, v9

    if-nez v13, :cond_4

    .line 283
    iget-wide v9, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    goto :goto_3

    .line 287
    :cond_3
    int-to-long v11, v0

    add-long/2addr v7, v11

    .line 288
    iget-wide v11, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    int-to-long v13, v0

    add-long/2addr v11, v13

    iput-wide v11, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .end local v0    # "read":I
    goto :goto_1

    .line 290
    :cond_4
    :goto_3
    nop

    .line 294
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 290
    return-wide v7

    .line 294
    .end local v5    # "resolvedLength":J
    .end local v7    # "totalRead":J
    :catchall_0
    move-exception v0

    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 295
    throw v0

    .line 291
    :catch_0
    move-exception v0

    .line 294
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 295
    goto :goto_0
.end method

.method public static remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    .locals 4
    .param p0, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p1, "key"    # Ljava/lang/String;

    .line 301
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 302
    .local v0, "cachedSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 304
    .local v2, "cachedSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :try_start_0
    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_1

    .line 305
    :catch_0
    move-exception v3

    .line 308
    .end local v2    # "cachedSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :goto_1
    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method private static throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .param p0, "isCanceled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 313
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    return-void

    .line 314
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method
