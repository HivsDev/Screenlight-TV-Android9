.class public Lcom/shenma/tvlauncher/ClearActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "ClearActivity.java"


# instance fields
.field private all_cache_clear_tv:Landroid/widget/TextView;

.field private clear_setting_content_decode:Landroid/widget/RelativeLayout;

.field private clear_setting_content_definition:Landroid/widget/RelativeLayout;

.field private clear_setting_content_jump:Landroid/widget/RelativeLayout;

.field private clear_setting_content_playratio:Landroid/widget/RelativeLayout;

.field private clear_setting_other:Landroid/widget/RelativeLayout;

.field private clear_setting_theme:Landroid/widget/RelativeLayout;

.field private dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/ClearActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/ClearActivity;

    .line 19
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/ClearActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/ClearActivity;

    .line 19
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->all_cache_clear_tv:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected findViewById()V
    .locals 1

    .line 49
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_decode:Landroid/widget/RelativeLayout;

    .line 50
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_definition:Landroid/widget/RelativeLayout;

    .line 51
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_playratio:Landroid/widget/RelativeLayout;

    .line 52
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_jump:Landroid/widget/RelativeLayout;

    .line 53
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_other:Landroid/widget/RelativeLayout;

    .line 54
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->all_cache_clear_tv:Landroid/widget/TextView;

    .line 59
    return-void
.end method

.method protected initView()V
    .locals 1

    .line 37
    new-instance v0, Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/dao/VodDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    .line 38
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById()V

    .line 39
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/ClearActivity;->setListener()V

    .line 40
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->setContentView(I)V

    .line 31
    const v0, 0x7f0801e2

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07015b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/ClearActivity;->initView()V

    .line 33
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_decode:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$1;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_definition:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$2;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$2;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_playratio:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$3;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$3;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_jump:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$4;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$4;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->all_cache_clear_tv:Landroid/widget/TextView;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$5;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$5;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_other:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$6;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->all_cache_clear_tv:Landroid/widget/TextView;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$7;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method
