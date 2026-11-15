.class public Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
.super Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentRepresentation"
.end annotation


# instance fields
.field private final cacheKey:Ljava/lang/String;

.field public final contentLength:J

.field private final indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

.field private final segmentIndex:Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/lang/String;J)V
    .locals 17
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "revisionId"    # J
    .param p4, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "baseUrl"    # Ljava/lang/String;
    .param p6, "segmentBase"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .param p8, "customCacheKey"    # Ljava/lang/String;
    .param p9, "contentLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 228
    .local p7, "inbandEventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/Representation$1;)V

    .line 229
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->uri:Landroid/net/Uri;

    .line 230
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->getIndex()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 231
    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-wide/from16 v4, p2

    move-object/from16 v3, p4

    move-object/from16 v1, p8

    goto :goto_0

    :cond_0
    if-eqz v10, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    iget-object v4, v3, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-wide/from16 v4, p2

    move-object/from16 v3, p4

    move-object v1, v0

    :goto_0
    iput-object v1, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    .line 233
    move-wide/from16 v1, p9

    iput-wide v1, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->contentLength:J

    .line 236
    iget-object v6, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object v11, v6

    move-wide/from16 v15, p9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    :goto_1
    iput-object v0, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    .line 238
    return-void
.end method

.method public static newInstance(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;JJJJLjava/util/List;Ljava/lang/String;J)Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
    .locals 20
    .param p0, "contentId"    # Ljava/lang/String;
    .param p1, "revisionId"    # J
    .param p3, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "initializationStart"    # J
    .param p7, "initializationEnd"    # J
    .param p9, "indexStart"    # J
    .param p11, "indexEnd"    # J
    .param p14, "customCacheKey"    # Ljava/lang/String;
    .param p15, "contentLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;"
        }
    .end annotation

    .line 207
    .local p13, "inbandEventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    sub-long v0, p7, p5

    const-wide/16 v7, 0x1

    add-long v4, v0, v7

    const/4 v1, 0x0

    move-object v0, v6

    move-wide/from16 v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    move-object v1, v6

    .line 209
    .local v1, "rangedUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    new-instance v15, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    sub-long v2, p11, p9

    add-long v9, v2, v7

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, v15

    move-wide/from16 v6, p9

    move-wide v8, v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    .line 211
    .local v15, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;

    move-object v9, v0

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-wide/from16 v18, p15

    invoke-direct/range {v9 .. v19}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    return-object v0
.end method

.method public getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object v0
.end method
