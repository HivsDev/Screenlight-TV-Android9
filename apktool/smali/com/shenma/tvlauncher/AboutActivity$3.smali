.class Lcom/shenma/tvlauncher/AboutActivity$3;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/AboutActivity;->GetAbout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/AboutActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/AboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/AboutActivity;

    .line 90
    iput-object p1, p0, Lcom/shenma/tvlauncher/AboutActivity$3;->this$0:Lcom/shenma/tvlauncher/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 93
    return-void
.end method
