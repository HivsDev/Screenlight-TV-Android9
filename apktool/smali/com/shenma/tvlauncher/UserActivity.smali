.class public Lcom/shenma/tvlauncher/UserActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "UserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/UserActivity$MyAdapter;,
        Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;
    }
.end annotation


# instance fields
.field private Albumls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/db/Album;",
            ">;"
        }
    .end annotation
.end field

.field private ISAPP:Ljava/lang/Boolean;

.field private Msg:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private USER_TYPE:I

.field private dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

.field private data:Ljava/lang/String;

.field private dbtools:Lcom/shenma/tvlauncher/db/DatabaseOperator;

.field private empower_url:Ljava/lang/String;

.field private fromApp:Ljava/lang/Boolean;

.field private gv_user_type_details_grid:Landroid/widget/GridView;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private logindata:Ljava/lang/String;

.field private mAdapter:Lcom/shenma/tvlauncher/UserActivity$MyAdapter;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogs:Landroid/app/Dialog;

.field private mPosition:I

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mediaHandler:Landroid/os/Handler;

.field private menulist:Landroid/widget/ListView;

.field private menupopupWindow:Landroid/widget/PopupWindow;

.field private myCountDownTimer:Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

.field private notify:Ljava/lang/String;

.field private rb_user:Landroid/widget/RadioButton;

.field private rb_user_alert:Landroid/widget/RadioButton;

.field private rb_user_app:Landroid/widget/RadioButton;

.field private rb_user_collect:Landroid/widget/RadioButton;

.field private rb_user_history:Landroid/widget/RadioButton;

.field private rg_member:Landroid/widget/RadioGroup;

.field private send_code_bt:Landroid/widget/Button;

.field private sign:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private templovLst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/dao/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tv_filter_content:Landroid/widget/TextView;

.field private tv_no_data:Landroid/widget/TextView;

.field private tv_user_name:Landroid/widget/TextView;

.field private type:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

.field private user_inv_et:Landroid/widget/EditText;

.field private user_type_details:Landroid/widget/LinearLayout;

.field private users_empower:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 89
    const-string v0, "UserActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->TAG:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->Albumls:Ljava/util/List;

    .line 101
    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    .line 103
    const/4 v1, -0x1

    iput v1, p0, Lcom/shenma/tvlauncher/UserActivity;->mPosition:I

    .line 106
    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mAdapter:Lcom/shenma/tvlauncher/UserActivity$MyAdapter;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->templovLst:Ljava/util/List;

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->ISAPP:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->fromApp:Ljava/lang/Boolean;

    .line 115
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/UserActivity$1;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    return-void
.end method

