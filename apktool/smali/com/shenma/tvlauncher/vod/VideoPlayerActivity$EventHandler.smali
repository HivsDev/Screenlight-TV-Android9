.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;
.super Landroid/os/Handler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1112
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 1113
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1114
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1116
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1220
    return-void

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1122
    :try_start_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 1123
    const-string v1, "VideoPlayerActivity"

    const-string v2, "SYNC_Playing.wait()"

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    goto :goto_0

    .line 1128
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1124
    :catch_0
    move-exception v1

    .line 1126
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1128
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1130
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$1;-><init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1137
    return-void

    .line 1152
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1154
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1156
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v2

    if-le v0, v2, :cond_3

    .line 1157
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    goto :goto_3

    .line 1159
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 1164
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1165
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    sget-wide v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 1169
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_7

    .line 1170
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "LIVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1171
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    goto :goto_4

    .line 1173
    :cond_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 1174
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 1185
    :cond_7
    :goto_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1187
    .local v0, "format":Ljava/text/SimpleDateFormat;
    :try_start_2
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    .line 1189
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5602(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    goto :goto_5

    .line 1192
    :cond_8
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5602(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1196
    :goto_5
    goto :goto_6

    .line 1194
    :catch_1
    move-exception v1

    .line 1195
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 1198
    .end local v1    # "e":Ljava/text/ParseException;
    :goto_6
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1200
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5602(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 1202
    :cond_9
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 1203
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget-object v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARING:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 1204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1205
    .local v1, "secondTime":J
    new-instance v3, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-direct {v3}, Lcom/shenma/tvlauncher/vod/db/Album;-><init>()V

    .line 1206
    .local v3, "album":Lcom/shenma/tvlauncher/vod/db/Album;
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumId(Ljava/lang/String;)V

    .line 1207
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumSourceType(Ljava/lang/String;)V

    .line 1208
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setCollectionTime(I)V

    .line 1209
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setPlayIndex(I)V

    .line 1210
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$6000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumPic(Ljava/lang/String;)V

    .line 1211
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumType(Ljava/lang/String;)V

    .line 1212
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$6100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumTitle(Ljava/lang/String;)V

    .line 1213
    const-string/jumbo v4, "\u89c2\u770b\u65f6\u95f4:\u672a\u77e5"

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setAlbumState(Ljava/lang/String;)V

    .line 1214
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$6200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setNextLink(Ljava/lang/String;)V

    .line 1215
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setTime(Ljava/lang/String;)V

    .line 1216
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/db/Album;->setTypeId(I)V

    .line 1217
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$6300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->addAlbums(Lcom/shenma/tvlauncher/vod/db/Album;)V

    .line 1218
    return-void
.end method
