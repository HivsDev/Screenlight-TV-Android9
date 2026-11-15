.class public Lcom/shenma/tvlauncher/SettingInvActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "SettingInvActivity.java"


# instance fields
.field private Inv_url:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private inv_img:Landroid/widget/ImageView;

.field private inv_invcode:Landroid/widget/TextView;

.field private inv_user:Landroid/widget/TextView;

.field private ivn_text:Landroid/widget/TextView;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mediaHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 51
    const-string v0, "SettingInvActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/shenma/tvlauncher/SettingInvActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SettingInvActivity$1;-><init>(Lcom/shenma/tvlauncher/SettingInvActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->mediaHandler:Landroid/os/Handler;

    return-void
.end method

.method private GetInfo()V
    .locals 21

    .line 107
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/SettingInvActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 108
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 109
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 110
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 111
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 112
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 113
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 114
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 115
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/SettingInvActivity$4;

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

    new-instance v4, Lcom/shenma/tvlauncher/SettingInvActivity$2;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/SettingInvActivity$2;-><init>(Lcom/shenma/tvlauncher/SettingInvActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/SettingInvActivity$3;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/SettingInvActivity$3;-><init>(Lcom/shenma/tvlauncher/SettingInvActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/SettingInvActivity$4;-><init>(Lcom/shenma/tvlauncher/SettingInvActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/SettingInvActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 157
    return-void
.end method

.method private GetInv()V
    .locals 21

    .line 192
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/SettingInvActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 193
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 194
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 195
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 196
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 197
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 198
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 199
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 200
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/SettingInvActivity$7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=inv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/SettingInvActivity$5;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/SettingInvActivity$5;-><init>(Lcom/shenma/tvlauncher/SettingInvActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/SettingInvActivity$6;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/SettingInvActivity$6;-><init>(Lcom/shenma/tvlauncher/SettingInvActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/SettingInvActivity$7;-><init>(Lcom/shenma/tvlauncher/SettingInvActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/SettingInvActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/SettingInvActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SettingInvActivity;

    .line 44
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingInvActivity;->loadImg()V

    return-void
.end method

.method private initData()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingInvActivity;->GetInfo()V

    .line 102
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingInvActivity;->GetInv()V

    .line 103
    return-void
.end method

.method private loadImg()V
    .locals 12

    .line 286
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_img:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingInvActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ae

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    .local v0, "logoBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->Inv_url:Ljava/lang/String;

    const/16 v3, 0x12c

    const/16 v4, 0x12c

    const-string v5, "UTF-8"

    const-string v6, "H"

    const-string v7, "1"

    const/high16 v8, -0x1000000

    const/4 v9, -0x1

    const/high16 v11, 0x40000000    # 2.0f

    move-object v10, v0

    invoke-static/range {v2 .. v11}, Lcom/shenma/tvlauncher/utils/Utils;->createQRCodeBitmap(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 289
    .local v1, "empower":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    return-void
.end method


# virtual methods
.method public InfoResponse(Ljava/lang/String;)V
    .locals 13
    .param p1, "response"    # Ljava/lang/String;

    .line 161
    const-string/jumbo v0, "vip"

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "RC4KEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "RSAKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v4, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "AESKEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v5, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v5, "jSONObject":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 169
    .local v6, "code":I
    const-string v7, "msg"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "msg":Ljava/lang/String;
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 171
    .local v8, "miType":I
    const/4 v10, 0x0

    .line 172
    .local v10, "jSON":Lorg/json/JSONObject;
    if-ne v8, v9, :cond_0

    .line 173
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {v7, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v10, v9

    goto :goto_0

    .line 174
    :cond_0
    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 175
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {v7, v3}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v10, v9

    goto :goto_0

    .line 176
    :cond_1
    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 177
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {v4, v7, v2}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v10, v9

    .line 179
    :cond_2
    :goto_0
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 180
    .local v9, "vip":Ljava/lang/String;
    const-string v11, "inv"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 181
    .local v11, "inv":Ljava/lang/String;
    const/16 v12, 0xc8

    if-ne v6, v12, :cond_3

    .line 182
    iget-object v12, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_invcode:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v12, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v5    # "jSONObject":Lorg/json/JSONObject;
    .end local v6    # "code":I
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "miType":I
    .end local v9    # "vip":Ljava/lang/String;
    .end local v10    # "jSON":Lorg/json/JSONObject;
    .end local v11    # "inv":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public InvResponse(Ljava/lang/String;)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;

    .line 245
    move-object/from16 v1, p0

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v6, p1

    :try_start_1
    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v7, "code"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 253
    .local v7, "code":I
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    .line 254
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    .local v8, "miType":I
    const/4 v10, 0x0

    .line 256
    .local v10, "msg":Ljava/lang/String;
    const-string v11, "msg"

    if-ne v8, v9, :cond_0

    .line 257
    :try_start_2
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    goto :goto_0

    .line 258
    :cond_0
    const/4 v12, 0x2

    if-ne v8, v12, :cond_1

    .line 259
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    goto :goto_0

    .line 260
    :cond_1
    const/4 v12, 0x3

    if-ne v8, v12, :cond_2

    .line 261
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11, v2}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 263
    :cond_2
    :goto_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 264
    .local v11, "MSGjSON":Lorg/json/JSONObject;
    const-string v12, "inv_state"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 265
    .local v12, "inv_state":Ljava/lang/String;
    const-string v13, "inv_text"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 266
    .local v13, "inv_text":Ljava/lang/String;
    const-string v14, "inv_url"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 267
    .local v14, "inv_url":Ljava/lang/String;
    const-string v15, "0"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 268
    iget-object v15, v1, Lcom/shenma/tvlauncher/SettingInvActivity;->ivn_text:Landroid/widget/TextView;

    const-string v9, "UTF-8"

    invoke-static {v13, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iput-object v14, v1, Lcom/shenma/tvlauncher/SettingInvActivity;->Inv_url:Ljava/lang/String;

    .line 270
    iget-object v9, v1, Lcom/shenma/tvlauncher/SettingInvActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 272
    :cond_3
    iget-object v9, v1, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_invcode:Landroid/widget/TextView;

    const-string/jumbo v15, "\u6d3b\u52a8\u5c1a\u672a\u5f00\u542f"

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v9, v1, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_img:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v9, v1, Lcom/shenma/tvlauncher/SettingInvActivity;->ivn_text:Landroid/widget/TextView;

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v7    # "code":I
    .end local v8    # "miType":I
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "MSGjSON":Lorg/json/JSONObject;
    .end local v12    # "inv_state":Ljava/lang/String;
    .end local v13    # "inv_text":Ljava/lang/String;
    .end local v14    # "inv_url":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_3

    .line 277
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v6, p1

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method protected findViewById()V
    .locals 2

    .line 93
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingInvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07015b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingInvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_user:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingInvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_invcode:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingInvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_img:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingInvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->ivn_text:Landroid/widget/TextView;

    .line 98
    return-void
.end method

.method protected initView()V
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_user:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_invcode:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "user":Ljava/lang/String;
    if-eq v0, v2, :cond_0

    .line 78
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_user:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_user:Landroid/widget/TextView;

    const v2, 0x7f0e0121

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/SettingInvActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingInvActivity;->finish()V

    .line 83
    const v1, 0x7f0e0044

    const v2, 0x7f07013e

    invoke-static {p0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->inv_invcode:Landroid/widget/TextView;

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 90
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 315
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onBackPressed()V

    .line 317
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 66
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingInvActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingInvActivity;->findViewById()V

    .line 69
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingInvActivity;->initView()V

    .line 70
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingInvActivity;->initData()V

    .line 71
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 309
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 311
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 294
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 296
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 300
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 301
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 305
    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 283
    return-void
.end method
