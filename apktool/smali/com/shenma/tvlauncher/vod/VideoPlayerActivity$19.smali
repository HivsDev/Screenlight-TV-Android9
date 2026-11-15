.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


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

    .line 1812
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 25
    .param p1, "arg0"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 1817
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1819
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1825
    .local v2, "dpi":I
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    const/4 v4, 0x5

    const-string v5, "Navigation_mode"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v3, v7, :cond_7

    .line 1826
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    const/16 v9, 0x8

    if-ne v3, v7, :cond_6

    .line 1827
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3, v8}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 1828
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1829
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1830
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1831
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1832
    :cond_0
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 1833
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1834
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1835
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1836
    :cond_1
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1837
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1838
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1839
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1840
    :cond_2
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 1841
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1842
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1843
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1844
    :cond_3
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_4

    .line 1845
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1846
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1847
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1848
    :cond_4
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 1849
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1850
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1851
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1852
    :cond_5
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_8

    .line 1853
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1854
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1855
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1858
    :cond_6
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3, v5, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 1859
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1860
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1861
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1864
    :cond_7
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3, v5, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 1870
    :cond_8
    :goto_0
    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1884
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v5

    int-to-float v5, v5

    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v5, v9

    .line 1886
    .local v5, "specAspectRatio":F
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v9

    invoke-virtual {v9}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getVideoWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v10

    invoke-virtual {v10}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getVideoHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 1887
    .local v9, "displayAspectRatio":F
    iget-object v10, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v10

    invoke-virtual {v10}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getVideoSarNum()I

    move-result v10

    if-lez v10, :cond_9

    iget-object v10, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v10

    invoke-virtual {v10}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getmVideoSarDen()I

    move-result v10

    if-lez v10, :cond_9

    .line 1888
    iget-object v10, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v10}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v10

    invoke-virtual {v10}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getVideoSarNum()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v9

    iget-object v11, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v11

    invoke-virtual {v11}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getmVideoSarDen()I

    move-result v11

    int-to-float v11, v11

    div-float v9, v10, v11

    .line 1889
    :cond_9
    cmpl-float v10, v9, v5

    if-lez v10, :cond_a

    const/4 v10, 0x1

    goto :goto_1

    :cond_a
    const/4 v10, 0x0

    .line 1890
    .local v10, "shouldBeWider":Z
    :goto_1
    if-eqz v10, :cond_b

    .line 1891
    iget-object v11, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v11

    .line 1892
    .local v11, "width":I
    int-to-float v12, v11

    div-float/2addr v12, v9

    float-to-int v12, v12

    .local v12, "height":I
    goto :goto_2

    .line 1894
    .end local v11    # "width":I
    .end local v12    # "height":I
    :cond_b
    iget-object v11, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v12

    .line 1895
    .restart local v12    # "height":I
    int-to-float v11, v12

    mul-float v11, v11, v9

    float-to-int v11, v11

    .line 1898
    .restart local v11    # "width":I
    :goto_2
    int-to-double v13, v11

    move/from16 v16, v5

    .end local v5    # "specAspectRatio":F
    .local v16, "specAspectRatio":F
    int-to-double v4, v12

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v4

    .line 1904
    .local v13, "pmzhb":D
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v13

    .line 1908
    .local v4, "zdspgd":D
    iget-object v15, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v15}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v15

    move/from16 v17, v9

    .end local v9    # "displayAspectRatio":F
    .local v17, "displayAspectRatio":F
    int-to-double v8, v15

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v4

    double-to-int v8, v8

    div-int/2addr v8, v6

    .line 1913
    .local v8, "zdsd":I
    if-gtz v8, :cond_c

    .line 1914
    const/4 v8, 0x0

    .line 1917
    :cond_c
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v9

    int-to-double v6, v9

    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v9

    move-wide/from16 v19, v4

    .end local v4    # "zdspgd":D
    .local v19, "zdspgd":D
    int-to-double v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v13

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 1919
    .local v4, "scaledVideoWidth":D
    iget-object v6, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8600(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v6

    double-to-int v7, v4

    sub-int/2addr v6, v7

    .line 1921
    .local v6, "extraSpace":I
    div-int/lit8 v7, v6, 0x2

    .line 1923
    .local v7, "blackBarSize":I
    if-gtz v7, :cond_d

    .line 1924
    const/4 v7, 0x0

    .line 1949
    :cond_d
    iget-object v9, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v9}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v9

    int-to-float v9, v9

    iget-object v15, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v15}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    move-object/from16 v21, v1

    const/4 v1, 0x1

    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .local v21, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v1, v9, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, v7

    .line 1950
    .local v9, "ewmwidth":I
    iget-object v15, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v15}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8900(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v15

    int-to-float v15, v15

    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    move-wide/from16 v22, v4

    const/4 v4, 0x1

    .end local v4    # "scaledVideoWidth":D
    .local v22, "scaledVideoWidth":D
    invoke-static {v4, v15, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v8

    .line 1951
    .local v1, "ewmheight":I
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1952
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1954
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MOVIE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0xf0

    if-eqz v4, :cond_f

    .line 1956
    if-le v2, v5, :cond_e

    .line 1957
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v15, 0x1

    invoke-static {v15, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    add-int/2addr v4, v8

    .local v4, "MoviesizeInPx":I
    goto :goto_3

    .line 1959
    .end local v4    # "MoviesizeInPx":I
    :cond_e
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9000(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v15, 0x1

    invoke-static {v15, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v8

    .line 1964
    .restart local v4    # "MoviesizeInPx":I
    :goto_3
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1965
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1967
    .end local v4    # "MoviesizeInPx":I
    move/from16 v24, v1

    goto :goto_5

    .line 1969
    :cond_f
    if-le v2, v5, :cond_10

    .line 1970
    div-int/lit16 v4, v2, 0xf0

    .line 1971
    .local v4, "s":I
    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v5

    int-to-float v5, v5

    iget-object v15, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v15}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    move/from16 v24, v1

    const/4 v1, 0x1

    .end local v1    # "ewmheight":I
    .local v24, "ewmheight":I
    invoke-static {v1, v5, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v1, v5

    const/4 v5, 0x2

    div-int/2addr v1, v5

    add-int/2addr v1, v8

    .line 1972
    .end local v4    # "s":I
    .local v1, "TvplaysizeInPx":I
    goto :goto_4

    .line 1973
    .end local v24    # "ewmheight":I
    .local v1, "ewmheight":I
    :cond_10
    move/from16 v24, v1

    .end local v1    # "ewmheight":I
    .restart local v24    # "ewmheight":I
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v8

    .line 1978
    .local v1, "TvplaysizeInPx":I
    :goto_4
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1979
    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1982
    .end local v1    # "TvplaysizeInPx":I
    :goto_5
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3100(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_11

    .line 1983
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8400(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v4, 0x7f070027

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1984
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1985
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2073
    :cond_11
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$8500(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2076
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$3700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_13

    .line 2077
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->vod_caton_check:I

    if-ne v1, v4, :cond_12

    .line 2079
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    move v15, v2

    move-object/from16 v18, v3

    .end local v2    # "dpi":I
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .local v15, "dpi":I
    .local v18, "params":Landroid/widget/FrameLayout$LayoutParams;
    int-to-long v2, v5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 2077
    .end local v15    # "dpi":I
    .end local v18    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "dpi":I
    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_12
    move v15, v2

    move-object/from16 v18, v3

    .end local v2    # "dpi":I
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v15    # "dpi":I
    .restart local v18    # "params":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_6

    .line 2076
    .end local v15    # "dpi":I
    .end local v18    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "dpi":I
    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_13
    move v15, v2

    move-object/from16 v18, v3

    .line 2083
    .end local v2    # "dpi":I
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v15    # "dpi":I
    .restart local v18    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_6
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$4602(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2086
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$7800(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 2088
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x26

    iget-object v3, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget v3, v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Vod_Notice_starting_time:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2090
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    if-lez v1, :cond_15

    .line 2091
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5300(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2092
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    goto :goto_7

    .line 2094
    :cond_14
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5200(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5402(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2095
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$5202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    goto :goto_7

    .line 2090
    :cond_15
    const/4 v2, 0x0

    .line 2099
    :goto_7
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget-object v3, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$102(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 2100
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$9202(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)I

    .line 2102
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2103
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->access$1700(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2104
    iget-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2105
    return-void
.end method
