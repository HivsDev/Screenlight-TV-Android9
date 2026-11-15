.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;
.super Lcom/android/volley/toolbox/StringRequest;
.source "LivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->analysisUrl(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$machineid:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$value:D


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # Ljava/lang/String;
    .param p5, "arg3"    # Lcom/android/volley/Response$ErrorListener;

    .line 1295
    .local p4, "arg2":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iput-object p6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->val$account:Ljava/lang/String;

    iput-object p7, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->val$password:Ljava/lang/String;

    iput-object p8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->val$token:Ljava/lang/String;

    iput-object p9, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->val$machineid:Ljava/lang/String;

    iput-wide p10, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->val$value:D

    iput-object p12, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->val$name:Ljava/lang/String;

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

    .line 1314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1315
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const-string v2, "Authorization"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 3
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

    .line 1298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1300
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    const-string v2, "app"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->val$account:Ljava/lang/String;

    const-string v2, "account"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->val$password:Ljava/lang/String;

    const-string v2, "password"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->val$token:Ljava/lang/String;

    const-string v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->val$machineid:Ljava/lang/String;

    const-string v2, "machineid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    iget-wide v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->val$value:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "edition"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$16;->val$name:Ljava/lang/String;

    const-string/jumbo v2, "vodname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    const-string v1, "line"

    const-string v2, "live"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    const-string v1, "new"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    return-object v0
.end method
