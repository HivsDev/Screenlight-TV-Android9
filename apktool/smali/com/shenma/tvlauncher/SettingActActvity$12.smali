.class Lcom/shenma/tvlauncher/SettingActActvity$12;
.super Ljava/lang/Object;
.source "SettingActActvity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SettingActActvity;->GetClock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingActActvity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingActActvity;

    .line 368
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingActActvity$12;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 371
    return-void
.end method
