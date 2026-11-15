.class public final Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.source "DashDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/offline/SegmentDownloader<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/util/List;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V
    .locals 0
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p3, "constructorHelper"    # Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;",
            "Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;",
            ")V"
        }
    .end annotation

    .line 72
    .local p2, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;-><init>(Landroid/net/Uri;Ljava/util/List;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V

    .line 73
    return-void
.end method

.method private static addSegment(JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "startTimeUs"    # J
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "rangedUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 154
    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 155
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method private static addSegmentsForAdaptationSet(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;JJZLjava/util/ArrayList;)V
    .locals 23
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "adaptationSet"    # Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .param p2, "periodStartUs"    # J
    .param p4, "periodDurationUs"    # J
    .param p6, "allowIncompleteList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            "JJZ",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 111
    .local p7, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p7

    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 112
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 115
    .local v6, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :try_start_0
    iget v0, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    move-object/from16 v7, p0

    invoke-static {v7, v0, v6}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getSegmentIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    .local v0, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-eqz v0, :cond_4

    .line 127
    nop

    .line 129
    move-wide/from16 v8, p4

    invoke-interface {v0, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v10

    .line 130
    .local v10, "segmentCount":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 134
    iget-object v11, v6, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    .line 135
    .local v11, "baseUrl":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v12

    .line 136
    .local v12, "initializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-eqz v12, :cond_0

    .line 137
    invoke-static {v2, v3, v11, v12, v4}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegment(JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/util/ArrayList;)V

    .line 139
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v13

    .line 140
    .local v13, "indexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-eqz v13, :cond_1

    .line 141
    invoke-static {v2, v3, v11, v13, v4}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegment(JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/util/ArrayList;)V

    .line 143
    :cond_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v14

    .line 144
    .local v14, "firstSegmentNum":J
    move-object/from16 v16, v6

    .end local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .local v16, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    int-to-long v6, v10

    add-long/2addr v6, v14

    const-wide/16 v17, 0x1

    sub-long v6, v6, v17

    .line 145
    .local v6, "lastSegmentNum":J
    move-wide/from16 v19, v14

    move-wide/from16 v8, v19

    .local v8, "j":J
    :goto_1
    cmp-long v19, v8, v6

    if-gtz v19, :cond_2

    .line 146
    invoke-interface {v0, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v19

    move-wide/from16 v21, v6

    .end local v6    # "lastSegmentNum":J
    .local v21, "lastSegmentNum":J
    add-long v6, v2, v19

    invoke-interface {v0, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    invoke-static {v6, v7, v11, v1, v4}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegment(JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/util/ArrayList;)V

    .line 145
    add-long v8, v8, v17

    move-object/from16 v1, p1

    move-wide/from16 v6, v21

    goto :goto_1

    .end local v21    # "lastSegmentNum":J
    .restart local v6    # "lastSegmentNum":J
    :cond_2
    move-wide/from16 v21, v6

    .end local v6    # "lastSegmentNum":J
    .restart local v21    # "lastSegmentNum":J
    goto :goto_3

    .line 131
    .end local v8    # "j":J
    .end local v11    # "baseUrl":Ljava/lang/String;
    .end local v12    # "initializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v13    # "indexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v14    # "firstSegmentNum":J
    .end local v16    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .end local v21    # "lastSegmentNum":J
    .local v6, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_3
    move-object/from16 v16, v6

    .end local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v16    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadException;

    const-string v6, "Unbounded segment index"

    invoke-direct {v1, v6}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    .end local v10    # "segmentCount":I
    .end local v16    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_4
    move-object/from16 v16, v6

    .end local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v16    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :try_start_1
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadException;

    const-string v6, "Missing segment index"

    invoke-direct {v1, v6}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    .end local v5    # "i":I
    .end local v16    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .end local p0    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local p1    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local p2    # "periodStartUs":J
    .end local p4    # "periodDurationUs":J
    .end local p6    # "allowIncompleteList":Z
    .end local p7    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .end local v0    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .restart local v5    # "i":I
    .restart local v16    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local p0    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .restart local p1    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .restart local p2    # "periodStartUs":J
    .restart local p4    # "periodDurationUs":J
    .restart local p6    # "allowIncompleteList":Z
    .restart local p7    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v16    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :catch_1
    move-exception v0

    move-object/from16 v16, v6

    .line 121
    .end local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :goto_2
    if-eqz p6, :cond_5

    .line 126
    nop

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    .end local v16    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 122
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v16    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_5
    throw v0

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    .end local v16    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_6
    return-void
.end method

.method private static getSegmentIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .locals 5
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "trackType"    # I
    .param p2, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 161
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0

    .line 162
    .local v0, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-eqz v0, :cond_0

    .line 163
    return-object v0

    .line 165
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadChunkIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    move-result-object v1

    .line 166
    .local v1, "seekMap":Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;

    iget-wide v3, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;J)V

    :goto_0
    return-object v2
.end method


# virtual methods
.method protected bridge synthetic getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/offline/FilterableManifest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method

.method protected getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 1
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    check-cast p2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Z)Ljava/util/List;
    .locals 18
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "allowIncompleteList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    move-object/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    const/4 v2, 0x0

    move v10, v2

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v2

    if-ge v10, v2, :cond_1

    .line 86
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v11

    .line 87
    .local v11, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    iget-wide v2, v11, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v12

    .line 88
    .local v12, "periodStartUs":J
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v14

    .line 89
    .local v14, "periodDurationUs":J
    iget-object v9, v11, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 90
    .local v9, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    const/4 v2, 0x0

    move v8, v2

    .local v8, "j":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_0

    .line 91
    nop

    .line 93
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 91
    move-object/from16 v2, p1

    move-wide v4, v12

    move-wide v6, v14

    move/from16 v16, v8

    .end local v8    # "j":I
    .local v16, "j":I
    move/from16 v8, p3

    move-object/from16 v17, v9

    .end local v9    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .local v17, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    move-object v9, v1

    invoke-static/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegmentsForAdaptationSet(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;JJZLjava/util/ArrayList;)V

    .line 90
    add-int/lit8 v8, v16, 0x1

    move-object/from16 v9, v17

    .end local v16    # "j":I
    .restart local v8    # "j":I
    goto :goto_1

    .end local v17    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .restart local v9    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    :cond_0
    move/from16 v16, v8

    move-object/from16 v17, v9

    .line 85
    .end local v8    # "j":I
    .end local v9    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .end local v11    # "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .end local v12    # "periodStartUs":J
    .end local v14    # "periodDurationUs":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 100
    .end local v10    # "i":I
    :cond_1
    return-object v1
.end method
