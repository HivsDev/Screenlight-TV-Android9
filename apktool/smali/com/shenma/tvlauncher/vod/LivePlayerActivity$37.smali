.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;
.super Lcom/android/volley/toolbox/StringRequest;
.source "LivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->getVodGongGao()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

.field final synthetic val$AESIV:Ljava/lang/String;

.field final synthetic val$AESKEY:Ljava/lang/String;

.field final synthetic val$Appkey:Ljava/lang/String;

.field final synthetic val$RC4KEY:Ljava/lang/String;

.field final synthetic val$RSAKEY:Ljava/lang/String;

.field final synthetic val$miType:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # Ljava/lang/String;
    .param p5, "arg3"    # Lcom/android/volley/Response$ErrorListener;

    .line 2915
    .local p4, "arg2":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iput p6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->val$miType:I

    iput-object p7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->val$RC4KEY:Ljava/lang/String;

    iput-object p8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->val$RSAKEY:Ljava/lang/String;

    iput-object p9, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->val$AESKEY:Ljava/lang/String;

    iput-object p10, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->val$AESIV:Ljava/lang/String;

    iput-object p11, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->val$Appkey:Ljava/lang/String;

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

    .line 2942
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2943
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const-string v2, "Authorization"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2944
    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 5
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

    .line 2918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2919
    .local v0, "codedata":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2920
    .local v1, "rc4data":Ljava/lang/String;
    iget v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->val$miType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2921
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->val$RC4KEY:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2922
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2924
    :try_start_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->val$RSAKEY:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->encrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 2927
    :goto_0
    goto :goto_1

    .line 2925
    :catch_0
    move-exception v2

    .line 2926
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 2928
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 2929
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->val$AESKEY:Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->val$AESIV:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/shenma/tvlauncher/utils/AES;->encrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2932
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$37;->val$Appkey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2933
    .local v2, "sign":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2935
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "data"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2936
    const-string v4, "sign"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2937
    return-object v3
.end method
