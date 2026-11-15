.class public Lcom/shenma/tvlauncher/SettingActActvity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "SettingActActvity.java"


# instance fields
.field private Msg:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private account:Landroid/widget/TextView;

.field private actishiwenzi:Landroid/widget/TextView;

.field private clock_state:Ljava/lang/String;

.field private empower_fens:Landroid/widget/TextView;

.field private empower_iv_pay_ecode:Landroid/widget/ImageView;

.field private empower_url:Ljava/lang/String;

.field private fen:Ljava/lang/String;

.field private inv_state:Ljava/lang/String;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mediaHandler:Landroid/os/Handler;

.field private vipTime:Landroid/widget/TextView;

.field private vip_ac:Landroid/widget/LinearLayout;

.field private vip_acno:Landroid/widget/TextView;

.field private vip_clock:Landroid/widget/LinearLayout;

.field private vip_goods_1_message:Landroid/widget/TextView;

.field private vip_goods_1_price:Landroid/widget/TextView;

.field private vip_goods_1_title:Landroid/widget/TextView;

.field private vip_goods_2_message:Landroid/widget/TextView;

.field private vip_goods_2_price:Landroid/widget/TextView;

.field private vip_goods_2_title:Landroid/widget/TextView;

.field private vip_goods_3_message:Landroid/widget/TextView;

.field private vip_goods_3_price:Landroid/widget/TextView;

.field private vip_goods_3_title:Landroid/widget/TextView;

.field private vip_goods_4_message:Landroid/widget/TextView;

.field private vip_goods_4_price:Landroid/widget/TextView;

.field private vip_goods_4_title:Landroid/widget/TextView;

.field private vip_goods_gid_1:Landroid/widget/TextView;

.field private vip_goods_gid_2:Landroid/widget/TextView;

.field private vip_goods_gid_3:Landroid/widget/TextView;

.field private vip_goods_gid_4:Landroid/widget/TextView;

.field private vip_goods_r_1:Landroid/widget/RelativeLayout;

.field private vip_goods_r_2:Landroid/widget/RelativeLayout;

.field private vip_goods_r_3:Landroid/widget/RelativeLayout;

.field private vip_goods_r_4:Landroid/widget/RelativeLayout;

.field private vip_inv:Landroid/widget/LinearLayout;

.field private vip_root_clock:Landroid/widget/RelativeLayout;

.field private vip_root_inv:Landroid/widget/RelativeLayout;

.field private vip_root_lin_1:Landroid/widget/LinearLayout;

.field private vip_root_lin_2:Landroid/widget/LinearLayout;

.field private vip_root_lin_3:Landroid/widget/LinearLayout;

.field private vip_root_lin_4:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 49
    const-string v0, "SettingActActvity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->TAG:Ljava/lang/String;

    .line 90
    const-string v0, "1"

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->clock_state:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->inv_state:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/shenma/tvlauncher/SettingActActvity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SettingActActvity$1;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    return-void
.end method

