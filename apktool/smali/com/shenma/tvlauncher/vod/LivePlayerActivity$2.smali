.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;
.super Landroid/os/Handler;
.source "LivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    .line 210
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    const/16 v2, 0x18

    if-eq v0, v2, :cond_8

    const/16 v2, 0x30

    if-eq v0, v2, :cond_7

    const/16 v2, 0x31

    if-eq v0, v2, :cond_6

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v3, -0x1

    const-string v4, ""

    packed-switch v0, :pswitch_data_1

    .line 307
    return-void

    .line 261
    :pswitch_0
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 262
    sget-object v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 263
    .local v0, "position":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 264
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget-object v2, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$102(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I

    .line 265
    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 267
    const/4 v1, -0x1

    .line 268
    .local v1, "maxUrlValueSoFar":I
    const/4 v2, -0x1

    .line 270
    .local v2, "maxUrlIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 272
    :try_start_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    iget-object v6, v6, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .local v6, "currentUrlValue":I
    add-int/lit8 v7, v0, 0x1

    if-gt v6, v7, :cond_0

    if-le v6, v1, :cond_0

    .line 276
    move v1, v6

    .line 277
    move v2, v5

    goto :goto_1

    .line 278
    :cond_0
    add-int/lit8 v7, v0, 0x1

    if-le v6, v7, :cond_1

    .line 279
    goto :goto_3

    .line 283
    .end local v6    # "currentUrlValue":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 281
    :catch_0
    move-exception v6

    .line 282
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 270
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 285
    .end local v5    # "i":I
    :cond_2
    :goto_3
    if-eq v2, v3, :cond_3

    .line 286
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1702(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)I

    .line 287
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v3

    sput v3, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->gsposition:I

    .line 290
    :cond_3
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3, v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 291
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    .end local v0    # "position":I
    .end local v1    # "maxUrlValueSoFar":I
    .end local v2    # "maxUrlIndex":I
    :cond_4
    sput-object v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyChanne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->keyChanne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LivePlayerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void

    .line 252
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 253
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 254
    nop

    .line 309
    return-void

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07012c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    return-void

    .line 249
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 250
    return-void

    .line 246
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$1000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    return-void

    .line 239
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setSelected(Z)V

    .line 240
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->setMarqueeRepeatLimit(I)V

    .line 241
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$800(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/AlwaysMarqueeTextView;->startScroll()V

    .line 242
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const-string v1, "Vod_Notice_end_time"

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, "Vod_Notice_end_time":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$900(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x25

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    return-void

    .line 233
    .end local v0    # "Vod_Notice_end_time":I
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->hmblposition:I

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$600(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 234
    return-void

    .line 230
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setProgress(I)V

    .line 231
    return-void

    .line 226
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$500(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 228
    return-void

    .line 222
    :pswitch_8
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$300(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Lcom/shenma/tvlauncher/view/PlayerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/PlayerProgressBar;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$400(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 224
    return-void

    .line 218
    :pswitch_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 219
    return-void

    .line 303
    :cond_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2100(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/support/constraint/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2200(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    return-void

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$2000(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    return-void

    .line 236
    :cond_8
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->access$700(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V

    .line 237
    return-void

    .line 214
    :cond_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onCreateMenus()V

    .line 215
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$2;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onCreateMenu()V

    .line 216
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
