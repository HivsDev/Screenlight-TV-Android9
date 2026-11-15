.class public Lcom/shenma/tvlauncher/EmpowerActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "EmpowerActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# instance fields
.field private Long_Qr_code_Url:Ljava/lang/String;

.field private Msg:Ljava/lang/String;

.field private Pay_Name:[Ljava/lang/String;

.field private Pay_Type:[Ljava/lang/String;

.field private Qr_code_Url:Ljava/lang/String;

.field private Qr_code_text:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private account:Landroid/widget/TextView;

.field private alertDialog:Landroid/app/AlertDialog;

.field private editCode:Landroid/widget/EditText;

.field private empower_iv_pay_ecode:Landroid/widget/ImageView;

.field private empower_pay_text:Landroid/widget/TextView;

.field private empower_type:I

.field private empower_url:Ljava/lang/String;

.field private goods:Ljava/lang/String;

.field private goodsmoney:Ljava/lang/String;

.field private goodsname:Ljava/lang/String;

.field private jifen:Landroid/widget/TextView;

.field private kmviewlayout:Landroid/widget/LinearLayout;

.field private mQrLineView:Landroid/widget/ImageView;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mediaHandler:Landroid/os/Handler;

.field private orders:Ljava/lang/String;

.field private payviewlayout:Landroid/widget/LinearLayout;

.field private qr_code_text:Landroid/widget/TextView;

.field private sendCode:Landroid/widget/Button;

.field private stoppay:I

.field private vipTime:Landroid/widget/TextView;

.field private vip_card:Landroid/widget/LinearLayout;

.field private vip_convert:Landroid/widget/LinearLayout;

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

.field private vip_root_card:Landroid/widget/RelativeLayout;

.field private vip_root_fen:Landroid/widget/RelativeLayout;

.field private vip_root_lin_1:Landroid/widget/LinearLayout;

.field private vip_root_lin_2:Landroid/widget/LinearLayout;

.field private vip_root_lin_3:Landroid/widget/LinearLayout;

.field private vip_root_lin_4:Landroid/widget/LinearLayout;

.field private viptime:Ljava/lang/String;

.field private way:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 70
    const-string v0, "EmpowerActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/shenma/tvlauncher/EmpowerActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$1;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    .line 160
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_type:I

    .line 164
    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Long_Qr_code_Url:Ljava/lang/String;

    return-void
.end method

.method private GetInfo()V
    .locals 21

    .line 936
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 937
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 938
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 939
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 940
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 941
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 942
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 943
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 944
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/EmpowerActivity$27;

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

    new-instance v4, Lcom/shenma/tvlauncher/EmpowerActivity$25;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/EmpowerActivity$25;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/EmpowerActivity$26;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/EmpowerActivity$26;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/EmpowerActivity$27;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 986
    return-void
.end method

.method private GetText()V
    .locals 21

    .line 369
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 370
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 371
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 372
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 373
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 374
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 375
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 376
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 378
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/EmpowerActivity$7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=text_notice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/EmpowerActivity$5;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/EmpowerActivity$5;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/EmpowerActivity$6;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/EmpowerActivity$6;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/EmpowerActivity$7;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 420
    return-void
.end method

.method private Getgoods()V
    .locals 21

    .line 191
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 192
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 193
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 194
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 195
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 196
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 197
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 198
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 199
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/EmpowerActivity$4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=goods"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/EmpowerActivity$2;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/EmpowerActivity$2;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/EmpowerActivity$3;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/EmpowerActivity$3;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/EmpowerActivity$4;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 240
    return-void
.end method

.method private Getpay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "orderrc4"    # Ljava/lang/String;
    .param p2, "userrc4"    # Ljava/lang/String;
    .param p3, "way"    # Ljava/lang/String;
    .param p4, "gidrc4"    # Ljava/lang/String;
    .param p5, "PayType"    # Ljava/lang/String;

    .line 736
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/shenma/tvlauncher/EmpowerActivity;->context:Landroid/content/Context;

    const v1, 0x7f0e00f5

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 737
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v15, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v15, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 738
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v15, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 739
    .local v14, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v15, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 740
    .local v16, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v15, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 741
    .local v17, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v15, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 742
    .local v18, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v15, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 743
    .local v19, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v15, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 744
    .local v20, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v15, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v21

    .line 745
    .local v21, "miType":I
    new-instance v22, Lcom/shenma/tvlauncher/EmpowerActivity$21;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=pay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/EmpowerActivity$19;

    move-object/from16 v13, p5

    invoke-direct {v4, v15, v13}, Lcom/shenma/tvlauncher/EmpowerActivity$19;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/shenma/tvlauncher/EmpowerActivity$20;

    invoke-direct {v5, v15}, Lcom/shenma/tvlauncher/EmpowerActivity$20;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, v21

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v23, v14

    .end local v14    # "User_url":Ljava/lang/String;
    .local v23, "User_url":Ljava/lang/String;
    move-object/from16 v14, v19

    move-object/from16 v15, v20

    invoke-direct/range {v0 .. v15}, Lcom/shenma/tvlauncher/EmpowerActivity$21;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v2, 0x3a98

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 788
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 789
    return-void
.end method

.method private GoodsList()V
    .locals 45

    .line 277
    move-object/from16 v1, p0

    const-string v0, "0"

    const-string v2, "gname"

    const-string/jumbo v3, "y"

    :try_start_0
    new-instance v4, Lorg/json/JSONTokener;

    iget-object v5, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->goods:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    .line 278
    .local v4, "object":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_d

    .line 279
    move-object v5, v4

    check-cast v5, Lorg/json/JSONArray;

    .line 280
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x4

    new-array v7, v6, [I

    const v8, 0x7f0802ea

    const/4 v9, 0x0

    aput v8, v7, v9

    const v8, 0x7f0802eb

    const/4 v10, 0x1

    aput v8, v7, v10

    const v8, 0x7f0802ec

    const/4 v11, 0x2

    aput v8, v7, v11

    const v8, 0x7f0802ed

    const/4 v12, 0x3

    aput v8, v7, v12

    .line 281
    .local v7, "vip_goods_gids":[I
    new-array v8, v6, [I

    const v13, 0x7f0802e0

    aput v13, v8, v9

    const v13, 0x7f0802e3

    aput v13, v8, v10

    const v13, 0x7f0802e6

    aput v13, v8, v11

    const v13, 0x7f0802e9

    aput v13, v8, v12

    .line 282
    .local v8, "vip_goods_titles":[I
    new-array v13, v6, [I

    const v14, 0x7f0802df

    aput v14, v13, v9

    const v14, 0x7f0802e2

    aput v14, v13, v10

    const v14, 0x7f0802e5

    aput v14, v13, v11

    const v14, 0x7f0802e8

    aput v14, v13, v12

    .line 283
    .local v13, "vip_goods_prices":[I
    new-array v14, v6, [I

    const v15, 0x7f0802de

    aput v15, v14, v9

    const v15, 0x7f0802e1

    aput v15, v14, v10

    const v15, 0x7f0802e4

    aput v15, v14, v11

    const v15, 0x7f0802e7

    aput v15, v14, v12

    .line 284
    .local v14, "vip_goods_messages":[I
    new-array v15, v6, [I

    const v16, 0x7f0802f7

    aput v16, v15, v9

    const v16, 0x7f0802f8

    aput v16, v15, v10

    const v16, 0x7f0802f9

    aput v16, v15, v11

    const v16, 0x7f0802fa

    aput v16, v15, v12

    .line 285
    .local v15, "vip_root_lins":[I
    new-array v12, v6, [I

    const v17, 0x7f0802ee

    aput v17, v12, v9

    const v17, 0x7f0802ef

    aput v17, v12, v10

    const v10, 0x7f0802f0

    aput v10, v12, v11

    const v10, 0x7f0802f1

    const/4 v11, 0x3

    aput v10, v12, v11

    move-object v10, v12

    .line 286
    .local v10, "vip_goods_rs":[I
    const/4 v11, 0x0

    .line 287
    .local v11, "index":I
    move v12, v9

    .local v12, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v12, v9, :cond_c

    if-ge v11, v6, :cond_c

    .line 288
    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 289
    .local v9, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 290
    const-string v6, "gid"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "gid":Ljava/lang/String;
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 292
    .local v19, "gname":Ljava/lang/String;
    move-object/from16 v18, v2

    const-string v2, "gmoney"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "gmoney":Ljava/lang/String;
    move-object/from16 v20, v4

    .end local v4    # "object":Ljava/lang/Object;
    .local v20, "object":Ljava/lang/Object;
    const-string v4, "cv"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "cv":Ljava/lang/String;
    move-object/from16 v21, v5

    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .local v21, "jsonArray":Lorg/json/JSONArray;
    const-string v5, "pay_ali_state"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "pay_ali_state":Ljava/lang/String;
    move/from16 v22, v12

    .end local v12    # "i":I
    .local v22, "i":I
    const-string v12, "pay_ali_name"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 296
    .local v12, "pay_ali_name":Ljava/lang/String;
    move-object/from16 v23, v0

    const-string v0, "pay_ali_type"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "pay_ali_type":Ljava/lang/String;
    move-object/from16 v24, v0

    .end local v0    # "pay_ali_type":Ljava/lang/String;
    .local v24, "pay_ali_type":Ljava/lang/String;
    const-string v0, "pay_wx_state"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "pay_wx_state":Ljava/lang/String;
    move-object/from16 v25, v0

    .end local v0    # "pay_wx_state":Ljava/lang/String;
    .local v25, "pay_wx_state":Ljava/lang/String;
    const-string v0, "pay_wx_name"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "pay_wx_name":Ljava/lang/String;
    move-object/from16 v26, v0

    .end local v0    # "pay_wx_name":Ljava/lang/String;
    .local v26, "pay_wx_name":Ljava/lang/String;
    const-string v0, "pay_wx_type"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "pay_wx_type":Ljava/lang/String;
    move-object/from16 v27, v0

    .end local v0    # "pay_wx_type":Ljava/lang/String;
    .local v27, "pay_wx_type":Ljava/lang/String;
    const-string v0, "pay_qq_state"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "pay_qq_state":Ljava/lang/String;
    move-object/from16 v28, v0

    .end local v0    # "pay_qq_state":Ljava/lang/String;
    .local v28, "pay_qq_state":Ljava/lang/String;
    const-string v0, "pay_qq_name"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "pay_qq_name":Ljava/lang/String;
    move-object/from16 v29, v0

    .end local v0    # "pay_qq_name":Ljava/lang/String;
    .local v29, "pay_qq_name":Ljava/lang/String;
    const-string v0, "pay_qq_type"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "pay_qq_type":Ljava/lang/String;
    move-object/from16 v30, v0

    .end local v0    # "pay_qq_type":Ljava/lang/String;
    .local v30, "pay_qq_type":Ljava/lang/String;
    const-string v0, "pay_other_state"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "pay_other_state":Ljava/lang/String;
    move-object/from16 v31, v0

    .end local v0    # "pay_other_state":Ljava/lang/String;
    .local v31, "pay_other_state":Ljava/lang/String;
    const-string v0, "pay_other_name"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "pay_other_name":Ljava/lang/String;
    move-object/from16 v32, v0

    .end local v0    # "pay_other_name":Ljava/lang/String;
    .local v32, "pay_other_name":Ljava/lang/String;
    const-string v0, "pay_other_type"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "pay_other_type":Ljava/lang/String;
    move-object/from16 v33, v0

    .end local v0    # "pay_other_type":Ljava/lang/String;
    .local v33, "pay_other_type":Ljava/lang/String;
    const-string v0, "clock_state"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "clock_state":Ljava/lang/String;
    move-object/from16 v34, v0

    .end local v0    # "clock_state":Ljava/lang/String;
    .local v34, "clock_state":Ljava/lang/String;
    const-string/jumbo v0, "vip_card"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "card":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_a

    .line 309
    move-object/from16 v35, v9

    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .local v35, "jsonObject":Lorg/json/JSONObject;
    aget v9, v7, v11

    invoke-virtual {v1, v9}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 310
    .local v9, "vip_goods_gid":Landroid/widget/TextView;
    move-object/from16 v36, v7

    .end local v7    # "vip_goods_gids":[I
    .local v36, "vip_goods_gids":[I
    aget v7, v8, v11

    invoke-virtual {v1, v7}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 311
    .local v7, "vip_goods_title":Landroid/widget/TextView;
    move-object/from16 v37, v8

    .end local v8    # "vip_goods_titles":[I
    .local v37, "vip_goods_titles":[I
    aget v8, v13, v11

    invoke-virtual {v1, v8}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 312
    .local v8, "vip_goods_price":Landroid/widget/TextView;
    move-object/from16 v38, v13

    .end local v13    # "vip_goods_prices":[I
    .local v38, "vip_goods_prices":[I
    aget v13, v14, v11

    invoke-virtual {v1, v13}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 313
    .local v13, "vip_goods_message":Landroid/widget/TextView;
    move-object/from16 v39, v14

    .end local v14    # "vip_goods_messages":[I
    .local v39, "vip_goods_messages":[I
    aget v14, v15, v11

    invoke-virtual {v1, v14}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 314
    .local v14, "vip_root_lin":Landroid/widget/LinearLayout;
    move-object/from16 v40, v15

    .end local v15    # "vip_root_lins":[I
    .local v40, "vip_root_lins":[I
    aget v15, v10, v11

    invoke-virtual {v1, v15}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 315
    .local v15, "vip_goods_r":Landroid/widget/RelativeLayout;
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    move-object/from16 v41, v6

    move-object/from16 v6, v19

    .end local v19    # "gname":Ljava/lang/String;
    .local v6, "gname":Ljava/lang/String;
    .local v41, "gid":Ljava/lang/String;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    move-object/from16 v19, v6

    .end local v6    # "gname":Ljava/lang/String;
    .restart local v19    # "gname":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v42, v7

    .end local v7    # "vip_goods_title":Landroid/widget/TextView;
    .local v42, "vip_goods_title":Landroid/widget/TextView;
    const-string/jumbo v7, "\uffe5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    invoke-virtual {v15, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 321
    add-int/lit8 v11, v11, 0x1

    .line 322
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v6, "PayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 324
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    move-object/from16 v7, v25

    .end local v25    # "pay_wx_state":Ljava/lang/String;
    .local v7, "pay_wx_state":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 327
    move-object/from16 v25, v2

    move-object/from16 v2, v26

    .end local v26    # "pay_wx_name":Ljava/lang/String;
    .local v2, "pay_wx_name":Ljava/lang/String;
    .local v25, "gmoney":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    .end local v25    # "gmoney":Ljava/lang/String;
    .local v2, "gmoney":Ljava/lang/String;
    .restart local v26    # "pay_wx_name":Ljava/lang/String;
    :cond_1
    move-object/from16 v25, v2

    move-object/from16 v2, v26

    .line 329
    .end local v26    # "pay_wx_name":Ljava/lang/String;
    .local v2, "pay_wx_name":Ljava/lang/String;
    .restart local v25    # "gmoney":Ljava/lang/String;
    :goto_1
    move-object/from16 v26, v2

    move-object/from16 v2, v28

    .end local v28    # "pay_qq_state":Ljava/lang/String;
    .local v2, "pay_qq_state":Ljava/lang/String;
    .restart local v26    # "pay_wx_name":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 330
    move-object/from16 v28, v4

    move-object/from16 v4, v29

    .end local v29    # "pay_qq_name":Ljava/lang/String;
    .local v4, "pay_qq_name":Ljava/lang/String;
    .local v28, "cv":Ljava/lang/String;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 329
    .end local v28    # "cv":Ljava/lang/String;
    .local v4, "cv":Ljava/lang/String;
    .restart local v29    # "pay_qq_name":Ljava/lang/String;
    :cond_2
    move-object/from16 v28, v4

    move-object/from16 v4, v29

    .line 332
    .end local v29    # "pay_qq_name":Ljava/lang/String;
    .local v4, "pay_qq_name":Ljava/lang/String;
    .restart local v28    # "cv":Ljava/lang/String;
    :goto_2
    move-object/from16 v29, v4

    move-object/from16 v4, v31

    .end local v31    # "pay_other_state":Ljava/lang/String;
    .local v4, "pay_other_state":Ljava/lang/String;
    .restart local v29    # "pay_qq_name":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 333
    move-object/from16 v31, v8

    move-object/from16 v8, v32

    .end local v32    # "pay_other_name":Ljava/lang/String;
    .local v8, "pay_other_name":Ljava/lang/String;
    .local v31, "vip_goods_price":Landroid/widget/TextView;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 332
    .end local v31    # "vip_goods_price":Landroid/widget/TextView;
    .local v8, "vip_goods_price":Landroid/widget/TextView;
    .restart local v32    # "pay_other_name":Ljava/lang/String;
    :cond_3
    move-object/from16 v31, v8

    move-object/from16 v8, v32

    .line 335
    .end local v32    # "pay_other_name":Ljava/lang/String;
    .local v8, "pay_other_name":Ljava/lang/String;
    .restart local v31    # "vip_goods_price":Landroid/widget/TextView;
    :goto_3
    move-object/from16 v32, v8

    move-object/from16 v8, v34

    move-object/from16 v44, v23

    move-object/from16 v23, v9

    move-object/from16 v9, v44

    .end local v9    # "vip_goods_gid":Landroid/widget/TextView;
    .end local v34    # "clock_state":Ljava/lang/String;
    .local v8, "clock_state":Ljava/lang/String;
    .local v23, "vip_goods_gid":Landroid/widget/TextView;
    .restart local v32    # "pay_other_name":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_4

    .line 336
    move-object/from16 v34, v8

    .end local v8    # "clock_state":Ljava/lang/String;
    .restart local v34    # "clock_state":Ljava/lang/String;
    iget-object v8, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_convert:Landroid/widget/LinearLayout;

    move-object/from16 v43, v10

    const/4 v10, 0x0

    .end local v10    # "vip_goods_rs":[I
    .local v43, "vip_goods_rs":[I
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 335
    .end local v34    # "clock_state":Ljava/lang/String;
    .end local v43    # "vip_goods_rs":[I
    .restart local v8    # "clock_state":Ljava/lang/String;
    .restart local v10    # "vip_goods_rs":[I
    :cond_4
    move-object/from16 v34, v8

    move-object/from16 v43, v10

    .line 338
    .end local v8    # "clock_state":Ljava/lang/String;
    .end local v10    # "vip_goods_rs":[I
    .restart local v34    # "clock_state":Ljava/lang/String;
    .restart local v43    # "vip_goods_rs":[I
    :goto_4
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 339
    iget-object v8, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_card:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    :cond_5
    const/4 v8, 0x0

    new-array v10, v8, [Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iput-object v8, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Name:[Ljava/lang/String;

    .line 343
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v8, "PayLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 345
    move-object/from16 v10, v24

    .end local v24    # "pay_ali_type":Ljava/lang/String;
    .local v10, "pay_ali_type":Ljava/lang/String;
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 344
    .end local v10    # "pay_ali_type":Ljava/lang/String;
    .restart local v24    # "pay_ali_type":Ljava/lang/String;
    :cond_6
    move-object/from16 v10, v24

    .line 347
    .end local v24    # "pay_ali_type":Ljava/lang/String;
    .restart local v10    # "pay_ali_type":Ljava/lang/String;
    :goto_5
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 348
    move-object/from16 v24, v0

    move-object/from16 v0, v27

    .end local v27    # "pay_wx_type":Ljava/lang/String;
    .local v0, "pay_wx_type":Ljava/lang/String;
    .local v24, "card":Ljava/lang/String;
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 347
    .end local v24    # "card":Ljava/lang/String;
    .local v0, "card":Ljava/lang/String;
    .restart local v27    # "pay_wx_type":Ljava/lang/String;
    :cond_7
    move-object/from16 v24, v0

    move-object/from16 v0, v27

    .line 350
    .end local v27    # "pay_wx_type":Ljava/lang/String;
    .local v0, "pay_wx_type":Ljava/lang/String;
    .restart local v24    # "card":Ljava/lang/String;
    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 351
    move-object/from16 v27, v0

    move-object/from16 v0, v30

    .end local v30    # "pay_qq_type":Ljava/lang/String;
    .local v0, "pay_qq_type":Ljava/lang/String;
    .restart local v27    # "pay_wx_type":Ljava/lang/String;
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 350
    .end local v27    # "pay_wx_type":Ljava/lang/String;
    .local v0, "pay_wx_type":Ljava/lang/String;
    .restart local v30    # "pay_qq_type":Ljava/lang/String;
    :cond_8
    move-object/from16 v27, v0

    move-object/from16 v0, v30

    .line 353
    .end local v30    # "pay_qq_type":Ljava/lang/String;
    .local v0, "pay_qq_type":Ljava/lang/String;
    .restart local v27    # "pay_wx_type":Ljava/lang/String;
    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 354
    move-object/from16 v30, v0

    move-object/from16 v0, v33

    .end local v33    # "pay_other_type":Ljava/lang/String;
    .local v0, "pay_other_type":Ljava/lang/String;
    .restart local v30    # "pay_qq_type":Ljava/lang/String;
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 353
    .end local v30    # "pay_qq_type":Ljava/lang/String;
    .local v0, "pay_qq_type":Ljava/lang/String;
    .restart local v33    # "pay_other_type":Ljava/lang/String;
    :cond_9
    move-object/from16 v30, v0

    move-object/from16 v0, v33

    .line 356
    .end local v33    # "pay_other_type":Ljava/lang/String;
    .local v0, "pay_other_type":Ljava/lang/String;
    .restart local v30    # "pay_qq_type":Ljava/lang/String;
    :goto_8
    move-object/from16 v33, v0

    move-object/from16 v16, v2

    const/4 v0, 0x0

    .end local v0    # "pay_other_type":Ljava/lang/String;
    .end local v2    # "pay_qq_state":Ljava/lang/String;
    .local v16, "pay_qq_state":Ljava/lang/String;
    .restart local v33    # "pay_other_type":Ljava/lang/String;
    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Type:[Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 308
    .end local v16    # "pay_qq_state":Ljava/lang/String;
    .end local v23    # "vip_goods_gid":Landroid/widget/TextView;
    .end local v35    # "jsonObject":Lorg/json/JSONObject;
    .end local v36    # "vip_goods_gids":[I
    .end local v37    # "vip_goods_titles":[I
    .end local v38    # "vip_goods_prices":[I
    .end local v39    # "vip_goods_messages":[I
    .end local v40    # "vip_root_lins":[I
    .end local v41    # "gid":Ljava/lang/String;
    .end local v42    # "vip_goods_title":Landroid/widget/TextView;
    .end local v43    # "vip_goods_rs":[I
    .local v0, "card":Ljava/lang/String;
    .local v2, "gmoney":Ljava/lang/String;
    .local v4, "cv":Ljava/lang/String;
    .local v6, "gid":Ljava/lang/String;
    .local v7, "vip_goods_gids":[I
    .local v8, "vip_goods_titles":[I
    .local v9, "jsonObject":Lorg/json/JSONObject;
    .local v10, "vip_goods_rs":[I
    .local v13, "vip_goods_prices":[I
    .local v14, "vip_goods_messages":[I
    .local v15, "vip_root_lins":[I
    .local v24, "pay_ali_type":Ljava/lang/String;
    .local v25, "pay_wx_state":Ljava/lang/String;
    .local v28, "pay_qq_state":Ljava/lang/String;
    .local v31, "pay_other_state":Ljava/lang/String;
    :cond_a
    move-object/from16 v41, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v35, v9

    move-object/from16 v43, v10

    move-object/from16 v38, v13

    move-object/from16 v39, v14

    move-object/from16 v40, v15

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v7, v25

    move-object/from16 v16, v28

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v28, v4

    move-object/from16 v4, v31

    const/4 v0, 0x0

    .end local v0    # "card":Ljava/lang/String;
    .end local v2    # "gmoney":Ljava/lang/String;
    .end local v6    # "gid":Ljava/lang/String;
    .end local v8    # "vip_goods_titles":[I
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "vip_goods_prices":[I
    .end local v14    # "vip_goods_messages":[I
    .end local v15    # "vip_root_lins":[I
    .end local v31    # "pay_other_state":Ljava/lang/String;
    .local v4, "pay_other_state":Ljava/lang/String;
    .local v7, "pay_wx_state":Ljava/lang/String;
    .local v10, "pay_ali_type":Ljava/lang/String;
    .restart local v16    # "pay_qq_state":Ljava/lang/String;
    .local v24, "card":Ljava/lang/String;
    .local v25, "gmoney":Ljava/lang/String;
    .local v28, "cv":Ljava/lang/String;
    .restart local v35    # "jsonObject":Lorg/json/JSONObject;
    .restart local v36    # "vip_goods_gids":[I
    .restart local v37    # "vip_goods_titles":[I
    .restart local v38    # "vip_goods_prices":[I
    .restart local v39    # "vip_goods_messages":[I
    .restart local v40    # "vip_root_lins":[I
    .restart local v41    # "gid":Ljava/lang/String;
    .restart local v43    # "vip_goods_rs":[I
    goto :goto_9

    .line 289
    .end local v16    # "pay_qq_state":Ljava/lang/String;
    .end local v19    # "gname":Ljava/lang/String;
    .end local v20    # "object":Ljava/lang/Object;
    .end local v21    # "jsonArray":Lorg/json/JSONArray;
    .end local v22    # "i":I
    .end local v24    # "card":Ljava/lang/String;
    .end local v25    # "gmoney":Ljava/lang/String;
    .end local v26    # "pay_wx_name":Ljava/lang/String;
    .end local v27    # "pay_wx_type":Ljava/lang/String;
    .end local v28    # "cv":Ljava/lang/String;
    .end local v29    # "pay_qq_name":Ljava/lang/String;
    .end local v30    # "pay_qq_type":Ljava/lang/String;
    .end local v32    # "pay_other_name":Ljava/lang/String;
    .end local v33    # "pay_other_type":Ljava/lang/String;
    .end local v34    # "clock_state":Ljava/lang/String;
    .end local v35    # "jsonObject":Lorg/json/JSONObject;
    .end local v36    # "vip_goods_gids":[I
    .end local v37    # "vip_goods_titles":[I
    .end local v38    # "vip_goods_prices":[I
    .end local v39    # "vip_goods_messages":[I
    .end local v40    # "vip_root_lins":[I
    .end local v41    # "gid":Ljava/lang/String;
    .end local v43    # "vip_goods_rs":[I
    .local v4, "object":Ljava/lang/Object;
    .local v5, "jsonArray":Lorg/json/JSONArray;
    .local v7, "vip_goods_gids":[I
    .restart local v8    # "vip_goods_titles":[I
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .local v10, "vip_goods_rs":[I
    .local v12, "i":I
    .restart local v13    # "vip_goods_prices":[I
    .restart local v14    # "vip_goods_messages":[I
    .restart local v15    # "vip_root_lins":[I
    :cond_b
    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v35, v9

    move-object/from16 v43, v10

    move/from16 v22, v12

    move-object/from16 v38, v13

    move-object/from16 v39, v14

    move-object/from16 v40, v15

    move-object v9, v0

    const/4 v0, 0x0

    .line 287
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "vip_goods_gids":[I
    .end local v8    # "vip_goods_titles":[I
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "vip_goods_rs":[I
    .end local v12    # "i":I
    .end local v13    # "vip_goods_prices":[I
    .end local v14    # "vip_goods_messages":[I
    .end local v15    # "vip_root_lins":[I
    .restart local v20    # "object":Ljava/lang/Object;
    .restart local v21    # "jsonArray":Lorg/json/JSONArray;
    .restart local v22    # "i":I
    .restart local v36    # "vip_goods_gids":[I
    .restart local v37    # "vip_goods_titles":[I
    .restart local v38    # "vip_goods_prices":[I
    .restart local v39    # "vip_goods_messages":[I
    .restart local v40    # "vip_root_lins":[I
    .restart local v43    # "vip_goods_rs":[I
    :goto_9
    add-int/lit8 v12, v22, 0x1

    move-object v0, v9

    move-object/from16 v2, v18

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    move-object/from16 v13, v38

    move-object/from16 v14, v39

    move-object/from16 v15, v40

    move-object/from16 v10, v43

    const/4 v6, 0x4

    const/4 v9, 0x0

    .end local v22    # "i":I
    .restart local v12    # "i":I
    goto/16 :goto_0

    .end local v20    # "object":Ljava/lang/Object;
    .end local v21    # "jsonArray":Lorg/json/JSONArray;
    .end local v36    # "vip_goods_gids":[I
    .end local v37    # "vip_goods_titles":[I
    .end local v38    # "vip_goods_prices":[I
    .end local v39    # "vip_goods_messages":[I
    .end local v40    # "vip_root_lins":[I
    .end local v43    # "vip_goods_rs":[I
    .restart local v4    # "object":Ljava/lang/Object;
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "vip_goods_gids":[I
    .restart local v8    # "vip_goods_titles":[I
    .restart local v10    # "vip_goods_rs":[I
    .restart local v13    # "vip_goods_prices":[I
    .restart local v14    # "vip_goods_messages":[I
    .restart local v15    # "vip_root_lins":[I
    :cond_c
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v43, v10

    move/from16 v22, v12

    move-object/from16 v38, v13

    move-object/from16 v39, v14

    move-object/from16 v40, v15

    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "vip_goods_gids":[I
    .end local v8    # "vip_goods_titles":[I
    .end local v10    # "vip_goods_rs":[I
    .end local v12    # "i":I
    .end local v13    # "vip_goods_prices":[I
    .end local v14    # "vip_goods_messages":[I
    .end local v15    # "vip_root_lins":[I
    .restart local v20    # "object":Ljava/lang/Object;
    .restart local v21    # "jsonArray":Lorg/json/JSONArray;
    .restart local v22    # "i":I
    .restart local v36    # "vip_goods_gids":[I
    .restart local v37    # "vip_goods_titles":[I
    .restart local v38    # "vip_goods_prices":[I
    .restart local v39    # "vip_goods_messages":[I
    .restart local v40    # "vip_root_lins":[I
    .restart local v43    # "vip_goods_rs":[I
    goto :goto_a

    .line 278
    .end local v11    # "index":I
    .end local v20    # "object":Ljava/lang/Object;
    .end local v21    # "jsonArray":Lorg/json/JSONArray;
    .end local v22    # "i":I
    .end local v36    # "vip_goods_gids":[I
    .end local v37    # "vip_goods_titles":[I
    .end local v38    # "vip_goods_prices":[I
    .end local v39    # "vip_goods_messages":[I
    .end local v40    # "vip_root_lins":[I
    .end local v43    # "vip_goods_rs":[I
    .restart local v4    # "object":Ljava/lang/Object;
    :cond_d
    move-object/from16 v20, v4

    .line 364
    .end local v4    # "object":Ljava/lang/Object;
    :goto_a
    goto :goto_b

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 365
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_b
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vipTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->payviewlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_1()V

    return-void
.end method

.method static synthetic access$1100(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_2()V

    return-void
.end method

.method static synthetic access$1200(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_3()V

    return-void
.end method

.method static synthetic access$1300(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_4()V

    return-void
.end method

.method static synthetic access$1400(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_card()V

    return-void
.end method

.method static synthetic access$1500(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_fen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->editCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/EmpowerActivity;->getCard(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/shenma/tvlauncher/EmpowerActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Type:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->kmviewlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/shenma/tvlauncher/EmpowerActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Name:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/shenma/tvlauncher/EmpowerActivity;->Getpay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->orders:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQrLineView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->viptime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/EmpowerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_type:I

    return v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/EmpowerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/EmpowerActivity;->loadImg(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GoodsList()V

    return-void
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Msg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/EmpowerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    iget v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    return v0
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetInfo()V

    return-void
.end method

.method private getCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .line 1038
    move-object/from16 v14, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v14, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v14, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1039
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v14, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1040
    .local v15, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v14, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1041
    .local v16, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v14, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1042
    .local v17, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v14, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1043
    .local v18, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v14, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1044
    .local v19, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v14, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1045
    .local v20, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v14, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v21

    .line 1046
    .local v21, "miType":I
    new-instance v22, Lcom/shenma/tvlauncher/EmpowerActivity$30;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=card"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/EmpowerActivity$28;

    invoke-direct {v4, v14}, Lcom/shenma/tvlauncher/EmpowerActivity$28;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/EmpowerActivity$29;

    invoke-direct {v5, v14}, Lcom/shenma/tvlauncher/EmpowerActivity$29;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, v21

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    invoke-direct/range {v0 .. v13}, Lcom/shenma/tvlauncher/EmpowerActivity$30;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v14, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1088
    return-void
.end method

.method private initData()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->Getgoods()V

    .line 185
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 186
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetInfo()V

    .line 187
    return-void
.end method

.method private loadImg(I)V
    .locals 12
    .param p1, "type"    # I

    .line 1171
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const v8, 0x3f666666    # 0.9f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1172
    .local v0, "mAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1173
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1174
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    goto :goto_0

    .line 1176
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 1178
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQrLineView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1179
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1180
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQrLineView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1181
    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$31;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$31;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1194
    if-ne p1, v2, :cond_1

    .line 1195
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_Url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_iv_pay_ecode:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1196
    return-void

    .line 1201
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    const-string/jumbo v2, "wx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1202
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070189

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "logoBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1203
    .end local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    const-string v2, "ali"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1204
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1205
    .end local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    const-string v2, "qq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1206
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07010b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1207
    .end local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    const-string v2, "other"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f070105

    if-eqz v1, :cond_5

    .line 1208
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1209
    .end local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    const-string v3, "icon"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1210
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ae

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1212
    .end local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1214
    .restart local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_url:Ljava/lang/String;

    const/16 v3, 0x190

    const/16 v4, 0x190

    const/high16 v8, -0x1000000

    const/4 v9, -0x1

    const/high16 v11, 0x40000000    # 2.0f

    const-string v5, "UTF-8"

    const-string v6, "Q"

    const-string v7, "1"

    move-object v10, v1

    invoke-static/range {v2 .. v11}, Lcom/shenma/tvlauncher/utils/Utils;->createQRCodeBitmap(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1215
    .local v2, "empower":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_iv_pay_ecode:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1216
    return-void
.end method

.method private vip_goods_r_1()V
    .locals 17

    .line 622
    move-object/from16 v7, p0

    const/4 v0, 0x1

    iput v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 623
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 624
    .local v8, "open_ring":Ljava/lang/String;
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_1_price:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsmoney:Ljava/lang/String;

    .line 625
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_1_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsname:Ljava/lang/String;

    .line 626
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 627
    .local v9, "username":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v10, v0

    .line 628
    .local v10, "sdfTwo":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 629
    .local v11, "timeMillis":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 630
    .local v13, "time":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 631
    .local v14, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0e0045

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 632
    iget-object v15, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Name:[Ljava/lang/String;

    new-instance v6, Lcom/shenma/tvlauncher/EmpowerActivity$15;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    move-wide v3, v11

    move-object v5, v9

    move-object/from16 v16, v9

    move-object v9, v6

    .end local v9    # "username":Ljava/lang/String;
    .local v16, "username":Ljava/lang/String;
    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/shenma/tvlauncher/EmpowerActivity$15;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 640
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 641
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 642
    return-void
.end method

.method private vip_goods_r_2()V
    .locals 17

    .line 646
    move-object/from16 v7, p0

    const/4 v0, 0x1

    iput v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 647
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 648
    .local v8, "open_ring":Ljava/lang/String;
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_2_price:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsmoney:Ljava/lang/String;

    .line 649
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_2_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsname:Ljava/lang/String;

    .line 650
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 651
    .local v9, "username":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v10, v0

    .line 652
    .local v10, "sdfTwo":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 653
    .local v11, "timeMillis":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 654
    .local v13, "time":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 655
    .local v14, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0e0045

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 656
    iget-object v15, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Name:[Ljava/lang/String;

    new-instance v6, Lcom/shenma/tvlauncher/EmpowerActivity$16;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    move-wide v3, v11

    move-object v5, v9

    move-object/from16 v16, v9

    move-object v9, v6

    .end local v9    # "username":Ljava/lang/String;
    .local v16, "username":Ljava/lang/String;
    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/shenma/tvlauncher/EmpowerActivity$16;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 664
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 665
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 666
    return-void
.end method

.method private vip_goods_r_3()V
    .locals 17

    .line 670
    move-object/from16 v7, p0

    const/4 v0, 0x1

    iput v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 671
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_3:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 672
    .local v8, "open_ring":Ljava/lang/String;
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_3_price:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsmoney:Ljava/lang/String;

    .line 673
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_3_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsname:Ljava/lang/String;

    .line 674
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 675
    .local v9, "username":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v10, v0

    .line 676
    .local v10, "sdfTwo":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 677
    .local v11, "timeMillis":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 678
    .local v13, "time":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 679
    .local v14, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0e0045

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 680
    iget-object v15, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Name:[Ljava/lang/String;

    new-instance v6, Lcom/shenma/tvlauncher/EmpowerActivity$17;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    move-wide v3, v11

    move-object v5, v9

    move-object/from16 v16, v9

    move-object v9, v6

    .end local v9    # "username":Ljava/lang/String;
    .local v16, "username":Ljava/lang/String;
    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/shenma/tvlauncher/EmpowerActivity$17;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 688
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 689
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 690
    return-void
.end method

.method private vip_goods_r_4()V
    .locals 17

    .line 694
    move-object/from16 v7, p0

    const/4 v0, 0x1

    iput v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 695
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_4:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, "open_ring":Ljava/lang/String;
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_4_price:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsmoney:Ljava/lang/String;

    .line 697
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_4_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsname:Ljava/lang/String;

    .line 698
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 699
    .local v9, "username":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v10, v0

    .line 700
    .local v10, "sdfTwo":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 701
    .local v11, "timeMillis":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 702
    .local v13, "time":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 703
    .local v14, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0e0045

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 704
    iget-object v15, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Name:[Ljava/lang/String;

    new-instance v6, Lcom/shenma/tvlauncher/EmpowerActivity$18;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    move-wide v3, v11

    move-object v5, v9

    move-object/from16 v16, v9

    move-object v9, v6

    .end local v9    # "username":Ljava/lang/String;
    .local v16, "username":Ljava/lang/String;
    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/shenma/tvlauncher/EmpowerActivity$18;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 712
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 713
    iget-object v0, v7, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 714
    return-void
.end method

.method private vip_root_card()V
    .locals 2

    .line 718
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 719
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 720
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->payviewlayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->kmviewlayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 723
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 724
    return-void
.end method

.method private vip_root_fen()V
    .locals 2

    .line 728
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->startActivity(Landroid/content/Intent;)V

    .line 730
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/EmpowerActivity;->overridePendingTransition(II)V

    .line 731
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->finish()V

    .line 732
    return-void
.end method


# virtual methods
.method public CardResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .line 1092
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, "RSAKEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1094
    .local v2, "AESKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1095
    .local v3, "AESIV":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1098
    .local v1, "RC4KEY":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1100
    .local v5, "code":I
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    .local v6, "miType":I
    const/4 v8, 0x0

    .line 1102
    .local v8, "msg":Ljava/lang/String;
    const-string v9, "msg"

    if-ne v6, v7, :cond_0

    .line 1103
    :try_start_1
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 1104
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1105
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 1106
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 1107
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v3}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v7

    .line 1109
    :cond_2
    :goto_0
    const/16 v7, 0xc8

    const-string v9, "UTF-8"

    if-ne v5, v7, :cond_3

    .line 1110
    :try_start_2
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f070140

    invoke-static {p0, v7, v9}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1111
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetInfo()V

    goto :goto_1

    .line 1113
    :cond_3
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Msg:Ljava/lang/String;

    .line 1114
    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1118
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "miType":I
    .end local v8    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1116
    :catch_0
    move-exception v4

    .line 1117
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1119
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public Error(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 473
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    .line 476
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 479
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    .line 482
    instance-of v0, p1, Lcom/android/volley/ServerError;

    .line 486
    return-void
.end method

.method public GetpayResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "PayType"    # Ljava/lang/String;

    .line 793
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "RSAKEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 795
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 796
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "AESIV":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 800
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 801
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 802
    .local v5, "code":I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 803
    .local v6, "msg":Ljava/lang/String;
    const/16 v7, 0xc8

    const/4 v8, 0x3

    if-ne v5, v7, :cond_1

    .line 804
    const-string v7, "order"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 805
    .local v7, "order":Ljava/lang/String;
    const-string v9, "qr_url"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 806
    .local v9, "qr_url":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 807
    iput-object v9, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_url:Ljava/lang/String;

    .line 808
    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->orders:Ljava/lang/String;

    .line 809
    const/4 v10, 0x0

    iput v10, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_type:I

    .line 810
    iget-object v11, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 811
    iget-object v8, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v12, 0x7f0e004b

    invoke-virtual {p0, v12}, Lcom/shenma/tvlauncher/EmpowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsname:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsmoney:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iput v10, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 813
    iget-object v8, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    const-wide/16 v11, 0xfa0

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 814
    const v8, 0x7f0e004a

    const v10, 0x7f070140

    invoke-static {p0, v8, v10}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 817
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 818
    const v8, 0x7f0e003b

    const v10, 0x7f07013f

    invoke-static {p0, v8, v10}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 820
    .end local v7    # "order":Ljava/lang/String;
    .end local v9    # "qr_url":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 821
    :cond_1
    const/4 v7, 0x1

    iput v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 822
    iget-object v9, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {p0, v9, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .local v9, "miType":I
    const-string v10, "UTF-8"

    if-ne v9, v7, :cond_2

    .line 825
    :try_start_1
    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Msg:Ljava/lang/String;

    goto :goto_1

    .line 826
    :cond_2
    const/4 v7, 0x2

    if-ne v9, v7, :cond_3

    .line 827
    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Msg:Ljava/lang/String;

    goto :goto_1

    .line 828
    :cond_3
    if-ne v9, v8, :cond_4

    .line 829
    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Msg:Ljava/lang/String;

    .line 831
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 832
    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 836
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    .end local v9    # "miType":I
    :goto_2
    goto :goto_3

    .line 834
    :catch_0
    move-exception v4

    .line 835
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 837
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public GoodsResponse(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .line 244
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 251
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 252
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 253
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    .local v6, "miType":I
    const-string v8, "msg"

    if-ne v6, v7, :cond_0

    .line 255
    :try_start_1
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goods:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 256
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 258
    :try_start_2
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goods:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v7

    .line 260
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 262
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 263
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goods:Ljava/lang/String;

    .line 265
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 266
    nop

    .end local v6    # "miType":I
    goto :goto_2

    .line 267
    :cond_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_card()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 271
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    :goto_2
    goto :goto_3

    .line 269
    :catch_1
    move-exception v4

    .line 270
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public InfoResponse(Ljava/lang/String;)V
    .locals 17
    .param p1, "response"    # Ljava/lang/String;

    .line 990
    move-object/from16 v1, p0

    const-string v0, "fen"

    const-string/jumbo v2, "vip"

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 991
    .local v3, "RSAKEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 992
    .local v5, "AESKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 993
    .local v6, "AESIV":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 996
    .local v7, "RC4KEY":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v9, p1

    :try_start_1
    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 997
    .local v8, "jSONObject":Lorg/json/JSONObject;
    const-string v10, "code"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 998
    .local v10, "code":I
    const-string v11, "msg"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 999
    .local v11, "msg":Ljava/lang/String;
    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1000
    .local v12, "miType":I
    const/4 v14, 0x0

    .line 1001
    .local v14, "jSON":Lorg/json/JSONObject;
    if-ne v12, v13, :cond_0

    .line 1002
    :try_start_2
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v11, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v13

    goto :goto_0

    .line 1031
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v14    # "jSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_4

    .line 1003
    .restart local v8    # "jSONObject":Lorg/json/JSONObject;
    .restart local v10    # "code":I
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "miType":I
    .restart local v14    # "jSON":Lorg/json/JSONObject;
    :cond_0
    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 1004
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v11, v3}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v13

    goto :goto_0

    .line 1005
    :cond_1
    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 1006
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v5, v11, v6}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v13

    .line 1008
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1009
    .local v13, "vip":Ljava/lang/String;
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1010
    .local v15, "fen":Ljava/lang/String;
    move-object/from16 v16, v3

    .end local v3    # "RSAKEY":Ljava/lang/String;
    .local v16, "RSAKEY":Ljava/lang/String;
    const/16 v3, 0xc8

    if-ne v10, v3, :cond_5

    .line 1011
    :try_start_4
    iput-object v13, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->viptime:Ljava/lang/String;

    .line 1012
    iget-object v3, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->jifen:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v3, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1014
    invoke-interface {v3, v2, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1015
    invoke-interface {v2, v0, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1016
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1017
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->viptime:Ljava/lang/String;

    const-string v2, "999999999"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1018
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Long_Qr_code_Url:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1019
    const v0, 0x7f08004e

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f07008e

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1020
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Long_Qr_code_Url:Ljava/lang/String;

    iput-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_Url:Ljava/lang/String;

    .line 1021
    const/4 v0, 0x1

    iput v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_type:I

    .line 1022
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    :cond_3
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1026
    :cond_4
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1028
    :goto_1
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1031
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v13    # "vip":Ljava/lang/String;
    .end local v14    # "jSON":Lorg/json/JSONObject;
    .end local v15    # "fen":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 1033
    :cond_5
    :goto_2
    goto :goto_5

    .line 1031
    .end local v16    # "RSAKEY":Ljava/lang/String;
    .restart local v3    # "RSAKEY":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v9, p1

    :goto_3
    move-object/from16 v16, v3

    .line 1032
    .end local v3    # "RSAKEY":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "RSAKEY":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1034
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method public Querypay()V
    .locals 21

    .line 841
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 842
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 843
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 844
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 845
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 846
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 847
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 848
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 849
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/EmpowerActivity$24;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=pay_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/EmpowerActivity$22;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/EmpowerActivity$22;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/EmpowerActivity$23;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/EmpowerActivity$23;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/EmpowerActivity$24;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 890
    return-void
.end method

.method public QuerypayResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .line 894
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, "RSAKEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 896
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 901
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 902
    .local v5, "code":I
    const/16 v6, 0xc8

    const/4 v7, 0x1

    const v8, 0x7f07013e

    if-ne v5, v6, :cond_0

    .line 903
    iput v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 904
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 905
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetInfo()V

    .line 907
    const v6, 0x7f0e0046

    invoke-static {p0, v6, v8}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 908
    :cond_0
    const/16 v6, 0x9a

    if-ne v5, v6, :cond_1

    .line 909
    const/4 v6, 0x0

    iput v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 910
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    const-wide/16 v8, 0xfa0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 911
    :cond_1
    const/16 v6, 0xc9

    if-ne v5, v6, :cond_2

    .line 913
    iput v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 916
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 918
    :cond_2
    const/16 v6, 0x9b

    if-ne v5, v6, :cond_3

    .line 920
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 921
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    const v6, 0x7f0e01ad

    invoke-static {p0, v6, v8}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 923
    :cond_3
    const/16 v6, 0x99

    if-ne v5, v6, :cond_4

    .line 925
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 926
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    const v6, 0x7f0e003a

    invoke-static {p0, v6, v8}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    :cond_4
    :goto_0
    goto :goto_1

    .line 929
    :catch_0
    move-exception v4

    .line 930
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 932
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public TextResponse(Ljava/lang/String;)V
    .locals 17
    .param p1, "response"    # Ljava/lang/String;

    .line 424
    move-object/from16 v1, p0

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v9, "code"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 433
    .local v9, "code":I
    sget-object v10, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v1, v10, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    .local v10, "miType":I
    const/4 v12, 0x0

    .line 435
    .local v12, "msg":Lorg/json/JSONObject;
    const-string v13, "UTF-8"

    const-string v14, "msg"

    if-ne v10, v11, :cond_0

    .line 436
    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v12, v15

    goto :goto_0

    .line 437
    :cond_0
    const/4 v15, 0x2

    if-ne v10, v15, :cond_1

    .line 438
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v12, v15

    goto :goto_0

    .line 439
    :cond_1
    const/4 v15, 0x3

    if-ne v10, v15, :cond_2

    .line 440
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14, v7}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v12, v15

    .line 442
    :cond_2
    :goto_0
    const-string v13, "content"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 443
    .local v13, "content":Ljava/lang/String;
    const-string v14, "qr_code_url"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 444
    .local v14, "qrCodeUrl":Ljava/lang/String;
    const-string v15, "long_qr_code_url"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 445
    .local v15, "LongQrCodeUrl":Ljava/lang/String;
    const-string v11, "pay_text"

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 446
    .local v11, "pay_text":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .local v16, "jSONObject":Lorg/json/JSONObject;
    const/16 v0, 0xc8

    if-ne v9, v0, :cond_6

    .line 447
    const-string v0, "null"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 448
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_pay_text:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :cond_3
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iput-object v13, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    .line 452
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 453
    iput-object v15, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Long_Qr_code_Url:Ljava/lang/String;

    .line 455
    :cond_4
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 456
    iput-object v14, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_Url:Ljava/lang/String;

    .line 457
    const/4 v0, 0x1

    iput v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_type:I

    goto :goto_1

    .line 459
    :cond_5
    const-string v0, "icon"

    iput-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    .line 460
    const/4 v0, 0x0

    iput v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_type:I

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Webpage/?app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_url:Ljava/lang/String;

    .line 464
    :cond_6
    :goto_1
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 467
    nop

    .end local v9    # "code":I
    .end local v10    # "miType":I
    .end local v11    # "pay_text":Ljava/lang/String;
    .end local v12    # "msg":Lorg/json/JSONObject;
    .end local v13    # "content":Ljava/lang/String;
    .end local v14    # "qrCodeUrl":Ljava/lang/String;
    .end local v15    # "LongQrCodeUrl":Ljava/lang/String;
    .end local v16    # "jSONObject":Lorg/json/JSONObject;
    goto :goto_3

    .line 465
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v8, p1

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method protected findViewById()V
    .locals 4

    .line 533
    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07015b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 534
    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQrLineView:Landroid/widget/ImageView;

    .line 535
    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    .line 536
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sendCode:Landroid/widget/Button;

    .line 537
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->account:Landroid/widget/TextView;

    .line 538
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->jifen:Landroid/widget/TextView;

    .line 539
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->jifen:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vipTime:Landroid/widget/TextView;

    .line 541
    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->editCode:Landroid/widget/EditText;

    .line 542
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_pay_text:Landroid/widget/TextView;

    .line 543
    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_iv_pay_ecode:Landroid/widget/ImageView;

    .line 544
    const v0, 0x7f0802ee

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    .line 545
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    .line 546
    const v1, 0x7f0802f0

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    .line 547
    const v2, 0x7f0802f1

    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    .line 548
    const v3, 0x7f0802de

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_1_message:Landroid/widget/TextView;

    .line 549
    const v3, 0x7f0802e0

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_1_title:Landroid/widget/TextView;

    .line 550
    const v3, 0x7f0802df

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_1_price:Landroid/widget/TextView;

    .line 551
    const v3, 0x7f0802ea

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_1:Landroid/widget/TextView;

    .line 552
    const v3, 0x7f0802f7

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_1:Landroid/widget/LinearLayout;

    .line 553
    const v3, 0x7f0802e1

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_2_message:Landroid/widget/TextView;

    .line 554
    const v3, 0x7f0802e3

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_2_title:Landroid/widget/TextView;

    .line 555
    const v3, 0x7f0802e2

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_2_price:Landroid/widget/TextView;

    .line 556
    const v3, 0x7f0802f8

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_2:Landroid/widget/LinearLayout;

    .line 557
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    .line 558
    const v0, 0x7f0802eb

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_2:Landroid/widget/TextView;

    .line 559
    const v0, 0x7f0802e4

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_3_message:Landroid/widget/TextView;

    .line 560
    const v0, 0x7f0802e6

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_3_title:Landroid/widget/TextView;

    .line 561
    const v0, 0x7f0802e5

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_3_price:Landroid/widget/TextView;

    .line 562
    const v0, 0x7f0802f9

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_3:Landroid/widget/LinearLayout;

    .line 563
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    .line 564
    const v0, 0x7f0802ec

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_3:Landroid/widget/TextView;

    .line 565
    const v0, 0x7f0802e7

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_4_message:Landroid/widget/TextView;

    .line 566
    const v0, 0x7f0802e9

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_4_title:Landroid/widget/TextView;

    .line 567
    const v0, 0x7f0802e8

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_4_price:Landroid/widget/TextView;

    .line 568
    const v0, 0x7f0802fa

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_4:Landroid/widget/LinearLayout;

    .line 569
    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    .line 570
    const v0, 0x7f0802ed

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_4:Landroid/widget/TextView;

    .line 571
    const v0, 0x7f08011d

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->kmviewlayout:Landroid/widget/LinearLayout;

    .line 572
    const v0, 0x7f080166

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->payviewlayout:Landroid/widget/LinearLayout;

    .line 573
    const v0, 0x7f08018d

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    .line 574
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$8;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$9;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$9;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$10;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$10;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$11;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$11;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    const v0, 0x7f0802db

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_card:Landroid/widget/LinearLayout;

    .line 595
    const v0, 0x7f0802f3

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_card:Landroid/widget/RelativeLayout;

    .line 596
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_card:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$12;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$12;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    const v0, 0x7f0802dd

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_convert:Landroid/widget/LinearLayout;

    .line 602
    const v0, 0x7f0802f5

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_fen:Landroid/widget/RelativeLayout;

    .line 603
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_fen:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$13;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$13;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sendCode:Landroid/widget/Button;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$14;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$14;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    return-void
.end method

.method protected initView()V
    .locals 9

    .line 490
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_convert:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_card:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->account:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->account:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, ""

    const-string/jumbo v4, "userName"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->jifen:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->jifen:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v4, "fen"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vipTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "format":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "vip"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "time":Ljava/lang/String;
    const/4 v2, 0x0

    .line 509
    .local v2, "vipstate":I
    :try_start_0
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    .line 510
    const/4 v2, 0x1

    goto :goto_0

    .line 512
    :cond_0
    const/4 v2, 0x0

    .line 516
    :goto_0
    goto :goto_1

    .line 514
    :catch_0
    move-exception v4

    .line 515
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    .line 517
    .end local v4    # "e":Ljava/text/ParseException;
    :goto_1
    const-string v4, "999999999"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 518
    iget-object v4, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vipTime:Landroid/widget/TextView;

    const v5, 0x7f0e0023

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 519
    iget-object v4, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 520
    :cond_1
    if-nez v2, :cond_2

    .line 521
    iget-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vipTime:Landroid/widget/TextView;

    const v4, 0x7f0e0019

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 522
    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 523
    iget-object v4, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vipTime:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    :cond_3
    :goto_2
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 529
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1157
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onBackPressed()V

    .line 1158
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 1159
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 1161
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 1162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 175
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->setContentView(I)V

    .line 177
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById()V

    .line 178
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->initView()V

    .line 179
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->initData()V

    .line 180
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1138
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 1139
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 1140
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 1143
    :cond_0
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/EmpowerActivity;->overridePendingTransition(II)V

    .line 1145
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1149
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 1150
    const-string v0, "EmpowerActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 1151
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 1153
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 1123
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 1125
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1129
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 1130
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 1134
    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 1166
    return-void
.end method
