.class Lcom/shenma/tvlauncher/TopicActivity$5;
.super Ljava/lang/Object;
.source "TopicActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/TopicActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/TopicActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/TopicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/TopicActivity;

    .line 273
    iput-object p1, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V
    .locals 4
    .param p1, "response"    # Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    .line 276
    if-eqz p1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->access$002(Lcom/shenma/tvlauncher/TopicActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 278
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Lcom/shenma/tvlauncher/adapter/TopicAdapter;

    iget-object v2, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/TopicActivity;->access$000(Lcom/shenma/tvlauncher/TopicActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/shenma/tvlauncher/adapter/TopicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->access$502(Lcom/shenma/tvlauncher/TopicActivity;Lcom/shenma/tvlauncher/adapter/TopicAdapter;)Lcom/shenma/tvlauncher/adapter/TopicAdapter;

    .line 279
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TopicActivity;->access$600(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$5;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TopicActivity;->access$500(Lcom/shenma/tvlauncher/TopicActivity;)Lcom/shenma/tvlauncher/adapter/TopicAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 281
    :cond_0
    const-string v0, "joychang"

    const-string/jumbo v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25!"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 273
    check-cast p1, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/TopicActivity$5;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V

    return-void
.end method