.method private FenList()V
    .locals 22

    .line 575
    move-object/from16 v1, p0

    const-string v0, "gname"

    const-string v2, "inv_state"

    const-string v3, "clock_state"

    :try_start_0
    new-instance v4, Lorg/json/JSONTokener;

    iget-object v5, v1, Lcom/shenma/tvlauncher/SettingActActvity;->fen:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    .line 576
    .local v4, "object":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_a

    .line 577
    move-object v5, v4

    check-cast v5, Lorg/json/JSONArray;

    .line 578
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x4

    new-array v7, v6, [Landroid/widget/TextView;

    iget-object v8, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_1:Landroid/widget/TextView;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_2:Landroid/widget/TextView;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    iget-object v8, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_3:Landroid/widget/TextView;

    const/4 v11, 0x2

    aput-object v8, v7, v11

    iget-object v8, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_4:Landroid/widget/TextView;

    const/4 v12, 0x3

    aput-object v8, v7, v12

    .line 579
    .local v7, "gidViews":[Landroid/widget/TextView;
    new-array v8, v6, [Landroid/widget/TextView;

    iget-object v13, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_1_title:Landroid/widget/TextView;

    aput-object v13, v8, v9

    iget-object v13, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_2_title:Landroid/widget/TextView;

    aput-object v13, v8, v10

    iget-object v13, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_3_title:Landroid/widget/TextView;

    aput-object v13, v8, v11

    iget-object v13, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_4_title:Landroid/widget/TextView;

    aput-object v13, v8, v12

    .line 580
    .local v8, "titleViews":[Landroid/widget/TextView;
    new-array v13, v6, [Landroid/widget/TextView;

    iget-object v14, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_1_price:Landroid/widget/TextView;

    aput-object v14, v13, v9

    iget-object v14, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_2_price:Landroid/widget/TextView;

    aput-object v14, v13, v10

    iget-object v14, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_3_price:Landroid/widget/TextView;

    aput-object v14, v13, v11

    iget-object v14, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_4_price:Landroid/widget/TextView;

    aput-object v14, v13, v12

    .line 581
    .local v13, "priceViews":[Landroid/widget/TextView;
    new-array v14, v6, [Landroid/widget/TextView;

    iget-object v15, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_1_message:Landroid/widget/TextView;

    aput-object v15, v14, v9

    iget-object v15, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_2_message:Landroid/widget/TextView;

    aput-object v15, v14, v10

    iget-object v15, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_3_message:Landroid/widget/TextView;

    aput-object v15, v14, v11

    iget-object v15, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_4_message:Landroid/widget/TextView;

    aput-object v15, v14, v12

    .line 582
    .local v14, "messageViews":[Landroid/widget/TextView;
    new-array v15, v6, [Landroid/widget/LinearLayout;

    iget-object v6, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_1:Landroid/widget/LinearLayout;

    aput-object v6, v15, v9

    iget-object v6, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_2:Landroid/widget/LinearLayout;

    aput-object v6, v15, v10

    iget-object v6, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_3:Landroid/widget/LinearLayout;

    aput-object v6, v15, v11

    iget-object v6, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_4:Landroid/widget/LinearLayout;

    aput-object v6, v15, v12

    move-object v6, v15

    .line 583
    .local v6, "rootLinViews":[Landroid/widget/LinearLayout;
    const/4 v15, 0x4

    new-array v15, v15, [Landroid/widget/RelativeLayout;

    iget-object v12, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    aput-object v12, v15, v9

    iget-object v12, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    aput-object v12, v15, v10

    iget-object v10, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    aput-object v10, v15, v11

    iget-object v10, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    const/4 v12, 0x3

    aput-object v10, v15, v12

    move-object v10, v15

    .line 584
    .local v10, "goodsRViews":[Landroid/widget/RelativeLayout;
    const/4 v12, 0x0

    .line 585
    .local v12, "index":I
    move v15, v9

    .local v15, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v15, v11, :cond_9

    const/4 v11, 0x5

    if-ge v12, v11, :cond_9

    .line 586
    invoke-virtual {v5, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 587
    .local v11, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "0"

    if-eqz v16, :cond_1

    .line 588
    move-object/from16 v16, v4

    .end local v4    # "object":Ljava/lang/Object;
    .local v16, "object":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/shenma/tvlauncher/SettingActActvity;->clock_state:Ljava/lang/String;

    .line 589
    iget-object v4, v1, Lcom/shenma/tvlauncher/SettingActActvity;->clock_state:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    iget-object v4, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_clock:Landroid/widget/LinearLayout;

    move-object/from16 v18, v3

    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 589
    :cond_0
    move-object/from16 v18, v3

    goto :goto_1

    .line 587
    .end local v16    # "object":Ljava/lang/Object;
    .restart local v4    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v16, v4

    .line 593
    .end local v4    # "object":Ljava/lang/Object;
    .restart local v16    # "object":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 594
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/shenma/tvlauncher/SettingActActvity;->inv_state:Ljava/lang/String;

    .line 595
    iget-object v3, v1, Lcom/shenma/tvlauncher/SettingActActvity;->inv_state:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 596
    iget-object v3, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_inv:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 598
    :cond_2
    const-string v3, "login_type"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 599
    .local v3, "login_type":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 600
    iget-object v4, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_inv:Landroid/widget/LinearLayout;

    move-object/from16 v19, v2

    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 599
    :cond_3
    move-object/from16 v19, v2

    goto :goto_2

    .line 593
    .end local v3    # "login_type":I
    :cond_4
    move-object/from16 v19, v2

    .line 603
    :goto_2
    iget-object v2, v1, Lcom/shenma/tvlauncher/SettingActActvity;->clock_state:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/shenma/tvlauncher/SettingActActvity;->inv_state:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 604
    iget-object v2, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_ac:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 605
    iget-object v2, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_acno:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    :cond_5
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 608
    const-string v2, "gid"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, "gid":Ljava/lang/String;
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, "gname":Ljava/lang/String;
    const-string v4, "fen_num"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, "fen_num":Ljava/lang/String;
    const-string/jumbo v9, "vip_num"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 612
    .local v9, "vip_num":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v17, v0

    array-length v0, v7

    if-ge v12, v0, :cond_7

    .line 613
    aget-object v0, v7, v12

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    aget-object v0, v8, v12

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    aget-object v0, v13, v12

    move-object/from16 v20, v2

    .end local v2    # "gid":Ljava/lang/String;
    .local v20, "gid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v3

    .end local v3    # "gname":Ljava/lang/String;
    .local v21, "gname":Ljava/lang/String;
    const v3, 0x7f0e00ea

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    aget-object v0, v14, v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0e0007

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0e0039

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0e00dd

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    aget-object v0, v6, v12

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 618
    aget-object v0, v10, v12

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 619
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 612
    .end local v20    # "gid":Ljava/lang/String;
    .end local v21    # "gname":Ljava/lang/String;
    .restart local v2    # "gid":Ljava/lang/String;
    .restart local v3    # "gname":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v0

    :cond_7
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    const/4 v2, 0x0

    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "gname":Ljava/lang/String;
    .restart local v20    # "gid":Ljava/lang/String;
    .restart local v21    # "gname":Ljava/lang/String;
    goto :goto_3

    .line 607
    .end local v4    # "fen_num":Ljava/lang/String;
    .end local v9    # "vip_num":Ljava/lang/String;
    .end local v20    # "gid":Ljava/lang/String;
    .end local v21    # "gname":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v0

    const/4 v2, 0x0

    .line 585
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    move-object/from16 v0, v17

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    const/4 v9, 0x0

    const/4 v11, 0x2

    goto/16 :goto_0

    .end local v16    # "object":Ljava/lang/Object;
    .local v4, "object":Ljava/lang/Object;
    :cond_9
    move-object/from16 v16, v4

    .end local v4    # "object":Ljava/lang/Object;
    .restart local v16    # "object":Ljava/lang/Object;
    goto :goto_4

    .line 576
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "rootLinViews":[Landroid/widget/LinearLayout;
    .end local v7    # "gidViews":[Landroid/widget/TextView;
    .end local v8    # "titleViews":[Landroid/widget/TextView;
    .end local v10    # "goodsRViews":[Landroid/widget/RelativeLayout;
    .end local v12    # "index":I
    .end local v13    # "priceViews":[Landroid/widget/TextView;
    .end local v14    # "messageViews":[Landroid/widget/TextView;
    .end local v15    # "i":I
    .end local v16    # "object":Ljava/lang/Object;
    .restart local v4    # "object":Ljava/lang/Object;
    :cond_a
    move-object/from16 v16, v4

    .line 629
    .end local v4    # "object":Ljava/lang/Object;
    :goto_4
    goto :goto_5

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 630
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_5
    return-void
.end method

.method private GetAcText()V
    .locals 21

    .line 633
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 634
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 635
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 636
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 637
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 638
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 639
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 640
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 641
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/SettingActActvity$19;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=ac_notice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/SettingActActvity$17;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/SettingActActvity$17;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    new-instance v5, Lcom/shenma/tvlauncher/SettingActActvity$18;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/SettingActActvity$18;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/SettingActActvity$19;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 683
    return-void
.end method

.method private GetClock()V
    .locals 21

    .line 354
    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/shenma/tvlauncher/SettingActActvity;->context:Landroid/content/Context;

    const v1, 0x7f0e00f5

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 355
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 356
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 357
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 358
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 359
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 360
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 361
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 362
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 363
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/SettingActActvity$13;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=clock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/SettingActActvity$11;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/SettingActActvity$11;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    new-instance v5, Lcom/shenma/tvlauncher/SettingActActvity$12;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/SettingActActvity$12;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/SettingActActvity$13;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 404
    return-void
.end method

.method private GetInfo()V
    .locals 21

    .line 718
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 719
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 720
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 721
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 722
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 723
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 724
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 725
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 726
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/SettingActActvity$22;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=get_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/SettingActActvity$20;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/SettingActActvity$20;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    new-instance v5, Lcom/shenma/tvlauncher/SettingActActvity$21;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/SettingActActvity$21;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/SettingActActvity$22;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 768
    return-void
.end method

.method private Getfen()V
    .locals 21

    .line 494
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 495
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 496
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 497
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 498
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 499
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 500
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 501
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 502
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/SettingActActvity$16;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=fen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/SettingActActvity$14;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/SettingActActvity$14;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    new-instance v5, Lcom/shenma/tvlauncher/SettingActActvity$15;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/SettingActActvity$15;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/SettingActActvity$16;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 544
    return-void
.end method

.method private Getfen(Ljava/lang/String;)V
    .locals 22
    .param p1, "gid"    # Ljava/lang/String;

    .line 259
    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/shenma/tvlauncher/SettingActActvity;->context:Landroid/content/Context;

    const v1, 0x7f0e00f5

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 260
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v13, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v13, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 261
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v13, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 262
    .local v14, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v13, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 263
    .local v15, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v13, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 264
    .local v16, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v13, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 265
    .local v17, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v13, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 266
    .local v18, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v13, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 267
    .local v19, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v13, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v20

    .line 268
    .local v20, "miType":I
    new-instance v21, Lcom/shenma/tvlauncher/SettingActActvity$10;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=get_fen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/SettingActActvity$8;

    invoke-direct {v4, v13}, Lcom/shenma/tvlauncher/SettingActActvity$8;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    new-instance v5, Lcom/shenma/tvlauncher/SettingActActvity$9;

    invoke-direct {v5, v13}, Lcom/shenma/tvlauncher/SettingActActvity$9;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v7, v20

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Lcom/shenma/tvlauncher/SettingActActvity$10;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v13, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 309
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/SettingActActvity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 48
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->GetInfo()V

    return-void
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/SettingActActvity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 48
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->FenList()V

    return-void
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 48
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->loadImg()V

    return-void
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 48
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_1()V

    return-void
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 48
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_2()V

    return-void
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 48
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_3()V

    return-void
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 48
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_4()V

    return-void
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 48
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_clock()V

    return-void
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 48
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_inv()V

    return-void
.end method

.method private initData()V
    .locals 0

    .line 487
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->Getfen()V

    .line 488
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->GetAcText()V

    .line 489
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->GetInfo()V

    .line 490
    return-void
.end method

.method private loadImg()V
    .locals 2

    .line 827
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_iv_pay_ecode:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 828
    return-void
.end method

.method private vip_goods_r_1()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "gid":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->Getfen(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private vip_goods_r_2()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "gid":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->Getfen(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private vip_goods_r_3()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_3:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "gid":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->Getfen(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private vip_goods_r_4()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_4:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "gid":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->Getfen(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private vip_root_clock()V
    .locals 0

    .line 242
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->GetClock()V

    .line 243
    return-void
.end method

.method private vip_root_inv()V
    .locals 4

    .line 247
    const-string v0, "login_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 248
    .local v0, "login_type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 249
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shenma/tvlauncher/SettingInvActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/SettingActActvity;->startActivity(Landroid/content/Intent;)V

    .line 250
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/shenma/tvlauncher/SettingActActvity;->overridePendingTransition(II)V

    .line 251
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->finish()V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingActActvity;->context:Landroid/content/Context;

    const v2, 0x7f0e0038

    const v3, 0x7f07013f

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 255
    :goto_0
    return-void
.end method


# virtual methods
.method public AcTextResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .line 687
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 694
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 695
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 696
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .local v6, "miType":I
    const/4 v8, 0x0

    .line 698
    .local v8, "msg":Lorg/json/JSONObject;
    const-string v9, "msg"

    if-ne v6, v7, :cond_0

    .line 699
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v8, v7

    goto :goto_0

    .line 700
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 701
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v8, v7

    goto :goto_0

    .line 702
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 703
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v8, v7

    .line 705
    :cond_2
    :goto_0
    const-string v7, "content"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 706
    .local v7, "content":Ljava/lang/String;
    const-string v9, "qr_code_url"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 707
    .local v9, "qrCodeUrl":Ljava/lang/String;
    iput-object v9, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_url:Ljava/lang/String;

    .line 708
    iget-object v10, p0, Lcom/shenma/tvlauncher/SettingActActvity;->actishiwenzi:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    .end local v6    # "miType":I
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "msg":Lorg/json/JSONObject;
    .end local v9    # "qrCodeUrl":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 713
    nop

    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    goto :goto_1

    .line 711
    :catch_0
    move-exception v4

    .line 712
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 714
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public ClockResponse(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .line 408
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "AESIV":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 415
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 416
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 417
    .local v5, "code":I
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .local v6, "miType":I
    const/4 v8, 0x0

    .line 419
    .local v8, "msg":Ljava/lang/String;
    const/4 v9, 0x2

    const-string v10, "msg"

    if-ne v6, v7, :cond_0

    .line 420
    :try_start_1
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 421
    :cond_0
    if-ne v6, v9, :cond_1

    .line 422
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 423
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 424
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v7

    .line 426
    :cond_2
    :goto_0
    const/16 v7, 0xc8

    const-string v10, "UTF-8"

    if-ne v5, v7, :cond_3

    .line 427
    :try_start_2
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 428
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 429
    :cond_3
    const/16 v7, 0x7d

    const/4 v9, 0x7

    if-ne v5, v7, :cond_4

    .line 430
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 431
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 432
    :cond_4
    const/16 v7, 0x7f

    if-ne v5, v7, :cond_5

    .line 433
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 434
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 435
    :cond_5
    const/16 v7, 0x72

    if-ne v5, v7, :cond_6

    .line 436
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 437
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v10, "userName"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "passWord"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v10, "vip"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "fen"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "ckinfo"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 438
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 440
    :cond_6
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 441
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x6

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 445
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "miType":I
    .end local v8    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 443
    :catch_0
    move-exception v4

    .line 444
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public FenResponse(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .line 548
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 555
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 556
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 557
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .local v6, "miType":I
    const-string v8, "msg"

    if-ne v6, v7, :cond_0

    .line 559
    :try_start_1
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->fen:Ljava/lang/String;

    goto :goto_0

    .line 560
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 561
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->fen:Ljava/lang/String;

    goto :goto_0

    .line 562
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 563
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->fen:Ljava/lang/String;

    .line 565
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 569
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "miType":I
    :cond_3
    goto :goto_1

    .line 567
    :catch_0
    move-exception v4

    .line 568
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 570
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public GetfenResponse(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .line 313
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "AESIV":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 320
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 321
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 322
    .local v5, "code":I
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .local v6, "miType":I
    const/4 v8, 0x0

    .line 324
    .local v8, "msg":Ljava/lang/String;
    const-string v9, "msg"

    if-ne v6, v7, :cond_0

    .line 325
    :try_start_1
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 326
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 327
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 328
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 329
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 331
    :cond_2
    :goto_0
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 332
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 333
    :cond_3
    const/16 v7, 0x7d

    const/4 v9, 0x7

    const-string v10, "UTF-8"

    if-ne v5, v7, :cond_4

    .line 334
    :try_start_2
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 335
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 336
    :cond_4
    const/16 v7, 0x7f

    if-ne v5, v7, :cond_5

    .line 337
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 338
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 339
    :cond_5
    const/16 v7, 0x72

    if-ne v5, v7, :cond_6

    .line 340
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 341
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v10, "userName"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "passWord"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v10, "vip"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "fen"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "ckinfo"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 342
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 344
    :cond_6
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 345
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x6

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 349
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "miType":I
    .end local v8    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 347
    :catch_0
    move-exception v4

    .line 348
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public InfoResponse(Ljava/lang/String;)V
    .locals 22
    .param p1, "response"    # Ljava/lang/String;

    .line 772
    move-object/from16 v1, p0

    const-string v0, "fen"

    const-string/jumbo v2, "vip"

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 774
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 775
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 778
    .local v7, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v9, p1

    :try_start_1
    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 779
    .local v8, "jSONObject":Lorg/json/JSONObject;
    const-string v10, "code"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 780
    .local v10, "code":I
    const-string v11, "msg"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 781
    .local v11, "msg":Ljava/lang/String;
    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 782
    .local v12, "miType":I
    const/4 v14, 0x0

    .line 783
    .local v14, "jSON":Lorg/json/JSONObject;
    if-ne v12, v13, :cond_0

    .line 784
    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    invoke-static {v11, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v15

    goto :goto_0

    .line 820
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v14    # "jSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    goto/16 :goto_6

    .line 785
    .restart local v8    # "jSONObject":Lorg/json/JSONObject;
    .restart local v10    # "code":I
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "miType":I
    .restart local v14    # "jSON":Lorg/json/JSONObject;
    :cond_0
    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 786
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v11, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v13

    goto :goto_0

    .line 787
    :cond_1
    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 788
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v6, v11, v7}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v13

    .line 790
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 791
    .local v13, "vip":Ljava/lang/String;
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 792
    .local v15, "fen":Ljava/lang/String;
    move-object/from16 v16, v3

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .local v16, "RC4KEY":Ljava/lang/String;
    const/16 v3, 0xc8

    if-ne v10, v3, :cond_6

    .line 793
    :try_start_4
    iget-object v3, v1, Lcom/shenma/tvlauncher/SettingActActvity;->empower_fens:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-object v3, v1, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 795
    invoke-interface {v3, v2, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 796
    invoke-interface {v3, v0, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 797
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 799
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 800
    .local v3, "format":Ljava/text/SimpleDateFormat;
    iget-object v0, v1, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v2, v0

    .line 801
    .local v2, "time":Ljava/lang/String;
    const/16 v17, 0x0

    .line 803
    .local v17, "vipstate":I
    :try_start_5
    new-instance v0, Ljava/util/Date;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .local v18, "RSAKEY":Ljava/lang/String;
    .local v19, "AESKEY":Ljava/lang/String;
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v20
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    cmp-long v0, v5, v20

    if-gez v0, :cond_3

    .line 804
    const/4 v0, 0x1

    move/from16 v17, v0

    .end local v17    # "vipstate":I
    .local v0, "vipstate":I
    goto :goto_1

    .line 806
    .end local v0    # "vipstate":I
    .restart local v17    # "vipstate":I
    :cond_3
    const/4 v0, 0x0

    move/from16 v17, v0

    .line 810
    :goto_1
    move/from16 v0, v17

    goto :goto_3

    .line 820
    .end local v2    # "time":Ljava/lang/String;
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v13    # "vip":Ljava/lang/String;
    .end local v14    # "jSON":Lorg/json/JSONObject;
    .end local v15    # "fen":Ljava/lang/String;
    .end local v17    # "vipstate":I
    :catch_1
    move-exception v0

    goto :goto_6

    .line 808
    .restart local v2    # "time":Ljava/lang/String;
    .restart local v3    # "format":Ljava/text/SimpleDateFormat;
    .restart local v8    # "jSONObject":Lorg/json/JSONObject;
    .restart local v10    # "code":I
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "miType":I
    .restart local v13    # "vip":Ljava/lang/String;
    .restart local v14    # "jSON":Lorg/json/JSONObject;
    .restart local v15    # "fen":Ljava/lang/String;
    .restart local v17    # "vipstate":I
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v18    # "RSAKEY":Ljava/lang/String;
    .end local v19    # "AESKEY":Ljava/lang/String;
    .restart local v5    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 809
    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .local v0, "e":Ljava/text/ParseException;
    .restart local v18    # "RSAKEY":Ljava/lang/String;
    .restart local v19    # "AESKEY":Ljava/lang/String;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move/from16 v0, v17

    .line 811
    .end local v17    # "vipstate":I
    .local v0, "vipstate":I
    :goto_3
    const-string v5, "999999999"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 812
    iget-object v4, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    const v5, 0x7f0e0023

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 813
    :cond_4
    if-nez v0, :cond_5

    .line 814
    iget-object v4, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    const v5, 0x7f0e0019

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 815
    :cond_5
    const/4 v5, 0x1

    if-ne v0, v5, :cond_7

    .line 816
    iget-object v5, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 820
    .end local v0    # "vipstate":I
    .end local v2    # "time":Ljava/lang/String;
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v13    # "vip":Ljava/lang/String;
    .end local v14    # "jSON":Lorg/json/JSONObject;
    .end local v15    # "fen":Ljava/lang/String;
    .end local v18    # "RSAKEY":Ljava/lang/String;
    .end local v19    # "AESKEY":Ljava/lang/String;
    .restart local v5    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .restart local v18    # "RSAKEY":Ljava/lang/String;
    .restart local v19    # "AESKEY":Ljava/lang/String;
    goto :goto_6

    .line 792
    .end local v18    # "RSAKEY":Ljava/lang/String;
    .end local v19    # "AESKEY":Ljava/lang/String;
    .restart local v5    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    .restart local v8    # "jSONObject":Lorg/json/JSONObject;
    .restart local v10    # "code":I
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "miType":I
    .restart local v13    # "vip":Ljava/lang/String;
    .restart local v14    # "jSON":Lorg/json/JSONObject;
    .restart local v15    # "fen":Ljava/lang/String;
    :cond_6
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 822
    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v13    # "vip":Ljava/lang/String;
    .end local v14    # "jSON":Lorg/json/JSONObject;
    .end local v15    # "fen":Ljava/lang/String;
    .restart local v18    # "RSAKEY":Ljava/lang/String;
    .restart local v19    # "AESKEY":Ljava/lang/String;
    :cond_7
    :goto_4
    goto :goto_7

    .line 820
    .end local v16    # "RC4KEY":Ljava/lang/String;
    .end local v18    # "RSAKEY":Ljava/lang/String;
    .end local v19    # "AESKEY":Ljava/lang/String;
    .local v3, "RC4KEY":Ljava/lang/String;
    .restart local v5    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v9, p1

    :goto_5
    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 821
    .end local v3    # "RC4KEY":Ljava/lang/String;
    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "RC4KEY":Ljava/lang/String;
    .restart local v18    # "RSAKEY":Ljava/lang/String;
    .restart local v19    # "AESKEY":Ljava/lang/String;
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 823
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method protected findViewById()V
    .locals 2

    .line 138
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07015b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->account:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_fens:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_iv_pay_ecode:Landroid/widget/ImageView;

    .line 143
    const v0, 0x7f0802de

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_1_message:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0802e0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_1_title:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0802df

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_1_price:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0802f7

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_1:Landroid/widget/LinearLayout;

    .line 147
    const v0, 0x7f0802ee

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    .line 148
    const v0, 0x7f0802ea

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_1:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0802e1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_2_message:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0802e3

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_2_title:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0802e2

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_2_price:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0802f8

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_2:Landroid/widget/LinearLayout;

    .line 153
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    .line 154
    const v0, 0x7f0802eb

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_2:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0802e4

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_3_message:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0802e6

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_3_title:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0802e5

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_3_price:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0802f9

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_3:Landroid/widget/LinearLayout;

    .line 159
    const v0, 0x7f0802f0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    .line 160
    const v0, 0x7f0802ec

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_3:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0802e7

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_4_message:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0802e9

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_4_title:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0802e8

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_4_price:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0802fa

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_4:Landroid/widget/LinearLayout;

    .line 165
    const v0, 0x7f0802f1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    .line 166
    const v0, 0x7f0802ed

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_4:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    const v0, 0x7f0802f4

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_clock:Landroid/widget/RelativeLayout;

    .line 178
    const v0, 0x7f0802dc

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_clock:Landroid/widget/LinearLayout;

    .line 179
    const v0, 0x7f0802f6

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_inv:Landroid/widget/RelativeLayout;

    .line 180
    const v0, 0x7f0802f2

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_inv:Landroid/widget/LinearLayout;

    .line 181
    const v0, 0x7f0802d9

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_ac:Landroid/widget/LinearLayout;

    .line 182
    const v0, 0x7f0802da

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_acno:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->actishiwenzi:Landroid/widget/TextView;

    .line 184
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingActActvity$2;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingActActvity$2;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingActActvity$3;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingActActvity$3;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingActActvity$4;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingActActvity$4;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingActActvity$5;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingActActvity$5;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_clock:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingActActvity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingActActvity$6;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_inv:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingActActvity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingActActvity$7;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method protected initView()V
    .locals 9

    .line 450
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->account:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->account:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "userName"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_fens:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_fens:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    const-string v5, "fen"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->account:Landroid/widget/TextView;

    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 458
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_fens:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 459
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 460
    return-void

    .line 463
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, "format":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "vip"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "time":Ljava/lang/String;
    const/4 v2, 0x0

    .line 467
    .local v2, "vipstate":I
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    .line 468
    const/4 v2, 0x1

    goto :goto_0

    .line 470
    :cond_1
    const/4 v2, 0x0

    .line 474
    :goto_0
    goto :goto_1

    .line 472
    :catch_0
    move-exception v3

    .line 473
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 475
    .end local v3    # "e":Ljava/text/ParseException;
    :goto_1
    const-string v3, "999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    const v4, 0x7f0e0023

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 477
    :cond_2
    if-nez v2, :cond_3

    .line 478
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    const v4, 0x7f0e0019

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 479
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 480
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :cond_4
    :goto_2
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 862
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 857
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onBackPressed()V

    .line 858
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 129
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById()V

    .line 132
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->initView()V

    .line 133
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->initData()V

    .line 134
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 851
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 852
    const-string v0, "SettingActActvity"

    const-string v1, "SettingActActvity....onPause"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 836
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 837
    const-string v0, "SettingActActvity"

    const-string v1, "SettingActActvity....onStart"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 842
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 843
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 846
    :cond_0
    const-string v0, "SettingActActvity"

    const-string v1, "SettingActActvity....onStop"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 832
    return-void
.end method