.method private Login(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 16
    .param p1, "uNameET"    # Landroid/widget/EditText;
    .param p2, "uPassET"    # Landroid/widget/EditText;
    .param p3, "requestUrl"    # Ljava/lang/String;

    .line 643
    move-object/from16 v7, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v7, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 644
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 645
    .local v8, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 646
    .local v9, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 647
    .local v10, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 648
    .local v11, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 649
    .local v12, "Appkey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->userName:Ljava/lang/String;

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 651
    .local v13, "passWord":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/shenma/tvlauncher/UserActivity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&markcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 654
    .local v14, "logindata":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    .line 655
    .local v15, "miType":I
    if-ne v15, v1, :cond_0

    .line 656
    invoke-static {v14, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 657
    :cond_0
    const/4 v0, 0x2

    if-ne v15, v0, :cond_1

    .line 659
    :try_start_0
    invoke-static {v14, v9}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 662
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 663
    :cond_1
    const/4 v0, 0x3

    if-ne v15, v0, :cond_2

    .line 664
    invoke-static {v10, v14, v11}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 667
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 669
    iget-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f07013e

    if-eqz v0, :cond_3

    .line 670
    const v0, 0x7f0e002e

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_2

    .line 671
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 672
    const v0, 0x7f0e0034

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_2

    .line 674
    :cond_4
    iget-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    const v1, 0x7f0e00f0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 675
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$19;

    const/4 v3, 0x1

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$17;

    invoke-direct {v5, v7, v13}, Lcom/shenma/tvlauncher/UserActivity$17;-><init>(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/String;)V

    new-instance v6, Lcom/shenma/tvlauncher/UserActivity$18;

    invoke-direct {v6, v7}, Lcom/shenma/tvlauncher/UserActivity$18;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/shenma/tvlauncher/UserActivity$19;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 700
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v7, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 702
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    :goto_2
    return-void
.end method

.method private Login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "requestUrl"    # Ljava/lang/String;

    .line 1327
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v7, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1328
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1329
    .local v9, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1330
    .local v10, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1331
    .local v11, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1332
    .local v12, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1333
    .local v13, "Appkey":Ljava/lang/String;
    move-object/from16 v14, p1

    iput-object v14, v7, Lcom/shenma/tvlauncher/UserActivity;->userName:Ljava/lang/String;

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/shenma/tvlauncher/UserActivity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&markcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1335
    .local v15, "logindata":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 1336
    .local v6, "miType":I
    if-ne v6, v1, :cond_0

    .line 1337
    invoke-static {v15, v9}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 1338
    :cond_0
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    .line 1340
    :try_start_0
    invoke-static {v15, v10}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1343
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1344
    :cond_1
    const/4 v0, 0x3

    if-ne v6, v0, :cond_2

    .line 1345
    invoke-static {v11, v15, v12}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 1348
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 1349
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$41;

    const/4 v3, 0x1

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$39;

    invoke-direct {v5, v7, v8}, Lcom/shenma/tvlauncher/UserActivity$39;-><init>(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/String;)V

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$40;

    invoke-direct {v4, v7}, Lcom/shenma/tvlauncher/UserActivity$40;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p3

    move/from16 v17, v6

    .end local v6    # "miType":I
    .local v17, "miType":I
    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/shenma/tvlauncher/UserActivity$41;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1374
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v7, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1376
    return-void
.end method

.method private Regedit(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 17
    .param p1, "uNameET"    # Landroid/widget/EditText;
    .param p2, "uPassET"    # Landroid/widget/EditText;
    .param p3, "uInvET"    # Landroid/widget/EditText;
    .param p4, "URL"    # Ljava/lang/String;

    .line 781
    move-object/from16 v7, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v7, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 782
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 783
    .local v8, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 784
    .local v9, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 785
    .local v10, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 786
    .local v11, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 787
    .local v12, "Appkey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 788
    .local v13, "user":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 789
    .local v14, "passWord":Ljava/lang/String;
    const-string v0, "&t="

    const-string v1, "&markcode="

    const-string v2, "&password="

    const-string/jumbo v3, "user="

    const v4, 0x7f07013e

    if-eqz p3, :cond_1

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 791
    .local v5, "inv":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&inv="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->logindata:Ljava/lang/String;

    .line 792
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    const v0, 0x7f0e0033

    invoke-static {v7, v0, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 794
    return-void

    .line 796
    .end local v5    # "inv":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 797
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->logindata:Ljava/lang/String;

    .line 799
    :goto_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    .line 800
    .local v15, "miType":I
    if-ne v15, v1, :cond_2

    .line 801
    iget-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->logindata:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_2

    .line 802
    :cond_2
    const/4 v0, 0x2

    if-ne v15, v0, :cond_3

    .line 804
    :try_start_0
    iget-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->logindata:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 807
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 808
    :cond_3
    const/4 v0, 0x3

    if-ne v15, v0, :cond_4

    .line 809
    iget-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->logindata:Ljava/lang/String;

    invoke-static {v10, v0, v11}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 812
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/shenma/tvlauncher/UserActivity;->logindata:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 814
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 815
    const v0, 0x7f0e002e

    invoke-static {v7, v0, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 816
    return-void

    .line 818
    :cond_5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 819
    const v0, 0x7f0e0034

    invoke-static {v7, v0, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 820
    return-void

    .line 822
    :cond_6
    iget-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    const v1, 0x7f0e00f1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 823
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$22;

    const/4 v3, 0x1

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$20;

    move-object/from16 v6, p1

    move-object/from16 v4, p2

    invoke-direct {v5, v7, v6, v4}, Lcom/shenma/tvlauncher/UserActivity$20;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$21;

    invoke-direct {v2, v7}, Lcom/shenma/tvlauncher/UserActivity$21;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    move-object v1, v0

    move-object/from16 v16, v2

    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/shenma/tvlauncher/UserActivity$22;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 848
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v7, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 850
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/UserActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/UserActivity;->showUpdateDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_no_data:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_filter_content:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/shenma/tvlauncher/UserActivity;Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    .line 88
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity;->userTypeAdapter:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showUserDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showLogoutDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/shenma/tvlauncher/UserActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget v0, p0, Lcom/shenma/tvlauncher/UserActivity;->USER_TYPE:I

    return v0
.end method

.method static synthetic access$1502(Lcom/shenma/tvlauncher/UserActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # I

    .line 88
    iput p1, p0, Lcom/shenma/tvlauncher/UserActivity;->USER_TYPE:I

    return p1
.end method

.method static synthetic access$1600(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->gv_user_type_details_grid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/shenma/tvlauncher/UserActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$1802(Lcom/shenma/tvlauncher/UserActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # I

    .line 88
    iput p1, p0, Lcom/shenma/tvlauncher/UserActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$1900(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->login_notify()V

    return-void
.end method

.method static synthetic access$2000(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->hideMenu()V

    return-void
.end method

.method static synthetic access$2200(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # Landroid/widget/EditText;
    .param p2, "x2"    # Landroid/widget/EditText;
    .param p3, "x3"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/UserActivity;->Login(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->user_inv_et:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # Landroid/widget/EditText;
    .param p2, "x2"    # Landroid/widget/EditText;
    .param p3, "x3"    # Landroid/widget/EditText;
    .param p4, "x4"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shenma/tvlauncher/UserActivity;->Regedit(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/shenma/tvlauncher/UserActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showUserDialogpwd()V

    return-void
.end method

.method static synthetic access$2700(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showUserDialogempower()V

    return-void
.end method

.method static synthetic access$2800(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_user_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/shenma/tvlauncher/UserActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->empower_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # Landroid/widget/EditText;
    .param p2, "x2"    # Landroid/widget/EditText;
    .param p3, "x3"    # Landroid/widget/EditText;
    .param p4, "x4"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shenma/tvlauncher/UserActivity;->seek_pass(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # Landroid/widget/EditText;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/UserActivity;->send_code(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->seek_empower()V

    return-void
.end method

.method static synthetic access$3500(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/UserActivity;->showUserDialogbinding(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # Landroid/widget/EditText;
    .param p2, "x2"    # Landroid/widget/EditText;
    .param p3, "x3"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/UserActivity;->email_bind(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->send_code_bt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->clearTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->users_empower:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->myCountDownTimer:Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/shenma/tvlauncher/UserActivity;Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;)Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    .line 88
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity;->myCountDownTimer:Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    return-object p1
.end method

.method static synthetic access$702(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 88
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity;->fromApp:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->ISAPP:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$802(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 88
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity;->ISAPP:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->Albumls:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/UserActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 88
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity;->Albumls:Ljava/util/List;

    return-object p1
.end method

.method private clearTimer()V
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->myCountDownTimer:Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    if-eqz v0, :cond_0

    .line 1671
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->cancel()V

    .line 1672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->myCountDownTimer:Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    .line 1674
    :cond_0
    return-void
.end method

.method private email_bind(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 18
    .param p1, "uNameET"    # Landroid/widget/EditText;
    .param p2, "bind_code_et"    # Landroid/widget/EditText;
    .param p3, "requestUrl"    # Ljava/lang/String;

    .line 1533
    move-object/from16 v7, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v7, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1534
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1535
    .local v8, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1536
    .local v9, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1537
    .local v10, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1538
    .local v11, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1539
    .local v12, "Appkey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1540
    .local v13, "email":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 1541
    .local v14, "crc":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "ckinfo"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&crc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1542
    .local v15, "logindata":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 1543
    .local v6, "miType":I
    if-ne v6, v1, :cond_0

    .line 1544
    invoke-static {v15, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 1545
    :cond_0
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    .line 1547
    :try_start_0
    invoke-static {v15, v9}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1550
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1551
    :cond_1
    const/4 v0, 0x3

    if-ne v6, v0, :cond_2

    .line 1552
    invoke-static {v10, v15, v11}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 1554
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 1555
    iget-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    const v1, 0x7f0e00f5

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1556
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$49;

    const/4 v3, 0x1

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$47;

    invoke-direct {v5, v7}, Lcom/shenma/tvlauncher/UserActivity$47;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$48;

    invoke-direct {v4, v7}, Lcom/shenma/tvlauncher/UserActivity$48;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p3

    move/from16 v17, v6

    .end local v6    # "miType":I
    .local v17, "miType":I
    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/shenma/tvlauncher/UserActivity$49;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1581
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v7, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1582
    return-void
.end method

.method private hideMenu()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 510
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "uName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_user_name:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_no_data:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0e01b2

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0e0024

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_no_data:Landroid/widget/TextView;

    const v2, 0x7f0e0125

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 213
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showUserDialog()V

    .line 215
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_no_data:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    return-void
.end method

.method private login_notify()V
    .locals 14

    .line 1231
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1232
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1234
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1235
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1236
    .local v4, "AESIV":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1237
    .local v1, "Appkey":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity;->t:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1238
    .local v5, "logindata":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 1239
    .local v6, "miType":I
    if-ne v6, v7, :cond_0

    .line 1240
    invoke-static {v5, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 1241
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1243
    :try_start_0
    invoke-static {v5, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1244
    :catch_0
    move-exception v7

    .line 1245
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1246
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1247
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 1248
    invoke-static {v3, v5, v4}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 1251
    :cond_2
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 1252
    new-instance v7, Lcom/shenma/tvlauncher/UserActivity$38;

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/shenma/tvlauncher/UserActivity;->notify:Ljava/lang/String;

    new-instance v12, Lcom/shenma/tvlauncher/UserActivity$36;

    invoke-direct {v12, p0}, Lcom/shenma/tvlauncher/UserActivity$36;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    new-instance v13, Lcom/shenma/tvlauncher/UserActivity$37;

    invoke-direct {v13, p0}, Lcom/shenma/tvlauncher/UserActivity$37;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    move-object v8, v7

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/shenma/tvlauncher/UserActivity$38;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1277
    .local v7, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v8, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1278
    return-void
.end method

.method private seek_empower()V
    .locals 15

    .line 1139
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1140
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, "User_url":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1142
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1143
    .local v3, "RSAKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1144
    .local v4, "AESKEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1145
    .local v5, "AESIV":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v6, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1146
    .local v1, "Appkey":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "markcode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->GetAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1147
    .local v6, "logindata":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 1148
    .local v7, "miType":I
    if-ne v7, v8, :cond_0

    .line 1149
    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 1150
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1152
    :try_start_0
    invoke-static {v6, v3}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v8

    .line 1154
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1155
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1156
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 1157
    invoke-static {v4, v6, v5}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 1160
    :cond_2
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 1162
    new-instance v8, Lcom/shenma/tvlauncher/UserActivity$35;

    const/4 v11, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/api.php?app="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&act=empower_logon"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/shenma/tvlauncher/UserActivity$33;

    invoke-direct {v13, p0}, Lcom/shenma/tvlauncher/UserActivity$33;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    new-instance v14, Lcom/shenma/tvlauncher/UserActivity$34;

    invoke-direct {v14, p0}, Lcom/shenma/tvlauncher/UserActivity$34;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    move-object v9, v8

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/shenma/tvlauncher/UserActivity$35;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1187
    .local v8, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v9, p0, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v9, v8}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1188
    return-void
.end method

.method private seek_pass(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 19
    .param p1, "NameET"    # Landroid/widget/EditText;
    .param p2, "codeET"    # Landroid/widget/EditText;
    .param p3, "passET"    # Landroid/widget/EditText;
    .param p4, "requestUrl"    # Ljava/lang/String;

    .line 1026
    move-object/from16 v7, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v7, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1027
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1028
    .local v8, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1029
    .local v9, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1030
    .local v10, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1031
    .local v11, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1032
    .local v12, "Appkey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1033
    .local v13, "email":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 1034
    .local v14, "code":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 1035
    .local v15, "pass":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&crc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&newpassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1036
    .local v6, "logindata":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 1037
    .local v5, "miType":I
    if-ne v5, v1, :cond_0

    .line 1038
    invoke-static {v6, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 1039
    :cond_0
    const/4 v0, 0x2

    if-ne v5, v0, :cond_1

    .line 1041
    :try_start_0
    invoke-static {v6, v9}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1044
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1045
    :cond_1
    const/4 v0, 0x3

    if-ne v5, v0, :cond_2

    .line 1046
    invoke-static {v10, v6, v11}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 1049
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 1050
    iget-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    const v1, 0x7f0e00f5

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1051
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$31;

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$29;

    move-object/from16 v2, p1

    move-object/from16 v1, p3

    invoke-direct {v4, v7, v2, v1}, Lcom/shenma/tvlauncher/UserActivity$29;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    new-instance v3, Lcom/shenma/tvlauncher/UserActivity$30;

    invoke-direct {v3, v7}, Lcom/shenma/tvlauncher/UserActivity$30;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v16, v3

    const/4 v3, 0x1

    move-object/from16 v17, v4

    move-object/from16 v4, p4

    move/from16 v18, v5

    .end local v5    # "miType":I
    .local v18, "miType":I
    move-object/from16 v5, v17

    move-object/from16 v17, v6

    .end local v6    # "logindata":Ljava/lang/String;
    .local v17, "logindata":Ljava/lang/String;
    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/shenma/tvlauncher/UserActivity$31;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1076
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v7, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1077
    return-void
.end method

.method private send_code(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "uNameET"    # Landroid/widget/EditText;
    .param p2, "requestUrl"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 938
    move-object/from16 v7, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v7, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 939
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 940
    .local v8, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 941
    .local v9, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 942
    .local v10, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 943
    .local v11, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 944
    .local v12, "Appkey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 945
    .local v13, "email":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 946
    .local v15, "logindata":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 947
    .local v6, "miType":I
    if-ne v6, v1, :cond_0

    .line 948
    invoke-static {v15, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    goto :goto_1

    .line 949
    :cond_0
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    .line 951
    :try_start_0
    invoke-static {v15, v9}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 954
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 955
    :cond_1
    const/4 v0, 0x3

    if-ne v6, v0, :cond_2

    .line 956
    invoke-static {v10, v15, v11}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->data:Ljava/lang/String;

    .line 959
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->sign:Ljava/lang/String;

    .line 960
    iget-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    const v1, 0x7f0e00f5

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 961
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$28;

    const/4 v3, 0x1

    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$26;

    invoke-direct {v5, v7}, Lcom/shenma/tvlauncher/UserActivity$26;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$27;

    invoke-direct {v4, v7}, Lcom/shenma/tvlauncher/UserActivity$27;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p2

    move/from16 v17, v6

    .end local v6    # "miType":I
    .local v17, "miType":I
    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/shenma/tvlauncher/UserActivity$28;-><init>(Lcom/shenma/tvlauncher/UserActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 986
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v7, Lcom/shenma/tvlauncher/UserActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 987
    return-void
.end method

.method private showLogoutDialog()V
    .locals 5

    .line 600
    new-instance v0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 601
    .local v0, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    const v1, 0x7f0a0035

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 603
    .local v1, "mView":Landroid/view/View;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "Exit"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 604
    .local v2, "Exit":I
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 605
    new-instance v3, Lcom/shenma/tvlauncher/UserActivity$15;

    invoke-direct {v3, p0, v2}, Lcom/shenma/tvlauncher/UserActivity$15;-><init>(Lcom/shenma/tvlauncher/UserActivity;I)V

    const v4, 0x7f0e00f8

    invoke-virtual {v0, v4, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 623
    new-instance v3, Lcom/shenma/tvlauncher/UserActivity$16;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/UserActivity$16;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const v4, 0x7f0e0139

    invoke-virtual {v0, v4, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 630
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->create()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    .line 631
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 632
    return-void
.end method

.method private showMenu()V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$MyAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getUserData(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Lcom/shenma/tvlauncher/UserActivity$MyAdapter;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->mAdapter:Lcom/shenma/tvlauncher/UserActivity$MyAdapter;

    .line 498
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menulist:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mAdapter:Lcom/shenma/tvlauncher/UserActivity$MyAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 499
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f0f0001

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 500
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->user_type_details:Landroid/widget/LinearLayout;

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 501
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06024f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/shenma/tvlauncher/UserActivity;->mHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 503
    :cond_0
    return-void
.end method

.method private showUpdateDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "conetxt"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .line 1448
    new-instance v0, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    invoke-direct {v0, p1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1449
    .local v0, "builder":Lcom/shenma/tvlauncher/view/HomeDialog$Builder;
    const v1, 0x7f0e0055

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setTitle(I)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 1450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0017

    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0e008c

    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 1451
    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$42;

    invoke-direct {v1, p0, p2}, Lcom/shenma/tvlauncher/UserActivity$42;-><init>(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/String;)V

    const v2, 0x7f0e008a

    invoke-virtual {v0, v2, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 1459
    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$43;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$43;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const v2, 0x7f0e0139

    invoke-virtual {v0, v2, v1}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/HomeDialog$Builder;

    .line 1467
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/HomeDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/HomeDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/HomeDialog;->show()V

    .line 1468
    return-void
.end method

.method private showUserDialog()V
    .locals 14

    .line 514
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "User_url":Ljava/lang/String;
    new-instance v1, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 516
    .local v1, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    const/4 v2, 0x0

    const-string v3, "Login_control"

    invoke-static {p0, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const v4, 0x7f0802c1

    const v5, 0x7f0802c2

    const v6, 0x7f0e016e

    const v7, 0x7f0e00f9

    const/4 v8, 0x2

    const-string v9, "login_type"

    const v10, 0x7f0802c5

    const v11, 0x7f0802c3

    const/4 v12, 0x0

    if-nez v3, :cond_1

    .line 517
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    const v13, 0x7f0a0070

    invoke-static {v3, v13, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 518
    .local v3, "mView":Landroid/view/View;
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 519
    .local v11, "user_name_et":Landroid/widget/EditText;
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 521
    .local v10, "user_pass_et":Landroid/widget/EditText;
    invoke-static {p0, v9, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v8, :cond_0

    .line 522
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/shenma/tvlauncher/UserActivity;->user_inv_et:Landroid/widget/EditText;

    .line 523
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 524
    .local v4, "user_inv":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    .end local v4    # "user_inv":Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 529
    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$9;

    invoke-direct {v2, p0, v11, v10, v0}, Lcom/shenma/tvlauncher/UserActivity$9;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 535
    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$10;

    invoke-direct {v2, p0, v11, v10, v0}, Lcom/shenma/tvlauncher/UserActivity$10;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 547
    .end local v3    # "mView":Landroid/view/View;
    .end local v10    # "user_pass_et":Landroid/widget/EditText;
    .end local v11    # "user_name_et":Landroid/widget/EditText;
    goto :goto_0

    .line 548
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    const v13, 0x7f0a006f

    invoke-static {v3, v13, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 549
    .restart local v3    # "mView":Landroid/view/View;
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 550
    .restart local v11    # "user_name_et":Landroid/widget/EditText;
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 552
    .restart local v10    # "user_pass_et":Landroid/widget/EditText;
    invoke-static {p0, v9, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v8, :cond_2

    .line 553
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/shenma/tvlauncher/UserActivity;->user_inv_et:Landroid/widget/EditText;

    .line 554
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 555
    .restart local v4    # "user_inv":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    .end local v4    # "user_inv":Landroid/widget/LinearLayout;
    :cond_2
    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 559
    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$11;

    invoke-direct {v2, p0, v11, v10, v0}, Lcom/shenma/tvlauncher/UserActivity$11;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 565
    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$12;

    invoke-direct {v2, p0, v11, v10, v0}, Lcom/shenma/tvlauncher/UserActivity$12;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 577
    const v2, 0x7f0802c6

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 578
    .local v2, "user_password":Landroid/widget/Button;
    new-instance v4, Lcom/shenma/tvlauncher/UserActivity$13;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/UserActivity$13;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    const v4, 0x7f0802c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 586
    .local v4, "user_empower":Landroid/widget/Button;
    new-instance v5, Lcom/shenma/tvlauncher/UserActivity$14;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/UserActivity$14;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    .end local v2    # "user_password":Landroid/widget/Button;
    .end local v3    # "mView":Landroid/view/View;
    .end local v4    # "user_empower":Landroid/widget/Button;
    .end local v10    # "user_pass_et":Landroid/widget/EditText;
    .end local v11    # "user_name_et":Landroid/widget/EditText;
    :goto_0
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->create()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    .line 595
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 596
    return-void
.end method

.method private showUserDialogbinding(Ljava/lang/String;)V
    .locals 16
    .param p1, "type"    # Ljava/lang/String;

    .line 1472
    move-object/from16 v7, p0

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v7, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1473
    .local v8, "User_url":Ljava/lang/String;
    new-instance v0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v2, v7, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 1474
    .local v9, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x7f0a0009

    invoke-static {v0, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 1475
    .local v10, "mView":Landroid/view/View;
    const v0, 0x7f080049

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    .line 1476
    .local v11, "bind_name_et":Landroid/widget/TextView;
    const v0, 0x7f08004a

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/EditText;

    .line 1477
    .local v12, "bind_phone_et":Landroid/widget/EditText;
    const v0, 0x7f080048

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    .line 1478
    .local v13, "bind_code_et":Landroid/widget/EditText;
    const v0, 0x7f0801d8

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->send_code_bt:Landroid/widget/Button;

    .line 1479
    iget-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "userName"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1480
    .local v14, "string":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1482
    invoke-virtual {v9, v10}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1483
    new-instance v15, Lcom/shenma/tvlauncher/UserActivity$44;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v5, p1

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/shenma/tvlauncher/UserActivity$44;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0e013a

    invoke-virtual {v9, v0, v15}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1503
    new-instance v0, Lcom/shenma/tvlauncher/UserActivity$45;

    invoke-direct {v0, v7}, Lcom/shenma/tvlauncher/UserActivity$45;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const v1, 0x7f0e0139

    invoke-virtual {v9, v1, v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1510
    iget-object v6, v7, Lcom/shenma/tvlauncher/UserActivity;->send_code_bt:Landroid/widget/Button;

    new-instance v15, Lcom/shenma/tvlauncher/UserActivity$46;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/UserActivity$46;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/TextView;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1527
    invoke-virtual {v9}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v0

    iput-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    .line 1528
    iget-object v0, v7, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1529
    return-void
.end method

.method private showUserDialogempower()V
    .locals 4

    .line 1121
    new-instance v0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1122
    .local v0, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    const v2, 0x7f0a0014

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1123
    .local v1, "mView":Landroid/view/View;
    const v2, 0x7f0802cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->users_empower:Landroid/widget/ImageView;

    .line 1124
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 1125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->seek_empower()V

    .line 1126
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->users_empower:Landroid/widget/ImageView;

    new-instance v3, Lcom/shenma/tvlauncher/UserActivity$32;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/UserActivity$32;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1133
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialogs:Landroid/app/Dialog;

    .line 1134
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialogs:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1135
    return-void
.end method

.method private showUserDialogpwd()V
    .locals 13

    .line 886
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "User_url":Ljava/lang/String;
    new-instance v1, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 888
    .local v1, "builder":Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    const v3, 0x7f0a0015

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 889
    .local v8, "mView":Landroid/view/View;
    const v2, 0x7f0802c7

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    .line 890
    .local v9, "user_phone_et":Landroid/widget/EditText;
    const v2, 0x7f0802bf

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/EditText;

    .line 891
    .local v10, "user_code_et":Landroid/widget/EditText;
    const v2, 0x7f0801d8

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->send_code_bt:Landroid/widget/Button;

    .line 892
    const v2, 0x7f0802c4

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/EditText;

    .line 893
    .local v11, "user_new_pass_et":Landroid/widget/EditText;
    invoke-virtual {v1, v8}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 894
    new-instance v12, Lcom/shenma/tvlauncher/UserActivity$23;

    move-object v2, v12

    move-object v3, p0

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/shenma/tvlauncher/UserActivity$23;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    const v2, 0x7f0e013a

    invoke-virtual {v1, v2, v12}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 912
    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$24;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/UserActivity$24;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    const v3, 0x7f0e0139

    invoke-virtual {v1, v3, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 918
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->send_code_bt:Landroid/widget/Button;

    new-instance v3, Lcom/shenma/tvlauncher/UserActivity$25;

    invoke-direct {v3, p0, v9, v0}, Lcom/shenma/tvlauncher/UserActivity$25;-><init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->creates()Lcom/shenma/tvlauncher/view/WiFiDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    .line 933
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 934
    return-void
.end method


# virtual methods
.method public BindResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .line 1586
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1588
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1589
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1590
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1591
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1593
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1594
    .local v4, "jo":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1595
    .local v5, "code":I
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1596
    .local v6, "miType":I
    const/4 v8, 0x0

    .line 1597
    .local v8, "msg":Ljava/lang/String;
    const-string v9, "msg"

    if-ne v6, v7, :cond_0

    .line 1598
    :try_start_1
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 1599
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1600
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 1601
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 1602
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v7

    .line 1604
    :cond_2
    :goto_0
    const/16 v7, 0xc8

    const-string v9, "UTF-8"

    if-ne v5, v7, :cond_3

    .line 1605
    :try_start_2
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1606
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->clearTimer()V

    .line 1607
    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1608
    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1609
    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 1612
    :cond_3
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1613
    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v9, 0x9

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1617
    .end local v4    # "jo":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "miType":I
    .end local v8    # "msg":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_2

    .line 1615
    :catch_0
    move-exception v4

    .line 1616
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1618
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public CodeResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .line 991
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 993
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 995
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 996
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 998
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 999
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1000
    .local v5, "code":I
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    .local v6, "miType":I
    const/4 v8, 0x0

    .line 1002
    .local v8, "msg":Ljava/lang/String;
    const-string v9, "msg"

    if-ne v6, v7, :cond_0

    .line 1003
    :try_start_1
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 1004
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1005
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 1006
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 1007
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v7

    .line 1009
    :cond_2
    :goto_0
    const/16 v7, 0xc8

    const-string v9, "UTF-8"

    if-ne v5, v7, :cond_3

    .line 1010
    :try_start_2
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1011
    .local v7, "keyWord":Ljava/lang/String;
    iput-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1012
    iget-object v9, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1013
    nop

    .end local v7    # "keyWord":Ljava/lang/String;
    goto :goto_1

    .line 1014
    :cond_3
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1015
    .restart local v7    # "keyWord":Ljava/lang/String;
    iput-object v7, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1016
    iget-object v9, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1021
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "miType":I
    .end local v7    # "keyWord":Ljava/lang/String;
    .end local v8    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1019
    :catch_0
    move-exception v4

    .line 1020
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1022
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public EmpowerResponse(Ljava/lang/String;)V
    .locals 14
    .param p1, "response"    # Ljava/lang/String;

    .line 1194
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1196
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1197
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1199
    .local v4, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v5, "jSONObject":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1201
    .local v6, "code":I
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    .local v7, "miType":I
    const/4 v9, 0x0

    .line 1203
    .local v9, "msg":Ljava/lang/String;
    const-string v10, "msg"

    if-ne v7, v8, :cond_0

    .line 1204
    :try_start_1
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    goto :goto_0

    .line 1205
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1206
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    goto :goto_0

    .line 1207
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 1208
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v4}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 1210
    :cond_2
    :goto_0
    const/16 v8, 0xc8

    if-ne v6, v8, :cond_4

    .line 1211
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1212
    .local v8, "jSON":Lorg/json/JSONObject;
    new-instance v10, Lorg/json/JSONObject;

    const-string v11, "info"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v10, "jSONB":Lorg/json/JSONObject;
    const-string v11, "login_url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/shenma/tvlauncher/UserActivity;->empower_url:Ljava/lang/String;

    .line 1214
    const-string v11, "t"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/shenma/tvlauncher/UserActivity;->t:Ljava/lang/String;

    .line 1215
    const-string v11, "notify"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/shenma/tvlauncher/UserActivity;->notify:Ljava/lang/String;

    .line 1216
    iget-object v11, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1217
    iget-object v11, p0, Lcom/shenma/tvlauncher/UserActivity;->notify:Ljava/lang/String;

    if-eq v11, v1, :cond_3

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->notify:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1218
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    const-wide/16 v12, 0xbb8

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1220
    .end local v8    # "jSON":Lorg/json/JSONObject;
    .end local v10    # "jSONB":Lorg/json/JSONObject;
    :cond_3
    goto :goto_1

    .line 1221
    :cond_4
    const-string v1, "UTF-8"

    invoke-static {v9, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1222
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v8, 0x9

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1226
    .end local v5    # "jSONObject":Lorg/json/JSONObject;
    .end local v6    # "code":I
    .end local v7    # "miType":I
    .end local v9    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1224
    :catch_0
    move-exception v1

    .line 1225
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1227
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public Error(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 1622
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1624
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    .line 1628
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 1632
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    .line 1636
    instance-of v0, p1, Lcom/android/volley/ServerError;

    .line 1641
    return-void
.end method

.method public LoginResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 27
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "passWord"    # Ljava/lang/String;

    .line 707
    move-object/from16 v1, p0

    const-string v0, "Exit"

    const-string v2, "fen"

    const-string/jumbo v3, "vip"

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 708
    .local v4, "RC4KEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v6, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 709
    .local v6, "RSAKEY":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v7, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 710
    .local v7, "AESKEY":Ljava/lang/String;
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v8, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 711
    .local v8, "AESIV":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 713
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v10, p1

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 714
    .local v9, "jSONObject":Lorg/json/JSONObject;
    const-string v11, "code"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 715
    .local v11, "code":I
    const/16 v12, 0xc8

    const/4 v14, 0x2

    const/4 v15, 0x1

    const-string v13, "msg"

    if-ne v11, v12, :cond_6

    .line 716
    :try_start_1
    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v12, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 717
    .local v12, "miType":I
    const/16 v17, 0x0

    .line 718
    .local v17, "msg":Lorg/json/JSONObject;
    if-ne v12, v15, :cond_0

    .line 719
    :try_start_2
    new-instance v14, Lorg/json/JSONObject;

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v14

    move-object/from16 v13, v17

    goto :goto_0

    .line 769
    .end local v9    # "jSONObject":Lorg/json/JSONObject;
    .end local v11    # "code":I
    .end local v12    # "miType":I
    .end local v17    # "msg":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object/from16 v10, p2

    move-object v5, v7

    goto/16 :goto_4

    .line 720
    .restart local v9    # "jSONObject":Lorg/json/JSONObject;
    .restart local v11    # "code":I
    .restart local v12    # "miType":I
    .restart local v17    # "msg":Lorg/json/JSONObject;
    :cond_0
    if-ne v12, v14, :cond_1

    .line 721
    new-instance v14, Lorg/json/JSONObject;

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v14

    move-object/from16 v13, v17

    goto :goto_0

    .line 722
    :cond_1
    const/4 v14, 0x3

    if-ne v12, v14, :cond_2

    .line 723
    new-instance v14, Lorg/json/JSONObject;

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13, v8}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v17, v14

    move-object/from16 v13, v17

    goto :goto_0

    .line 722
    :cond_2
    move-object/from16 v13, v17

    .line 725
    .end local v17    # "msg":Lorg/json/JSONObject;
    .local v13, "msg":Lorg/json/JSONObject;
    :goto_0
    :try_start_3
    const-string v14, "token"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 726
    .local v14, "token":Ljava/lang/String;
    const-string v15, "info"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 727
    .local v15, "info":Lorg/json/JSONObject;
    const-string v10, "id"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 728
    .local v10, "id":Ljava/lang/String;
    move-object/from16 v16, v10

    .end local v10    # "id":Ljava/lang/String;
    .local v16, "id":Ljava/lang/String;
    const-string v10, "pic"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 729
    .local v10, "pic":Ljava/lang/String;
    move-object/from16 v17, v10

    .end local v10    # "pic":Ljava/lang/String;
    .local v17, "pic":Ljava/lang/String;
    const-string v10, "name"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 730
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 731
    .local v19, "vip":Ljava/lang/String;
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v20, v18

    .line 732
    .local v20, "fen":Ljava/lang/String;
    move/from16 v18, v11

    .end local v11    # "code":I
    .local v18, "code":I
    const-string v11, "email"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 733
    .local v11, "email":Ljava/lang/String;
    move/from16 v21, v12

    .end local v12    # "miType":I
    .local v21, "miType":I
    const-string/jumbo v12, "user"

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 734
    .local v12, "user":Ljava/lang/String;
    move-object/from16 v22, v13

    .end local v13    # "msg":Lorg/json/JSONObject;
    .local v22, "msg":Lorg/json/JSONObject;
    const-string v13, "phone"

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 735
    .local v13, "phone":I
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v24, v23

    .line 736
    .local v24, "Exit":I
    move-object/from16 v23, v15

    .end local v15    # "info":Lorg/json/JSONObject;
    .local v23, "info":Lorg/json/JSONObject;
    iget-object v15, v1, Lcom/shenma/tvlauncher/UserActivity;->tv_user_name:Landroid/widget/TextView;

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v15, v1, Lcom/shenma/tvlauncher/UserActivity;->tv_no_data:Landroid/widget/TextView;

    move-object/from16 v25, v10

    .end local v10    # "name":Ljava/lang/String;
    .local v25, "name":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v26, v7

    .end local v7    # "AESKEY":Ljava/lang/String;
    .local v26, "AESKEY":Ljava/lang/String;
    const v7, 0x7f0e01b2

    :try_start_4
    invoke-virtual {v1, v7}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f0e0024

    invoke-virtual {v1, v7}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x5

    if-eqz v5, :cond_3

    .line 739
    const-string/jumbo v5, "\u90ae\u7bb1"

    iput-object v5, v1, Lcom/shenma/tvlauncher/UserActivity;->type:Ljava/lang/String;

    .line 740
    iget-object v5, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 742
    :cond_3
    if-nez v13, :cond_4

    .line 743
    const-string/jumbo v5, "\u624b\u673a"

    iput-object v5, v1, Lcom/shenma/tvlauncher/UserActivity;->type:Ljava/lang/String;

    .line 744
    iget-object v5, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 746
    :cond_4
    iget-object v5, v1, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 747
    move/from16 v7, v24

    .end local v24    # "Exit":I
    .local v7, "Exit":I
    invoke-interface {v5, v0, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v5, "userName"

    .line 748
    invoke-interface {v0, v5, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "passWord"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 749
    move-object/from16 v10, p2

    :try_start_5
    invoke-interface {v0, v5, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "ckinfo"

    .line 750
    invoke-interface {v0, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 751
    move-object/from16 v5, v19

    .end local v19    # "vip":Ljava/lang/String;
    .local v5, "vip":Ljava/lang/String;
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 752
    move-object/from16 v3, v20

    .end local v20    # "fen":Ljava/lang/String;
    .local v3, "fen":Ljava/lang/String;
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 753
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 754
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 755
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 757
    .end local v3    # "fen":Ljava/lang/String;
    .end local v5    # "vip":Ljava/lang/String;
    .end local v7    # "Exit":I
    .end local v11    # "email":Ljava/lang/String;
    .end local v12    # "user":Ljava/lang/String;
    .end local v13    # "phone":I
    .end local v14    # "token":Ljava/lang/String;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "pic":Ljava/lang/String;
    .end local v21    # "miType":I
    .end local v22    # "msg":Lorg/json/JSONObject;
    .end local v23    # "info":Lorg/json/JSONObject;
    .end local v25    # "name":Ljava/lang/String;
    :cond_5
    move-object/from16 v5, v26

    goto :goto_3

    .line 769
    .end local v9    # "jSONObject":Lorg/json/JSONObject;
    .end local v18    # "code":I
    :catch_1
    move-exception v0

    move-object/from16 v10, p2

    goto :goto_1

    .end local v26    # "AESKEY":Ljava/lang/String;
    .local v7, "AESKEY":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v10, p2

    move-object v5, v7

    .end local v7    # "AESKEY":Ljava/lang/String;
    .restart local v26    # "AESKEY":Ljava/lang/String;
    goto/16 :goto_4

    .line 758
    .end local v26    # "AESKEY":Ljava/lang/String;
    .restart local v7    # "AESKEY":Ljava/lang/String;
    .restart local v9    # "jSONObject":Lorg/json/JSONObject;
    .local v11, "code":I
    :cond_6
    move-object/from16 v10, p2

    move-object/from16 v26, v7

    move/from16 v18, v11

    .end local v7    # "AESKEY":Ljava/lang/String;
    .end local v11    # "code":I
    .restart local v18    # "code":I
    .restart local v26    # "AESKEY":Ljava/lang/String;
    :try_start_6
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v0, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 759
    .local v0, "miType":I
    const-string v2, "UTF-8"

    if-ne v0, v15, :cond_7

    .line 760
    :try_start_7
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    move-object/from16 v5, v26

    goto :goto_2

    .line 769
    .end local v0    # "miType":I
    .end local v9    # "jSONObject":Lorg/json/JSONObject;
    .end local v18    # "code":I
    :catch_3
    move-exception v0

    :goto_1
    move-object/from16 v5, v26

    goto :goto_4

    .line 761
    .restart local v0    # "miType":I
    .restart local v9    # "jSONObject":Lorg/json/JSONObject;
    .restart local v18    # "code":I
    :cond_7
    if-ne v0, v14, :cond_8

    .line 762
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v5, v26

    goto :goto_2

    .line 763
    :cond_8
    const/4 v3, 0x3

    if-ne v0, v3, :cond_9

    .line 764
    :try_start_8
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v5, v26

    .end local v26    # "AESKEY":Ljava/lang/String;
    .local v5, "AESKEY":Ljava/lang/String;
    :try_start_9
    invoke-static {v5, v3, v8}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    goto :goto_2

    .line 763
    .end local v5    # "AESKEY":Ljava/lang/String;
    .restart local v26    # "AESKEY":Ljava/lang/String;
    :cond_9
    move-object/from16 v5, v26

    .line 766
    .end local v26    # "AESKEY":Ljava/lang/String;
    .restart local v5    # "AESKEY":Ljava/lang/String;
    :goto_2
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 771
    .end local v0    # "miType":I
    .end local v9    # "jSONObject":Lorg/json/JSONObject;
    .end local v18    # "code":I
    :goto_3
    goto :goto_5

    .line 769
    :catch_4
    move-exception v0

    goto :goto_4

    .end local v5    # "AESKEY":Ljava/lang/String;
    .restart local v26    # "AESKEY":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v5, v26

    .end local v26    # "AESKEY":Ljava/lang/String;
    .restart local v5    # "AESKEY":Ljava/lang/String;
    goto :goto_4

    .end local v5    # "AESKEY":Ljava/lang/String;
    .restart local v7    # "AESKEY":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v10, p2

    move-object v5, v7

    .line 770
    .end local v7    # "AESKEY":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "AESKEY":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 772
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method public NotifyResponse(Ljava/lang/String;)V
    .locals 18
    .param p1, "response"    # Ljava/lang/String;

    .line 1283
    move-object/from16 v1, p0

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1284
    .local v3, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1285
    .local v4, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1286
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1287
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1289
    .local v2, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1290
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 1291
    .local v8, "code":I
    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v1, v9, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1292
    .local v9, "miType":I
    const/4 v11, 0x0

    .line 1293
    .local v11, "msg":Ljava/lang/String;
    const-string v12, "msg"

    if-ne v9, v10, :cond_0

    .line 1294
    :try_start_2
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    goto :goto_0

    .line 1319
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v8    # "code":I
    .end local v9    # "miType":I
    .end local v11    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    goto/16 :goto_4

    .line 1295
    .restart local v0    # "jo":Lorg/json/JSONObject;
    .restart local v8    # "code":I
    .restart local v9    # "miType":I
    .restart local v11    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 1296
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    goto :goto_0

    .line 1297
    :cond_1
    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 1298
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v2}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v10

    .line 1300
    :cond_2
    :goto_0
    const/16 v10, 0xc8

    if-ne v8, v10, :cond_5

    .line 1301
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1302
    .local v10, "jot":Lorg/json/JSONObject;
    const-string/jumbo v12, "user"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1303
    .local v12, "user":Ljava/lang/String;
    const-string v13, "pwd"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1304
    .local v13, "pwd":Ljava/lang/String;
    iget-object v14, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialogs:Landroid/app/Dialog;

    if-eqz v14, :cond_4

    iget-object v14, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialogs:Landroid/app/Dialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v14, :cond_4

    .line 1305
    const-string v14, "null"

    if-eq v12, v14, :cond_3

    if-eq v13, v14, :cond_3

    .line 1306
    :try_start_4
    iget-object v14, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialogs:Landroid/app/Dialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->dismiss()V

    .line 1307
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/api.php?app="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "&act=user_logon"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v12, v13, v14}, Lcom/shenma/tvlauncher/UserActivity;->Login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    goto :goto_1

    .line 1309
    :cond_3
    :try_start_5
    iget-object v14, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v15, 0x6

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .end local v2    # "AESIV":Ljava/lang/String;
    .end local v3    # "User_url":Ljava/lang/String;
    .local v16, "User_url":Ljava/lang/String;
    .local v17, "AESIV":Ljava/lang/String;
    const-wide/16 v2, 0xbb8

    :try_start_6
    invoke-virtual {v14, v15, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1304
    .end local v16    # "User_url":Ljava/lang/String;
    .end local v17    # "AESIV":Ljava/lang/String;
    .restart local v2    # "AESIV":Ljava/lang/String;
    .restart local v3    # "User_url":Ljava/lang/String;
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .line 1312
    .end local v2    # "AESIV":Ljava/lang/String;
    .end local v3    # "User_url":Ljava/lang/String;
    .end local v10    # "jot":Lorg/json/JSONObject;
    .end local v12    # "user":Ljava/lang/String;
    .end local v13    # "pwd":Ljava/lang/String;
    .restart local v16    # "User_url":Ljava/lang/String;
    .restart local v17    # "AESIV":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1313
    .end local v16    # "User_url":Ljava/lang/String;
    .end local v17    # "AESIV":Ljava/lang/String;
    .restart local v2    # "AESIV":Ljava/lang/String;
    .restart local v3    # "User_url":Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .end local v2    # "AESIV":Ljava/lang/String;
    .end local v3    # "User_url":Ljava/lang/String;
    .restart local v16    # "User_url":Ljava/lang/String;
    .restart local v17    # "AESIV":Ljava/lang/String;
    const-string v2, "UTF-8"

    invoke-static {v11, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1314
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1315
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialogs:Landroid/app/Dialog;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialogs:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1316
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialogs:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1321
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v8    # "code":I
    .end local v9    # "miType":I
    .end local v11    # "msg":Ljava/lang/String;
    :cond_6
    :goto_2
    goto :goto_5

    .line 1319
    :catch_1
    move-exception v0

    goto :goto_4

    .end local v16    # "User_url":Ljava/lang/String;
    .end local v17    # "AESIV":Ljava/lang/String;
    .restart local v2    # "AESIV":Ljava/lang/String;
    .restart local v3    # "User_url":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v7, p1

    :goto_3
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .line 1320
    .end local v2    # "AESIV":Ljava/lang/String;
    .end local v3    # "User_url":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "User_url":Ljava/lang/String;
    .restart local v17    # "AESIV":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1323
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method public PassResponse(Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "NameET"    # Landroid/widget/EditText;
    .param p3, "passET"    # Landroid/widget/EditText;

    .line 1081
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1083
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, "User_url":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1085
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1086
    .local v3, "RSAKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1087
    .local v4, "AESKEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1089
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v5, "jSONObject":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1091
    .local v6, "code":I
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    .local v7, "miType":I
    const/4 v9, 0x0

    .line 1093
    .local v9, "msg":Ljava/lang/String;
    const-string v10, "msg"

    if-ne v7, v8, :cond_0

    .line 1094
    :try_start_1
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    goto :goto_0

    .line 1095
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1096
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    goto :goto_0

    .line 1097
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 1098
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v8

    .line 1100
    :cond_2
    :goto_0
    const/16 v8, 0xc8

    const-string v10, "UTF-8"

    if-ne v6, v8, :cond_4

    .line 1101
    :try_start_2
    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1102
    .local v8, "keyWord":Ljava/lang/String;
    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1103
    iget-object v10, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1104
    iget-object v10, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1105
    iget-object v10, p0, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    .line 1108
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/api.php?app="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "&act=user_logon"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p2, p3, v10}, Lcom/shenma/tvlauncher/UserActivity;->Login(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1109
    .end local v8    # "keyWord":Ljava/lang/String;
    goto :goto_1

    .line 1110
    :cond_4
    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1111
    .restart local v8    # "keyWord":Ljava/lang/String;
    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1112
    iget-object v10, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1116
    .end local v5    # "jSONObject":Lorg/json/JSONObject;
    .end local v6    # "code":I
    .end local v7    # "miType":I
    .end local v8    # "keyWord":Ljava/lang/String;
    .end local v9    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1114
    :catch_0
    move-exception v5

    .line 1115
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1117
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public RegeditResponse(Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "uNameET"    # Landroid/widget/EditText;
    .param p3, "uPassET"    # Landroid/widget/EditText;

    .line 855
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "User_url":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 858
    .local v3, "RSAKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 859
    .local v4, "AESKEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v5, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, "AESIV":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 862
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 863
    .local v5, "jSONObject":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 864
    .local v6, "code":I
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 865
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/api.php?app="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&act=user_logon"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, p3, v7}, Lcom/shenma/tvlauncher/UserActivity;->Login(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_1

    .line 867
    :cond_0
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    .local v7, "miType":I
    const-string v9, "UTF-8"

    const-string v10, "msg"

    if-ne v7, v8, :cond_1

    .line 869
    :try_start_1
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    goto :goto_0

    .line 870
    :cond_1
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 871
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    goto :goto_0

    .line 873
    :cond_2
    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 874
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 876
    :cond_3
    :goto_0
    iget-object v8, p0, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 881
    .end local v5    # "jSONObject":Lorg/json/JSONObject;
    .end local v6    # "code":I
    .end local v7    # "miType":I
    :goto_1
    goto :goto_2

    .line 879
    :catch_0
    move-exception v5

    .line 880
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 882
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 223
    .local v0, "keyCode":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x17

    if-eq v0, v1, :cond_2

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->ISAPP:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 226
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->showMenu()V

    goto :goto_0

    .line 236
    :cond_1
    goto :goto_0

    .line 233
    :cond_2
    goto :goto_0

    .line 238
    :cond_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->hideMenu()V

    .line 239
    nop

    .line 243
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public empowerResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 25
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "passWord"    # Ljava/lang/String;

    .line 1381
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

    .line 1382
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1383
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1384
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1385
    .local v7, "AESIV":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1387
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v9, p1

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1388
    .local v8, "jSONObject":Lorg/json/JSONObject;
    const-string v10, "code"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1389
    .local v10, "code":I
    const/16 v11, 0xc8

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const-string v15, "msg"

    if-ne v10, v11, :cond_6

    .line 1390
    :try_start_1
    sget-object v11, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v11, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1391
    .local v11, "miType":I
    const/16 v16, 0x0

    .line 1392
    .local v16, "msg":Lorg/json/JSONObject;
    if-ne v11, v14, :cond_0

    .line 1393
    :try_start_2
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v12

    goto :goto_0

    .line 1394
    :cond_0
    if-ne v11, v13, :cond_1

    .line 1395
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v12

    goto :goto_0

    .line 1396
    :cond_1
    if-ne v11, v12, :cond_2

    .line 1397
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13, v7}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v16, v12

    goto :goto_0

    .line 1396
    :cond_2
    move-object/from16 v12, v16

    .line 1399
    .end local v16    # "msg":Lorg/json/JSONObject;
    .local v12, "msg":Lorg/json/JSONObject;
    :goto_0
    :try_start_3
    const-string v13, "token"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1400
    .local v13, "token":Ljava/lang/String;
    const-string v14, "info"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 1401
    .local v14, "info":Lorg/json/JSONObject;
    const-string v15, "id"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1402
    .local v15, "id":Ljava/lang/String;
    const-string v9, "pic"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1403
    .local v9, "pic":Ljava/lang/String;
    move-object/from16 v16, v9

    .end local v9    # "pic":Ljava/lang/String;
    .local v16, "pic":Ljava/lang/String;
    const-string v9, "name"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1404
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1405
    .local v18, "vip":Ljava/lang/String;
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v19, v17

    .line 1406
    .local v19, "fen":Ljava/lang/String;
    move/from16 v17, v10

    .end local v10    # "code":I
    .local v17, "code":I
    const-string v10, "email"

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1407
    .local v10, "email":Ljava/lang/String;
    move/from16 v20, v11

    .end local v11    # "miType":I
    .local v20, "miType":I
    const-string/jumbo v11, "user"

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1408
    .local v11, "user":Ljava/lang/String;
    move-object/from16 v21, v12

    .end local v12    # "msg":Lorg/json/JSONObject;
    .local v21, "msg":Lorg/json/JSONObject;
    const-string v12, "phone"

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1409
    .local v12, "phone":I
    move-object/from16 v22, v14

    .end local v14    # "info":Lorg/json/JSONObject;
    .local v22, "info":Lorg/json/JSONObject;
    iget-object v14, v1, Lcom/shenma/tvlauncher/UserActivity;->tv_user_name:Landroid/widget/TextView;

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1410
    iget-object v14, v1, Lcom/shenma/tvlauncher/UserActivity;->tv_no_data:Landroid/widget/TextView;

    move-object/from16 v23, v9

    .end local v9    # "name":Ljava/lang/String;
    .local v23, "name":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v15

    .end local v15    # "id":Ljava/lang/String;
    .local v24, "id":Ljava/lang/String;
    const v15, 0x7f0e01b2

    invoke-virtual {v1, v15}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v15, 0x7f0e0024

    invoke-virtual {v1, v15}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v9, 0x5

    if-eqz v4, :cond_3

    .line 1412
    :try_start_4
    const-string/jumbo v4, "\u90ae\u7bb1"

    iput-object v4, v1, Lcom/shenma/tvlauncher/UserActivity;->type:Ljava/lang/String;

    .line 1413
    iget-object v4, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1415
    :cond_3
    if-nez v12, :cond_4

    .line 1416
    const-string/jumbo v4, "\u624b\u673a"

    iput-object v4, v1, Lcom/shenma/tvlauncher/UserActivity;->type:Ljava/lang/String;

    .line 1417
    iget-object v4, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1419
    :cond_4
    :try_start_5
    iget-object v4, v1, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v9, "userName"

    .line 1420
    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v9, "passWord"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1421
    move-object/from16 v14, p2

    :try_start_6
    invoke-interface {v4, v9, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v9, "ckinfo"

    .line 1422
    invoke-interface {v4, v9, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1423
    move-object/from16 v9, v18

    .end local v18    # "vip":Ljava/lang/String;
    .local v9, "vip":Ljava/lang/String;
    invoke-interface {v4, v2, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1424
    move-object/from16 v4, v19

    .end local v19    # "fen":Ljava/lang/String;
    .local v4, "fen":Ljava/lang/String;
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1425
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1426
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1427
    iget-object v0, v1, Lcom/shenma/tvlauncher/UserActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1429
    .end local v4    # "fen":Ljava/lang/String;
    .end local v9    # "vip":Ljava/lang/String;
    .end local v10    # "email":Ljava/lang/String;
    .end local v11    # "user":Ljava/lang/String;
    .end local v12    # "phone":I
    .end local v13    # "token":Ljava/lang/String;
    .end local v16    # "pic":Ljava/lang/String;
    .end local v20    # "miType":I
    .end local v21    # "msg":Lorg/json/JSONObject;
    .end local v22    # "info":Lorg/json/JSONObject;
    .end local v23    # "name":Ljava/lang/String;
    .end local v24    # "id":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 1441
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v17    # "code":I
    :catch_0
    move-exception v0

    move-object/from16 v14, p2

    goto :goto_3

    .line 1430
    .restart local v8    # "jSONObject":Lorg/json/JSONObject;
    .local v10, "code":I
    :cond_6
    move/from16 v17, v10

    .end local v10    # "code":I
    .restart local v17    # "code":I
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v0, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1431
    .local v0, "miType":I
    const-string v2, "UTF-8"

    if-ne v0, v14, :cond_7

    .line 1432
    :try_start_7
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    goto :goto_1

    .line 1433
    :cond_7
    if-ne v0, v13, :cond_8

    .line 1434
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    goto :goto_1

    .line 1435
    :cond_8
    if-ne v0, v12, :cond_9

    .line 1436
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v7}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->Msg:Ljava/lang/String;

    .line 1438
    :cond_9
    :goto_1
    iget-object v2, v1, Lcom/shenma/tvlauncher/UserActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1443
    .end local v0    # "miType":I
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v17    # "code":I
    :goto_2
    goto :goto_4

    .line 1441
    :catch_1
    move-exception v0

    .line 1442
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1444
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method protected findViewById()V
    .locals 3

    .line 255
    const v0, 0x7f0802b5

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_user_name:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f0801b8

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rg_member:Landroid/widget/RadioGroup;

    .line 257
    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rb_user:Landroid/widget/RadioButton;

    .line 258
    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rb_user_alert:Landroid/widget/RadioButton;

    .line 259
    const v0, 0x7f0801a7

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rb_user_history:Landroid/widget/RadioButton;

    .line 260
    const v0, 0x7f0801a5

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rb_user_app:Landroid/widget/RadioButton;

    .line 261
    const v0, 0x7f0801a6

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rb_user_collect:Landroid/widget/RadioButton;

    .line 262
    const v0, 0x7f0802ca

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->gv_user_type_details_grid:Landroid/widget/GridView;

    .line 263
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->gv_user_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 264
    const v0, 0x7f0802c9

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->user_type_details:Landroid/widget/LinearLayout;

    .line 265
    const v0, 0x7f08029e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_no_data:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->tv_filter_content:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rb_user:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 268
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 198
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->loadViewLayout()V

    .line 199
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById()V

    .line 200
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->setListener()V

    .line 201
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->onCreateMenu()V

    .line 250
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 161
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->setContentView(I)V

    .line 163
    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07015b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 164
    new-instance v0, Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/dao/VodDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    .line 165
    new-instance v0, Lcom/shenma/tvlauncher/db/DatabaseOperator;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/db/DatabaseOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->dbtools:Lcom/shenma/tvlauncher/db/DatabaseOperator;

    .line 166
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/UserActivity;->initView()V

    .line 167
    invoke-direct {p0}, Lcom/shenma/tvlauncher/UserActivity;->initData()V

    .line 168
    return-void
.end method

.method public onCreateMenu()V
    .locals 3

    .line 428
    const v0, 0x7f0a0038

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 429
    .local v0, "menuView":Landroid/view/View;
    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menulist:Landroid/widget/ListView;

    .line 430
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    .line 431
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 432
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 433
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menupopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 434
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$7;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/UserActivity$7;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 449
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->menulist:Landroid/widget/ListView;

    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$8;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/UserActivity$8;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 492
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 180
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 181
    const-string v0, "UserActivity"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 183
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 184
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 189
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 190
    const-string v0, "UserActivity"

    const-string v1, "onResume()..."

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 192
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 193
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 174
    const-string v0, "UserActivity"

    const-string v1, "onStart()..."

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->rg_member:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$2;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$2;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->rg_member:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity;->rg_member:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/shenma/tvlauncher/UserActivity$3;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/UserActivity$3;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->gv_user_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$4;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$4;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 387
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->gv_user_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$5;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$5;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 398
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity;->gv_user_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/UserActivity$6;-><init>(Lcom/shenma/tvlauncher/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 424
    return-void
.end method
