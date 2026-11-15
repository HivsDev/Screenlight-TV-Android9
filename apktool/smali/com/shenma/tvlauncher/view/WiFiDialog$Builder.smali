.class public Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
.super Ljava/lang/Object;
.source "WiFiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/WiFiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/shenma/tvlauncher/view/WiFiDialog;
    .locals 8

    .line 111
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 113
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/shenma/tvlauncher/view/WiFiDialog;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    const v3, 0x7f0f0022

    invoke-direct {v1, v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog;-><init>(Landroid/content/Context;I)V

    .line 114
    .local v1, "dialog":Lcom/shenma/tvlauncher/view/WiFiDialog;
    const v2, 0x7f0a0078

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, "v":Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const/16 v5, 0x8

    const v6, 0x7f08030d

    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v7, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_1

    .line 120
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v6, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$1;

    invoke-direct {v6, p0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$1;-><init>(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;Lcom/shenma/tvlauncher/view/WiFiDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonText:Ljava/lang/String;

    const v6, 0x7f08030e

    if-eqz v3, :cond_2

    .line 132
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_3

    .line 134
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v5, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$2;

    invoke-direct {v5, p0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$2;-><init>(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;Lcom/shenma/tvlauncher/view/WiFiDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 147
    const v3, 0x7f080310

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 148
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->contentView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    :cond_4
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog;->setContentView(Landroid/view/View;)V

    .line 151
    return-object v1
.end method

.method public creates()Lcom/shenma/tvlauncher/view/WiFiDialog;
    .locals 8

    .line 155
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 157
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/shenma/tvlauncher/view/WiFiDialog;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    const v3, 0x7f0f0022

    invoke-direct {v1, v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog;-><init>(Landroid/content/Context;I)V

    .line 158
    .local v1, "dialog":Lcom/shenma/tvlauncher/view/WiFiDialog;
    const v2, 0x7f0a0013

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 159
    .local v2, "v":Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/view/WiFiDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const/16 v5, 0x8

    const v6, 0x7f0800c5

    if-eqz v3, :cond_0

    .line 162
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v7, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v6, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$3;

    invoke-direct {v6, p0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$3;-><init>(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;Lcom/shenma/tvlauncher/view/WiFiDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonText:Ljava/lang/String;

    const v6, 0x7f0800c6

    if-eqz v3, :cond_2

    .line 176
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_3

    .line 178
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v5, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$4;

    invoke-direct {v5, p0, v1}, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder$4;-><init>(Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;Lcom/shenma/tvlauncher/view/WiFiDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 186
    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 191
    const v3, 0x7f0800c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 192
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->contentView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    :cond_4
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/WiFiDialog;->setContentView(Landroid/view/View;)V

    .line 195
    return-object v1
.end method

.method public setContentView(Landroid/view/View;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .line 51
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->contentView:Landroid/view/View;

    .line 52
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    .locals 1
    .param p1, "neutralButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonText:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    .locals 0
    .param p1, "neutralButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 102
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonText:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->neutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 63
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 76
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/WiFiDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    return-object p0
.end method
