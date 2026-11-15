.class public final Lcom/google/android/exoplayer2/ui/DownloadNotificationUtil;
.super Ljava/lang/Object;
.source "DownloadNotificationUtil.java"


# static fields
.field private static final NULL_STRING_ID:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDownloadCompletedNotification(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smallIcon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 115
    sget v6, Lcom/google/android/exoplayer2/ui/R$string;->exo_download_completed:I

    .line 116
    .local v6, "titleStringId":I
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/DownloadNotificationUtil;->newNotificationBuilder(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method public static buildDownloadFailedNotification(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smallIcon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 138
    sget v6, Lcom/google/android/exoplayer2/ui/R$string;->exo_download_failed:I

    .line 139
    .local v6, "titleStringId":I
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/DownloadNotificationUtil;->newNotificationBuilder(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method public static buildProgressNotification(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;[Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;)Landroid/app/Notification;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smallIcon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "taskStates"    # [Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;

    .line 54
    move-object/from16 v0, p5

    const/4 v1, 0x0

    .line 55
    .local v1, "totalPercentage":F
    const/4 v2, 0x0

    .line 56
    .local v2, "downloadTaskCount":I
    const/4 v3, 0x1

    .line 57
    .local v3, "allDownloadPercentagesUnknown":Z
    const/4 v4, 0x0

    .line 58
    .local v4, "haveDownloadedBytes":Z
    const/4 v5, 0x0

    .line 59
    .local v5, "haveDownloadTasks":Z
    const/4 v6, 0x0

    .line 60
    .local v6, "haveRemoveTasks":Z
    array-length v7, v0

    const/4 v8, 0x0

    move v9, v4

    move v4, v3

    move v3, v2

    move v2, v1

    const/4 v1, 0x0

    .end local v1    # "totalPercentage":F
    .local v2, "totalPercentage":F
    .local v3, "downloadTaskCount":I
    .local v4, "allDownloadPercentagesUnknown":Z
    .local v9, "haveDownloadedBytes":Z
    :goto_0
    const/4 v10, 0x1

    if-ge v1, v7, :cond_4

    aget-object v11, v0, v1

    .line 61
    .local v11, "taskState":Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;
    iget v12, v11, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->state:I

    if-eq v12, v10, :cond_0

    iget v12, v11, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->state:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_0

    .line 63
    goto :goto_2

    .line 65
    :cond_0
    iget-object v12, v11, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->action:Lcom/google/android/exoplayer2/offline/DownloadAction;

    iget-boolean v12, v12, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-eqz v12, :cond_1

    .line 66
    const/4 v6, 0x1

    .line 67
    goto :goto_2

    .line 69
    :cond_1
    const/4 v5, 0x1

    .line 70
    iget v12, v11, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->downloadPercentage:F

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_2

    .line 71
    const/4 v4, 0x0

    .line 72
    iget v12, v11, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->downloadPercentage:F

    add-float/2addr v2, v12

    .line 74
    :cond_2
    iget-wide v12, v11, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->downloadedBytes:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    or-int/2addr v9, v10

    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 60
    .end local v11    # "taskState":Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_4
    if-eqz v5, :cond_5

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_download_downloading:I

    :goto_3
    move/from16 v16, v1

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_6

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_download_removing:I

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    .line 82
    .local v16, "titleStringId":I
    :goto_4
    nop

    .line 83
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/ui/DownloadNotificationUtil;->newNotificationBuilder(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 86
    .local v1, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const/4 v7, 0x0

    .line 87
    .local v7, "progress":I
    const/4 v11, 0x1

    .line 88
    .local v11, "indeterminate":Z
    if-eqz v5, :cond_8

    .line 89
    int-to-float v12, v3

    div-float v12, v2, v12

    float-to-int v7, v12

    .line 90
    if-eqz v4, :cond_7

    if-eqz v9, :cond_7

    const/4 v12, 0x1

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    :goto_5
    move v11, v12

    .line 92
    :cond_8
    const/16 v12, 0x64

    invoke-virtual {v1, v12, v7, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 93
    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 94
    invoke-virtual {v1, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 95
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    return-object v8
.end method

.method private static newNotificationBuilder(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smallIcon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "titleStringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 151
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 153
    .local v0, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz p5, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 156
    :cond_0
    if-eqz p3, :cond_1

    .line 157
    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 159
    :cond_1
    if-eqz p4, :cond_2

    .line 160
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v1, p4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 162
    :cond_2
    return-object v0
.end method
