.class public Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private holder:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;

.field private mChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p2, "mChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;->mChannels:Ljava/util/ArrayList;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;->mChannels:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 64
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;->mChannels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 36
    if-nez p2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0a0036

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 39
    new-instance v0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;-><init>(Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;

    .line 40
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;

    const v1, 0x7f080235

    .line 41
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;->tv_channel:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;->mChannels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 47
    .local v0, "info":Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter;->holder:Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;

    iget-object v1, v1, Lcom/shenma/tvlauncher/tvback/adapter/ChannelAdapter$ViewHolder;->tv_channel:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->getChanneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-object p2
.end method
