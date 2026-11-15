.class Lcom/shenma/tvlauncher/HistoryActivity$7;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HistoryActivity;->GetMotion(I)V
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
.field final synthetic this$0:Lcom/shenma/tvlauncher/HistoryActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HistoryActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HistoryActivity;

    .line 389
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryActivity$7;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/HistoryActivity$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 389
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/HistoryActivity$7;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryActivity$7;->this$0:Lcom/shenma/tvlauncher/HistoryActivity;

    iget v1, p0, Lcom/shenma/tvlauncher/HistoryActivity$7;->val$position:I

    invoke-virtual {v0, p1, v1}, Lcom/shenma/tvlauncher/HistoryActivity;->GetMotionResponse(Ljava/lang/String;I)V

    .line 392
    return-void
.end method
