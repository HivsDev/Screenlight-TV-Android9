.class Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;
.super Lcom/android/volley/toolbox/StringRequest;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/RecommendFragment;->GetMotion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

.field final synthetic val$AESIV:Ljava/lang/String;

.field final synthetic val$AESKEY:Ljava/lang/String;

.field final synthetic val$Appkey:Ljava/lang/String;

.field final synthetic val$RC4KEY:Ljava/lang/String;

.field final synthetic val$RSAKEY:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/RecommendFragment;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # Ljava/lang/String;
    .param p5, "arg3"    # Lcom/android/volley/Response$ErrorListener;

    .line 1330
    .local p4, "arg2":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iput-object p6, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->val$RC4KEY:Ljava/lang/String;

    iput-object p7, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->val$RSAKEY:Ljava/lang/String;

    iput-object p8, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->val$AESKEY:Ljava/lang/String;

    iput-object p9, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->val$AESIV:Ljava/lang/String;

    iput-object p10, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->val$Appkey:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 1357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1358
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Authorization"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->sp:Landroid/content/SharedPreferences;

    const-string v2, "ckinfo"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1334
    .local v0, "codedata":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1335
    .local v1, "miType":I
    const/4 v2, 0x0

    .line 1336
    .local v2, "rc4data":Ljava/lang/String;
    if-ne v1, v3, :cond_0

    .line 1337
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->val$RC4KEY:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1338
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1340
    :try_start_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->val$RSAKEY:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 1343
    :goto_0
    goto :goto_1

    .line 1341
    :catch_0
    move-exception v3

    .line 1342
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1344
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 1345
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->val$AESKEY:Ljava/lang/String;

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->val$AESIV:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1348
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$7;->val$Appkey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1349
    .local v3, "sign":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1350
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "data"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    const-string v5, "sign"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    return-object v4
.end method
