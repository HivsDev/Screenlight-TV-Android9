.class Lcom/shenma/tvlauncher/UserActivity$39;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->Login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;

.field final synthetic val$pwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 1350
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$39;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/UserActivity$39;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1350
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/UserActivity$39;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 1352
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$39;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$39;->val$pwd:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/shenma/tvlauncher/UserActivity;->empowerResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    return-void
.end method
