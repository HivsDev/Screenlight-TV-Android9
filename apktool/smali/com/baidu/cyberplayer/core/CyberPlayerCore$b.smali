.class Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/CyberPlayerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

.field private a:Lorg/json/JSONObject;

.field private b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Lcom/baidu/cyberplayer/core/CyberPlayerCore;Landroid/os/Looper;)V
    .locals 0

    .line 1789
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 1790
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1791
    iput-object p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 1792
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1800
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_16

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_14

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_c

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_b

    packed-switch v0, :pswitch_data_0

    .line 1996
    return-void

    .line 1876
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;->onNetworkSpeedUpdate(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V

    .line 1879
    :cond_0
    return-void

    .line 1899
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1900
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;->onPlayingBufferCache(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V

    .line 1901
    :cond_1
    return-void

    .line 1882
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1883
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;->onStatusChanged(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V

    .line 1886
    :cond_2
    return-void

    .line 1894
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1895
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;->onVideoSizeChanged(Lcom/baidu/cyberplayer/core/CyberPlayerCore;II)V

    .line 1896
    :cond_3
    return-void

    .line 1889
    :pswitch_4
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1890
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-interface {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;->onSeekComplete(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V

    .line 1891
    :cond_4
    return-void

    .line 1871
    :pswitch_5
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1872
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;->onBufferingUpdate(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V

    .line 1873
    :cond_5
    return-void

    .line 1812
    :pswitch_6
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()V

    .line 1813
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1814
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-interface {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;->onCompletion(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V

    .line 1815
    const-string v0, "CyberPlayerCore"

    const-string v1, "CyberPlayer on complete->listener oncomplete"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    :cond_6
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1818
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;->onCompletionWithParam(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V

    .line 1819
    const-string v0, "CyberPlayerCore"

    const-string v1, "CyberPlayer on complete->listener oncomplete"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    :cond_7
    nop

    .line 1822
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_8

    .line 1823
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    double-to-int v0, v0

    .line 1824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video play duration: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "CyberPlayerCore"

    invoke-static {v4, v1}, Lcom/baidu/cyberplayer/utils/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1827
    :cond_8
    const-string v0, "CyberPlayerCore"

    const-string v1, "No duration infomation!"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1829
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    .line 1832
    :try_start_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v4, "04"

    iget-object v5, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v5}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1835
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v4, "05"

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1839
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v4, "06"

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1843
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v4, "07"

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1847
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v4, "08"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1851
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v1, "03"

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1854
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v1, "01"

    const-string v4, "010101"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1856
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 1857
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/r;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 1860
    :cond_9
    const-string v0, "CyberPlayerCore"

    const-string v1, "StatisticProcessor context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1865
    :goto_1
    goto :goto_2

    .line 1862
    :catch_0
    move-exception v0

    .line 1863
    iput-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    .line 1864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CyberPlayerCore"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :goto_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Z)V

    .line 1868
    return-void

    .line 1804
    :pswitch_7
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1805
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-interface {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;->onPrepared(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V

    .line 1807
    :cond_a
    return-void

    .line 1959
    :pswitch_8
    goto/16 :goto_6

    .line 1993
    :cond_b
    goto/16 :goto_6

    .line 1961
    :cond_c
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()[B

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1962
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    .line 1964
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1965
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_d

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-eq v0, v1, :cond_d

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-nez v0, :cond_e

    .line 1967
    :cond_d
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->destroyVPTex()V

    .line 1970
    :cond_e
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j()V

    .line 1971
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->checkShouldCreatTexture()V

    .line 1972
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_10

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-eq v0, v1, :cond_10

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3

    .line 1976
    :cond_f
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h()I

    move-result v4

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()I

    move-result v5

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j()I

    move-result v6

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setVideoDims(IIILjava/nio/ByteBuffer;)V

    goto :goto_4

    .line 1974
    :cond_10
    :goto_3
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h()I

    move-result v4

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()I

    move-result v5

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->createVPTex(III)V

    .line 1978
    :goto_4
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/nio/ByteBuffer;)V

    .line 1979
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1980
    iget-object v4, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v4, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Ljava/nio/ByteBuffer;)V

    .line 1982
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_12

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-eq v0, v1, :cond_12

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5

    .line 1986
    :cond_11
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->onFrameUpdate()V

    goto :goto_6

    .line 1984
    :cond_12
    :goto_5
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->updateVPTex(I)V

    .line 1998
    :cond_13
    :goto_6
    return-void

    .line 1952
    :cond_14
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1953
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;->onInfo(Lcom/baidu/cyberplayer/core/CyberPlayerCore;II)Z

    .line 1956
    :cond_15
    return-void

    .line 1907
    :cond_16
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()V

    .line 1908
    nop

    .line 1909
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1910
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v4, v5}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;->onError(Lcom/baidu/cyberplayer/core/CyberPlayerCore;II)Z

    move-result v0

    goto :goto_7

    .line 1909
    :cond_17
    const/4 v0, 0x0

    .line 1912
    :goto_7
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;

    move-result-object v1

    if-eqz v1, :cond_18

    if-nez v0, :cond_18

    .line 1913
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-interface {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;->onCompletion(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V

    .line 1915
    :cond_18
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1916
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;->onCompletionWithParam(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V

    .line 1918
    :cond_19
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1919
    :try_start_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1920
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1921
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    .line 1924
    :try_start_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v1, "04"

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1927
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v1, "10"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1930
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v1, "03"

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1933
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v1, "01"

    const-string v4, "010201"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1935
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 1936
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/r;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_8

    .line 1939
    :cond_1a
    const-string v0, "CyberPlayerCore"

    const-string v1, "on error StatisticProcessor context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1944
    :goto_8
    goto :goto_9

    .line 1941
    :catch_1
    move-exception v0

    .line 1942
    iput-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    .line 1943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CyberPlayerCore"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :goto_9
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Z)V

    .line 1946
    return-void

    .line 1920
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
