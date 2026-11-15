.class final Lcom/google/android/exoplayer2/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# static fields
.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64


# instance fields
.field private length:I

.field private loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private nextWindowSequenceNumber:J

.field private oldFrontPeriodUid:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private oldFrontPeriodWindowSequenceNumber:J

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 59
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 60
    sget-object v0, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 61
    return-void
.end method

.method private canKeepMediaPeriodHolder(Lcom/google/android/exoplayer2/MediaPeriodHolder;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Z
    .locals 6
    .param p1, "periodHolder"    # Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .param p2, "info"    # Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 465
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 466
    .local v0, "periodHolderInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    iget-wide v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v3, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 467
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 466
    :goto_0
    return v1
.end method

.method private getFirstMediaPeriodInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 6
    .param p1, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 515
    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfo(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getFollowingMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 29
    .param p1, "mediaPeriodHolder"    # Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .param p2, "rendererPositionUs"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 534
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v10, v9, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 538
    .local v10, "mediaPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    nop

    .line 539
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    iget-wide v2, v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    add-long/2addr v0, v2

    sub-long v11, v0, p2

    .line 540
    .local v11, "bufferedDurationUs":J
    iget-boolean v0, v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 541
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v6

    .line 542
    .local v6, "currentPeriodIndex":I
    iget-object v13, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v15, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v7, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v14, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 543
    move/from16 v18, v14

    move v14, v6

    move-object/from16 v16, v0

    move/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v7

    .line 545
    .local v7, "nextPeriodIndex":I
    if-ne v7, v4, :cond_0

    .line 547
    return-object v5

    .line 551
    :cond_0
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 552
    invoke-virtual {v0, v7, v4, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v4, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 553
    .local v4, "nextWindowIndex":I
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 554
    .local v0, "nextPeriodUid":Ljava/lang/Object;
    iget-object v3, v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v14, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 555
    .local v14, "windowSequenceNumber":J
    iget-object v3, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v13, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v3, v4, v13}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ne v3, v7, :cond_3

    .line 559
    iget-object v13, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v5, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 565
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    .line 560
    move-wide v1, v14

    .end local v14    # "windowSequenceNumber":J
    .local v1, "windowSequenceNumber":J
    move-object v14, v3

    move-object v15, v5

    move/from16 v16, v4

    invoke-virtual/range {v13 .. v20}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v3

    .line 566
    .local v3, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v3, :cond_1

    .line 567
    const/4 v5, 0x0

    return-object v5

    .line 569
    :cond_1
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 570
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 571
    .local v13, "startPositionUs":J
    iget-object v5, v9, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v5, :cond_2

    iget-object v5, v9, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v5, v5, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 572
    iget-object v5, v9, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v5, v5, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v5, v0

    goto :goto_0

    .line 574
    :cond_2
    move-object v5, v0

    move-wide v15, v1

    .end local v0    # "nextPeriodUid":Ljava/lang/Object;
    .end local v1    # "windowSequenceNumber":J
    .local v5, "nextPeriodUid":Ljava/lang/Object;
    .local v15, "windowSequenceNumber":J
    iget-wide v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v17, 0x1

    move-object/from16 v19, v3

    .end local v3    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .local v19, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    add-long v2, v0, v17

    iput-wide v2, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    move-wide v1, v0

    .line 576
    .end local v15    # "windowSequenceNumber":J
    .end local v19    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .restart local v1    # "windowSequenceNumber":J
    :goto_0
    move-wide/from16 v16, v1

    move-wide v14, v13

    move-object v13, v5

    goto :goto_1

    .line 577
    .end local v1    # "windowSequenceNumber":J
    .end local v5    # "nextPeriodUid":Ljava/lang/Object;
    .end local v13    # "startPositionUs":J
    .restart local v0    # "nextPeriodUid":Ljava/lang/Object;
    .restart local v14    # "windowSequenceNumber":J
    :cond_3
    move-wide v15, v14

    .end local v14    # "windowSequenceNumber":J
    .restart local v15    # "windowSequenceNumber":J
    const-wide/16 v1, 0x0

    move-object v13, v0

    move-wide/from16 v16, v15

    move-wide v14, v1

    .line 579
    .end local v0    # "nextPeriodUid":Ljava/lang/Object;
    .end local v15    # "windowSequenceNumber":J
    .local v13, "nextPeriodUid":Ljava/lang/Object;
    .local v14, "startPositionUs":J
    .local v16, "windowSequenceNumber":J
    :goto_1
    nop

    .line 580
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move/from16 v18, v4

    .end local v4    # "nextWindowIndex":I
    .local v18, "nextWindowIndex":I
    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v19

    .line 581
    .local v19, "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move-object/from16 v1, v19

    move-wide v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfo(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 584
    .end local v6    # "currentPeriodIndex":I
    .end local v7    # "nextPeriodIndex":I
    .end local v13    # "nextPeriodUid":Ljava/lang/Object;
    .end local v14    # "startPositionUs":J
    .end local v16    # "windowSequenceNumber":J
    .end local v18    # "nextWindowIndex":I
    .end local v19    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :cond_4
    iget-object v13, v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 585
    .local v13, "currentPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 586
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 587
    iget v14, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 588
    .local v14, "adGroupIndex":I
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v15

    .line 589
    .local v15, "adCountInCurrentAdGroup":I
    if-ne v15, v4, :cond_5

    .line 590
    const/4 v0, 0x0

    return-object v0

    .line 592
    :cond_5
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v4, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 593
    invoke-virtual {v0, v14, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getNextAdIndexToPlay(II)I

    move-result v6

    .line 594
    .local v6, "nextAdIndexInAdGroup":I
    if-ge v6, v15, :cond_7

    .line 596
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v14, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v0

    if-nez v0, :cond_6

    move/from16 v18, v6

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    iget-object v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v4, v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v2, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 598
    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move v2, v14

    move v3, v6

    move/from16 v18, v6

    .end local v6    # "nextAdIndexInAdGroup":I
    .local v18, "nextAdIndexInAdGroup":I
    move-wide/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v5

    .line 596
    :goto_2
    return-object v5

    .line 610
    .end local v18    # "nextAdIndexInAdGroup":I
    .restart local v6    # "nextAdIndexInAdGroup":I
    :cond_7
    move/from16 v18, v6

    .end local v6    # "nextAdIndexInAdGroup":I
    .restart local v18    # "nextAdIndexInAdGroup":I
    iget-wide v4, v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    .line 611
    .local v4, "startPositionUs":J
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v0

    if-ne v0, v3, :cond_9

    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v6

    cmp-long v0, v6, v1

    if-nez v0, :cond_9

    .line 612
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v6, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v7, v6, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    .line 618
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v27

    .line 613
    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move/from16 v24, v7

    invoke-virtual/range {v21 .. v28}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v0

    .line 619
    .local v0, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v0, :cond_8

    .line 620
    const/4 v1, 0x0

    return-object v1

    .line 622
    :cond_8
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v6, v1

    .end local v4    # "startPositionUs":J
    .local v1, "startPositionUs":J
    goto :goto_3

    .line 624
    .end local v0    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v1    # "startPositionUs":J
    .restart local v4    # "startPositionUs":J
    :cond_9
    move-wide v6, v4

    .end local v4    # "startPositionUs":J
    .local v6, "startPositionUs":J
    :goto_3
    iget-object v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v4, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 627
    .end local v6    # "startPositionUs":J
    .end local v14    # "adGroupIndex":I
    .end local v15    # "adCountInCurrentAdGroup":I
    .end local v18    # "nextAdIndexInAdGroup":I
    :cond_a
    iget-object v0, v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->endPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v5, v0, v2

    if-eqz v5, :cond_d

    .line 629
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v1, v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->endPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v14

    .line 630
    .local v14, "nextAdGroupIndex":I
    if-ne v14, v4, :cond_b

    .line 632
    iget-object v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->endPositionUs:J

    iget-wide v4, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 637
    :cond_b
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v15

    .line 638
    .local v15, "adIndexInAdGroup":I
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v14, v15}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v5, 0x0

    goto :goto_4

    :cond_c
    iget-object v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->endPositionUs:J

    iget-wide v6, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 640
    move-object/from16 v0, p0

    move v2, v14

    move v3, v15

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v5

    .line 638
    :goto_4
    return-object v5

    .line 648
    .end local v14    # "nextAdGroupIndex":I
    .end local v15    # "adIndexInAdGroup":I
    :cond_d
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v14

    .line 649
    .local v14, "adGroupCount":I
    if-nez v14, :cond_e

    .line 650
    const/4 v0, 0x0

    return-object v0

    .line 652
    :cond_e
    add-int/lit8 v15, v14, -0x1

    .line 653
    .local v15, "adGroupIndex":I
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 654
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    .line 657
    :cond_f
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v6

    .line 658
    .local v6, "adIndexInAdGroup":I
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v15, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 659
    const/4 v0, 0x0

    return-object v0

    .line 661
    :cond_10
    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v16

    .line 662
    .local v16, "contentDurationUs":J
    iget-object v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v4, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move v2, v15

    move v3, v6

    move-wide/from16 v18, v4

    move-wide/from16 v4, v16

    move/from16 v20, v6

    .end local v6    # "adIndexInAdGroup":I
    .local v20, "adIndexInAdGroup":I
    move-wide/from16 v6, v18

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 655
    .end local v16    # "contentDurationUs":J
    .end local v20    # "adIndexInAdGroup":I
    :cond_11
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMediaPeriodInfo(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 9
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "contentPositionUs"    # J
    .param p4, "startPositionUs"    # J

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 674
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    const/4 v0, 0x0

    return-object v0

    .line 678
    :cond_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v7, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v1, p0

    move-wide v5, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 685
    :cond_1
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v1, p0

    move-wide v3, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 18
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I
    .param p4, "contentPositionUs"    # J
    .param p6, "windowSequenceNumber"    # J

    .line 695
    move-object/from16 v0, p0

    new-instance v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    .line 697
    .local v1, "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v2

    .line 698
    .local v2, "isLastInPeriod":Z
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v3

    .line 699
    .local v3, "isLastInTimeline":Z
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 701
    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v6, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 702
    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v4

    .line 703
    .local v4, "durationUs":J
    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 704
    move/from16 v7, p2

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v6

    move/from16 v14, p3

    if-ne v14, v6, :cond_0

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 705
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v8

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    :goto_0
    move-wide v10, v8

    .line 707
    .local v10, "startPositionUs":J
    new-instance v6, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-object v8, v6

    move-object v9, v1

    move-wide/from16 v12, p4

    move-wide v14, v4

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v8 .. v17}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZZ)V

    return-object v6
.end method

.method private getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 20
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "startPositionUs"    # J
    .param p4, "windowSequenceNumber"    # J

    .line 718
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-wide/from16 v12, p2

    invoke-virtual {v1, v12, v13}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v1

    .line 719
    .local v1, "nextAdGroupIndex":I
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 722
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v4

    :goto_0
    move-wide v14, v4

    .line 723
    .local v14, "endPositionUs":J
    new-instance v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v6, v4

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    move-wide v10, v14

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JJ)V

    move-object v11, v4

    .line 724
    .local v11, "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v11, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 725
    invoke-direct {v0, v11}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v10

    .line 726
    .local v10, "isLastInPeriod":Z
    invoke-direct {v0, v11, v10}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v16

    .line 727
    .local v16, "isLastInTimeline":Z
    cmp-long v4, v14, v2

    if-nez v4, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 728
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v2

    move-wide v8, v2

    goto :goto_1

    :cond_1
    move-wide v8, v14

    .line 729
    .local v8, "durationUs":J
    :goto_1
    new-instance v17, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v2, v17

    move-object v3, v11

    move-wide/from16 v4, p2

    move/from16 v18, v10

    .end local v10    # "isLastInPeriod":Z
    .local v18, "isLastInPeriod":Z
    move-object/from16 v19, v11

    .end local v11    # "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local v19, "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move/from16 v11, v16

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZZ)V

    return-object v17
