.class public Lcom/shenma/tvlauncher/fragment/RecommendFragment;
.super Lcom/shenma/tvlauncher/fragment/BaseFragment;
.source "RecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyLooseFocusAnimListenter;,
        Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;,
        Lcom/shenma/tvlauncher/fragment/RecommendFragment$WindowMessageID;
    }
.end annotation


# static fields
.field public static Sp:Landroid/content/SharedPreferences;


# instance fields
.field private final TAG:Ljava/lang/String;

.field animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Intent;

.field public imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private jb_1:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

.field private jb_2:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

.field private jb_3:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

.field private jb_4:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

.field private jb_5:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

.field private jb_6:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private final mediaHandler:Landroid/os/Handler;

.field private re_fls:[Landroid/widget/FrameLayout;

.field public re_typeLogs:[Landroid/widget/ImageView;

.field private re_typebgs:[I

.field private rebgs:[Landroid/widget/ImageView;

.field protected sp:Landroid/content/SharedPreferences;

.field private trystate:I

.field private tv_intro:Landroid/widget/TextView;

.field private tvs:[Landroid/widget/TextView;

.field private view:Landroid/view/View;

.field private vipstate:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 73
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;-><init>()V

    .line 74
    const-string v0, "RecommendFragment"

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->TAG:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    .line 83
    new-instance v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$1;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    .line 124
    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tv_intro:Landroid/widget/TextView;

    .line 128
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Trystate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->trystate:I

    return-void
.end method

.method private GetMotion(I)V
    .locals 18
    .param p1, "position"    # I

    .line 1306
    move-object/from16 v12, p0

    const-string/jumbo v13, "vip"

    const-string v14, ""

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    .line 1309
    .local v15, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, v12, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v13, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    iget-object v0, v12, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v13, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "999999999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1312
    :cond_0
    const/4 v0, 0x0

    iput v0, v12, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->vipstate:I

    goto :goto_2

    .line 1310
    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput v0, v12, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->vipstate:I

    .line 1314
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1315
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-static {v0, v1, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1316
    .local v0, "User_url":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v2, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1317
    .local v7, "RC4KEY":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v2, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1318
    .local v8, "RSAKEY":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v2, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1319
    .local v9, "AESKEY":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v2, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1320
    .local v10, "AESIV":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v1, v2, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1321
    .local v11, "Appkey":Ljava/lang/String;
    new-instance v16, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/api.php?app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&act=motion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/fragment/RecommendFragment$5;

    move/from16 v6, p1

    invoke-direct {v5, v12, v6}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$5;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;I)V

    new-instance v2, Lcom/shenma/tvlauncher/fragment/RecommendFragment$6;

    invoke-direct {v2, v12}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$6;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)V

    move-object/from16 v1, v16

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v11}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 1362
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, v12, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    return-void

    .line 1364
    .end local v0    # "User_url":Ljava/lang/String;
    .end local v1    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v7    # "RC4KEY":Ljava/lang/String;
    .end local v8    # "RSAKEY":Ljava/lang/String;
    .end local v9    # "AESKEY":Ljava/lang/String;
    .end local v10    # "AESIV":Ljava/lang/String;
    .end local v11    # "Appkey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1365
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1366
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 73
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/shenma/tvlauncher/fragment/RecommendFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/RecommendFragment;
    .param p1, "x1"    # Ljava/util/List;

    .line 73
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 73
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/fragment/RecommendFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/RecommendFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setTypeImage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 73
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    .line 73
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 301
    new-instance v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$4;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)V

    return-object v0
.end method

.method private createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/domain/Recommend;",
            ">;"
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Home_text_shadow"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, "Home_text_shadow":I
    new-instance v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$3;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;I)V

    return-object v1
.end method

.method private flyAnimation(I)V
    .locals 10
    .param p1, "paramInt"    # I

    .line 523
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 524
    .local v1, "location":[I
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 525
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 526
    .local v2, "width":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 527
    .local v3, "height":I
    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v4, v4

    .line 528
    .local v4, "x":F
    const/4 v5, 0x1

    aget v6, v1, v5

    int-to-float v6, v6

    .line 529
    .local v6, "y":F
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "paramInt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "..x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "...y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "joychang"

    invoke-static {v8, v7}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const v7, 0x7f0601b2

    const v8, 0x7f0602e9

    const/16 v9, 0x3e8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 633
    :pswitch_0
    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v5, v9, :cond_0

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v5, v9, :cond_0

    .line 635
    add-int/lit8 v5, v2, 0x11

    add-int/lit8 v2, v5, 0xa

    .line 636
    add-int/lit8 v5, v3, 0xc

    add-int/lit8 v3, v5, 0x5

    .line 637
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06001f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x49

    int-to-float v4, v5

    .line 638
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0602ad

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v6, v5

    goto/16 :goto_0

    .line 640
    :cond_0
    add-int/lit8 v2, v2, 0x11

    .line 641
    add-int/lit8 v3, v3, 0xe

    .line 642
    const v4, 0x44816000    # 1035.0f

    .line 643
    const/high16 v6, 0x43ce0000    # 412.0f

    goto/16 :goto_0

    .line 619
    :pswitch_1
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v0, v9, :cond_1

    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v0, v9, :cond_1

    .line 621
    add-int/lit8 v0, v2, 0x11

    add-int/lit8 v2, v0, 0xa

    .line 622
    add-int/lit8 v0, v3, 0xc

    add-int/lit8 v3, v0, 0x5

    .line 623
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f06001f

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x49

    int-to-float v4, v0

    .line 624
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0601be

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v5

    int-to-float v6, v0

    goto/16 :goto_0

    .line 626
    :cond_1
    add-int/lit8 v2, v2, 0x11

    .line 627
    add-int/lit8 v3, v3, 0xe

    .line 628
    const v4, 0x44816000    # 1035.0f

    .line 629
    const/high16 v6, 0x43450000    # 197.0f

    .line 631
    goto/16 :goto_0

    .line 605
    :pswitch_2
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v0, v9, :cond_2

    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v0, v9, :cond_2

    .line 607
    add-int/lit8 v0, v2, 0xf

    add-int/lit8 v2, v0, 0x8

    .line 608
    add-int/lit8 v0, v3, 0x16

    add-int/lit8 v3, v0, 0xd

    .line 609
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f060406

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    int-to-float v4, v0

    .line 610
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f06022e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    int-to-float v6, v0

    goto/16 :goto_0

    .line 612
    :cond_2
    add-int/lit8 v2, v2, 0x12

    .line 613
    add-int/lit8 v3, v3, 0x1a

    .line 614
    const v4, 0x44364000    # 729.0f

    .line 615
    const/high16 v6, 0x43980000    # 304.0f

    .line 617
    goto/16 :goto_0

    .line 591
    :pswitch_3
    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v5, v9, :cond_3

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v5, v9, :cond_3

    .line 593
    add-int/lit8 v5, v2, 0xd

    add-int/lit8 v2, v5, 0x6

    .line 594
    add-int/lit8 v5, v3, 0x7

    add-int/lit8 v3, v5, 0x5

    .line 595
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0602e0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v4, v5

    .line 596
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0602c4

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    int-to-float v6, v0

    goto/16 :goto_0

    .line 598
    :cond_3
    add-int/lit8 v2, v2, 0xd

    .line 599
    add-int/lit8 v3, v3, 0x8

    .line 600
    const/high16 v4, 0x43e50000    # 458.0f

    .line 601
    const/high16 v6, 0x43de0000    # 444.0f

    .line 603
    goto/16 :goto_0

    .line 577
    :pswitch_4
    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v5, v9, :cond_4

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v5, v9, :cond_4

    .line 579
    add-int/lit8 v5, v2, 0xd

    add-int/lit8 v2, v5, 0x6

    .line 580
    add-int/lit8 v5, v3, 0x7

    add-int/lit8 v3, v5, 0x5

    .line 581
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0601da

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v4, v5

    .line 582
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0602c4

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    int-to-float v6, v0

    goto/16 :goto_0

    .line 584
    :cond_4
    add-int/lit8 v2, v2, 0xd

    .line 585
    add-int/lit8 v3, v3, 0x8

    .line 586
    const/high16 v4, 0x43580000    # 216.0f

    .line 587
    const/high16 v6, 0x43de0000    # 444.0f

    .line 589
    goto/16 :goto_0

    .line 563
    :pswitch_5
    iget v7, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v7, v9, :cond_5

    iget v7, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v7, v9, :cond_5

    .line 565
    add-int/lit8 v7, v2, 0x18

    add-int/lit8 v2, v7, 0xe

    .line 566
    add-int/lit8 v7, v3, 0xd

    add-int/lit8 v3, v7, 0x8

    .line 567
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060265

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v7, v0

    int-to-float v4, v7

    .line 568
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0601e1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v5

    int-to-float v6, v0

    goto/16 :goto_0

    .line 570
    :cond_5
    add-int/lit8 v2, v2, 0x18

    .line 571
    add-int/lit8 v3, v3, 0x10

    .line 572
    const/high16 v4, 0x43ab0000    # 342.0f

    .line 573
    const/high16 v6, 0x43650000    # 229.0f

    .line 575
    goto/16 :goto_0

    .line 553
    :pswitch_6
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v0, v9, :cond_6

    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v0, v9, :cond_6

    .line 555
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    .line 556
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0602be

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v0, v5

    int-to-float v6, v0

    goto :goto_0

    .line 558
    :cond_6
    const/high16 v4, 0x41a80000    # 21.0f

    .line 559
    const v6, 0x43d68000    # 429.0f

    .line 561
    goto :goto_0

    .line 542
    :pswitch_7
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v0, v9, :cond_7

    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v0, v9, :cond_7

    .line 544
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f060223

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    int-to-float v6, v0

    .line 545
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    goto :goto_0

    .line 547
    :cond_7
    const/high16 v6, 0x43950000    # 298.0f

    .line 548
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    .line 551
    goto :goto_0

    .line 532
    :pswitch_8
    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mHeight:I

    if-le v0, v9, :cond_8

    iget v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mWidth:I

    if-le v0, v9, :cond_8

    .line 534
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    .line 535
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f06019c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    int-to-float v6, v0

    goto :goto_0

    .line 537
    :cond_8
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    .line 538
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f06017f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v6, v0

    .line 540
    nop

    .line 648
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "---Y="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "RecommendFragment"

    invoke-static {v5, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/shenma/tvlauncher/HomeActivity;->flyWhiteBorder(IIFF)V

    .line 650
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private init()V
    .locals 0

    .line 219
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->loadViewLayout()V

    .line 220
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->findViewById()V

    .line 221
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->setListener()V

    .line 223
    return-void
.end method

.method private initData()V
    .locals 10

    .line 227
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Api_url"

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "Api_url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "BASE_HOST"

    invoke-static {v2, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "BASE_HOST":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    new-instance v3, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v3}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v2, v3}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    .line 230
    invoke-static {}, Lcom/shenma/tvlauncher/application/MyVolley;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 231
    new-instance v2, Lcom/shenma/tvlauncher/fragment/RecommendFragment$2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/api.php/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/top"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/shenma/tvlauncher/domain/Recommend;

    .line 232
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v8

    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v9

    const/4 v5, 0x1

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$2;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 259
    .local v2, "mRecommend":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/domain/Recommend;>;"
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 260
    return-void
.end method

.method private setTypeImage(ILjava/lang/String;)V
    .locals 4
    .param p1, "paramInt"    # I
    .param p2, "paramUrl"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    aget v3, v2, p1

    aget v2, v2, p1

    .line 294
    invoke-static {v1, v3, v2}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    .line 293
    invoke-virtual {v0, p2, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 297
    return-void
.end method

.method private showLooseFocusTranslAinimation(I)V
    .locals 13
    .param p1, "paramInt"    # I

    .line 798
    const/4 v0, 0x0

    .line 799
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    .line 800
    .local v1, "mtAnimation":Landroid/view/animation/Animation;
    const/4 v2, 0x0

    .line 801
    .local v2, "msAnimation":Landroid/view/animation/Animation;
    const/4 v3, 0x0

    .line 802
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "Interface_Style"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 803
    .local v4, "Interface_Style":I
    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    const/4 v8, 0x3

    if-ne v4, v8, :cond_0

    goto/16 :goto_0

    .line 838
    :cond_0
    if-ne v4, v5, :cond_1

    .line 840
    packed-switch p1, :pswitch_data_0

    .line 884
    goto/16 :goto_1

    .line 881
    :pswitch_0
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 882
    goto/16 :goto_1

    .line 878
    :pswitch_1
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 879
    goto/16 :goto_1

    .line 874
    :pswitch_2
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 876
    goto/16 :goto_1

    .line 870
    :pswitch_3
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 872
    goto/16 :goto_1

    .line 866
    :pswitch_4
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 868
    goto/16 :goto_1

    .line 862
    :pswitch_5
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 864
    goto/16 :goto_1

    .line 858
    :pswitch_6
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 860
    goto/16 :goto_1

    .line 854
    :pswitch_7
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 856
    goto/16 :goto_1

    .line 851
    :pswitch_8
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 852
    goto/16 :goto_1

    .line 847
    :pswitch_9
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 848
    goto/16 :goto_1

    .line 843
    :pswitch_a
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 844
    goto/16 :goto_1

    .line 887
    :cond_1
    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    .line 889
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 930
    :pswitch_b
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 931
    goto/16 :goto_1

    .line 927
    :pswitch_c
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 928
    goto/16 :goto_1

    .line 923
    :pswitch_d
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 925
    goto/16 :goto_1

    .line 919
    :pswitch_e
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 921
    goto/16 :goto_1

    .line 915
    :pswitch_f
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 917
    goto/16 :goto_1

    .line 911
    :pswitch_10
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 913
    goto/16 :goto_1

    .line 907
    :pswitch_11
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 909
    goto/16 :goto_1

    .line 903
    :pswitch_12
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 905
    goto :goto_1

    .line 900
    :pswitch_13
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 901
    goto :goto_1

    .line 896
    :pswitch_14
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 897
    goto :goto_1

    .line 892
    :pswitch_15
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v7, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 893
    goto :goto_1

    .line 805
    :cond_2
    :goto_0
    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, -0x3ee00000    # -10.0f

    const/high16 v10, -0x3f600000    # -5.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v12, -0x3e600000    # -20.0f

    packed-switch p1, :pswitch_data_2

    .line 835
    goto :goto_1

    .line 831
    :pswitch_16
    iget-object v9, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v9, v8, v7, v11, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 832
    goto :goto_1

    .line 828
    :pswitch_17
    iget-object v9, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v9, v8, v7, v10, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 829
    goto :goto_1

    .line 825
    :pswitch_18
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {v8, v9, v7, v7, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 826
    goto :goto_1

    .line 822
    :pswitch_19
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v9, v7, v11, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 823
    goto :goto_1

    .line 819
    :pswitch_1a
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v12, v7, v11, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 820
    goto :goto_1

    .line 816
    :pswitch_1b
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v9, v7, v10, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 817
    goto :goto_1

    .line 813
    :pswitch_1c
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v12, v7, v11, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 814
    goto :goto_1

    .line 810
    :pswitch_1d
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v12, v7, v6, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 811
    goto :goto_1

    .line 807
    :pswitch_1e
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v8, v12, v7, v10, v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 808
    nop

    .line 938
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const v8, 0x3f866666    # 1.05f

    invoke-virtual {v7, v8, v6, v8, v6}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->ScaleAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    .line 939
    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v3, v6

    .line 940
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 941
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 942
    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 944
    new-instance v5, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyLooseFocusAnimListenter;

    invoke-direct {v5, p0, p1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyLooseFocusAnimListenter;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;I)V

    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 949
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    aget-object v5, v5, p1

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 950
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 951
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method private showOnFocusTranslAnimation(I)V
    .locals 11
    .param p1, "paramInt"    # I

    .line 659
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 660
    const/4 v0, 0x0

    .line 661
    .local v0, "mtAnimation":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    .line 663
    .local v1, "msAnimation":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Interface_Style"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 664
    .local v2, "Interface_Style":I
    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    goto/16 :goto_0

    .line 697
    :cond_0
    if-ne v2, v3, :cond_1

    .line 699
    packed-switch p1, :pswitch_data_0

    .line 734
    goto/16 :goto_1

    .line 731
    :pswitch_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 732
    goto/16 :goto_1

    .line 728
    :pswitch_1
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 729
    goto/16 :goto_1

    .line 725
    :pswitch_2
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 726
    goto/16 :goto_1

    .line 722
    :pswitch_3
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 723
    goto/16 :goto_1

    .line 719
    :pswitch_4
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 720
    goto/16 :goto_1

    .line 716
    :pswitch_5
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 717
    goto/16 :goto_1

    .line 713
    :pswitch_6
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 714
    goto/16 :goto_1

    .line 710
    :pswitch_7
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 711
    goto/16 :goto_1

    .line 707
    :pswitch_8
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 708
    goto/16 :goto_1

    .line 704
    :pswitch_9
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 705
    goto/16 :goto_1

    .line 701
    :pswitch_a
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 702
    goto/16 :goto_1

    .line 736
    :cond_1
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    .line 738
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 770
    :pswitch_b
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 771
    goto/16 :goto_1

    .line 767
    :pswitch_c
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 768
    goto/16 :goto_1

    .line 764
    :pswitch_d
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 765
    goto/16 :goto_1

    .line 761
    :pswitch_e
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 762
    goto/16 :goto_1

    .line 758
    :pswitch_f
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 759
    goto/16 :goto_1

    .line 755
    :pswitch_10
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 756
    goto/16 :goto_1

    .line 752
    :pswitch_11
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 753
    goto/16 :goto_1

    .line 749
    :pswitch_12
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 750
    goto :goto_1

    .line 746
    :pswitch_13
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 747
    goto :goto_1

    .line 743
    :pswitch_14
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 744
    goto :goto_1

    .line 740
    :pswitch_15
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 741
    goto :goto_1

    .line 666
    :cond_2
    :goto_0
    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, -0x3ee00000    # -10.0f

    const/high16 v8, -0x3f600000    # -5.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, -0x3e600000    # -20.0f

    packed-switch p1, :pswitch_data_2

    .line 695
    goto :goto_1

    .line 692
    :pswitch_16
    iget-object v7, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v7, v5, v6, v5, v9}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 693
    goto :goto_1

    .line 689
    :pswitch_17
    iget-object v7, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v7, v5, v6, v5, v8}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 690
    goto :goto_1

    .line 686
    :pswitch_18
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v6, v5, v7, v5, v5}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 687
    goto :goto_1

    .line 683
    :pswitch_19
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v7, v5, v9}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 684
    goto :goto_1

    .line 680
    :pswitch_1a
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v10, v5, v9}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 681
    goto :goto_1

    .line 677
    :pswitch_1b
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v7, v5, v8}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 678
    goto :goto_1

    .line 674
    :pswitch_1c
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v10, v5, v9}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 675
    goto :goto_1

    .line 671
    :pswitch_1d
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v10, v5, v4}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 672
    goto :goto_1

    .line 668
    :pswitch_1e
    iget-object v6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v6, v5, v10, v5, v8}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->translAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 669
    nop

    .line 777
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const v6, 0x3f866666    # 1.05f

    invoke-virtual {v5, v4, v6, v4, v6}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->ScaleAnimation(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 778
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 779
    .local v4, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 780
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 781
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 783
    new-instance v3, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;

    invoke-direct {v3, p0, p1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment$MyOnFocusAnimListenter;-><init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;I)V

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 787
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    aget-object v3, v3, p1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 790
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method private startOpenOrDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "apkurl"    # Ljava/lang/String;
    .param p2, "packName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 962
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->packLst:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 963
    .local v1, "pack":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 966
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 967
    return-void

    .line 969
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pack":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/utils/Utils;->startCheckLoaclApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 973
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/shenma/tvlauncher/utils/Utils;->startDownloadApk(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 975
    :cond_2
    return-void
.end method


# virtual methods
.method public GetMotionResponse(Ljava/lang/String;I)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 1376
    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1377
    .local v3, "RC4KEY":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v0, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1378
    .local v5, "RSAKEY":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v0, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1379
    .local v6, "AESKEY":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v0, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1382
    .local v4, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1383
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1384
    .local v8, "code":I
    const/16 v9, 0xc8

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    const-string/jumbo v13, "vip"

    if-ne v8, v9, :cond_3

    .line 1385
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v9, v14, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1386
    .local v9, "miType":I
    const/4 v14, 0x0

    .line 1387
    .local v14, "msg":Lorg/json/JSONObject;
    const-string v15, "msg"

    if-ne v9, v12, :cond_0

    .line 1388
    :try_start_3
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v11

    goto :goto_0

    .line 1389
    :cond_0
    if-ne v9, v10, :cond_1

    .line 1390
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v11

    goto :goto_0

    .line 1391
    :cond_1
    if-ne v9, v11, :cond_2

    .line 1392
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15, v4}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v11

    .line 1394
    :cond_2
    :goto_0
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1395
    .local v11, "vip":Ljava/lang/String;
    const-string v15, "Try"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 1396
    .local v15, "Try":I
    const-string v10, "Clientmode"

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 1397
    .local v10, "Clientmode":I
    iput v15, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->trystate:I

    .line 1398
    iget-object v12, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1399
    sget-object v12, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Sp:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "Submission_method"

    .line 1400
    invoke-interface {v12, v13, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "Trystate"

    .line 1401
    invoke-interface {v12, v13, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1402
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1403
    nop

    .end local v9    # "miType":I
    .end local v10    # "Clientmode":I
    .end local v11    # "vip":Ljava/lang/String;
    .end local v14    # "msg":Lorg/json/JSONObject;
    .end local v15    # "Try":I
    goto/16 :goto_1

    :cond_3
    const/16 v9, 0x7f

    const-string v10, "ckinfo"

    const-string v12, "fen"

    const-string v14, "passWord"

    const-string/jumbo v15, "userName"

    if-ne v8, v9, :cond_4

    .line 1404
    :try_start_4
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1405
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1406
    return-void

    .line 1407
    :cond_4
    const/16 v11, 0x72

    if-ne v8, v11, :cond_5

    .line 1408
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1409
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1410
    return-void

    .line 1411
    :cond_5
    const/16 v11, 0x7d

    if-ne v8, v11, :cond_6

    .line 1412
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x7

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1413
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1414
    return-void

    .line 1415
    :cond_6
    if-ne v8, v9, :cond_7

    .line 1416
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1417
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1418
    return-void

    .line 1419
    :cond_7
    const/16 v9, 0xc9

    const/4 v10, 0x5

    if-ne v8, v9, :cond_8

    .line 1420
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1421
    return-void

    .line 1422
    :cond_8
    const/16 v9, 0x6a

    if-ne v8, v9, :cond_9

    .line 1423
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1424
    return-void

    .line 1426
    :cond_9
    :goto_1
    iget v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->vipstate:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->trystate:I

    if-ne v9, v10, :cond_a

    goto :goto_2

    .line 1434
    :cond_a
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1427
    :cond_b
    :goto_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    .line 1428
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    iget-object v10, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v11, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1429
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    const-string v10, "nextlink"

    iget-object v11, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjurl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1430
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    const-string/jumbo v10, "vodstate"

    iget-object v11, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getState()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    const-string/jumbo v10, "vodtype"

    iget-object v11, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjtype()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1432
    iget-object v9, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->i:Landroid/content/Intent;

    invoke-virtual {v1, v9}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1439
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v8    # "code":I
    :goto_3
    goto :goto_5

    .line 1437
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v7, p1

    .line 1438
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method protected findViewById()V
    .locals 16

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v3, 0x7f0800b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 342
    iget-object v1, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v4, 0x7f0800ba

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 343
    iget-object v1, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v5, 0x7f0800bc

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 344
    iget-object v1, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v6, 0x7f0800bd

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 345
    iget-object v1, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v7, 0x7f0800be

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 346
    iget-object v1, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v8, 0x7f0800bf

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Interface_Style"

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 349
    .local v1, "Interface_Style":I
    const/4 v2, 0x7

    const/4 v9, 0x6

    const/16 v10, 0x8

    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_1

    if-ne v1, v6, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    goto :goto_1

    .line 350
    :cond_1
    :goto_0
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0800c0

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    aput-object v12, v11, v9

    .line 351
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0800c1

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    aput-object v12, v11, v2

    .line 352
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0800c2

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    aput-object v12, v11, v10

    .line 359
    :goto_1
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0800fc

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v3

    .line 360
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0800fd

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v4

    .line 361
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0800ff

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v5

    .line 362
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f080100

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v6

    .line 363
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f080101

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v7

    .line 364
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f080102

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v8

    .line 366
    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_3

    if-ne v1, v6, :cond_2

    goto :goto_2

    .line 370
    :cond_2
    goto :goto_3

    .line 367
    :cond_3
    :goto_2
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f080103

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v9

    .line 368
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f080104

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v2

    .line 369
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f080105

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v11, v10

    .line 375
    :goto_3
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v12, 0x7f080117

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    iput-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_1:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    .line 376
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v12, 0x7f080118

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    iput-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_2:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    .line 377
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v12, 0x7f080119

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    iput-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_3:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    .line 378
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v12, 0x7f08011a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    iput-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_4:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    .line 379
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v12, 0x7f08011b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    iput-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_5:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    .line 380
    iget-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v12, 0x7f08011c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    iput-object v11, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_6:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-string v12, "CornerLabelView"

    invoke-static {v11, v12, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    .line 382
    .local v11, "CornerLabelView":I
    if-ne v11, v4, :cond_4

    .line 383
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_1:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setVisibility(I)V

    .line 384
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_2:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setVisibility(I)V

    .line 385
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_3:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setVisibility(I)V

    .line 386
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_4:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setVisibility(I)V

    .line 387
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_5:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setVisibility(I)V

    .line 388
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->jb_6:Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;

    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/view/cornerlabelview/CornerLabelView;->setVisibility(I)V

    .line 390
    :cond_4
    if-ne v1, v4, :cond_5

    .line 392
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v13, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v14, 0x7f0800c3

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    const/16 v14, 0x9

    aput-object v13, v12, v14

    .line 393
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    iget-object v13, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v15, 0x7f0800bb

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    const/16 v15, 0xa

    aput-object v13, v12, v15

    .line 394
    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v10, 0x7f080106

    invoke-virtual {v13, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    aput-object v10, v12, v14

    .line 395
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0800fe

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v10, v15

    .line 396
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0801b3

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v10, v14

    .line 397
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v10, v15

    goto :goto_4

    .line 398
    :cond_5
    nop

    .line 401
    :goto_4
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    const v12, 0x7f070086

    aput v12, v10, v3

    .line 402
    aput v12, v10, v4

    .line 403
    aput v12, v10, v5

    .line 404
    aput v12, v10, v6

    .line 405
    aput v12, v10, v7

    .line 406
    aput v12, v10, v8

    .line 407
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0801a9

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v10, v3

    .line 408
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0801aa

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v10, v4

    .line 409
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0801ac

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v10, v5

    .line 410
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0801ad

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v10, v6

    .line 411
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0801ae

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v10, v7

    .line 412
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0801af

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v10, v8

    .line 414
    if-eqz v1, :cond_7

    if-eq v1, v4, :cond_7

    if-ne v1, v6, :cond_6

    goto :goto_5

    .line 418
    :cond_6
    goto :goto_6

    .line 415
    :cond_7
    :goto_5
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0801b0

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    aput-object v12, v10, v9

    .line 416
    iget-object v9, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v12, 0x7f0801b1

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    aput-object v10, v9, v2

    .line 417
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v10, 0x7f0801b2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const/16 v10, 0x8

    aput-object v9, v2, v10

    .line 425
    :goto_6
    const v2, 0x7f0802a6

    const v9, 0x7f0802a5

    if-eqz v1, :cond_9

    if-eq v1, v4, :cond_9

    if-ne v1, v6, :cond_8

    goto :goto_7

    .line 432
    :cond_8
    if-ne v1, v5, :cond_a

    .line 433
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v13, 0x7f0802a2

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    aput-object v12, v10, v3

    .line 434
    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v12, 0x7f0802a3

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    aput-object v10, v3, v4

    .line 435
    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v4, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v10, 0x7f0802a4

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v3, v5

    .line 436
    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v4, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v3, v6

    .line 437
    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v4, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v7

    .line 438
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v4, 0x7f0802a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v8

    goto :goto_8

    .line 426
    :cond_9
    :goto_7
    iget-object v10, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v12, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v10, v3

    .line 427
    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v9, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v4

    .line 428
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v4, 0x7f0802a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v5

    .line 429
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v4, 0x7f0802a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v6

    .line 430
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v4, 0x7f0802a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v7

    .line 431
    iget-object v2, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    iget-object v3, v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    const v4, 0x7f0802aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v8

    .line 442
    :cond_a
    :goto_8
    return-void
.end method

.method protected loadViewLayout()V
    .locals 4

    .line 315
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Interface_Style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 316
    .local v0, "Interface_Style":I
    const/4 v1, 0x6

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 324
    const/16 v2, 0xb

    new-array v3, v2, [Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    .line 325
    new-array v3, v2, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    .line 326
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    .line 327
    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    goto :goto_1

    .line 328
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 330
    new-array v2, v1, [Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    .line 331
    new-array v2, v1, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    .line 332
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    .line 333
    new-array v2, v1, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    goto :goto_1

    .line 318
    :cond_2
    :goto_0
    const/16 v2, 0x9

    new-array v3, v2, [Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_fls:[Landroid/widget/FrameLayout;

    .line 319
    new-array v3, v2, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    .line 320
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typebgs:[I

    .line 321
    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    .line 335
    :cond_3
    :goto_1
    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    .line 336
    new-instance v1, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-direct {v1}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    .line 337
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .line 981
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string/jumbo v8, "userName"

    const-string v9, "Interface_Style"

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 1204
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1205
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v2, Lcom/shenma/tvlauncher/ClearActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1206
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 1207
    goto/16 :goto_6

    .line 1194
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, "username":Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez v0, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1197
    goto/16 :goto_6

    .line 1200
    :cond_0
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    .line 1201
    goto/16 :goto_6

    .line 1185
    .end local v0    # "username":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    .restart local v0    # "username":Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez v0, :cond_1

    .line 1187
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1188
    goto/16 :goto_6

    .line 1191
    :cond_1
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    .line 1192
    goto/16 :goto_6

    .line 1176
    .end local v0    # "username":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    .restart local v0    # "username":Ljava/lang/String;
    if-nez v0, :cond_2

    if-nez v0, :cond_2

    .line 1178
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1179
    goto/16 :goto_6

    .line 1182
    :cond_2
    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    .line 1183
    goto/16 :goto_6

    .line 1148
    .end local v0    # "username":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 1157
    :cond_3
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 1158
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    .restart local v0    # "username":Ljava/lang/String;
    if-nez v0, :cond_4

    if-nez v0, :cond_4

    .line 1160
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1161
    goto/16 :goto_6

    .line 1164
    :cond_4
    invoke-direct {p0, v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1165
    .end local v0    # "username":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_23

    .line 1167
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    .restart local v0    # "username":Ljava/lang/String;
    if-nez v0, :cond_6

    if-nez v0, :cond_6

    .line 1169
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1170
    goto/16 :goto_6

    .line 1172
    :cond_6
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1150
    .end local v0    # "username":Ljava/lang/String;
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1151
    .restart local v0    # "username":Ljava/lang/String;
    if-nez v0, :cond_8

    if-nez v0, :cond_8

    .line 1152
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1153
    goto/16 :goto_6

    .line 1156
    :cond_8
    invoke-direct {p0, v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1113
    .end local v0    # "username":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_9

    goto :goto_1

    .line 1122
    :cond_9
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 1123
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    .restart local v0    # "username":Ljava/lang/String;
    if-nez v0, :cond_a

    if-nez v0, :cond_a

    .line 1125
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1126
    goto/16 :goto_6

    .line 1129
    :cond_a
    invoke-direct {p0, v5}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1130
    .end local v0    # "username":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_23

    .line 1132
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1133
    .restart local v0    # "username":Ljava/lang/String;
    if-nez v0, :cond_c

    if-nez v0, :cond_c

    .line 1134
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1135
    goto/16 :goto_6

    .line 1137
    :cond_c
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1115
    .end local v0    # "username":Ljava/lang/String;
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    .restart local v0    # "username":Ljava/lang/String;
    if-nez v0, :cond_e

    if-nez v0, :cond_e

    .line 1117
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1118
    goto/16 :goto_6

    .line 1121
    :cond_e
    invoke-direct {p0, v5}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1077
    .end local v0    # "username":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_f

    goto :goto_2

    .line 1086
    :cond_f
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_11

    .line 1088
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .restart local v0    # "username":Ljava/lang/String;
    if-nez v0, :cond_10

    if-nez v0, :cond_10

    .line 1090
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1091
    goto/16 :goto_6

    .line 1094
    :cond_10
    invoke-direct {p0, v10}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1095
    .end local v0    # "username":Ljava/lang/String;
    :cond_11
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_23

    .line 1097
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    .restart local v0    # "username":Ljava/lang/String;
    if-nez v0, :cond_12

    if-nez v0, :cond_12

    .line 1099
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1100
    goto/16 :goto_6

    .line 1102
    :cond_12
    invoke-direct {p0, v3}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1079
    .end local v0    # "username":Ljava/lang/String;
    :cond_13
    :goto_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .restart local v0    # "username":Ljava/lang/String;
    if-nez v0, :cond_14

    if-nez v0, :cond_14

    .line 1081
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1082
    goto/16 :goto_6

    .line 1085
    :cond_14
    invoke-direct {p0, v10}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1044
    .end local v0    # "username":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_15

    goto :goto_3

    .line 1052
    :cond_15
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_16

    .line 1054
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1055
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v2, Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1056
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1057
    .end local v0    # "i":Landroid/content/Intent;
    :cond_16
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_23

    .line 1059
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, "username":Ljava/lang/String;
    if-nez v0, :cond_17

    if-nez v0, :cond_17

    .line 1061
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1062
    goto/16 :goto_6

    .line 1064
    :cond_17
    invoke-direct {p0, v4}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1046
    .end local v0    # "username":Ljava/lang/String;
    :cond_18
    :goto_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    .restart local v0    # "username":Ljava/lang/String;
    if-nez v0, :cond_19

    if-nez v0, :cond_19

    .line 1048
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1049
    goto/16 :goto_6

    .line 1051
    :cond_19
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/HistoryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1210
    .end local v0    # "username":Ljava/lang/String;
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1211
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v2, Lcom/shenma/tvlauncher/AboutActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1212
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1013
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_9
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1a

    goto :goto_4

    .line 1018
    :cond_1a
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1b

    .line 1028
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1030
    .restart local v0    # "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v2, Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1031
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1032
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1b
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_23

    .line 1034
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1035
    .local v0, "username":Ljava/lang/String;
    if-nez v0, :cond_1c

    if-nez v0, :cond_1c

    .line 1036
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1037
    goto/16 :goto_6

    .line 1039
    :cond_1c
    invoke-direct {p0, v5}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto/16 :goto_6

    .line 1015
    .end local v0    # "username":Ljava/lang/String;
    :cond_1d
    :goto_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1016
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v2, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1017
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 983
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_a
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "username":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1e

    goto :goto_5

    .line 996
    :cond_1e
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1f

    .line 998
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 999
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1000
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 1001
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1f
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_23

    .line 1003
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    if-nez v0, :cond_20

    if-nez v0, :cond_20

    .line 1005
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1006
    goto :goto_6

    .line 1008
    :cond_20
    invoke-direct {p0, v10}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V

    goto :goto_6

    .line 986
    :cond_21
    :goto_5
    if-nez v0, :cond_22

    if-nez v0, :cond_22

    .line 987
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 988
    goto :goto_6

    .line 990
    :cond_22
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 991
    .restart local v1    # "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 992
    const-string v2, "TYPE"

    const-string v3, "ALL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 995
    nop

    .line 1215
    .end local v0    # "username":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_23
    :goto_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/HomeActivity;->overridePendingTransition(II)V

    .line 1217
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0800fc
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 133
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "RecommendFragment"

    const-string v1, "onCreate()........"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "shenma"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    .line 136
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "initData"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->Sp:Landroid/content/SharedPreferences;

    .line 137
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 142
    const-string v0, "RecommendFragment"

    const-string v1, "onCreateView()........"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-nez p2, :cond_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    if-nez v0, :cond_5

    .line 147
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Interface_Style"

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 148
    .local v0, "Interface_Style":I
    if-nez v0, :cond_1

    .line 150
    const v2, 0x7f0a001a

    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 151
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 153
    const v2, 0x7f0a001b

    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 154
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 156
    const v2, 0x7f0a001c

    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 157
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 159
    const v2, 0x7f0a001d

    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    .line 161
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->init()V

    .line 162
    .end local v0    # "Interface_Style":I
    goto :goto_1

    .line 163
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 164
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_6

    .line 165
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->data:Ljava/util/List;

    if-nez v0, :cond_7

    .line 168
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->initData()V

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 186
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onDestroy()V

    .line 187
    const-string v0, "RecommendFragment"

    const-string v1, "onDestroy()........"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 203
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onDetach()V

    .line 205
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 207
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 208
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    nop

    .line 215
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 210
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "paramInt":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 494
    :pswitch_0
    const/16 v0, 0x9

    .line 495
    goto :goto_0

    .line 491
    :pswitch_1
    const/16 v0, 0x8

    .line 492
    goto :goto_0

    .line 488
    :pswitch_2
    const/4 v0, 0x7

    .line 489
    goto :goto_0

    .line 485
    :pswitch_3
    const/4 v0, 0x6

    .line 486
    goto :goto_0

    .line 482
    :pswitch_4
    const/4 v0, 0x5

    .line 483
    goto :goto_0

    .line 479
    :pswitch_5
    const/4 v0, 0x4

    .line 480
    goto :goto_0

    .line 476
    :pswitch_6
    const/4 v0, 0x3

    .line 477
    goto :goto_0

    .line 473
    :pswitch_7
    const/4 v0, 0x2

    .line 474
    goto :goto_0

    .line 497
    :pswitch_8
    const/16 v0, 0xa

    goto :goto_0

    .line 470
    :pswitch_9
    const/4 v0, 0x1

    .line 471
    goto :goto_0

    .line 467
    :pswitch_a
    const/4 v0, 0x0

    .line 468
    nop

    .line 500
    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 501
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->showOnFocusTranslAnimation(I)V

    .line 502
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 505
    :cond_0
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->flyAnimation(I)V

    goto :goto_1

    .line 507
    :cond_1
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->showLooseFocusTranslAinimation(I)V

    .line 509
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->tvs:[Landroid/widget/TextView;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 510
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 511
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 515
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0800fc
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

.method public onResume()V
    .locals 2

    .line 196
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onResume()V

    .line 197
    const-string v0, "RecommendFragment"

    const-string v1, "onResume()........"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 176
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onStop()V

    .line 177
    const-string v0, "RecommendFragment"

    const-string v1, "onStop()........"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 181
    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 452
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 457
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->rebgs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
