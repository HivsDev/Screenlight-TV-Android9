.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;
.super Landroid/os/Handler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
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

    .line 230
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/16 v1, 0x18

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v2, 0x9

    if-eq v0, v2, :cond_4

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x1

    const-string v4, ""

    packed-switch v0, :pswitch_data_1

    .line 322
    return-void

    .line 307
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 308
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 309
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 310
    sget-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;Ljava/util/Map;)V

    .line 315
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2702(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    .line 320
    :cond_1
    return-void

    .line 299
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 301
    nop

    .line 324
    return-void

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07012c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$2200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    return-void

    .line 296
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 297
    return-void

    .line 293
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    return-void

    .line 286
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setSelected(Z)V

    .line 287
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setMarqueeRepeatLimit(I)V

    .line 288
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->startScroll()V

    .line 289
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const-string v1, "Vod_Notice_end_time"

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 290
    .local v0, "Vod_Notice_end_time":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x25

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 291
    return-void

    .line 281
    .end local v0    # "Vod_Notice_end_time":I
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 282
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->finish()V

    .line 283
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const v3, 0x7f0e005c

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const v3, 0x7f0e00ac

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07013e

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 284
    return-void

    .line 274
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 275
    return-void

    .line 271
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setProgress(I)V

    .line 272
    return-void

    .line 267
    :pswitch_8
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 269
    return-void

    .line 258
    :pswitch_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 264
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Z)Z

    .line 265
    return-void

    .line 255
    :pswitch_a
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 256
    return-void

    .line 246
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    .line 247
    .local v0, "vodurl":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$302(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget-object v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 249
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->removeMessages(I)V

    .line 252
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->sendEmptyMessage(I)Z

    .line 253
    return-void

    .line 241
    .end local v0    # "vodurl":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    :cond_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->onCreateMenu()V

    .line 242
    return-void

    .line 277
    :cond_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 278
    return-void

    .line 234
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlayerStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    if-eq v0, v1, :cond_9

    .line 236
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 238
    :cond_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->finish()V

    .line 239
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
