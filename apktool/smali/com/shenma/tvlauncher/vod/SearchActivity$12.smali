.class Lcom/shenma/tvlauncher/vod/SearchActivity$12;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/SearchActivity;->GetMotion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/SearchActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 592
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$12;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 592
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/SearchActivity$12;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$12;->val$position:I

    invoke-virtual {v0, p1, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->GetMotionResponse(Ljava/lang/String;I)V

    .line 595
    return-void
.end method
