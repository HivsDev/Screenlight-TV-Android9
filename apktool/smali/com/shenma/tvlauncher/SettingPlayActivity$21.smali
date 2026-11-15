.class Lcom/shenma/tvlauncher/SettingPlayActivity$21;
.super Ljava/lang/Object;
.source "SettingPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 744
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 749
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1200(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 750
    .local v0, "tv_play_theme":Ljava/lang/String;
    const/4 v1, 0x0

    .line 751
    .local v1, "index":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x16

    const/16 v5, 0x15

    const/4 v6, 0x1

    if-nez v2, :cond_8

    .line 752
    const v2, 0x7f070140

    const v7, 0x7f0e0053

    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_0

    goto/16 :goto_4

    .line 770
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 771
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 772
    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 773
    move v1, v4

    .line 770
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 776
    .end local v4    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v6

    if-ne v1, v4, :cond_3

    .line 777
    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1200(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 779
    :cond_3
    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1200(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    :goto_1
    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$2700(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f070118

    .line 782
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 783
    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/SettingPlayActivity;->context:Landroid/content/Context;

    invoke-static {v4, v7, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_4

    .line 754
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 755
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    .line 756
    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 757
    move v1, v4

    .line 754
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 760
    .end local v4    # "i":I
    :cond_6
    if-nez v1, :cond_7

    .line 761
    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1200(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    sub-int/2addr v8, v6

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 763
    :cond_7
    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1200(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$1300(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    :goto_3
    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$2600(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f070116

    .line 766
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 767
    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/SettingPlayActivity;->context:Landroid/content/Context;

    invoke-static {v4, v7, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 768
    nop

    .line 784
    :goto_4
    goto :goto_5

    .line 786
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_b

    .line 787
    if-eq p2, v5, :cond_a

    if-eq p2, v4, :cond_9

    goto :goto_5

    .line 793
    :cond_9
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$2700(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v4, 0x7f070119

    .line 794
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_5

    .line 789
    :cond_a
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$21;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->access$2600(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v4, 0x7f070117

    .line 790
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 798
    :cond_b
    :goto_5
    return v3
.end method
