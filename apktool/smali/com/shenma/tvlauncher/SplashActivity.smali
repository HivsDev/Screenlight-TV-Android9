.class public Lcom/shenma/tvlauncher/SplashActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "SplashActivity.java"


# static fields
.field private static final DETECTION_NET:I = 0x12

.field private static final EXIT:I = 0x8

.field private static final FAIL:I = 0x7

.field private static final GET_CATEGORY_FAIL:I = 0x9

.field private static final GET_INFO_SUCCESS:I = 0xa

.field protected static final TAG:Ljava/lang/String; = "SplashActivity"

.field public static sp:Landroid/content/SharedPreferences;


# instance fields
.field private Msg:Ljava/lang/String;

.field private allow_changing_styles:I

.field private category:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private imgurl:Ljava/lang/String;

.field private interface_style:I

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mishwdecode:I

.field private splash:Landroid/widget/ImageView;

.field private tv_ad_time:I

.field private tv_jump:Landroid/widget/TextView;

.field private tv_jump_id:Landroid/widget/LinearLayout;

.field private tv_jump_time:Landroid/widget/TextView;

.field private tv_splash_version:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 65
    new-instance v0, Lcom/shenma/tvlauncher/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SplashActivity$1;-><init>(Lcom/shenma/tvlauncher/SplashActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->handler:Landroid/os/Handler;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->category:Ljava/lang/String;

    return-void
.end method

.method private Category()V
    .locals 11

    .line 1025
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1027
    const/16 v0, 0x1f40

    .line 1029
    .local v0, "socketTimeout":I
    const-string v1, ""

    const-string v2, "Api_url"

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, "Api_url":Ljava/lang/String;
    const-string v3, "BASE_HOST"

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "BASE_HOST":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/api.php/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Category"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1032
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Lcom/shenma/tvlauncher/SplashActivity$11;

    new-instance v9, Lcom/shenma/tvlauncher/SplashActivity$9;

    invoke-direct {v9, p0}, Lcom/shenma/tvlauncher/SplashActivity$9;-><init>(Lcom/shenma/tvlauncher/SplashActivity;)V

    new-instance v10, Lcom/shenma/tvlauncher/SplashActivity$10;

    invoke-direct {v10, p0}, Lcom/shenma/tvlauncher/SplashActivity$10;-><init>(Lcom/shenma/tvlauncher/SplashActivity;)V

    const/4 v7, 0x1

    move-object v5, v4

    move-object v6, p0

    move-object v8, v3

    invoke-direct/range {v5 .. v10}, Lcom/shenma/tvlauncher/SplashActivity$11;-><init>(Lcom/shenma/tvlauncher/SplashActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1062
    .local v4, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance v5, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v6, v7}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v4, v5}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 1065
    iget-object v5, p0, Lcom/shenma/tvlauncher/SplashActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v5, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1066
    return-void
.end method

.method private CosMainurl()V
    .locals 6

    .line 226
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 228
    const/16 v0, 0x1388

    .line 230
    .local v0, "socketTimeout":I
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/shenma/tvlauncher/Api;->COS_MIAN_URL:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lcom/shenma/tvlauncher/SplashActivity$2;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/SplashActivity$2;-><init>(Lcom/shenma/tvlauncher/SplashActivity;)V

    new-instance v4, Lcom/shenma/tvlauncher/SplashActivity$3;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/SplashActivity$3;-><init>(Lcom/shenma/tvlauncher/SplashActivity;)V

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 240
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v0, v5, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 243
    iget-object v2, p0, Lcom/shenma/tvlauncher/SplashActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 244
    return-void
.end method

