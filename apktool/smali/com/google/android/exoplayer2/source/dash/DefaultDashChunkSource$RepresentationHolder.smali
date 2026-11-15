.class public final Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationHolder"
.end annotation


# instance fields
.field final extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final periodDurationUs:J

.field public final representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

.field public final segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final segmentNumShift:J


# direct methods
.method constructor <init>(JILcom/google/android/exoplayer2/source/dash/manifest/Representation;ZZLcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 8
    .param p1, "periodDurationUs"    # J
    .param p3, "trackType"    # I
    .param p4, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p5, "enableEventMessageTrack"    # Z
    .param p6, "enableCea608Track"    # Z
    .param p7, "playerEmsgTrackOutput"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 631
    nop

    .line 634
    invoke-static {p3, p4, p5, p6, p7}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->createExtractorWrapper(ILcom/google/android/exoplayer2/source/dash/manifest/Representation;ZZLcom/google/android/exoplayer2/extractor/TrackOutput;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object v4

    .line 641
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v7

    .line 631
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    .line 642
    return-void
.end method

.method private constructor <init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V
    .locals 0
    .param p1, "periodDurationUs"    # J
    .param p3, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p4, "extractorWrapper"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "segmentNumShift"    # J
    .param p7, "segmentIndex"    # Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 651
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 652
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 653
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 654
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    .line 655
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 614
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    return-wide v0
.end method

.method private static createExtractorWrapper(ILcom/google/android/exoplayer2/source/dash/manifest/Representation;ZZLcom/google/android/exoplayer2/extractor/TrackOutput;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .locals 10
    .param p0, "trackType"    # I
    .param p1, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p2, "enableEventMessageTrack"    # Z
    .param p3, "enableCea608Track"    # Z
    .param p4, "playerEmsgTrackOutput"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 785
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 786
    .local v0, "containerMimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 787
    return-object v2

    .line 790
    :cond_0
    const-string v1, "application/x-rawcc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    new-instance v1, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;-><init>(Lcom/google/android/exoplayer2/Format;)V

    .local v1, "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_1

    .line 792
    .end local v1    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    .restart local v1    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_1

    .line 795
    .end local v1    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_2
    const/4 v1, 0x0

    .line 796
    .local v1, "flags":I
    if-eqz p2, :cond_3

    .line 797
    or-int/lit8 v1, v1, 0x4

    .line 800
    :cond_3
    if-eqz p3, :cond_4

    const/4 v3, 0x0

    .line 803
    const-string v4, "application/cea-608"

    invoke-static {v2, v4, v3, v2}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 802
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    .line 804
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v8, v2

    :goto_0
    nop

    .line 805
    .local v8, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    move v4, v1

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    move-object v1, v2

    .line 811
    .end local v8    # "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v1, "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :goto_1
    new-instance v2, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v2, v1, p0, v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/Format;)V

    return-object v2
.end method

.method private static mimeTypeIsRawText(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 776
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static mimeTypeIsWebm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 771
    const-string/jumbo v0, "video/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 772
    const-string v0, "application/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 771
    :goto_1
    return v0
.end method


# virtual methods
.method copyWithNewRepresentation(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 25
    .param p1, "newPeriodDurationUs"    # J
    .param p3, "newRepresentation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
        }
    .end annotation

    .line 661
    move-object/from16 v0, p0

    move-wide/from16 v9, p1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v11

    .line 662
    .local v11, "oldIndex":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v12

    .line 664
    .local v12, "newIndex":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-nez v11, :cond_0

    .line 666
    new-instance v13, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v1, v13

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v13

    .line 670
    :cond_0
    invoke-interface {v11}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 672
    new-instance v13, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v1, v13

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v13

    .line 676
    :cond_1
    invoke-interface {v11, v9, v10}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v13

    .line 677
    .local v13, "oldIndexSegmentCount":I
    if-nez v13, :cond_2

    .line 679
    new-instance v14, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v14

    .line 683
    :cond_2
    invoke-interface {v11}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v1

    int-to-long v3, v13

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long v14, v1, v3

    .line 684
    .local v14, "oldIndexLastSegmentNum":J
    nop

    .line 685
    invoke-interface {v11, v14, v15}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v1

    .line 686
    invoke-interface {v11, v14, v15, v9, v10}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v5

    add-long v16, v1, v5

    .line 687
    .local v16, "oldIndexEndTimeUs":J
    invoke-interface {v12}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v6

    .line 688
    .local v6, "newIndexFirstSegmentNum":J
    invoke-interface {v12, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v1

    .line 689
    .local v1, "newIndexStartTimeUs":J
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 690
    .local v3, "newSegmentNumShift":J
    cmp-long v5, v16, v1

    if-nez v5, :cond_3

    .line 692
    const-wide/16 v18, 0x1

    add-long v18, v14, v18

    sub-long v18, v18, v6

    add-long v3, v3, v18

    move-wide/from16 v18, v3

    goto :goto_0

    .line 693
    :cond_3
    cmp-long v5, v16, v1

    if-ltz v5, :cond_4

    .line 699
    nop

    .line 700
    invoke-interface {v11, v1, v2, v9, v10}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v18

    sub-long v18, v18, v6

    add-long v3, v3, v18

    move-wide/from16 v18, v3

    .line 703
    .end local v3    # "newSegmentNumShift":J
    .local v18, "newSegmentNumShift":J
    :goto_0
    new-instance v20, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-wide/from16 v21, v1

    .end local v1    # "newIndexStartTimeUs":J
    .local v21, "newIndexStartTimeUs":J
    move-object/from16 v1, v20

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v23, v6

    .end local v6    # "newIndexFirstSegmentNum":J
    .local v23, "newIndexFirstSegmentNum":J
    move-wide/from16 v6, v18

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v20

    .line 696
    .end local v18    # "newSegmentNumShift":J
    .end local v21    # "newIndexStartTimeUs":J
    .end local v23    # "newIndexFirstSegmentNum":J
    .restart local v1    # "newIndexStartTimeUs":J
    .restart local v3    # "newSegmentNumShift":J
    .restart local v6    # "newIndexFirstSegmentNum":J
    :cond_4
    move-wide/from16 v21, v1

    move-wide/from16 v23, v6

    .end local v1    # "newIndexStartTimeUs":J
    .end local v6    # "newIndexFirstSegmentNum":J
    .restart local v21    # "newIndexStartTimeUs":J
    .restart local v23    # "newIndexFirstSegmentNum":J
    new-instance v1, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    throw v1
.end method

.method copyWithNewSegmentIndex(Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 9
    .param p1, "segmentIndex"    # Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 709
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v8
.end method

.method public getFirstAvailableSegmentNum(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;IJ)J
    .locals 14
    .param p1, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "periodIndex"    # I
    .param p3, "nowUnixTimeUs"    # J

    .line 740
    move-object v0, p1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 744
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v1

    sub-long v1, p3, v1

    .line 745
    .local v1, "liveEdgeTimeUs":J
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v3

    .line 746
    .local v3, "periodStartUs":J
    sub-long v5, v1, v3

    .line 747
    .local v5, "liveEdgeTimeInPeriodUs":J
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v7

    .line 748
    .local v7, "bufferDepthUs":J
    nop

    .line 749
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()J

    move-result-wide v9

    sub-long v11, v5, v7

    move-object v13, p0

    invoke-virtual {p0, v11, v12}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)J

    move-result-wide v11

    .line 748
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    return-wide v9

    .line 740
    .end local v1    # "liveEdgeTimeUs":J
    .end local v3    # "periodStartUs":J
    .end local v5    # "liveEdgeTimeInPeriodUs":J
    .end local v7    # "bufferDepthUs":J
    :cond_0
    move-object v13, p0

    .line 751
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()J

    move-result-wide v1

    return-wide v1
.end method

.method public getFirstSegmentNum()J
    .locals 4

    .line 714
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastAvailableSegmentNum(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;IJ)J
    .locals 11
    .param p1, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "periodIndex"    # I
    .param p3, "nowUnixTimeUs"    # J

    .line 756
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()I

    move-result v0

    .line 757
    .local v0, "availableSegmentCount":I
    const-wide/16 v1, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 760
    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v3

    sub-long v3, p3, v3

    .line 761
    .local v3, "liveEdgeTimeUs":J
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v5

    .line 762
    .local v5, "periodStartUs":J
    sub-long v7, v3, v5

    .line 765
    .local v7, "liveEdgeTimeInPeriodUs":J
    invoke-virtual {p0, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)J

    move-result-wide v9

    sub-long/2addr v9, v1

    return-wide v9

    .line 767
    .end local v3    # "liveEdgeTimeUs":J
    .end local v5    # "periodStartUs":J
    .end local v7    # "liveEdgeTimeInPeriodUs":J
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    sub-long/2addr v3, v1

    return-wide v3
.end method

.method public getSegmentCount()I
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v0

    return v0
.end method

.method public getSegmentEndTimeUs(J)J
    .locals 7
    .param p1, "segmentNum"    # J

    .line 726
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long v3, p1, v3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 727
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 726
    return-wide v0
.end method

.method public getSegmentNum(J)J
    .locals 4
    .param p1, "positionUs"    # J

    .line 731
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSegmentStartTimeUs(J)J
    .locals 3
    .param p1, "segmentNum"    # J

    .line 722
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long v1, p1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 3
    .param p1, "segmentNum"    # J

    .line 735
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long v1, p1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method
