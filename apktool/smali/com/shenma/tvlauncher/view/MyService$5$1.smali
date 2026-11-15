.class Lcom/shenma/tvlauncher/view/MyService$5$1;
.super Ljava/lang/Object;
.source "MyService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/view/MyService$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/view/MyService$5;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/MyService$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/view/MyService$5;

    .line 162
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/MyService$5$1;->this$1:Lcom/shenma/tvlauncher/view/MyService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 166
    return-void
.end method
