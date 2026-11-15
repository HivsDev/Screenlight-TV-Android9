.class Lcom/shenma/tvlauncher/fragment/AppFragment$9;
.super Ljava/lang/Object;
.source "AppFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/AppFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/domain/RecApp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 305
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/domain/RecApp;)V
    .locals 6
    .param p1, "response"    # Lcom/shenma/tvlauncher/domain/RecApp;

    .line 309
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecApp;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecApp;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$502(Lcom/shenma/tvlauncher/fragment/AppFragment;Ljava/util/List;)Ljava/util/List;

    .line 311
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$500(Lcom/shenma/tvlauncher/fragment/AppFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 312
    .local v1, "recAppInfo":Lcom/shenma/tvlauncher/domain/RecAppInfo;
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjtype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$600(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 314
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$602(Lcom/shenma/tvlauncher/fragment/AppFragment;I)I

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$700(Lcom/shenma/tvlauncher/fragment/AppFragment;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$600(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$100(Lcom/shenma/tvlauncher/fragment/AppFragment;)Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 320
    invoke-static {v5}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$600(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v5

    aget-object v4, v4, v5

    .line 319
    const v5, 0x7f070005

    invoke-static {v4, v5, v5}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    .line 316
    invoke-virtual {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 323
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$300(Lcom/shenma/tvlauncher/fragment/AppFragment;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$600(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 325
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$608(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    goto :goto_1

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$800(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    .line 328
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$802(Lcom/shenma/tvlauncher/fragment/AppFragment;I)I

    .line 329
    :cond_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$700(Lcom/shenma/tvlauncher/fragment/AppFragment;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$800(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$100(Lcom/shenma/tvlauncher/fragment/AppFragment;)Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    .line 334
    invoke-static {v5}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$800(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v5

    aget-object v4, v4, v5

    .line 333
    const v5, 0x7f070006

    invoke-static {v4, v5, v5}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    .line 330
    invoke-virtual {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 337
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->access$808(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    .line 339
    .end local v1    # "recAppInfo":Lcom/shenma/tvlauncher/domain/RecAppInfo;
    :goto_1
    goto/16 :goto_0

    .line 341
    :cond_3
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 305
    check-cast p1, Lcom/shenma/tvlauncher/domain/RecApp;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->onResponse(Lcom/shenma/tvlauncher/domain/RecApp;)V

    return-void
.end method
