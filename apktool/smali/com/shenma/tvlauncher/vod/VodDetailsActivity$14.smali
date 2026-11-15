.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 863
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;)V
    .locals 20
    .param p1, "paramObject"    # Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 867
    move-object/from16 v1, p0

    if-eqz p1, :cond_1a

    .line 868
    move-object/from16 v2, p1

    .line 869
    .local v2, "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getVideo_list()Ljava/util/List;

    move-result-object v3

    .line 870
    .local v3, "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    sput-object v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "i":I
    const/4 v4, 0x0

    move v5, v0

    .end local v0    # "i":I
    .local v4, "i2":I
    .local v5, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 873
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 874
    .local v0, "size":I
    if-ge v5, v0, :cond_0

    .line 875
    move v5, v0

    .line 872
    .end local v0    # "size":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 878
    .end local v4    # "i2":I
    :cond_1
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iput v5, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->j0:I

    .line 879
    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1002(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 880
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$902(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 881
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getTop_type()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2102(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 883
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v4

    iget-object v6, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAlbumById(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2202(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/util/List;)Ljava/util/List;

    .line 884
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 885
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1202(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Lcom/shenma/tvlauncher/vod/db/Album;)Lcom/shenma/tvlauncher/vod/db/Album;

    .line 887
    :cond_2
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 888
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/db/Album;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "LIVE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 889
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 890
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_1

    .line 893
    :cond_3
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 894
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 896
    :goto_1
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2400(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v6, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getDirector()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "["

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "]"

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v10, " / "

    const-string v11, ","

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v12, "\u6682\u65e0"

    const-string v13, "null"

    invoke-virtual {v6, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getType()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getActor()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2800(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getArea()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getIntro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getIntro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 903
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u7b80\u4ecb\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getIntro()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 905
    :cond_4
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v6, "\u7b80\u4ecb\uff1a\u6682\u65e0"

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    :goto_2
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getImg_url()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$502(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 909
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v6, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v7

    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3100(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v9

    new-instance v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$1;

    invoke-direct {v10, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$1;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;)V

    invoke-virtual {v0, v6, v7, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 944
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "MOVIE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_9

    .line 946
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v7, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v7

    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v6}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryZJById(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f070163

    goto :goto_3

    :cond_5
    const v7, 0x7f07015c

    :goto_3
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 947
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getPubtime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getPubtime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getCur_episode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 950
    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getTrunk()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "state":Ljava/lang/String;
    iget-object v7, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 952
    :cond_6
    iget-object v7, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$702(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 954
    :cond_7
    iget-object v7, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3400(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    .end local v0    # "state":Ljava/lang/String;
    goto/16 :goto_5

    .line 956
    :cond_8
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3400(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 963
    :cond_9
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1800(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v7, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v7

    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryZJById(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a

    const v7, 0x7f070164

    goto :goto_4

    :cond_a
    const v7, 0x7f070165

    :goto_4
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 965
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getPubtime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getPubtime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getCur_episode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 968
    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getTrunk()Ljava/lang/String;

    move-result-object v0

    .line 969
    .restart local v0    # "state":Ljava/lang/String;
    iget-object v7, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 970
    :cond_b
    iget-object v7, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$702(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 972
    :cond_c
    iget-object v7, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3400(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    .end local v0    # "state":Ljava/lang/String;
    goto :goto_5

    .line 974
    :cond_d
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3400(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->getAbout()Lcom/shenma/tvlauncher/vod/domain/AboutInfo;

    move-result-object v7

    .line 979
    .local v7, "about":Lcom/shenma/tvlauncher/vod/domain/AboutInfo;
    if-eqz v7, :cond_f

    .line 980
    invoke-virtual {v7}, Lcom/shenma/tvlauncher/vod/domain/AboutInfo;->getSimilary()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 981
    .local v0, "similary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    invoke-virtual {v7}, Lcom/shenma/tvlauncher/vod/domain/AboutInfo;->getActor()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 982
    .local v8, "actor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_e

    .line 983
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v9, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3502(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 984
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    new-instance v10, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 985
    invoke-static {v12}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v13, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v13, v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v10, v11, v12, v13}, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 984
    invoke-static {v9, v10}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3602(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;)Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

    goto :goto_6

    .line 988
    :cond_e
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_f

    .line 989
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v9, v8}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3502(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 990
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    new-instance v10, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 991
    invoke-static {v12}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v13, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v13, v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v10, v11, v12, v13}, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 990
    invoke-static {v9, v10}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3602(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;)Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

    .line 996
    .end local v0    # "similary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    .end local v8    # "actor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    :cond_f
    :goto_6
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 997
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 998
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 1000
    :cond_10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v8, v0

    .line 1001
    .local v8, "linkedList":Ljava/util/LinkedList;
    sget-object v9, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    .line 1003
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    const/4 v10, 0x0

    .line 1004
    .local v10, "num":I
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/db/Album;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1005
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/db/Album;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumSourceType()Ljava/lang/String;

    move-result-object v11

    .line 1006
    .local v11, "sourceType":Ljava/lang/String;
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1008
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v0

    .line 1012
    goto :goto_7

    .line 1009
    :catch_0
    move-exception v0

    .line 1016
    .end local v11    # "sourceType":Ljava/lang/String;
    :cond_11
    :goto_7
    add-int/lit8 v0, v10, -0x1

    if-gtz v0, :cond_12

    .line 1017
    const/4 v0, 0x0

    .end local v10    # "num":I
    .local v0, "num":I
    goto :goto_8

    .line 1019
    .end local v0    # "num":I
    .restart local v10    # "num":I
    :cond_12
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3700(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I

    move-result v0

    if-ne v0, v6, :cond_13

    .line 1020
    add-int/lit8 v0, v10, -0x1

    .end local v10    # "num":I
    .restart local v0    # "num":I
    goto :goto_8

    .line 1022
    .end local v0    # "num":I
    .restart local v10    # "num":I
    :cond_13
    const/4 v0, 0x0

    .line 1025
    .end local v10    # "num":I
    .restart local v0    # "num":I
    :goto_8
    if-eqz v9, :cond_19

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_19

    .line 1026
    const/4 v10, 0x1

    .line 1028
    .local v10, "radioButtonId":I
    iget-object v11, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const-string v12, "UpdateNumber"

    invoke-static {v11, v12, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    const v14, 0x7f0601bd

    const v15, 0x7f07010c

    const-string v12, "name---"

    if-nez v11, :cond_16

    .line 1029
    const/4 v11, 0x0

    .local v11, "i5":I
    :goto_9
    sget-object v16, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_15

    .line 1030
    sget-object v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v13}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1031
    sget-object v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v13}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    new-instance v13, Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {v13, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    move-object v6, v13

    .line 1033
    .local v6, "radioButton":Landroid/widget/RadioButton;
    iget-object v13, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v13}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1034
    iget-object v13, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v13}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v6, v4, v13}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 1035
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 1036
    sget-object v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v13}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    const v13, 0x7f070052

    invoke-virtual {v6, v13}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 1038
    iget-object v13, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v13}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f06016f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v6, v4, v4, v13, v4}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 1039
    invoke-virtual {v6, v10}, Landroid/widget/RadioButton;->setId(I)V

    .line 1040
    add-int/lit8 v10, v10, 0x1

    .line 1042
    sget-object v13, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v13}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1044
    const v13, 0x7fffffff

    invoke-virtual {v6, v13}, Landroid/widget/RadioButton;->setMarqueeRepeatLimit(I)V

    .line 1045
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/widget/RadioButton;->setSingleLine(Z)V

    .line 1046
    iget-object v13, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v13}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/RadioGroup;

    move-result-object v13

    iget-object v14, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v14}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v4, 0x7f060158

    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v14, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v14}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3800(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I

    move-result v14

    invoke-virtual {v13, v6, v4, v14}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;II)V

    .line 1047
    if-ne v11, v0, :cond_14

    .line 1048
    iget-object v4, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    sget-object v13, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v13}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->fillRadioGroup(Ljava/lang/String;)V

    .line 1049
    iget-object v4, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getId()I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/RadioGroup;->check(I)V

    .line 1029
    .end local v6    # "radioButton":Landroid/widget/RadioButton;
    :cond_14
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const v14, 0x7f0601bd

    goto/16 :goto_9

    :cond_15
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move/from16 v19, v5

    .end local v11    # "i5":I
    goto/16 :goto_b

    .line 1077
    :cond_16
    const/4 v4, 0x0

    .local v4, "i5":I
    :goto_a
    sget-object v6, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_18

    .line 1078
    sget-object v6, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1079
    .local v6, "name":Ljava/lang/String;
    sget-object v11, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    sget-object v11, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    .line 1081
    .local v11, "listSize":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1082
    .local v13, "text":Ljava/lang/String;
    new-instance v14, Landroid/text/SpannableString;

    invoke-direct {v14, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1083
    .local v14, "spannableString":Landroid/text/SpannableString;
    new-instance v15, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v15}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v18, v2

    const/16 v16, 0x1

    .end local v2    # "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .local v18, "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v17, v3

    .end local v3    # "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .local v17, "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v19, v5

    .end local v5    # "i":I
    .local v19, "i":I
    const/16 v5, 0x21

    invoke-virtual {v14, v15, v2, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1084
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v2, v3, v15, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1085
    new-instance v2, Landroid/widget/RadioButton;

    iget-object v3, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {v2, v3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1086
    .local v2, "radioButton":Landroid/widget/RadioButton;
    iget-object v3, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07010c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1087
    iget-object v3, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v15, 0x7f0601bd

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 1088
    const v3, 0x800035

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 1089
    invoke-virtual {v2, v14}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    const v3, 0x7f070052

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 1091
    iget-object v5, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v3, 0x7f06016f

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v5, v3}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 1092
    invoke-virtual {v2, v10}, Landroid/widget/RadioButton;->setId(I)V

    .line 1093
    add-int/lit8 v10, v10, 0x1

    .line 1095
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1097
    const v5, 0x7fffffff

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setMarqueeRepeatLimit(I)V

    .line 1098
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setSingleLine(Z)V

    .line 1104
    iget-object v3, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    iget-object v5, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f060191

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v15, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v15}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3800(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I

    move-result v15

    invoke-virtual {v3, v2, v5, v15}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;II)V

    .line 1105
    if-ne v4, v0, :cond_17

    .line 1106
    iget-object v3, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v3, v6}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->fillRadioGroup(Ljava/lang/String;)V

    .line 1107
    iget-object v3, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 1077
    .end local v2    # "radioButton":Landroid/widget/RadioButton;
    .end local v6    # "name":Ljava/lang/String;
    .end local v11    # "listSize":I
    .end local v13    # "text":Ljava/lang/String;
    .end local v14    # "spannableString":Landroid/text/SpannableString;
    :cond_17
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move/from16 v5, v19

    const v15, 0x7f07010c

    goto/16 :goto_a

    .end local v17    # "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .end local v18    # "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .end local v19    # "i":I
    .local v2, "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .restart local v3    # "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .restart local v5    # "i":I
    :cond_18
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move/from16 v19, v5

    .end local v2    # "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .end local v3    # "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .end local v5    # "i":I
    .restart local v17    # "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .restart local v18    # "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .restart local v19    # "i":I
    goto :goto_b

    .line 1025
    .end local v4    # "i5":I
    .end local v10    # "radioButtonId":I
    .end local v17    # "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .end local v18    # "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .end local v19    # "i":I
    .restart local v2    # "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .restart local v3    # "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .restart local v5    # "i":I
    :cond_19
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move/from16 v19, v5

    .line 1113
    .end local v2    # "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .end local v3    # "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .end local v5    # "i":I
    .restart local v17    # "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .restart local v18    # "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .restart local v19    # "i":I
    :goto_b
    iget-object v2, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/GridView;

    move-result-object v2

    iget-object v3, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1114
    iget-object v2, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/GridView;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$2;

    invoke-direct {v3, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$2;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1130
    .end local v0    # "num":I
    .end local v7    # "about":Lcom/shenma/tvlauncher/vod/domain/AboutInfo;
    .end local v8    # "linkedList":Ljava/util/LinkedList;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .end local v17    # "video_list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    .end local v18    # "VideoDetailInfo":Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
    .end local v19    # "i":I
    :cond_1a
    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->closeProgressDialog()V

    .line 1131
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 863
    check-cast p1, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;)V

    return-void
.end method
