.class Lcom/shenma/tvlauncher/fragment/AppFragment$2;
.super Ljava/lang/Object;
.source "AppFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/AppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/domain/Upload;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 97
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/domain/Upload;)V
    .locals 2
    .param p1, "response"    # Lcom/shenma/tvlauncher/domain/Upload;

    .line 100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/Upload;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v0, "zhouchuan"

    const-string/jumbo v1, "\u4e0a\u4f20\u6210\u529f"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Lcom/shenma/tvlauncher/domain/Upload;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment$2;->onResponse(Lcom/shenma/tvlauncher/domain/Upload;)V

    return-void
.end method
