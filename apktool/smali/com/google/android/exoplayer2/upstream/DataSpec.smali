.class public final Lcom/google/android/exoplayer2/upstream/DataSpec;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/DataSpec$HttpMethod;,
        Lcom/google/android/exoplayer2/upstream/DataSpec$Flags;
    }
.end annotation


# static fields
.field public static final FLAG_ALLOW_CACHING_UNKNOWN_LENGTH:I = 0x2

.field public static final FLAG_ALLOW_GZIP:I = 0x1

.field public static final HTTP_METHOD_GET:I = 0x1

.field public static final HTTP_METHOD_HEAD:I = 0x3

.field public static final HTTP_METHOD_POST:I = 0x2


# instance fields
.field public final absoluteStreamPosition:J

.field public final flags:I

.field public final httpBody:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final httpMethod:I

.field public final key:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final length:J

.field public final position:J

.field public final postBody:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "flags"    # I

    .line 136
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "httpMethod"    # I
    .param p3, "httpBody"    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "absoluteStreamPosition"    # J
    .param p6, "position"    # J
    .param p8, "length"    # J
    .param p10, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "flags"    # I

    .line 241
    move-object v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    cmp-long v12, v2, v10

    if-ltz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 243
    cmp-long v12, v4, v10

    if-ltz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 244
    cmp-long v12, v6, v10

    if-gtz v12, :cond_3

    const-wide/16 v10, -0x1

    cmp-long v12, v6, v10

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :cond_3
    :goto_2
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 245
    move-object v8, p1

    iput-object v8, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 246
    move v9, p2

    iput v9, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    .line 247
    if-eqz v1, :cond_4

    array-length v10, v1

    if-eqz v10, :cond_4

    move-object v10, v1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    iput-object v10, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    .line 248
    iget-object v10, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    iput-object v10, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    .line 249
    iput-wide v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 250
    iput-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 251
    iput-wide v6, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    .line 252
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    .line 253
    move/from16 v11, p11

    iput v11, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "absoluteStreamPosition"    # J
    .param p4, "position"    # J
    .param p6, "length"    # J
    .param p8, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "flags"    # I

    .line 183
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "absoluteStreamPosition"    # J
    .param p4, "length"    # J
    .param p6, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 148
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "absoluteStreamPosition"    # J
    .param p4, "length"    # J
    .param p6, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "flags"    # I

    .line 162
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "postBody"    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "absoluteStreamPosition"    # J
    .param p5, "position"    # J
    .param p7, "length"    # J
    .param p9, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "flags"    # I

    .line 208
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    .line 217
    return-void
.end method

.method public static getStringForHttpMethod(I)Ljava/lang/String;
    .locals 1
    .param p0, "httpMethod"    # I

    .line 299
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 305
    const-string v0, "HEAD"

    return-object v0

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 303
    :cond_1
    const-string v0, "POST"

    return-object v0

    .line 301
    :cond_2
    const-string v0, "GET"

    return-object v0
.end method


# virtual methods
.method public final getHttpMethodString()Ljava/lang/String;
    .locals 1

    .line 291
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 262
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 5
    .param p1, "offset"    # J

    .line 319
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, v0, p1

    :goto_0
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(JJ)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    return-object v0
.end method

.method public subrange(JJ)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 15
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .line 330
    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v3, v1, p3

    if-nez v3, :cond_0

    .line 331
    return-object v0

    .line 333
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget v5, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    add-long v7, v2, p1

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long v9, v2, p1

    iget-object v13, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v14, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    move-object v3, v1

    move-wide/from16 v11, p3

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSpec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DataSpec;->getHttpMethodString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    .line 272
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    return-object v0
.end method

.method public withUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .line 352
    new-instance v12, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v11, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    move-object v0, v12

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    return-object v12
.end method
