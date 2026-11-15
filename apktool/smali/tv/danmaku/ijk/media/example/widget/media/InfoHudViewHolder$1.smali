.class Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;
.super Landroid/os/Handler;
.source "InfoHudViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    .line 25
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    .line 28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    .line 30
    :cond_0
    iget-object v2, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    .line 31
    .local v2, "holder":Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    const/4 v4, 0x0

    .line 32
    .local v4, "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    iget-object v5, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v5}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$000(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v5

    if-nez v5, :cond_1

    .line 33
    goto/16 :goto_2

    .line 34
    :cond_1
    iget-object v5, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v5}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$000(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v5

    instance-of v5, v5, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v5, :cond_2

    .line 35
    iget-object v5, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v5}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$000(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    goto :goto_0

    .line 36
    :cond_2
    iget-object v5, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v5}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$000(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v5

    instance-of v5, v5, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    if-eqz v5, :cond_3

    .line 37
    iget-object v5, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v5}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$000(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v5

    check-cast v5, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    .line 38
    .local v5, "proxy":Ltv/danmaku/ijk/media/player/MediaPlayerProxy;
    invoke-virtual {v5}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v6

    .line 39
    .local v6, "internal":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    if-eqz v6, :cond_3

    instance-of v7, v6, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v7, :cond_3

    .line 40
    move-object v4, v6

    check-cast v4, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 42
    .end local v5    # "proxy":Ltv/danmaku/ijk/media/player/MediaPlayerProxy;
    .end local v6    # "internal":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_3
    :goto_0
    if-nez v4, :cond_4

    .line 43
    goto/16 :goto_2

    .line 45
    :cond_4
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoDecoder()I

    move-result v5

    .line 46
    .local v5, "vdec":I
    const v6, 0x7f0e01b5

    const/4 v7, 0x2

    if-eq v5, v3, :cond_6

    if-eq v5, v7, :cond_5

    .line 54
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    const-string v9, ""

    invoke-static {v8, v6, v9}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_5
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    const-string v9, "MediaCodec"

    invoke-static {v8, v6, v9}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 52
    goto :goto_1

    .line 48
    :cond_6
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    const-string v9, "avcodec"

    invoke-static {v8, v6, v9}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 49
    nop

    .line 58
    :goto_1
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoOutputFramesPerSecond()F

    move-result v6

    .line 59
    .local v6, "fpsOutput":F
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoDecodeFramesPerSecond()F

    move-result v8

    .line 60
    .local v8, "fpsDecode":F
    iget-object v9, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    const v10, 0x7f0e00d9

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v12, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v3

    const-string v13, "%.2f / %.2f"

    invoke-static {v11, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 62
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoCachedDuration()J

    move-result-wide v9

    .line 63
    .local v9, "videoCachedDuration":J
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getAudioCachedDuration()J

    move-result-wide v11

    .line 64
    .local v11, "audioCachedDuration":J
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoCachedBytes()J

    move-result-wide v15

    .line 65
    .local v15, "videoCachedBytes":J
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getAudioCachedBytes()J

    move-result-wide v17

    .line 66
    .local v17, "audioCachedBytes":J
    move-wide/from16 v19, v15

    .end local v15    # "videoCachedBytes":J
    .local v19, "videoCachedBytes":J
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTcpSpeed()J

    move-result-wide v14

    .line 67
    .local v14, "tcpSpeed":J
    move-wide/from16 v21, v14

    .end local v14    # "tcpSpeed":J
    .local v21, "tcpSpeed":J
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getBitRate()J

    move-result-wide v13

    .line 68
    .local v13, "bitRate":J
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getSeekLoadDuration()J

    move-result-wide v23

    .line 70
    .local v23, "seekLoadDuration":J
    iget-object v15, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$200(J)Ljava/lang/String;

    move-result-object v27

    const/16 v16, 0x0

    aput-object v27, v1, v16

    invoke-static/range {v19 .. v20}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$300(J)Ljava/lang/String;

    move-result-object v27

    const/16 v25, 0x1

    aput-object v27, v1, v25

    const-string v7, "%s, %s"

    invoke-static {v3, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e01b4

    invoke-static {v15, v3, v1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 71
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$200(J)Ljava/lang/String;

    move-result-object v27

    const/16 v16, 0x0

    aput-object v27, v3, v16

    invoke-static/range {v17 .. v18}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$300(J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v28, v2

    const/4 v2, 0x1

    .end local v2    # "holder":Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    .local v28, "holder":Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    aput-object v27, v3, v2

    invoke-static {v15, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f0e0077

    invoke-static {v1, v7, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 72
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    const v3, 0x7f0e00f2

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v15, v2, [Ljava/lang/Object;

    iget-object v2, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$400(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const-string v2, "%d ms"

    invoke-static {v7, v2, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v3, v7}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 73
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/Object;

    iget-object v15, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v15}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$500(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v3, v16

    invoke-static {v7, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f0e017c

    invoke-static {v1, v7, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 74
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v3, v16

    invoke-static {v7, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e017d

    invoke-static {v1, v3, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 75
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v15, [Ljava/lang/Object;

    move-object/from16 v26, v3

    const-wide/16 v2, 0x3e8

    move-object/from16 v27, v4

    move/from16 v29, v5

    move-wide/from16 v4, v21

    .end local v5    # "vdec":I
    .end local v21    # "tcpSpeed":J
    .local v4, "tcpSpeed":J
    .local v27, "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .local v29, "vdec":I
    invoke-static {v4, v5, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$600(JJ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v16

    const-string v3, "%s"

    move-object/from16 v2, v26

    invoke-static {v2, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e019b

    invoke-static {v1, v3, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 76
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    const v2, 0x7f0e008b

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v15, [Ljava/lang/Object;

    long-to-float v15, v13

    const/high16 v21, 0x447a0000    # 1000.0f

    div-float v15, v15, v21

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v7, v16

    const-string v15, "%.2f kbs"

    invoke-static {v3, v15, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 78
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$700(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$700(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Landroid/os/Handler;

    move-result-object v1

    move-wide/from16 v21, v4

    .end local v4    # "tcpSpeed":J
    .restart local v21    # "tcpSpeed":J
    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 82
    .end local v6    # "fpsOutput":F
    .end local v8    # "fpsDecode":F
    .end local v9    # "videoCachedDuration":J
    .end local v11    # "audioCachedDuration":J
    .end local v13    # "bitRate":J
    .end local v17    # "audioCachedBytes":J
    .end local v19    # "videoCachedBytes":J
    .end local v21    # "tcpSpeed":J
    .end local v23    # "seekLoadDuration":J
    .end local v27    # "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .end local v28    # "holder":Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    .end local v29    # "vdec":I
    :goto_2
    return-void
.end method