.end method

.method private isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .locals 10
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 734
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v0

    .line 735
    .local v0, "adGroupCount":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 736
    return v1

    .line 739
    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 740
    .local v2, "lastAdGroupIndex":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    .line 741
    .local v3, "isAd":Z
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-eqz v9, :cond_2

    .line 743
    if-nez v3, :cond_1

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->endPositionUs:J

    cmp-long v9, v4, v6

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 746
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v4

    .line 747
    .local v4, "postrollAdCount":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 749
    return v8

    .line 752
    :cond_3
    if-eqz v3, :cond_4

    iget v5, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v5, v2, :cond_4

    iget v5, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    add-int/lit8 v6, v4, -0x1

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 754
    .local v5, "isLastAd":Z
    :goto_1
    if-nez v5, :cond_6

    if-nez v3, :cond_5

    iget-object v6, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v6

    if-ne v6, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_2
    return v1
.end method

.method private isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z
    .locals 8
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "isLastMediaPeriodInPeriod"    # Z

    .line 758
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 759
    .local v0, "periodIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 760
    .local v1, "windowIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v5, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v6, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 761
    move v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/Timeline;->isLastPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 760
    :goto_0
    return v2
.end method

.method private resolveMediaPeriodIdForAds(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 13
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "positionUs"    # J
    .param p4, "windowSequenceNumber"    # J

    .line 401
    move-object v0, p0

    move-wide v1, p2

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v11, p1

    invoke-virtual {v3, p1, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 402
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v3

    .line 403
    .local v3, "adGroupIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 404
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v12

    .line 405
    .local v12, "nextAdGroupIndex":I
    if-ne v12, v4, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    move-wide v9, v4

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 408
    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v4

    move-wide v9, v4

    :goto_0
    nop

    .line 409
    .local v9, "endPositionUs":J
    new-instance v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v5, v4

    move-object v6, p1

    move-wide/from16 v7, p4

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JJ)V

    return-object v4

    .line 411
    .end local v9    # "endPositionUs":J
    .end local v12    # "nextAdGroupIndex":I
    :cond_1
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    .line 412
    .local v4, "adIndexInAdGroup":I
    new-instance v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v5, v12

    move-object v6, p1

    move v7, v3

    move v8, v4

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-object v12
.end method

.method private resolvePeriodIndexToWindowSequenceNumber(Ljava/lang/Object;)J
    .locals 7
    .param p1, "periodUid"    # Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 426
    .local v0, "windowIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 427
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 428
    .local v1, "oldFrontPeriodIndex":I
    if-eq v1, v2, :cond_0

    .line 429
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v1, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 430
    .local v3, "oldFrontWindowIndex":I
    if-ne v3, v0, :cond_0

    .line 432
    iget-wide v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    return-wide v4

    .line 436
    .end local v1    # "oldFrontPeriodIndex":I
    .end local v3    # "oldFrontWindowIndex":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFrontPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 437
    .local v1, "mediaPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :goto_0
    if-eqz v1, :cond_2

    .line 438
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v2

    .line 442
    :cond_1
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFrontPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 445
    :goto_1
    if-eqz v1, :cond_4

    .line 446
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 447
    .local v3, "indexOfHolderInTimeline":I
    if-eq v3, v2, :cond_3

    .line 448
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 449
    .local v4, "holderWindowIndex":I
    if-ne v4, v0, :cond_3

    .line 451
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v5

    .line 454
    .end local v4    # "holderWindowIndex":I
    :cond_3
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 455
    .end local v3    # "indexOfHolderInTimeline":I
    goto :goto_1

    .line 457
    :cond_4
    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    return-wide v2
.end method

.method private updateForPlaybackModeChange()Z
    .locals 9

    .line 476
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFrontPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 477
    .local v0, "lastValidPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 478
    return v1

    .line 480
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    .line 482
    .local v2, "currentPeriodIndex":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v6, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v7, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 483
    move v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v3

    .line 485
    .local v3, "nextPeriodIndex":I
    :goto_1
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v4, :cond_1

    .line 487
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto :goto_1

    .line 490
    :cond_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v4, :cond_2

    .line 491
    goto :goto_2

    .line 493
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v5, v5, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    .line 494
    .local v4, "nextPeriodHolderPeriodIndex":I
    if-eq v4, v3, :cond_3

    .line 495
    goto :goto_2

    .line 497
    :cond_3
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 498
    move v2, v3

    .line 499
    .end local v3    # "nextPeriodIndex":I
    .end local v4    # "nextPeriodHolderPeriodIndex":I
    goto :goto_0

    .line 502
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v3

    .line 505
    .local v3, "readingPeriodRemoved":Z
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 508
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    return v1
.end method


# virtual methods
.method public advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_2

    .line 224
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->release()V

    .line 228
    iget v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    .line 229
    iget v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    if-nez v0, :cond_1

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 237
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public advanceReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public clear(Z)V
    .locals 4
    .param p1, "keepFrontPeriodUid"    # Z

    .line 274
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFrontPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 275
    .local v0, "front":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 276
    if-eqz p1, :cond_0

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 277
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 278
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->release()V

    .line 279
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    goto :goto_1

    .line 280
    :cond_1
    if-nez p1, :cond_2

    .line 281
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 283
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 284
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 285
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 286
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    .line 287
    return-void
.end method

.method public enqueueNextMediaPeriod([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 10
    .param p1, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "trackSelector"    # Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .param p3, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p4, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p5, "info"    # Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v0, :cond_0

    iget-wide v0, p5, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    move-wide v4, v0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    add-long/2addr v0, v2

    move-wide v4, v0

    :goto_0
    nop

    .line 149
    .local v4, "rendererPositionOffsetUs":J
    new-instance v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-object v2, v0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/MediaPeriodHolder;-><init>([Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/MediaPeriodInfo;)V

    .line 157
    .local v0, "newPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iput-object v0, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 161
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 162
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 163
    iget v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    .line 164
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    return-object v1
.end method

.method public getFrontPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    :goto_0
    return-object v0
.end method

.method public getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getNextMediaPeriodInfo(JLcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 1
    .param p1, "rendererPositionUs"    # J
    .param p3, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFirstMediaPeriodInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    .line 126
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0
.end method

.method public getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 13
    .param p1, "info"    # Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 354
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    .line 355
    .local v0, "isLastInPeriod":Z
    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v11

    .line 356
    .local v11, "isLastInTimeline":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 357
    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 358
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 359
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v1

    move-wide v7, v1

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->endPositionUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 361
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->endPositionUs:J

    :goto_0
    move-wide v7, v1

    :goto_1
    nop

    .line 363
    .local v7, "durationUs":J
    new-instance v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    move-object v1, v12

    move v9, v0

    move v10, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZZ)V

    return-object v12
.end method

.method public hasPlayingPeriod()Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z
    .locals 1
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1
    .param p1, "rendererPositionUs"    # J

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->reevaluateBuffer(J)V

    .line 103
    :cond_0
    return-void
.end method

.method public removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z
    .locals 3
    .param p1, "mediaPeriodHolder"    # Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 251
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "removedReading":Z
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 254
    :goto_1
    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v2, :cond_2

    .line 255
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 256
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-ne p1, v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iput-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 258
    const/4 v1, 0x1

    .line 260
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->release()V

    .line 261
    iget v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    goto :goto_1

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 264
    return v1
.end method

.method public resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 8
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "positionUs"    # J

    .line 382
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolvePeriodIndexToWindowSequenceNumber(Ljava/lang/Object;)J

    move-result-wide v6

    .line 383
    .local v6, "windowSequenceNumber":J
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    return-object v0
.end method

.method public setTimeline(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 68
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 69
    return-void
.end method

.method public shouldLoadNextMediaPeriod()Z
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 109
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 107
    :goto_1
    return v0
.end method

.method public updateQueuedPeriods(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z
    .locals 9
    .param p1, "playingPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "rendererPositionUs"    # J

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 306
    .local v0, "periodIndex":I
    const/4 v1, 0x0

    .line 307
    .local v1, "previousPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFrontPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 308
    .local v2, "periodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 309
    if-nez v1, :cond_0

    .line 310
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    goto :goto_1

    .line 313
    :cond_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 314
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 318
    :cond_1
    nop

    .line 319
    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v4

    .line 320
    .local v4, "periodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    if-nez v4, :cond_2

    .line 322
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v5

    xor-int/2addr v3, v5

    return v3

    .line 325
    :cond_2
    iget-object v5, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 327
    invoke-direct {p0, v2, v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->canKeepMediaPeriodHolder(Lcom/google/android/exoplayer2/MediaPeriodHolder;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 328
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v5

    xor-int/2addr v3, v5

    return v3

    .line 332
    .end local v4    # "periodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    :cond_3
    :goto_1
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz v3, :cond_4

    .line 334
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v6, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v7, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 335
    move v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v0

    .line 339
    :cond_4
    move-object v1, v2

    .line 340
    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto :goto_0

    .line 316
    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v4

    xor-int/2addr v3, v4

    return v3

    .line 342
    :cond_6
    return v3
.end method

.method public updateRepeatMode(I)Z
    .locals 1
    .param p1, "repeatMode"    # I

    .line 76
    iput p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    .line 77
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateForPlaybackModeChange()Z

    move-result v0

    return v0
.end method

.method public updateShuffleModeEnabled(Z)Z
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 86
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateForPlaybackModeChange()Z

    move-result v0

    return v0
.end method
