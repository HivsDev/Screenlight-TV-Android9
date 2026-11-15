.class Lcom/shenma/tvlauncher/SplashActivity$3;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SplashActivity;->CosMainurl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SplashActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SplashActivity;

    .line 235
    iput-object p1, p0, Lcom/shenma/tvlauncher/SplashActivity$3;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 237
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$3;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/SplashActivity;->CosError(Lcom/android/volley/VolleyError;)V

    .line 238
    return-void
.end method
