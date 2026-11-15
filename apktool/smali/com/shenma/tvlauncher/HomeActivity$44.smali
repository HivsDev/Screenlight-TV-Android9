.class Lcom/shenma/tvlauncher/HomeActivity$44;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 1949
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .line 2030
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .line 2025
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7
    .param p1, "position"    # I

    .line 1956
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity;->access$1200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .line 1958
    .local v0, "i":I
    sget-object v1, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1959
    if-ge p1, v0, :cond_0

    .line 1960
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity;->access$1200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1963
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const/4 v3, 0x0

    const-string v4, "Topic"

    invoke-static {v1, v4, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1964
    .local v1, "Topic":I
    if-nez v1, :cond_4

    .line 1966
    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 1975
    :cond_1
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$1200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1976
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$2000(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/SettingFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 1977
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$2000(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/SettingFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_0

    .line 1968
    :cond_2
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$1200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1969
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$1900(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 1970
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$1900(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1980
    :cond_3
    :goto_0
    goto/16 :goto_1

    .line 1985
    :cond_4
    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_5

    goto/16 :goto_1

    .line 2001
    :cond_5
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$1200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2002
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$2000(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/SettingFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    .line 2003
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$2000(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/SettingFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_1

    .line 1994
    :cond_6
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$1200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1995
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$2100(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/TopicFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    if-eqz v4, :cond_8

    .line 1996
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$2100(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/TopicFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestFocus()Z

    goto :goto_1

    .line 1987
    :cond_7
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$1200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1988
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$1900(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    .line 1989
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$1900(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    .line 2009
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->access$1200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    .line 2012
    .local v3, "toX":F
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/HomeActivity;->access$2202(Lcom/shenma/tvlauncher/HomeActivity;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;

    .line 2013
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .line 2014
    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$2400(Lcom/shenma/tvlauncher/HomeActivity;)F

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2013
    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$2302(Lcom/shenma/tvlauncher/HomeActivity;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;

    .line 2015
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$2200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/HomeActivity;->access$2300(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/HomeActivity;->access$2500(Lcom/shenma/tvlauncher/HomeActivity;Landroid/view/animation/AnimationSet;Landroid/view/animation/TranslateAnimation;)V

    .line 2016
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->access$2600(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$2200(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2017
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$44;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->access$2402(Lcom/shenma/tvlauncher/HomeActivity;F)F

    .line 2018
    invoke-static {p1}, Lcom/shenma/tvlauncher/HomeActivity;->access$2702(I)I

    .line 2019
    return-void
.end method
