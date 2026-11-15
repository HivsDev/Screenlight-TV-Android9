.class Lcom/shenma/tvlauncher/SettingPlayActivity$13;
.super Ljava/lang/Object;
.source "SettingPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SettingPlayActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 356
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$13;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 358
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$13;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1200(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    .local v0, "tv_play_theme":Ljava/lang/String;
    const/4 v1, 0x0

    .line 360
    .local v1, "index":I
    const/4 v2, 0x0

    .line 361
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$13;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 362
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$13;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    move v1, v2

    .line 365
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    :cond_1
    if-nez v1, :cond_2

    .line 368
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$13;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1200(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$13;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$13;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 370
    :cond_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$13;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1200(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$13;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :goto_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$13;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/SettingPlayActivity;->context:Landroid/content/Context;

    const v4, 0x7f0e0053

    const v5, 0x7f070140

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 373
    return-void
.end method
