.class Lcom/shenma/tvlauncher/SettingInvActivity$5;
.super Ljava/lang/Object;
.source "SettingInvActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SettingInvActivity;->GetInv()V
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
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingInvActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingInvActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingInvActivity;

    .line 201
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingInvActivity$5;->this$0:Lcom/shenma/tvlauncher/SettingInvActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 201
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/SettingInvActivity$5;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingInvActivity$5;->this$0:Lcom/shenma/tvlauncher/SettingInvActivity;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/SettingInvActivity;->InvResponse(Ljava/lang/String;)V

    .line 204
    return-void
.end method
