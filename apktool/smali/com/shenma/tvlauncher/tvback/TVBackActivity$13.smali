.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Lcom/shenma/tvlauncher/network/PullXmlParserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field protected mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

.field protected mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

.field protected mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

.field protected mlist:I

.field protected mm:I

.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

.field final synthetic val$menuType:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 685
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->val$menuType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    const/4 p2, -0x1

    iput p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mlist:I

    .line 687
    iput p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mm:I

    .line 688
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 689
    iput-object p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 690
    iput-object p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 4

    .line 817
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity======endDocument"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->val$menuType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$3300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$3300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 824
    goto :goto_0

    .line 826
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$3300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 827
    goto :goto_0

    .line 820
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$3300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 821
    nop

    .line 833
    :goto_0
    return-void
.end method

.method public endFlag(Ljava/lang/String;)V
    .locals 4
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 773
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity======endFlag"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v1, "list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 775
    iput v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mlist:I

    goto :goto_0

    .line 776
    :cond_0
    const-string v1, "m"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 777
    iput v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mm:I

    .line 778
    iget v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->val$menuType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 803
    :cond_1
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1700()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    iput-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    goto :goto_0

    .line 786
    :cond_2
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$3400()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    iput-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    .line 792
    goto :goto_0

    .line 794
    :cond_3
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2000()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    iput-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 801
    goto :goto_0

    .line 780
    :cond_4
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChannelinfo.getChanneName()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 782
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->getChanneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iput-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 813
    :cond_5
    :goto_0
    return-void
.end method

.method public haveError(Lcom/shenma/tvlauncher/network/PullXmlParserError;)V
    .locals 2
    .param p1, "error"    # Lcom/shenma/tvlauncher/network/PullXmlParserError;

    .line 768
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity======haveError"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method public startDocument()V
    .locals 2

    .line 747
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity======startDocument"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->val$menuType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1702(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 760
    goto :goto_0

    .line 750
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$3402(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 751
    goto :goto_0

    .line 753
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 754
    goto :goto_0

    .line 756
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1402(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 757
    nop

    .line 764
    :goto_0
    return-void
.end method

.method public startFlag(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 701
    .local p2, "attribute":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 702
    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mlist:I

    goto/16 :goto_0

    .line 703
    :cond_0
    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 704
    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mm:I

    .line 705
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->val$menuType:I

    const-string v2, "list_src"

    const-string v3, "label"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const-string v4, "src"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 731
    :cond_1
    new-instance v0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 732
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 733
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getNameToLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->setProgramName(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->setProgramUrl(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 736
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getTimeToLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 735
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->setTime(Ljava/lang/String;)V

    .line 737
    goto/16 :goto_0

    .line 714
    :cond_2
    new-instance v0, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    .line 715
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    .line 716
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 715
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->setChannelDate_label(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    .line 718
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 717
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->setChannelDate_Url(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    .line 720
    const-string v1, "date"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 719
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->setChannelDate(Ljava/lang/String;)V

    .line 721
    goto :goto_0

    .line 723
    :cond_3
    new-instance v0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 724
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 725
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getNameToLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->setProgramName(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->setProgramUrl(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 728
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getTimeToLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->setTime(Ljava/lang/String;)V

    .line 729
    goto :goto_0

    .line 707
    :cond_4
    new-instance v0, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 708
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 709
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 708
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->setChanneName(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 711
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 710
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->setChanneUrl(Ljava/lang/String;)V

    .line 743
    :cond_5
    :goto_0
    return-void
.end method

.method public text(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TVBackActivity======text=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TVBackActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    return-void
.end method
