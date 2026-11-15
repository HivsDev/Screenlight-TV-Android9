.class Lcom/shenma/tvlauncher/UserActivity$6;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->setListener()V
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

    .line 398
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$6;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 402
    .local p1, "pratenView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$6;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->access$800(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const v0, 0x7f080163

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "packname":Ljava/lang/String;
    const v1, 0x7f08003b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "appname":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$6;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/UserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 406
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$6;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/UserActivity;->startActivity(Landroid/content/Intent;)V

    .line 408
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 409
    .local v3, "m_value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "UserAppName"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v4, "UserPackName"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$6;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const-string v5, "USER_APP_NAME"

    invoke-static {v4, v5, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 412
    .end local v0    # "packname":Ljava/lang/String;
    .end local v1    # "appname":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "m_value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 413
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$6;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const-class v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$6;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$900(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vodtype"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$6;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$900(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vodstate"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$6;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$900(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/db/Album;->getNextLink()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nextlink"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$6;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/UserActivity;->startActivity(Landroid/content/Intent;)V

    .line 421
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method
