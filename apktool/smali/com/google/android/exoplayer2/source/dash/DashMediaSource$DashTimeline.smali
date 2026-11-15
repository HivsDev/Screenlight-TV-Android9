.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DashTimeline"
.end annotation


# instance fields
.field private final firstPeriodId:I

.field private final manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final offsetInFirstPeriodUs:J

.field private final presentationStartTimeMs:J

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowStartTimeMs:J

.field private final windowTag:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Ljava/lang/Object;)V
    .locals 0
    .param p1, "presentationStartTimeMs"    # J
    .param p3, "windowStartTimeMs"    # J
    .param p5, "firstPeriodId"    # I
    .param p6, "offsetInFirstPeriodUs"    # J
    .param p8, "windowDurationUs"    # J
    .param p10, "windowDefaultStartPositionUs"    # J
    .param p12, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p13, "windowTag"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1135
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 1136
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    .line 1137
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    .line 1138
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 1139
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 1140
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    .line 1141
    iput-wide p10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 1142
    iput-object p12, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1143
    iput-object p13, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowTag:Ljava/lang/Object;

    .line 1144
    return-void
.end method

.method private getAdjustedWindowDefaultStartPositionUs(J)J
    .locals 15
    .param p1, "defaultPositionProjectionUs"    # J

    .line 1197
    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 1198
    .local v1, "windowDefaultStartPositionUs":J
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v3, :cond_0

    .line 1199
    return-wide v1

    .line 1201
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_1

    .line 1202
    add-long v1, v1, p1

    .line 1203
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 1205
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v3

    .line 1209
    :cond_1
    const/4 v3, 0x0

    .line 1210
    .local v3, "periodIndex":I
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    add-long/2addr v4, v1

    .line 1211
    .local v4, "defaultStartPositionInPeriodUs":J
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    .line 1212
    .local v6, "periodDurationUs":J
    :goto_0
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_2

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    .line 1214
    sub-long/2addr v4, v6

    .line 1215
    add-int/lit8 v3, v3, 0x1

    .line 1216
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    goto :goto_0

    .line 1218
    :cond_2
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1219
    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v8

    .line 1220
    .local v8, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v9

    .line 1221
    .local v9, "videoAdaptationSetIndex":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 1223
    return-wide v1

    .line 1227
    :cond_3
    iget-object v10, v8, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v10, v10, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v11, 0x0

    .line 1228
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v10

    .line 1229
    .local v10, "snapIndex":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-eqz v10, :cond_5

    invoke-interface {v10, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v11

    if-nez v11, :cond_4

    goto :goto_1

    .line 1233
    :cond_4
    invoke-interface {v10, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v11

    .line 1234
    .local v11, "segmentNum":J
    invoke-interface {v10, v11, v12}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v13

    add-long/2addr v13, v1

    sub-long/2addr v13, v4

    return-wide v13

    .line 1231
    .end local v11    # "segmentNum":J
    :cond_5
    :goto_1
    return-wide v1
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 4
    .param p1, "uid"    # Ljava/lang/Object;

    .line 1188
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1189
    return v1

    .line 1191
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1192
    .local v0, "periodId":I
    iget v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    sub-int v2, v0, v2

    .line 1193
    .local v2, "periodIndex":I
    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 11
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIdentifiers"    # Z

    .line 1153
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1154
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->id:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 1155
    .local v4, "id":Ljava/lang/Object;
    :goto_0
    if-eqz p3, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v5, v0

    .line 1156
    .local v5, "uid":Ljava/lang/Object;
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1157
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    sub-long v9, v0, v2

    .line 1156
    move-object v3, p2

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodCount()I
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 2
    .param p1, "periodIndex"    # I

    .line 1240
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1241
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 24
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "setTag"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .line 1169
    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move/from16 v3, p1

    invoke-static {v3, v2, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1170
    move-wide/from16 v4, p4

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getAdjustedWindowDefaultStartPositionUs(J)J

    move-result-wide v22

    .line 1172
    .local v22, "windowDefaultStartPositionUs":J
    if-eqz p3, :cond_0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowTag:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v7, v2

    .line 1173
    .local v7, "tag":Ljava/lang/Object;
    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    const/4 v12, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v13, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    const/16 v18, 0x0

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 1173
    move-object/from16 v6, p2

    move-wide/from16 v16, v14

    move-wide/from16 v14, v22

    move-wide/from16 v20, v1

    invoke-virtual/range {v6 .. v21}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    return-object v1
.end method

.method public getWindowCount()I
    .locals 1

    .line 1163
    const/4 v0, 0x1

    return v0
.end method