.method private Mainurl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "Authorization"    # Ljava/lang/String;

    .line 297
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 299
    const/16 v0, 0x1388

    .line 302
    .local v0, "socketTimeout":I
    new-instance v8, Lcom/shenma/tvlauncher/SplashActivity$6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/SplashActivity$4;

    invoke-direct {v5, p0, p2}, Lcom/shenma/tvlauncher/SplashActivity$4;-><init>(Lcom/shenma/tvlauncher/SplashActivity;Ljava/lang/String;)V

    new-instance v6, Lcom/shenma/tvlauncher/SplashActivity$5;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/SplashActivity$5;-><init>(Lcom/shenma/tvlauncher/SplashActivity;)V

    const/4 v3, 0x1

    move-object v1, v8

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/SplashActivity$6;-><init>(Lcom/shenma/tvlauncher/SplashActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    .line 330
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v0, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 333
    iget-object v2, p0, Lcom/shenma/tvlauncher/SplashActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 334
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->imgurl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->splash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/SplashActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 56
    iget v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->tv_ad_time:I

    return v0
.end method

.method static synthetic access$302(Lcom/shenma/tvlauncher/SplashActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SplashActivity;
    .param p1, "x1"    # I

    .line 56
    iput p1, p0, Lcom/shenma/tvlauncher/SplashActivity;->tv_ad_time:I

    return p1
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->tv_jump_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 56
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SplashActivity;->Category()V

    return-void
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 56
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SplashActivity;->initData()V

    return-void
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->Msg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/shenma/tvlauncher/SplashActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SplashActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/shenma/tvlauncher/SplashActivity;->category:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 56
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SplashActivity;->loadMainUI()V

    return-void
.end method

.method private initData()V
    .locals 4

    .line 216
    sget-object v0, Lcom/shenma/tvlauncher/Api;->COS_MIAN_URL:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/shenma/tvlauncher/Api;->MIAN_URL:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/SplashActivity;->Mainurl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SplashActivity;->CosMainurl()V

    .line 221
    :goto_0
    return-void
.end method

.method private isNetWork()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SplashActivity;->initData()V

    .line 208
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SplashActivity;->showNetDialog(Landroid/content/Context;)V

    .line 211
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x12

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 212
    return-void
.end method

.method private loadMainUI()V
    .locals 3

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    .line 172
    iget-object v1, p0, Lcom/shenma/tvlauncher/SplashActivity;->category:Ljava/lang/String;

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SplashActivity;->finish()V

    .line 176
    return-void
.end method


# virtual methods
.method public CosError(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 274
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    .line 278
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 283
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    .line 288
    instance-of v0, p1, Lcom/android/volley/ServerError;

    .line 292
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/shenma/tvlauncher/Api;->MIAN_URL:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/shenma/tvlauncher/SplashActivity;->Mainurl(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public CosResponse(Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .line 251
    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "jSONObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "url":Ljava/lang/String;
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 255
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/shenma/tvlauncher/SplashActivity;->Mainurl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/String;

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/shenma/tvlauncher/SplashActivity;->Mainurl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_1
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    sget-object v6, Lcom/shenma/tvlauncher/Api;->MIAN_URL:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/String;

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/Utils;->strRot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/shenma/tvlauncher/SplashActivity;->Mainurl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v1    # "jSONObject":Lorg/json/JSONObject;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 269
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public RequestError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 967
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 971
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 975
    :cond_1
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_2

    .line 977
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 979
    :cond_2
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_3

    .line 981
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 984
    :cond_3
    return-void
.end method

.method public RequestResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 95
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "Authorization"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 364
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->a:Ljava/lang/String;

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/Kodi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->rq:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->dp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/shenma/tvlauncher/utils/IO;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/GZUtils;->A([B)[B

    move-result-object v4

    const-string v7, "UTF-8"

    invoke-direct {v3, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 367
    .local v2, "jSONObject":Lorg/json/JSONObject;
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 368
    .local v3, "code":I
    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, "msg":Ljava/lang/String;
    const/16 v7, 0xc8

    if-ne v3, v7, :cond_4

    .line 569
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->b:Ljava/lang/String;

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->kg:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->c:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 570
    .local v7, "ad_url":Ljava/lang/String;
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->b:Ljava/lang/String;

    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/shenma/tvlauncher/utils/Constant;->c:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 571
    .local v8, "user_url":Ljava/lang/String;
    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->b:Ljava/lang/String;

    sget-object v10, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/shenma/tvlauncher/utils/Constant;->c:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 572
    .local v9, "appkey":Ljava/lang/String;
    sget-object v10, Lcom/shenma/tvlauncher/utils/Constant;->b:Ljava/lang/String;

    sget-object v11, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->c:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 573
    .local v10, "rc4key":Ljava/lang/String;
    sget-object v11, Lcom/shenma/tvlauncher/utils/Constant;->b:Ljava/lang/String;

    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/shenma/tvlauncher/utils/Constant;->c:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 575
    .local v11, "mi_rsa_public_key":Ljava/lang/String;
    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->b:Ljava/lang/String;

    sget-object v13, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->c:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 576
    .local v12, "mi_aes_key":Ljava/lang/String;
    sget-object v13, Lcom/shenma/tvlauncher/utils/Constant;->b:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/shenma/tvlauncher/utils/Constant;->c:Ljava/lang/String;

    invoke-static {v13, v14, v15}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 577
    .local v13, "mi_aes_iv":Ljava/lang/String;
    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->b:Ljava/lang/String;

    sget-object v15, Lcom/shenma/tvlauncher/utils/Constant;->bs:Ljava/lang/String;

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->c:Ljava/lang/String;

    invoke-static {v14, v15, v6}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 578
    .local v6, "api_url":Ljava/lang/String;
    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->b:Ljava/lang/String;

    sget-object v15, Lcom/shenma/tvlauncher/utils/Constant;->pd:Ljava/lang/String;

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v3

    .end local v3    # "code":I
    .local v17, "code":I
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->c:Ljava/lang/String;

    invoke-static {v14, v15, v3}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "apikey":Ljava/lang/String;
    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->b:Ljava/lang/String;

    sget-object v15, Lcom/shenma/tvlauncher/utils/Constant;->ot:Ljava/lang/String;

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->c:Ljava/lang/String;

    invoke-static {v14, v15, v5}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 580
    .local v5, "fb_url":Ljava/lang/String;
    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->cz:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 581
    .local v14, "config":Lorg/json/JSONObject;
    sget-object v15, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 582
    .local v15, "play_core":Ljava/lang/String;
    move-object/from16 v18, v2

    .end local v2    # "jSONObject":Lorg/json/JSONObject;
    .local v18, "jSONObject":Lorg/json/JSONObject;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->vy:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "live_core":Ljava/lang/String;
    move-object/from16 v19, v4

    .end local v4    # "msg":Ljava/lang/String;
    .local v19, "msg":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "play_decode":Ljava/lang/String;
    move-object/from16 v20, v2

    .end local v2    # "live_core":Ljava/lang/String;
    .local v20, "live_core":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, "play_ratio":Ljava/lang/String;
    move-object/from16 v21, v2

    .end local v2    # "play_ratio":Ljava/lang/String;
    .local v21, "play_ratio":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 586
    .local v2, "mi_type":I
    move/from16 v22, v2

    .end local v2    # "mi_type":I
    .local v22, "mi_type":I
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->mt:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 587
    .local v2, "packet_buffering":I
    move/from16 v23, v2

    .end local v2    # "packet_buffering":I
    .local v23, "packet_buffering":I
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->mJ:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 588
    .local v2, "videotimeout":I
    move/from16 v24, v2

    .end local v2    # "videotimeout":I
    .local v24, "videotimeout":I
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->YK:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 589
    .local v2, "http_detect_range_support":I
    move/from16 v25, v2

    .end local v2    # "http_detect_range_support":I
    .local v25, "http_detect_range_support":I
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kV:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 590
    .local v2, "reconnect":I
    move/from16 v26, v2

    .end local v2    # "reconnect":I
    .local v26, "reconnect":I
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->Me:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 591
    .local v2, "resources_reconnect":I
    move/from16 v27, v2

    .end local v2    # "resources_reconnect":I
    .local v27, "resources_reconnect":I
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->Hs:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 592
    .local v2, "live_streaming":I
    move/from16 v28, v2

    .end local v2    # "live_streaming":I
    .local v28, "live_streaming":I
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->nR:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 593
    .local v2, "skip_loop_filter":I
    move/from16 v29, v2

    .end local v2    # "skip_loop_filter":I
    .local v29, "skip_loop_filter":I
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->Hu:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 594
    .local v2, "home_text_shadow":I
    move/from16 v30, v2

    .end local v2    # "home_text_shadow":I
    .local v30, "home_text_shadow":I
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ke:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 595
    .local v2, "ad_time":I
    move-object/from16 v31, v15

    .end local v15    # "play_core":Ljava/lang/String;
    .local v31, "play_core":Ljava/lang/String;
    sget-object v15, Lcom/shenma/tvlauncher/utils/Constant;->od:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 596
    .local v15, "ad_jump":I
    move-object/from16 v32, v5

    .end local v5    # "fb_url":Ljava/lang/String;
    .local v32, "fb_url":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->gD:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 597
    .local v5, "trytime":I
    move/from16 v33, v5

    .end local v5    # "trytime":I
    .local v33, "trytime":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->JE:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 598
    .local v5, "submission_method":I
    move/from16 v34, v5

    .end local v5    # "submission_method":I
    .local v34, "submission_method":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->LS:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, "play_jump_end":Ljava/lang/String;
    move-object/from16 v35, v5

    .end local v5    # "play_jump_end":Ljava/lang/String;
    .local v35, "play_jump_end":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->mT:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 600
    .local v5, "play_jump":Ljava/lang/String;
    move-object/from16 v36, v5

    .end local v5    # "play_jump":Ljava/lang/String;
    .local v36, "play_jump":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->WM:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 601
    .local v5, "timeout":I
    move/from16 v37, v5

    .end local v5    # "timeout":I
    .local v37, "timeout":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->MR:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 602
    .local v5, "login_type":I
    move/from16 v38, v5

    .end local v5    # "login_type":I
    .local v38, "login_type":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->MU:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 603
    .local v5, "exit_Message":Ljava/lang/String;
    move-object/from16 v39, v5

    .end local v5    # "exit_Message":Ljava/lang/String;
    .local v39, "exit_Message":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->Nr:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 604
    .local v5, "client":Ljava/lang/String;
    move-object/from16 v40, v5

    .end local v5    # "client":Ljava/lang/String;
    .local v40, "client":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->eg:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, "base_host":Ljava/lang/String;
    move-object/from16 v41, v5

    .end local v5    # "base_host":Ljava/lang/String;
    .local v41, "base_host":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->of:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 606
    .local v5, "ijk_log_debug":I
    move/from16 v42, v5

    .end local v5    # "ijk_log_debug":I
    .local v42, "ijk_log_debug":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->fb:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 607
    .local v5, "fb_type":I
    move/from16 v43, v5

    .end local v5    # "fb_type":I
    .local v43, "fb_type":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->lf:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 608
    .local v5, "vod_notice_starting_time":I
    move/from16 v44, v5

    .end local v5    # "vod_notice_starting_time":I
    .local v44, "vod_notice_starting_time":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->Fi:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 609
    .local v5, "vod_notice_end_time":I
    move/from16 v45, v5

    .end local v5    # "vod_notice_end_time":I
    .local v45, "vod_notice_end_time":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->yv:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 610
    .local v5, "logo_url":Ljava/lang/String;
    move-object/from16 v46, v5

    .end local v5    # "logo_url":Ljava/lang/String;
    .local v46, "logo_url":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->sd:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 611
    .local v5, "episodesnumber":I
    move/from16 v47, v5

    .end local v5    # "episodesnumber":I
    .local v47, "episodesnumber":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->kF:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 612
    .local v5, "vod_logo":I
    move/from16 v48, v5

    .end local v5    # "vod_logo":I
    .local v48, "vod_logo":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->wj:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 613
    .local v5, "trystate":I
    move/from16 v49, v5

    .end local v5    # "trystate":I
    .local v49, "trystate":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->nF:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 614
    .local v5, "topic":I
    move/from16 v50, v5

    .end local v5    # "topic":I
    .local v50, "topic":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->Jv:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 615
    .local v5, "auto_source":I
    move/from16 v51, v5

    .end local v5    # "auto_source":I
    .local v51, "auto_source":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->mr:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 616
    .local v5, "sniff_debug_mode":I
    move/from16 v52, v5

    .end local v5    # "sniff_debug_mode":I
    .local v52, "sniff_debug_mode":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->bw:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 617
    .local v5, "navigation_mode":I
    move/from16 v53, v5

    .end local v5    # "navigation_mode":I
    .local v53, "navigation_mode":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->Fg:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 618
    .local v5, "play_timeout_debug":I
    move/from16 v54, v5

    .end local v5    # "play_timeout_debug":I
    .local v54, "play_timeout_debug":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->fw:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 619
    .local v5, "cornerLabelView":I
    move/from16 v55, v5

    .end local v5    # "cornerLabelView":I
    .local v55, "cornerLabelView":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->hw:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/shenma/tvlauncher/SplashActivity;->interface_style:I

    .line 620
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->aF:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/shenma/tvlauncher/SplashActivity;->allow_changing_styles:I

    .line 621
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->un:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 622
    .local v5, "force_Style":I
    move-object/from16 v56, v3

    .end local v3    # "apikey":Ljava/lang/String;
    .local v56, "apikey":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v5, v3, :cond_0

    .line 623
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->hw:Ljava/lang/String;

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/shenma/tvlauncher/SplashActivity;->interface_style:I

    .line 624
    const/4 v3, 0x0

    iput v3, v1, Lcom/shenma/tvlauncher/SplashActivity;->allow_changing_styles:I

    move/from16 v57, v5

    goto :goto_0

    .line 626
    :cond_0
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->ud:Ljava/lang/String;

    move/from16 v57, v5

    .end local v5    # "force_Style":I
    .local v57, "force_Style":I
    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 627
    const-string v3, "User_Style"

    invoke-static {v1, v3, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/shenma/tvlauncher/SplashActivity;->interface_style:I

    .line 630
    :cond_1
    :goto_0
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->sb:Ljava/lang/String;

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, "pwd_text":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->jw:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 632
    .local v5, "login_control":I
    move/from16 v58, v5

    .end local v5    # "login_control":I
    .local v58, "login_control":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->vu:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 633
    .local v5, "vpn_check":I
    move/from16 v59, v5

    .end local v5    # "vpn_check":I
    .local v59, "vpn_check":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->ft:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 634
    .local v5, "xp_check":I
    move/from16 v60, v5

    .end local v5    # "xp_check":I
    .local v60, "xp_check":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->gw:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 635
    .local v5, "verifysign":Ljava/lang/String;
    move-object/from16 v61, v5

    .end local v5    # "verifysign":Ljava/lang/String;
    .local v61, "verifysign":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->gq:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 636
    .local v5, "verifysign_check":I
    move/from16 v62, v5

    .end local v5    # "verifysign_check":I
    .local v62, "verifysign_check":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->uv:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 637
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v63, v5

    .end local v5    # "name":Ljava/lang/String;
    .local v63, "name":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->ac:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 638
    .local v5, "name_check":I
    move/from16 v64, v5

    .end local v5    # "name_check":I
    .local v64, "name_check":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->fq:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 639
    .local v5, "settings_page":I
    move/from16 v65, v5

    .end local v5    # "settings_page":I
    .local v65, "settings_page":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->fy:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 640
    .local v5, "updatenumber":I
    move/from16 v66, v5

    .end local v5    # "updatenumber":I
    .local v66, "updatenumber":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->th:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 641
    .local v5, "caton_check":I
    move/from16 v67, v5

    .end local v5    # "caton_check":I
    .local v67, "caton_check":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->jd:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 642
    .local v5, "check_time":I
    move/from16 v68, v5

    .end local v5    # "check_time":I
    .local v68, "check_time":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->yx:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 643
    .local v5, "Tackle_mode":I
    move/from16 v69, v5

    .end local v5    # "Tackle_mode":I
    .local v69, "Tackle_mode":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->id:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 644
    .local v5, "networkspeed":I
    move/from16 v70, v5

    .end local v5    # "networkspeed":I
    .local v70, "networkspeed":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->user:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 645
    .local v5, "epg":I
    move/from16 v71, v5

    .end local v5    # "epg":I
    .local v71, "epg":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->gid:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 646
    .local v5, "switchs":I
    move/from16 v72, v5

    .end local v5    # "switchs":I
    .local v72, "switchs":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->yms:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 647
    .local v5, "memory_source":I
    move/from16 v73, v5

    .end local v5    # "memory_source":I
    .local v73, "memory_source":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->oi:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 648
    .local v5, "memory_channel":I
    move/from16 v74, v5

    .end local v5    # "memory_channel":I
    .local v74, "memory_channel":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->vgs:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 649
    .local v5, "framedrop":I
    move/from16 v75, v5

    .end local v5    # "framedrop":I
    .local v75, "framedrop":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->gt:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 650
    .local v5, "start_on_prepared":I
    move/from16 v76, v5

    .end local v5    # "start_on_prepared":I
    .local v76, "start_on_prepared":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->ufe:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 651
    .local v5, "async_init_decoder":I
    move/from16 v77, v5

    .end local v5    # "async_init_decoder":I
    .local v77, "async_init_decoder":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->jda:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 652
    .local v5, "no_time_adjust":I
    move/from16 v78, v5

    .end local v5    # "no_time_adjust":I
    .local v78, "no_time_adjust":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->oge:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 653
    .local v5, "infbuf":I
    move/from16 v79, v5

    .end local v5    # "infbuf":I
    .local v79, "infbuf":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->guda:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 654
    .local v5, "vod_caton_check":I
    move/from16 v80, v5

    .end local v5    # "vod_caton_check":I
    .local v80, "vod_caton_check":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->oftn:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 655
    .local v5, "seizing_time":I
    move/from16 v81, v5

    .end local v5    # "seizing_time":I
    .local v81, "seizing_time":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->ykf:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 656
    .local v5, "live_no_source":I
    move/from16 v82, v5

    .end local v5    # "live_no_source":I
    .local v82, "live_no_source":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->ogy:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 657
    .local v5, "live":I
    move/from16 v83, v5

    .end local v5    # "live":I
    .local v83, "live":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->ldb:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 658
    .local v5, "core_mode":I
    move/from16 v84, v5

    .end local v5    # "core_mode":I
    .local v84, "core_mode":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->ykfa:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 659
    .local v5, "Adblock":I
    move/from16 v85, v5

    .end local v5    # "Adblock":I
    .local v85, "Adblock":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->gag:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 660
    .local v5, "xuanjitype":I
    move/from16 v86, v5

    .end local v5    # "xuanjitype":I
    .local v86, "xuanjitype":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->vys:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 661
    .local v5, "xuanjinumber":I
    move/from16 v87, v5

    .end local v5    # "xuanjinumber":I
    .local v87, "xuanjinumber":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->gida:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 662
    .local v5, "reverse":I
    move/from16 v88, v5

    .end local v5    # "reverse":I
    .local v88, "reverse":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->ogsv:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 663
    .local v5, "remember_source":I
    move/from16 v89, v5

    .end local v5    # "remember_source":I
    .local v89, "remember_source":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->otcb:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 664
    .local v5, "Same_source_search":I
    move/from16 v90, v5

    .end local v5    # "Same_source_search":I
    .local v90, "Same_source_search":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->hym:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 665
    .local v5, "search":I
    move/from16 v91, v5

    .end local v5    # "search":I
    .local v91, "search":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->vtk:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 672
    .local v5, "searchport":I
    iput v2, v1, Lcom/shenma/tvlauncher/SplashActivity;->tv_ad_time:I

    .line 673
    move-object/from16 v92, v14

    .end local v14    # "config":Lorg/json/JSONObject;
    .local v92, "config":Lorg/json/JSONObject;
    iget-object v14, v1, Lcom/shenma/tvlauncher/SplashActivity;->tv_jump_time:Landroid/widget/TextView;

    move/from16 v93, v5

    .end local v5    # "searchport":I
    .local v93, "searchport":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iput-object v7, v1, Lcom/shenma/tvlauncher/SplashActivity;->imgurl:Ljava/lang/String;

    .line 677
    if-nez v15, :cond_2

    .line 678
    iget-object v5, v1, Lcom/shenma/tvlauncher/SplashActivity;->tv_jump_id:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 681
    :cond_2
    const-string/jumbo v5, "\u786c\u89e3\u7801"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 682
    const/4 v5, 0x1

    iput v5, v1, Lcom/shenma/tvlauncher/SplashActivity;->mishwdecode:I

    goto :goto_1

    .line 684
    :cond_3
    const/4 v5, 0x0

    iput v5, v1, Lcom/shenma/tvlauncher/SplashActivity;->mishwdecode:I

    .line 686
    :goto_1
    sget-object v5, Lcom/shenma/tvlauncher/SplashActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    move/from16 v16, v2

    .end local v2    # "ad_time":I
    .local v16, "ad_time":I
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 864
    invoke-static {v8, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v14, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 865
    invoke-static {v9, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 866
    invoke-static {v10, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 867
    invoke-static {v11, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 869
    invoke-static {v12, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 870
    invoke-static {v13, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->bs:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 871
    invoke-static {v6, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->pd:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 872
    move-object/from16 v94, v6

    move-object/from16 v6, v56

    .end local v56    # "apikey":Ljava/lang/String;
    .local v6, "apikey":Ljava/lang/String;
    .local v94, "api_url":Ljava/lang/String;
    invoke-static {v6, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->ot:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 873
    move-object/from16 v56, v6

    move-object/from16 v6, v32

    .end local v32    # "fb_url":Ljava/lang/String;
    .local v6, "fb_url":Ljava/lang/String;
    .restart local v56    # "apikey":Ljava/lang/String;
    invoke-static {v6, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->hd:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 874
    move-object/from16 v32, v6

    move-object/from16 v6, v31

    .end local v31    # "play_core":Ljava/lang/String;
    .local v6, "play_core":Ljava/lang/String;
    .restart local v32    # "fb_url":Ljava/lang/String;
    invoke-static {v6, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->vy:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 875
    move-object/from16 v31, v6

    move-object/from16 v6, v20

    .end local v20    # "live_core":Ljava/lang/String;
    .local v6, "live_core":Ljava/lang/String;
    .restart local v31    # "play_core":Ljava/lang/String;
    invoke-static {v6, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->mg:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 876
    invoke-static {v4, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->dj:Ljava/lang/String;

    iget v14, v1, Lcom/shenma/tvlauncher/SplashActivity;->mishwdecode:I

    .line 877
    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    sget-object v14, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 878
    move-object/from16 v20, v4

    move-object/from16 v4, v21

    .end local v21    # "play_ratio":Ljava/lang/String;
    .local v4, "play_ratio":Ljava/lang/String;
    .local v20, "play_decode":Ljava/lang/String;
    invoke-static {v4, v14}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    .line 879
    move/from16 v14, v22

    .end local v22    # "mi_type":I
    .local v14, "mi_type":I
    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->mt:Ljava/lang/String;

    .line 880
    move-object/from16 v21, v4

    move/from16 v4, v23

    .end local v23    # "packet_buffering":I
    .local v4, "packet_buffering":I
    .restart local v21    # "play_ratio":Ljava/lang/String;
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->mJ:Ljava/lang/String;

    .line 881
    move/from16 v23, v4

    move/from16 v4, v24

    .end local v24    # "videotimeout":I
    .local v4, "videotimeout":I
    .restart local v23    # "packet_buffering":I
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->YK:Ljava/lang/String;

    .line 882
    move/from16 v24, v4

    move/from16 v4, v25

    .end local v25    # "http_detect_range_support":I
    .local v4, "http_detect_range_support":I
    .restart local v24    # "videotimeout":I
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->kV:Ljava/lang/String;

    .line 883
    move/from16 v25, v4

    move/from16 v4, v26

    .end local v26    # "reconnect":I
    .local v4, "reconnect":I
    .restart local v25    # "http_detect_range_support":I
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->Me:Ljava/lang/String;

    .line 884
    move/from16 v26, v4

    move/from16 v4, v27

    .end local v27    # "resources_reconnect":I
    .local v4, "resources_reconnect":I
    .restart local v26    # "reconnect":I
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->Hs:Ljava/lang/String;

    .line 885
    move/from16 v27, v4

    move/from16 v4, v28

    .end local v28    # "live_streaming":I
    .local v4, "live_streaming":I
    .restart local v27    # "resources_reconnect":I
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->nR:Ljava/lang/String;

    .line 886
    move/from16 v28, v4

    move/from16 v4, v29

    .end local v29    # "skip_loop_filter":I
    .local v4, "skip_loop_filter":I
    .restart local v28    # "live_streaming":I
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->Hu:Ljava/lang/String;

    .line 887
    move/from16 v29, v4

    move/from16 v4, v30

    .end local v30    # "home_text_shadow":I
    .local v4, "home_text_shadow":I
    .restart local v29    # "skip_loop_filter":I
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->gD:Ljava/lang/String;

    .line 888
    move/from16 v30, v4

    move/from16 v4, v33

    .end local v33    # "trytime":I
    .local v4, "trytime":I
    .restart local v30    # "home_text_shadow":I
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->JE:Ljava/lang/String;

    .line 889
    move/from16 v33, v4

    move/from16 v4, v34

    .end local v34    # "submission_method":I
    .local v4, "submission_method":I
    .restart local v33    # "trytime":I
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->LS:Ljava/lang/String;

    move/from16 v34, v4

    .end local v4    # "submission_method":I
    .restart local v34    # "submission_method":I
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 890
    move-object/from16 v22, v6

    move-object/from16 v6, v35

    .end local v35    # "play_jump_end":Ljava/lang/String;
    .local v6, "play_jump_end":Ljava/lang/String;
    .local v22, "live_core":Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->mT:Ljava/lang/String;

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 891
    move-object/from16 v35, v6

    move-object/from16 v6, v36

    .end local v36    # "play_jump":Ljava/lang/String;
    .local v6, "play_jump":Ljava/lang/String;
    .restart local v35    # "play_jump_end":Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->WM:Ljava/lang/String;

    .line 892
    move/from16 v5, v37

    .end local v37    # "timeout":I
    .local v5, "timeout":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->MR:Ljava/lang/String;

    .line 893
    move/from16 v37, v5

    move/from16 v5, v38

    .end local v38    # "login_type":I
    .local v5, "login_type":I
    .restart local v37    # "timeout":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->MU:Ljava/lang/String;

    move/from16 v38, v5

    .end local v5    # "login_type":I
    .restart local v38    # "login_type":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 894
    move-object/from16 v36, v6

    move-object/from16 v6, v39

    .end local v39    # "exit_Message":Ljava/lang/String;
    .local v6, "exit_Message":Ljava/lang/String;
    .restart local v36    # "play_jump":Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->Nr:Ljava/lang/String;

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 895
    move-object/from16 v39, v6

    move-object/from16 v6, v40

    .end local v40    # "client":Ljava/lang/String;
    .local v6, "client":Ljava/lang/String;
    .restart local v39    # "exit_Message":Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->fn:Ljava/lang/String;

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 896
    move-object/from16 v40, v6

    move-object/from16 v6, v41

    .end local v41    # "base_host":Ljava/lang/String;
    .local v6, "base_host":Ljava/lang/String;
    .restart local v40    # "client":Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->of:Ljava/lang/String;

    .line 897
    move/from16 v5, v42

    .end local v42    # "ijk_log_debug":I
    .local v5, "ijk_log_debug":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->fb:Ljava/lang/String;

    .line 898
    move/from16 v42, v5

    move/from16 v5, v43

    .end local v43    # "fb_type":I
    .local v5, "fb_type":I
    .restart local v42    # "ijk_log_debug":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->lf:Ljava/lang/String;

    .line 899
    move/from16 v43, v5

    move/from16 v5, v44

    .end local v44    # "vod_notice_starting_time":I
    .local v5, "vod_notice_starting_time":I
    .restart local v43    # "fb_type":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->Fi:Ljava/lang/String;

    .line 900
    move/from16 v44, v5

    move/from16 v5, v45

    .end local v45    # "vod_notice_end_time":I
    .local v5, "vod_notice_end_time":I
    .restart local v44    # "vod_notice_starting_time":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->yv:Ljava/lang/String;

    move/from16 v45, v5

    .end local v5    # "vod_notice_end_time":I
    .restart local v45    # "vod_notice_end_time":I
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 901
    move-object/from16 v41, v6

    move-object/from16 v6, v46

    .end local v46    # "logo_url":Ljava/lang/String;
    .local v6, "logo_url":Ljava/lang/String;
    .restart local v41    # "base_host":Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->sd:Ljava/lang/String;

    .line 902
    move/from16 v5, v47

    .end local v47    # "episodesnumber":I
    .local v5, "episodesnumber":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->kF:Ljava/lang/String;

    .line 903
    move/from16 v47, v5

    move/from16 v5, v48

    .end local v48    # "vod_logo":I
    .local v5, "vod_logo":I
    .restart local v47    # "episodesnumber":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->wj:Ljava/lang/String;

    .line 904
    move/from16 v48, v5

    move/from16 v5, v49

    .end local v49    # "trystate":I
    .local v5, "trystate":I
    .restart local v48    # "vod_logo":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->nF:Ljava/lang/String;

    .line 905
    move/from16 v49, v5

    move/from16 v5, v50

    .end local v50    # "topic":I
    .local v5, "topic":I
    .restart local v49    # "trystate":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->Jv:Ljava/lang/String;

    .line 906
    move/from16 v50, v5

    move/from16 v5, v51

    .end local v51    # "auto_source":I
    .local v5, "auto_source":I
    .restart local v50    # "topic":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->mr:Ljava/lang/String;

    .line 907
    move/from16 v51, v5

    move/from16 v5, v52

    .end local v52    # "sniff_debug_mode":I
    .local v5, "sniff_debug_mode":I
    .restart local v51    # "auto_source":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->bw:Ljava/lang/String;

    .line 908
    move/from16 v52, v5

    move/from16 v5, v53

    .end local v53    # "navigation_mode":I
    .local v5, "navigation_mode":I
    .restart local v52    # "sniff_debug_mode":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->Fg:Ljava/lang/String;

    .line 909
    move/from16 v53, v5

    move/from16 v5, v54

    .end local v54    # "play_timeout_debug":I
    .local v5, "play_timeout_debug":I
    .restart local v53    # "navigation_mode":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->fw:Ljava/lang/String;

    .line 910
    move/from16 v54, v5

    move/from16 v5, v55

    .end local v55    # "cornerLabelView":I
    .local v5, "cornerLabelView":I
    .restart local v54    # "play_timeout_debug":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->hw:Ljava/lang/String;

    move/from16 v55, v5

    .end local v5    # "cornerLabelView":I
    .restart local v55    # "cornerLabelView":I
    iget v5, v1, Lcom/shenma/tvlauncher/SplashActivity;->interface_style:I

    .line 911
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->aF:Ljava/lang/String;

    iget v5, v1, Lcom/shenma/tvlauncher/SplashActivity;->allow_changing_styles:I

    .line 912
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->sb:Ljava/lang/String;

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 913
    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->jw:Ljava/lang/String;

    .line 914
    move/from16 v5, v58

    .end local v58    # "login_control":I
    .local v5, "login_control":I
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->vu:Ljava/lang/String;

    .line 915
    move-object/from16 v46, v3

    move/from16 v3, v59

    .end local v59    # "vpn_check":I
    .local v3, "vpn_check":I
    .local v46, "pwd_text":Ljava/lang/String;
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->ft:Ljava/lang/String;

    .line 916
    move/from16 v59, v3

    move/from16 v3, v60

    .end local v60    # "xp_check":I
    .local v3, "xp_check":I
    .restart local v59    # "vpn_check":I
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->gw:Ljava/lang/String;

    move/from16 v60, v3

    .end local v3    # "xp_check":I
    .restart local v60    # "xp_check":I
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 917
    move/from16 v58, v5

    move-object/from16 v5, v61

    .end local v61    # "verifysign":Ljava/lang/String;
    .local v5, "verifysign":Ljava/lang/String;
    .restart local v58    # "login_control":I
    invoke-static {v5, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->gq:Ljava/lang/String;

    .line 918
    move/from16 v4, v62

    .end local v62    # "verifysign_check":I
    .local v4, "verifysign_check":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->uv:Ljava/lang/String;

    move/from16 v62, v4

    .end local v4    # "verifysign_check":I
    .restart local v62    # "verifysign_check":I
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    .line 919
    move-object/from16 v61, v5

    move-object/from16 v5, v63

    .end local v63    # "name":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    .restart local v61    # "verifysign":Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->ac:Ljava/lang/String;

    .line 920
    move/from16 v4, v64

    .end local v64    # "name_check":I
    .local v4, "name_check":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->Y:Ljava/lang/String;

    move/from16 v64, v4

    .end local v4    # "name_check":I
    .restart local v64    # "name_check":I
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 921
    move-object/from16 v63, v5

    move-object/from16 v5, p2

    .end local v5    # "name":Ljava/lang/String;
    .restart local v63    # "name":Ljava/lang/String;
    :try_start_1
    invoke-static {v5, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->fq:Ljava/lang/String;

    .line 922
    move/from16 v4, v65

    .end local v65    # "settings_page":I
    .local v4, "settings_page":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->fy:Ljava/lang/String;

    .line 923
    move/from16 v65, v4

    move/from16 v4, v66

    .end local v66    # "updatenumber":I
    .local v4, "updatenumber":I
    .restart local v65    # "settings_page":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->th:Ljava/lang/String;

    .line 924
    move/from16 v66, v4

    move/from16 v4, v67

    .end local v67    # "caton_check":I
    .local v4, "caton_check":I
    .restart local v66    # "updatenumber":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->jd:Ljava/lang/String;

    .line 925
    move/from16 v67, v4

    move/from16 v4, v68

    .end local v68    # "check_time":I
    .local v4, "check_time":I
    .restart local v67    # "caton_check":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->yx:Ljava/lang/String;

    .line 926
    move/from16 v68, v4

    move/from16 v4, v69

    .end local v69    # "Tackle_mode":I
    .local v4, "Tackle_mode":I
    .restart local v68    # "check_time":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->id:Ljava/lang/String;

    .line 927
    move/from16 v69, v4

    move/from16 v4, v70

    .end local v70    # "networkspeed":I
    .local v4, "networkspeed":I
    .restart local v69    # "Tackle_mode":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->user:Ljava/lang/String;

    .line 928
    move/from16 v70, v4

    move/from16 v4, v71

    .end local v71    # "epg":I
    .local v4, "epg":I
    .restart local v70    # "networkspeed":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->gid:Ljava/lang/String;

    .line 929
    move/from16 v71, v4

    move/from16 v4, v72

    .end local v72    # "switchs":I
    .local v4, "switchs":I
    .restart local v71    # "epg":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->yms:Ljava/lang/String;

    .line 930
    move/from16 v72, v4

    move/from16 v4, v73

    .end local v73    # "memory_source":I
    .local v4, "memory_source":I
    .restart local v72    # "switchs":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->oi:Ljava/lang/String;

    .line 931
    move/from16 v73, v4

    move/from16 v4, v74

    .end local v74    # "memory_channel":I
    .local v4, "memory_channel":I
    .restart local v73    # "memory_source":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->vgs:Ljava/lang/String;

    .line 932
    move/from16 v74, v4

    move/from16 v4, v75

    .end local v75    # "framedrop":I
    .local v4, "framedrop":I
    .restart local v74    # "memory_channel":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->gt:Ljava/lang/String;

    .line 933
    move/from16 v75, v4

    move/from16 v4, v76

    .end local v76    # "start_on_prepared":I
    .local v4, "start_on_prepared":I
    .restart local v75    # "framedrop":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->ufe:Ljava/lang/String;

    .line 934
    move/from16 v76, v4

    move/from16 v4, v77

    .end local v77    # "async_init_decoder":I
    .local v4, "async_init_decoder":I
    .restart local v76    # "start_on_prepared":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->jda:Ljava/lang/String;

    .line 935
    move/from16 v77, v4

    move/from16 v4, v78

    .end local v78    # "no_time_adjust":I
    .local v4, "no_time_adjust":I
    .restart local v77    # "async_init_decoder":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->oge:Ljava/lang/String;

    .line 936
    move/from16 v78, v4

    move/from16 v4, v79

    .end local v79    # "infbuf":I
    .local v4, "infbuf":I
    .restart local v78    # "no_time_adjust":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->guda:Ljava/lang/String;

    .line 937
    move/from16 v79, v4

    move/from16 v4, v80

    .end local v80    # "vod_caton_check":I
    .local v4, "vod_caton_check":I
    .restart local v79    # "infbuf":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->oftn:Ljava/lang/String;

    .line 938
    move/from16 v80, v4

    move/from16 v4, v81

    .end local v81    # "seizing_time":I
    .local v4, "seizing_time":I
    .restart local v80    # "vod_caton_check":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->ykf:Ljava/lang/String;

    .line 939
    move/from16 v81, v4

    move/from16 v4, v82

    .end local v82    # "live_no_source":I
    .local v4, "live_no_source":I
    .restart local v81    # "seizing_time":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->ogy:Ljava/lang/String;

    .line 940
    move/from16 v82, v4

    move/from16 v4, v83

    .end local v83    # "live":I
    .local v4, "live":I
    .restart local v82    # "live_no_source":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->ldb:Ljava/lang/String;

    .line 941
    move/from16 v83, v4

    move/from16 v4, v84

    .end local v84    # "core_mode":I
    .local v4, "core_mode":I
    .restart local v83    # "live":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->ykfa:Ljava/lang/String;

    .line 942
    move/from16 v84, v4

    move/from16 v4, v85

    .end local v85    # "Adblock":I
    .local v4, "Adblock":I
    .restart local v84    # "core_mode":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->gag:Ljava/lang/String;

    .line 943
    move/from16 v85, v4

    move/from16 v4, v86

    .end local v86    # "xuanjitype":I
    .local v4, "xuanjitype":I
    .restart local v85    # "Adblock":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->vys:Ljava/lang/String;

    .line 944
    move/from16 v86, v4

    move/from16 v4, v87

    .end local v87    # "xuanjinumber":I
    .local v4, "xuanjinumber":I
    .restart local v86    # "xuanjitype":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->gida:Ljava/lang/String;

    .line 945
    move/from16 v87, v4

    move/from16 v4, v88

    .end local v88    # "reverse":I
    .local v4, "reverse":I
    .restart local v87    # "xuanjinumber":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->ogsv:Ljava/lang/String;

    .line 946
    move/from16 v88, v4

    move/from16 v4, v89

    .end local v89    # "remember_source":I
    .local v4, "remember_source":I
    .restart local v88    # "reverse":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->otcb:Ljava/lang/String;

    .line 947
    move/from16 v89, v4

    move/from16 v4, v90

    .end local v90    # "Same_source_search":I
    .local v4, "Same_source_search":I
    .restart local v89    # "remember_source":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->hym:Ljava/lang/String;

    .line 948
    move/from16 v90, v4

    move/from16 v4, v91

    .end local v91    # "search":I
    .local v4, "search":I
    .restart local v90    # "Same_source_search":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->vtk:Ljava/lang/String;

    .line 949
    move/from16 v91, v4

    move/from16 v4, v93

    .end local v93    # "searchport":I
    .local v4, "searchport":I
    .restart local v91    # "search":I
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 950
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 952
    iget-object v2, v1, Lcom/shenma/tvlauncher/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 953
    nop

    .end local v4    # "searchport":I
    .end local v6    # "logo_url":Ljava/lang/String;
    .end local v7    # "ad_url":Ljava/lang/String;
    .end local v8    # "user_url":Ljava/lang/String;
    .end local v9    # "appkey":Ljava/lang/String;
    .end local v10    # "rc4key":Ljava/lang/String;
    .end local v11    # "mi_rsa_public_key":Ljava/lang/String;
    .end local v12    # "mi_aes_key":Ljava/lang/String;
    .end local v13    # "mi_aes_iv":Ljava/lang/String;
    .end local v14    # "mi_type":I
    .end local v15    # "ad_jump":I
    .end local v16    # "ad_time":I
    .end local v20    # "play_decode":Ljava/lang/String;
    .end local v21    # "play_ratio":Ljava/lang/String;
    .end local v22    # "live_core":Ljava/lang/String;
    .end local v23    # "packet_buffering":I
    .end local v24    # "videotimeout":I
    .end local v25    # "http_detect_range_support":I
    .end local v26    # "reconnect":I
    .end local v27    # "resources_reconnect":I
    .end local v28    # "live_streaming":I
    .end local v29    # "skip_loop_filter":I
    .end local v30    # "home_text_shadow":I
    .end local v31    # "play_core":Ljava/lang/String;
    .end local v32    # "fb_url":Ljava/lang/String;
    .end local v33    # "trytime":I
    .end local v34    # "submission_method":I
    .end local v35    # "play_jump_end":Ljava/lang/String;
    .end local v36    # "play_jump":Ljava/lang/String;
    .end local v37    # "timeout":I
    .end local v38    # "login_type":I
    .end local v39    # "exit_Message":Ljava/lang/String;
    .end local v40    # "client":Ljava/lang/String;
    .end local v41    # "base_host":Ljava/lang/String;
    .end local v42    # "ijk_log_debug":I
    .end local v43    # "fb_type":I
    .end local v44    # "vod_notice_starting_time":I
    .end local v45    # "vod_notice_end_time":I
    .end local v46    # "pwd_text":Ljava/lang/String;
    .end local v47    # "episodesnumber":I
    .end local v48    # "vod_logo":I
    .end local v49    # "trystate":I
    .end local v50    # "topic":I
    .end local v51    # "auto_source":I
    .end local v52    # "sniff_debug_mode":I
    .end local v53    # "navigation_mode":I
    .end local v54    # "play_timeout_debug":I
    .end local v55    # "cornerLabelView":I
    .end local v56    # "apikey":Ljava/lang/String;
    .end local v57    # "force_Style":I
    .end local v58    # "login_control":I
    .end local v59    # "vpn_check":I
    .end local v60    # "xp_check":I
    .end local v61    # "verifysign":Ljava/lang/String;
    .end local v62    # "verifysign_check":I
    .end local v63    # "name":Ljava/lang/String;
    .end local v64    # "name_check":I
    .end local v65    # "settings_page":I
    .end local v66    # "updatenumber":I
    .end local v67    # "caton_check":I
    .end local v68    # "check_time":I
    .end local v69    # "Tackle_mode":I
    .end local v70    # "networkspeed":I
    .end local v71    # "epg":I
    .end local v72    # "switchs":I
    .end local v73    # "memory_source":I
    .end local v74    # "memory_channel":I
    .end local v75    # "framedrop":I
    .end local v76    # "start_on_prepared":I
    .end local v77    # "async_init_decoder":I
    .end local v78    # "no_time_adjust":I
    .end local v79    # "infbuf":I
    .end local v80    # "vod_caton_check":I
    .end local v81    # "seizing_time":I
    .end local v82    # "live_no_source":I
    .end local v83    # "live":I
    .end local v84    # "core_mode":I
    .end local v85    # "Adblock":I
    .end local v86    # "xuanjitype":I
    .end local v87    # "xuanjinumber":I
    .end local v88    # "reverse":I
    .end local v89    # "remember_source":I
    .end local v90    # "Same_source_search":I
    .end local v91    # "search":I
    .end local v92    # "config":Lorg/json/JSONObject;
    .end local v94    # "api_url":Ljava/lang/String;
    goto :goto_4

    .line 954
    .end local v17    # "code":I
    .end local v18    # "jSONObject":Lorg/json/JSONObject;
    .end local v19    # "msg":Ljava/lang/String;
    .local v2, "jSONObject":Lorg/json/JSONObject;
    .local v3, "code":I
    .local v4, "msg":Ljava/lang/String;
    :cond_4
    move-object/from16 v5, p2

    move-object/from16 v18, v2

    move/from16 v17, v3

    move-object/from16 v19, v4

    .end local v2    # "jSONObject":Lorg/json/JSONObject;
    .end local v3    # "code":I
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v17    # "code":I
    .restart local v18    # "jSONObject":Lorg/json/JSONObject;
    .restart local v19    # "msg":Ljava/lang/String;
    move-object/from16 v2, v19

    .end local v19    # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    iput-object v2, v1, Lcom/shenma/tvlauncher/SplashActivity;->Msg:Ljava/lang/String;

    .line 955
    iget-object v3, v1, Lcom/shenma/tvlauncher/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 959
    .end local v2    # "msg":Ljava/lang/String;
    .end local v17    # "code":I
    .end local v18    # "jSONObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 957
    :catch_1
    move-exception v0

    goto :goto_3

    .line 959
    :catch_2
    move-exception v0

    move-object/from16 v5, p2

    :goto_2
    move-object v2, v0

    .line 960
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 957
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move-object/from16 v5, p2

    :goto_3
    move-object v2, v0

    .line 958
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 961
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_4
    nop

    .line 962
    :goto_5
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 339
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 340
    .local v0, "keyCode":I
    const/16 v1, 0x17

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    iput v2, p0, Lcom/shenma/tvlauncher/SplashActivity;->tv_ad_time:I

    .line 346
    goto :goto_0

    .line 342
    :cond_1
    iput v2, p0, Lcom/shenma/tvlauncher/SplashActivity;->tv_ad_time:I

    .line 343
    nop

    .line 350
    :goto_0
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected findViewById()V
    .locals 3

    .line 995
    const v0, 0x7f0801fc

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->splash:Landroid/widget/ImageView;

    .line 996
    const v0, 0x7f0802ad

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->tv_splash_version:Landroid/widget/TextView;

    .line 997
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->tv_splash_version:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    const v0, 0x7f08028d

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->tv_jump_time:Landroid/widget/TextView;

    .line 999
    const v0, 0x7f08028b

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->tv_jump:Landroid/widget/TextView;

    .line 1000
    const v0, 0x7f08028c

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->tv_jump_id:Landroid/widget/LinearLayout;

    .line 1003
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->tv_jump:Landroid/widget/TextView;

    new-instance v1, Lcom/shenma/tvlauncher/SplashActivity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SplashActivity$7;-><init>(Lcom/shenma/tvlauncher/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->tv_jump_time:Landroid/widget/TextView;

    new-instance v1, Lcom/shenma/tvlauncher/SplashActivity$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SplashActivity$8;-><init>(Lcom/shenma/tvlauncher/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1014
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 1022
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 988
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 200
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 201
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SplashActivity;->finish()V

    .line 202
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 140
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SplashActivity;->setContentView(I)V

    .line 142
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SplashActivity;->findViewById()V

    .line 143
    const/4 v0, 0x0

    const-string v1, "initData"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/shenma/tvlauncher/SplashActivity;->sp:Landroid/content/SharedPreferences;

    .line 144
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 145
    const/4 v1, 0x1

    .line 146
    .local v1, "REQUEST_CODE_CONTACT":I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    .line 151
    .local v2, "permissions":[Ljava/lang/String;
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 152
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/SplashActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    invoke-virtual {p0, v2, v1}, Lcom/shenma/tvlauncher/SplashActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 151
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "REQUEST_CODE_CONTACT":I
    .end local v2    # "permissions":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 191
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 192
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 164
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 165
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SplashActivity;->isNetWork()V

    .line 166
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 182
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 185
    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 1018
    return-void
.end method
