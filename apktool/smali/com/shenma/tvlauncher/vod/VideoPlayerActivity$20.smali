.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setvvListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    .line 2109
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4
    .param p1, "arg0"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 2111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompletion\u4e2dThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2114
    :try_start_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2115
    const-string v1, "VideoPlayerActivity"

    const-string v2, "onCompletion...SYNC_Playing.notify()"

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2117
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 2118
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNext="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".....isLast="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "....isPause="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "....isDestroy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoPlayerActivity"

    invoke-static {v2, v0}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2121
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2124
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$502(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2125
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 2126
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5902(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2127
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2129
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2132
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 2133
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->finish()V

    .line 2135
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9302(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 2136
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2137
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2138
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-lez v0, :cond_2

    .line 2139
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2141
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$502(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2142
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5902(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2143
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 2144
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2146
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2149
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 2150
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2151
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9502(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 2152
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2153
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2154
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_5

    .line 2155
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2157
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$502(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2158
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    sput v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->xjposition:I

    .line 2159
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5902(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2160
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2161
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4702(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2163
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 2164
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2165
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 2166
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 2168
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2170
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const v3, 0x7f0e0014

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$6100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v2, v2, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070140

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2171
    return-void

    .line 2173
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 2174
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$20;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->finish()V

    .line 2176
    :cond_6
    :goto_1
    return-void

    .line 2116
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
