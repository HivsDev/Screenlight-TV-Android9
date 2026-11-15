.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
.super Ljava/lang/Object;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodSeekInfo"
.end annotation


# instance fields
.field public final availableEndTimeUs:J

.field public final availableStartTimeUs:J

.field public final isIndexExplicit:Z


# direct methods
.method private constructor <init>(ZJJ)V
    .locals 0
    .param p1, "isIndexExplicit"    # Z
    .param p2, "availableStartTimeUs"    # J
    .param p4, "availableEndTimeUs"    # J

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->isIndexExplicit:Z

    .line 1109
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableStartTimeUs:J

    .line 1110
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableEndTimeUs:J

    .line 1111
    return-void
.end method

.method public static createPeriodSeekInfo(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .locals 28
    .param p0, "period"    # Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .param p1, "durationUs"    # J

    .line 1054
    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .line 1055
    .local v9, "adaptationSetCount":I
    const-wide/16 v1, 0x0

    .line 1056
    .local v1, "availableStartTimeUs":J
    const-wide v3, 0x7fffffffffffffffL

    .line 1057
    .local v3, "availableEndTimeUs":J
    const/4 v5, 0x0

    .line 1058
    .local v5, "isIndexExplicit":Z
    const/4 v6, 0x0

    .line 1060
    .local v6, "seenEmptyIndex":Z
    const/4 v10, 0x0

    .line 1061
    .local v10, "haveAudioVideoAdaptationSets":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_2

    .line 1062
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v12, v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    .line 1063
    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    goto :goto_1

    .line 1061
    .end local v12    # "type":I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1064
    .restart local v12    # "type":I
    :cond_1
    :goto_1
    const/4 v10, 0x1

    .line 1069
    .end local v11    # "i":I
    .end local v12    # "type":I
    :cond_2
    const/4 v11, 0x0

    move-wide v13, v1

    move v12, v5

    move v15, v6

    move-wide v5, v3

    .end local v1    # "availableStartTimeUs":J
    .end local v3    # "availableEndTimeUs":J
    .end local v6    # "seenEmptyIndex":Z
    .local v5, "availableEndTimeUs":J
    .restart local v11    # "i":I
    .local v12, "isIndexExplicit":Z
    .local v13, "availableStartTimeUs":J
    .local v15, "seenEmptyIndex":Z
    :goto_2
    if-ge v11, v9, :cond_8

    .line 1070
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 1073
    .local v3, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    if-eqz v10, :cond_3

    iget v1, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1074
    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_3

    .line 1077
    :cond_3
    iget-object v1, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v4

    .line 1078
    .local v4, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-nez v4, :cond_4

    .line 1079
    new-instance v16, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    const/4 v2, 0x1

    const-wide/16 v17, 0x0

    move-object/from16 v1, v16

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .end local v3    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v4    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .local v19, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .local v20, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    move-wide/from16 v3, v17

    move/from16 v17, v9

    move/from16 v18, v10

    move-wide v9, v5

    .end local v5    # "availableEndTimeUs":J
    .end local v10    # "haveAudioVideoAdaptationSets":Z
    .local v9, "availableEndTimeUs":J
    .local v17, "adaptationSetCount":I
    .local v18, "haveAudioVideoAdaptationSets":Z
    move-wide/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;-><init>(ZJJ)V

    return-object v16

    .line 1081
    .end local v17    # "adaptationSetCount":I
    .end local v18    # "haveAudioVideoAdaptationSets":Z
    .end local v19    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v20    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .restart local v3    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .restart local v4    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .restart local v5    # "availableEndTimeUs":J
    .local v9, "adaptationSetCount":I
    .restart local v10    # "haveAudioVideoAdaptationSets":Z
    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v17, v9

    move/from16 v18, v10

    move-wide v9, v5

    .end local v3    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v4    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .end local v5    # "availableEndTimeUs":J
    .end local v10    # "haveAudioVideoAdaptationSets":Z
    .local v9, "availableEndTimeUs":J
    .restart local v17    # "adaptationSetCount":I
    .restart local v18    # "haveAudioVideoAdaptationSets":Z
    .restart local v19    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .restart local v20    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    invoke-interface/range {v20 .. v20}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v1

    or-int/2addr v1, v12

    .line 1082
    .end local v12    # "isIndexExplicit":Z
    .local v1, "isIndexExplicit":Z
    move-object/from16 v2, v20

    .end local v20    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .local v2, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    invoke-interface {v2, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v3

    .line 1083
    .local v3, "segmentCount":I
    if-nez v3, :cond_5

    .line 1084
    const/4 v4, 0x1

    .line 1085
    .end local v15    # "seenEmptyIndex":Z
    .local v4, "seenEmptyIndex":Z
    const-wide/16 v5, 0x0

    .line 1086
    .end local v13    # "availableStartTimeUs":J
    .local v5, "availableStartTimeUs":J
    const-wide/16 v9, 0x0

    move v12, v1

    move v15, v4

    move-wide v13, v5

    move-wide v5, v9

    goto :goto_3

    .line 1087
    .end local v4    # "seenEmptyIndex":Z
    .end local v5    # "availableStartTimeUs":J
    .restart local v13    # "availableStartTimeUs":J
    .restart local v15    # "seenEmptyIndex":Z
    :cond_5
    if-nez v15, :cond_7

    .line 1088
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v4

    .line 1089
    .local v4, "firstSegmentNum":J
    move v6, v1

    .end local v1    # "isIndexExplicit":Z
    .local v6, "isIndexExplicit":Z
    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v0

    .line 1090
    .local v0, "adaptationSetAvailableStartTimeUs":J
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 1091
    .end local v13    # "availableStartTimeUs":J
    .local v12, "availableStartTimeUs":J
    const/4 v14, -0x1

    if-eq v3, v14, :cond_6

    .line 1092
    move-wide/from16 v20, v0

    .end local v0    # "adaptationSetAvailableStartTimeUs":J
    .local v20, "adaptationSetAvailableStartTimeUs":J
    int-to-long v0, v3

    add-long/2addr v0, v4

    const-wide/16 v22, 0x1

    sub-long v0, v0, v22

    .line 1093
    .local v0, "lastSegmentNum":J
    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v22

    .line 1094
    invoke-interface {v2, v0, v1, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v24

    move-wide/from16 v26, v0

    .end local v0    # "lastSegmentNum":J
    .local v26, "lastSegmentNum":J
    add-long v0, v22, v24

    .line 1095
    .local v0, "adaptationSetAvailableEndTimeUs":J
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-wide v13, v12

    move v12, v6

    move-wide v5, v9

    goto :goto_3

    .line 1091
    .end local v20    # "adaptationSetAvailableStartTimeUs":J
    .end local v26    # "lastSegmentNum":J
    .local v0, "adaptationSetAvailableStartTimeUs":J
    :cond_6
    move-wide/from16 v20, v0

    .end local v0    # "adaptationSetAvailableStartTimeUs":J
    .restart local v20    # "adaptationSetAvailableStartTimeUs":J
    move-wide v13, v12

    move v12, v6

    move-wide v5, v9

    goto :goto_3

    .line 1087
    .end local v4    # "firstSegmentNum":J
    .end local v6    # "isIndexExplicit":Z
    .end local v12    # "availableStartTimeUs":J
    .end local v20    # "adaptationSetAvailableStartTimeUs":J
    .restart local v1    # "isIndexExplicit":Z
    .restart local v13    # "availableStartTimeUs":J
    :cond_7
    move v6, v1

    .end local v1    # "isIndexExplicit":Z
    .restart local v6    # "isIndexExplicit":Z
    move v12, v6

    move-wide v5, v9

    .line 1069
    .end local v2    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .end local v3    # "segmentCount":I
    .end local v6    # "isIndexExplicit":Z
    .end local v9    # "availableEndTimeUs":J
    .end local v19    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .local v5, "availableEndTimeUs":J
    .local v12, "isIndexExplicit":Z
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v9, v17

    move/from16 v10, v18

    goto/16 :goto_2

    .end local v17    # "adaptationSetCount":I
    .end local v18    # "haveAudioVideoAdaptationSets":Z
    .local v9, "adaptationSetCount":I
    .restart local v10    # "haveAudioVideoAdaptationSets":Z
    :cond_8
    move/from16 v17, v9

    move/from16 v18, v10

    move-wide v9, v5

    .line 1099
    .end local v5    # "availableEndTimeUs":J
    .end local v10    # "haveAudioVideoAdaptationSets":Z
    .end local v11    # "i":I
    .local v9, "availableEndTimeUs":J
    .restart local v17    # "adaptationSetCount":I
    .restart local v18    # "haveAudioVideoAdaptationSets":Z
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-object v1, v0

    move v2, v12

    move-wide v3, v13

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;-><init>(ZJJ)V

    return-object v0
.end method
