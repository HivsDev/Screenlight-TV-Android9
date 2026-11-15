.class public Lcom/shenma/tvlauncher/SettingPlayActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "SettingPlayActivity.java"


# instance fields
.field private bt_core_left_arrows:Landroid/widget/ImageButton;

.field private bt_core_right_arrows:Landroid/widget/ImageButton;

.field private bt_decode_left_arrows:Landroid/widget/ImageButton;

.field private bt_decode_right_arrows:Landroid/widget/ImageButton;

.field private bt_jump_end_left_arrows:Landroid/widget/ImageButton;

.field private bt_jump_end_right_arrows:Landroid/widget/ImageButton;

.field private bt_jump_left_arrows:Landroid/widget/ImageButton;

.field private bt_jump_right_arrows:Landroid/widget/ImageButton;

.field private bt_live_core_left_arrows:Landroid/widget/ImageButton;

.field private bt_live_core_right_arrows:Landroid/widget/ImageButton;

.field private bt_playratio_left_arrows:Landroid/widget/ImageButton;

.field private bt_playratio_right_arrows:Landroid/widget/ImageButton;

.field private bt_theme_left_arrows:Landroid/widget/ImageButton;

.field private bt_theme_right_arrows:Landroid/widget/ImageButton;

.field private mAll_play_setting_core:[Ljava/lang/String;

.field private mAll_play_setting_decode:[Ljava/lang/String;

.field private mAll_play_setting_definition:[Ljava/lang/String;

.field private mAll_play_setting_jump:[Ljava/lang/String;

.field private mAll_play_setting_jump_end:[Ljava/lang/String;

.field private mAll_play_setting_live_core:[Ljava/lang/String;

.field private mAll_play_setting_playratio:[Ljava/lang/String;

.field private mAll_play_setting_theme:[Ljava/lang/String;

.field private play_theme:Ljava/lang/String;

.field private rl_play_setting_content_core:Landroid/widget/RelativeLayout;

.field private rl_play_setting_content_decode:Landroid/widget/RelativeLayout;

.field private rl_play_setting_content_jump:Landroid/widget/RelativeLayout;

.field private rl_play_setting_content_jump_end:Landroid/widget/RelativeLayout;

.field private rl_play_setting_content_live_core:Landroid/widget/RelativeLayout;

.field private rl_play_setting_content_playratio:Landroid/widget/RelativeLayout;

.field private rl_play_setting_content_theme:Landroid/widget/RelativeLayout;

.field private tv_play_setting_content_core_text:Landroid/widget/TextView;

.field private tv_play_setting_content_decode_text:Landroid/widget/TextView;

.field private tv_play_setting_content_jump_end_text:Landroid/widget/TextView;

.field private tv_play_setting_content_jump_text:Landroid/widget/TextView;

.field private tv_play_setting_content_live_core_text:Landroid/widget/TextView;

.field private tv_play_setting_content_playratio_text:Landroid/widget/TextView;

.field private tv_play_setting_content_theme_text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_decode_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_decode:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_jump_end_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_jump_end:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_theme_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_theme:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_decode_left_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_decode_right_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_playratio_left_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_playratio_right_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_jump_left_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_jump_right_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_playratio_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_core_left_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_core_right_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_live_core_left_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_live_core_right_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_jump_end_left_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_jump_end_right_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_theme_left_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_theme_right_arrows:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_playratio:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_jump_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_jump:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_core_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_core:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_live_core_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 25
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_live_core:[Ljava/lang/String;

    return-object v0
.end method

.method private initData()V
    .locals 13

    .line 806
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_decode:[Ljava/lang/String;

    .line 807
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_playratio:[Ljava/lang/String;

    .line 808
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_definition:[Ljava/lang/String;

    .line 809
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_jump:[Ljava/lang/String;

    .line 810
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_jump_end:[Ljava/lang/String;

    .line 811
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_core:[Ljava/lang/String;

    .line 812
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_live_core:[Ljava/lang/String;

    .line 813
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_theme:[Ljava/lang/String;

    .line 814
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_decode:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "play_decode":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_playratio:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "play_ratio":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->sp:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_definition:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const-string v7, "play_definition"

    invoke-interface {v2, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, "play_definition":Ljava/lang/String;
    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->sp:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_jump:[Ljava/lang/String;

    aget-object v7, v7, v6

    const-string v8, "play_jump"

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 818
    .local v4, "play_jump":Ljava/lang/String;
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->sp:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_jump_end:[Ljava/lang/String;

    aget-object v8, v8, v6

    const-string v9, "play_jump_end"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 819
    .local v7, "play_jump_end":Ljava/lang/String;
    iget-object v8, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    iget-object v10, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_core:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 820
    .local v8, "play_core":Ljava/lang/String;
    iget-object v9, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->sp:Landroid/content/SharedPreferences;

    sget-object v10, Lcom/shenma/tvlauncher/utils/Constant;->vy:Ljava/lang/String;

    iget-object v12, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_live_core:[Ljava/lang/String;

    aget-object v12, v12, v11

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 822
    .local v9, "live_core":Ljava/lang/String;
    iget-object v10, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->context:Landroid/content/Context;

    const-string v12, "Interface_Style"

    invoke-static {v10, v12, v6}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    .line 824
    .local v10, "Interface_Style":I
    const-string v12, ""

    .line 825
    .local v12, "Style":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 826
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_theme:[Ljava/lang/String;

    aget-object v12, v3, v6

    goto :goto_0

    .line 827
    :cond_0
    if-ne v10, v3, :cond_1

    .line 828
    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_theme:[Ljava/lang/String;

    aget-object v12, v5, v3

    goto :goto_0

    .line 829
    :cond_1
    if-ne v10, v11, :cond_2

    .line 830
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_theme:[Ljava/lang/String;

    aget-object v12, v3, v11

    goto :goto_0

    .line 831
    :cond_2
    if-ne v10, v5, :cond_3

    .line 832
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->mAll_play_setting_theme:[Ljava/lang/String;

    aget-object v12, v3, v5

    .line 834
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->sp:Landroid/content/SharedPreferences;

    const-string v5, "play_theme"

    invoke-interface {v3, v5, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->play_theme:Ljava/lang/String;

    .line 836
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_decode_text:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_playratio_text:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_jump_text:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_jump_end_text:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_core_text:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_live_core_text:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_theme_text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->play_theme:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    return-void
.end method

.method private savePlaySettingInfo()V
    .locals 6

    .line 846
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 847
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_decode_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "\u8f6f\u89e3\u7801"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "mIsHwDecode"

    if-eqz v1, :cond_0

    .line 848
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 850
    :cond_0
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 854
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_theme_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "\u7ecf\u5178"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "User_Style"

    const-string v5, "Interface_Style"

    if-eqz v1, :cond_1

    .line 855
    invoke-static {p0, v5, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 856
    const-string v1, "0"

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 857
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_theme_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "\u73b0\u4ee3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 858
    invoke-static {p0, v5, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 859
    const-string v1, "1"

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 860
    :cond_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_theme_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "\u73b0\u4ee3\u5706\u89d2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 861
    const/4 v1, 0x2

    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 862
    const-string v1, "2"

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 863
    :cond_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_theme_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "\u7ecf\u5178\u5706\u89d2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 864
    const/4 v1, 0x3

    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 865
    const-string v1, "3"

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_4
    :goto_1
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_decode_text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 869
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_playratio_text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 870
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_jump_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "play_jump"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 871
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_jump_end_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "play_jump_end"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 872
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_core_text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 873
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->vy:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_live_core_text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 874
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_theme_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "play_theme"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 875
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 878
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->play_theme:Ljava/lang/String;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_theme_text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 888
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 2

    .line 91
    const v0, 0x7f08016e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_decode:Landroid/widget/RelativeLayout;

    .line 92
    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_playratio:Landroid/widget/RelativeLayout;

    .line 93
    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_jump:Landroid/widget/RelativeLayout;

    .line 94
    const v0, 0x7f080173

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_jump_end:Landroid/widget/RelativeLayout;

    .line 95
    const v0, 0x7f080182

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_theme:Landroid/widget/RelativeLayout;

    .line 96
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_core:Landroid/widget/RelativeLayout;

    .line 97
    const v0, 0x7f08017a

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_live_core:Landroid/widget/RelativeLayout;

    .line 98
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_decode_text:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f080179

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_jump_text:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f080176

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_jump_end_text:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f080185

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_theme_text:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_core_text:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f08017d

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_live_core_text:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f080181

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->tv_play_setting_content_playratio_text:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f08016f

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_decode_left_arrows:Landroid/widget/ImageButton;

    .line 106
    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_decode_right_arrows:Landroid/widget/ImageButton;

    .line 107
    const v0, 0x7f08017f

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_playratio_left_arrows:Landroid/widget/ImageButton;

    .line 108
    const v0, 0x7f080180

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_playratio_right_arrows:Landroid/widget/ImageButton;

    .line 109
    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_jump_left_arrows:Landroid/widget/ImageButton;

    .line 110
    const v0, 0x7f080178

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_jump_right_arrows:Landroid/widget/ImageButton;

    .line 111
    const v0, 0x7f080174

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_jump_end_left_arrows:Landroid/widget/ImageButton;

    .line 112
    const v0, 0x7f080175

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_jump_end_right_arrows:Landroid/widget/ImageButton;

    .line 113
    const v0, 0x7f080183

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_theme_left_arrows:Landroid/widget/ImageButton;

    .line 114
    const v0, 0x7f080184

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_theme_right_arrows:Landroid/widget/ImageButton;

    .line 115
    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_core_left_arrows:Landroid/widget/ImageButton;

    .line 116
    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_live_core_left_arrows:Landroid/widget/ImageButton;

    .line 117
    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_core_right_arrows:Landroid/widget/ImageButton;

    .line 118
    const v0, 0x7f08017c

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_live_core_right_arrows:Landroid/widget/ImageButton;

    .line 120
    const-string v0, "Allow_changing_styles"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_theme:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 124
    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 2

    .line 81
    const-string v0, "shenma"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/SettingPlayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->sp:Landroid/content/SharedPreferences;

    .line 82
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->loadViewLayout()V

    .line 83
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById()V

    .line 84
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->setListener()V

    .line 85
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 88
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 76
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onBackPressed()V

    .line 77
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->finish()V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->setContentView(I)V

    .line 70
    const v0, 0x7f0801f4

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07015b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->initView()V

    .line 72
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->initData()V

    .line 73
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 891
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->savePlaySettingInfo()V

    .line 893
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->finish()V

    .line 894
    return v1

    .line 896
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shenma/tvlauncher/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 897
    const/4 v0, 0x0

    return v0
.end method

.method protected setListener()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_decode_left_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$1;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_decode_right_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$2;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$2;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_playratio_left_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$3;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$3;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_playratio_right_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$4;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$4;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_jump_left_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$5;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$5;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_jump_right_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$6;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_core_left_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$7;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_core_right_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$8;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_live_core_left_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$9;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$9;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_live_core_right_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$10;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$10;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_jump_end_left_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$11;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$11;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_jump_end_right_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$12;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$12;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_theme_left_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$13;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$13;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->bt_theme_right_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$14;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$14;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_decode:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$15;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$15;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 457
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_playratio:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$16;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$16;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 518
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_jump:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$17;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$17;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 575
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_core:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$18;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$18;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 631
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_live_core:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$19;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$19;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 687
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_jump_end:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$20;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$20;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 744
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity;->rl_play_setting_content_theme:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingPlayActivity$21;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingPlayActivity$21;-><init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 803
    return-void
.end method
