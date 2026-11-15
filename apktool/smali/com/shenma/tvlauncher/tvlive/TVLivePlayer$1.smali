.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;
.super Landroid/os/Handler;
.source "TVLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 211
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_7

    const-string v1, "TVLivePlayer"

    const/16 v2, 0xe

    const-string v3, "mProgramNews="

    const-string v4, "mProgramNews"

    const-string v5, "news.xml"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, ""

    const/16 v9, 0x8

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 346
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$2100(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    goto/16 :goto_4

    .line 238
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 239
    goto/16 :goto_4

    .line 316
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1300(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    mul-long v3, v3, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 321
    goto/16 :goto_4

    .line 323
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 324
    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    if-ne v0, v2, :cond_0

    .line 325
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v10}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1402(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)I

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1408(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 330
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 329
    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1702(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;)Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 331
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v10}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1802(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)I

    .line 332
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    const-string v0, "LiveConstant.PLAY_NEXT...\u4e0d\u80fd\u64ad\u653e"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    const v1, 0x7f0e012e

    const v2, 0x7f07013e

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 335
    goto/16 :goto_4

    .line 306
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-lez v2, :cond_9

    .line 307
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1300(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1300(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 257
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;

    invoke-direct {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;-><init>()V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 258
    invoke-virtual {v6}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->parseFileXml(Ljava/lang/Object;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v1

    .line 257
    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$802(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    .line 260
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 262
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_name()Ljava/lang/String;

    move-result-object v1

    .line 263
    const-string v3, "timeout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_name()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v3

    .line 267
    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_src()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$902(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;J)J

    goto :goto_2

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 271
    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    .line 272
    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 274
    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    .line 275
    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_src()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1002(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 279
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    goto/16 :goto_4

    .line 255
    :pswitch_6
    goto/16 :goto_4

    .line 282
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;

    invoke-direct {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;-><init>()V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 283
    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "data.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->parseFileXml(Ljava/lang/Object;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v1

    .line 282
    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$802(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    .line 285
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1100(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TVLIVE_DIY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    .line 288
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    const-string v3, "http://diy.vbohd.com/user_list_xml.php?user_id=10086"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->start()V

    goto :goto_3

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1200(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 292
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    const-string v3, "http://wephd.live.cctv1949.com/api_new/wephd.xml"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->start()V

    goto :goto_3

    .line 294
    :cond_5
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_src()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->start()V

    .line 297
    :goto_3
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$800(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    .line 298
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_src()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->start()V

    .line 304
    goto/16 :goto_4

    .line 243
    :pswitch_8
    sget-object v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 244
    sget-object v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 245
    .local v0, "position":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)V

    .line 247
    .end local v0    # "position":I
    :cond_6
    sput-object v8, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9891\u9053"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyChanne="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    goto :goto_4

    .line 252
    :pswitch_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$700(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    goto :goto_4

    .line 235
    :pswitch_a
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 236
    goto :goto_4

    .line 230
    :pswitch_b
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$200(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)V

    .line 231
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    .line 232
    invoke-static {}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$300()I

    move-result v2

    int-to-long v2, v2

    .line 231
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 233
    goto :goto_4

    .line 221
    :pswitch_c
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    const v1, 0x7f0e00f3

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showDialog(I)V

    .line 222
    goto :goto_4

    .line 228
    :pswitch_d
    goto :goto_4

    .line 224
    :pswitch_e
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$100(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 225
    goto :goto_4

    .line 343
    :pswitch_f
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$2000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 344
    goto :goto_4

    .line 340
    :pswitch_10
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 341
    goto :goto_4

    .line 337
    :pswitch_11
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$1900(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 338
    goto :goto_4

    .line 218
    :cond_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    const v1, 0x7f070140

    const-string/jumbo v2, "\u6b63\u5728\u4e3a\u60a8\u66f4\u65b0\u76f4\u64ad\u63d2\u4ef6!"

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 219
    goto :goto_4

    .line 215
    :cond_8
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 216
    nop

    .line 349
    :cond_9
    :goto_4
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 350
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
