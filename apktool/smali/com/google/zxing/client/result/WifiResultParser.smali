.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .locals 7
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 35
    invoke-static {p1}, Lcom/google/zxing/client/result/WifiResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 36
    .local v2, "rawText":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "WIFI:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    return-object v1

    .line 39
    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x3b

    const-string v4, "S:"

    invoke-static {v4, v2, v3, v0}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 40
    .local v5, "ssid":Ljava/lang/String;
    move-object v5, v4

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    const-string v4, "P:"

    invoke-static {v4, v2, v3, v0}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "pass":Ljava/lang/String;
    const-string v6, "T:"

    invoke-static {v6, v2, v3, v0}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v1, "type":Ljava/lang/String;
    move-object v1, v6

    if-nez v6, :cond_2

    .line 46
    const-string v1, "nopass"

    .line 48
    :cond_2
    const-string v6, "H:"

    invoke-static {v6, v2, v3, v0}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 49
    .local v0, "hidden":Z
    new-instance v3, Lcom/google/zxing/client/result/WifiParsedResult;

    invoke-direct {v3, v1, v5, v4, v0}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v3

    .line 41
    .end local v0    # "hidden":Z
    .end local v1    # "type":Ljava/lang/String;
    .end local v4    # "pass":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1
.end method
