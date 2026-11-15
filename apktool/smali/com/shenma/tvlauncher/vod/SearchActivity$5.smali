.class Lcom/shenma/tvlauncher/vod/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;

    .line 271
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/widget/TextView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .line 275
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    const-string v1, "MOVIE"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$202(Lcom/shenma/tvlauncher/vod/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$300(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 279
    .local v0, "text":Landroid/text/Editable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "search":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$402(Lcom/shenma/tvlauncher/vod/SearchActivity;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$400(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .end local v1    # "search":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->access$500(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    .line 286
    .end local v0    # "text":Landroid/text/Editable;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
