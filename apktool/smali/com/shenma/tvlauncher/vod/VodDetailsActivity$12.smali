.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    .line 737
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 740
    const/4 v0, 0x0

    .local v0, "i2":I
    :goto_0
    sget-object v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 741
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 742
    .local v1, "radioButton":Landroid/widget/RadioButton;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    sget-object v4, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->fillRadioGroup(Ljava/lang/String;)V

    .line 744
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$102(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)I

    .line 745
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->CreateBottomLayout()V

    .line 740
    .end local v1    # "radioButton":Landroid/widget/RadioButton;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    .end local v0    # "i2":I
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1102(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 752
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOVIE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 754
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1900(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1200(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/db/Album;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$600(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "LIVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 759
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$2000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 764
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 765
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->CreateBottomLayout()V

    goto :goto_2

    .line 767
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1300(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$1500(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 771
    :goto_2
    return-void
.end method
