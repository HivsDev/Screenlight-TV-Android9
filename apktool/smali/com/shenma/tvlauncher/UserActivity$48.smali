.class Lcom/shenma/tvlauncher/UserActivity$48;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->email_bind(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 1561
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$48;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 1563
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$48;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/UserActivity;->Error(Lcom/android/volley/VolleyError;)V

    .line 1564
    return-void
.end method
