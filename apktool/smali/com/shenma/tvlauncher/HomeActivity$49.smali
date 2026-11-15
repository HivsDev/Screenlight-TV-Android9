.class Lcom/shenma/tvlauncher/HomeActivity$49;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;

    .line 2203
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$49;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/HomeActivity$49;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2206
    const-string v0, "Authorization"

    const/4 v1, 0x0

    .line 2209
    .local v1, "imageurl":Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$49;->val$url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 2212
    goto :goto_0

    .line 2210
    :catch_0
    move-exception v2

    .line 2211
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 2214
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 2215
    .local v2, "conn":Ljava/net/HttpURLConnection;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$49;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-string v4, ""

    invoke-static {v3, v0, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2217
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 2218
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2219
    .local v0, "is":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$49;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/HomeActivity;->access$2802(Lcom/shenma/tvlauncher/HomeActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2220
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2223
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    goto :goto_1

    .line 2221
    :catch_1
    move-exception v0

    .line 2222
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2224
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
