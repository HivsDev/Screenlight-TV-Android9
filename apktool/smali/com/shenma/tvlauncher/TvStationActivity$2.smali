.class Lcom/shenma/tvlauncher/TvStationActivity$2;
.super Ljava/lang/Object;
.source "TvStationActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/TvStationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/domain/TVStation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/TvStationActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/TvStationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/TvStationActivity;

    .line 68
    iput-object p1, p0, Lcom/shenma/tvlauncher/TvStationActivity$2;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/domain/TVStation;)V
    .locals 5
    .param p1, "response"    # Lcom/shenma/tvlauncher/domain/TVStation;

    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/TVStation;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity$2;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/TVStation;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/TvStationActivity;->access$100(Lcom/shenma/tvlauncher/TvStationActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/TvStationActivity;->access$002(Lcom/shenma/tvlauncher/TvStationActivity;Ljava/util/List;)Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/shenma/tvlauncher/TvStationActivity$2;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TvStationActivity;->access$300(Lcom/shenma/tvlauncher/TvStationActivity;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/TvStationActivity$2;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/TvStationActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/shenma/tvlauncher/TvStationActivity$2;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/TvStationActivity;->access$000(Lcom/shenma/tvlauncher/TvStationActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/TvStationActivity$2;->this$0:Lcom/shenma/tvlauncher/TvStationActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/TvStationActivity;->access$200(Lcom/shenma/tvlauncher/TvStationActivity;)Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/shenma/tvlauncher/adapter/TvStationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/volley/toolbox/ImageLoader;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, Lcom/shenma/tvlauncher/domain/TVStation;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/TvStationActivity$2;->onResponse(Lcom/shenma/tvlauncher/domain/TVStation;)V

    return-void
.end method
