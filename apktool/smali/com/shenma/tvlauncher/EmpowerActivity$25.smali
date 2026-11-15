.class Lcom/shenma/tvlauncher/EmpowerActivity$25;
.super Ljava/lang/Object;
.source "EmpowerActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/EmpowerActivity;->GetInfo()V
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
.field final synthetic this$0:Lcom/shenma/tvlauncher/EmpowerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/EmpowerActivity;

    .line 945
    iput-object p1, p0, Lcom/shenma/tvlauncher/EmpowerActivity$25;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 945
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/EmpowerActivity$25;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;

    .line 947
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$25;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/EmpowerActivity;->InfoResponse(Ljava/lang/String;)V

    .line 948
    return-void
.end method
