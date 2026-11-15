.class public Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private ISAPP:Ljava/lang/Boolean;

.field private context:Landroid/content/Context;

.field private holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<",
            "TT;>.ViewHolder;"
        }
    .end annotation
.end field

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private vodDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/nostra13/universalimageloader/core/ImageLoader;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "imageLoader"    # Lcom/nostra13/universalimageloader/core/ImageLoader;
    .param p4, "ISAPP"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/nostra13/universalimageloader/core/ImageLoader;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->context:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    iput-object p3, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 39
    iput-object p4, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->ISAPP:Ljava/lang/Boolean;

    .line 40
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 42
    return-void
.end method

.method private setVideos(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    .local p1, "paramArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz p1, :cond_0

    .line 56
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    .line 60
    :goto_0
    return-void
.end method


# virtual methods
.method public changData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    .local p1, "paramArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->setVideos(Ljava/util/ArrayList;)V

    .line 46
    return-void
.end method

.method public clearDatas()V
    .locals 1

    .line 63
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 111
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 115
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 119
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 75
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->ISAPP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 76
    if-nez p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0a004f

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;-><init>(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 79
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    const v1, 0x7f08002d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$002(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    const v1, 0x7f08003b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$102(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    const v1, 0x7f080163

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$202(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/dao/bean/AppInfo;

    .line 87
    .local v0, "appinfo":Lcom/shenma/tvlauncher/dao/bean/AppInfo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$000(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getAppicon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$100(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getAppname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$200(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getApppack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .end local v0    # "appinfo":Lcom/shenma/tvlauncher/dao/bean/AppInfo;
    goto/16 :goto_2

    .line 91
    :cond_1
    if-nez p2, :cond_2

    .line 92
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0a0073

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 93
    new-instance v0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;-><init>(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 94
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    const v1, 0x7f0802cd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$302(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    const v1, 0x7f0802cb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$402(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    const v1, 0x7f0802ce

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$502(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    const v1, 0x7f0802cc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$602(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/db/Album;

    .line 103
    .local v0, "vd":Lcom/shenma/tvlauncher/vod/db/Album;
    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-static {v3}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$300(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 104
    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$600(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->holder:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    invoke-static {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->access$500(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .end local v0    # "vd":Lcom/shenma/tvlauncher/vod/db/Album;
    :goto_2
    return-object p2
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .line 69
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    :cond_0
    return-void
.end method

.method public setAppData(Ljava/util/List;)V
    .locals 0
    .param p1, "applist"    # Ljava/util/List;

    .line 49
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>;"
    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->vodDatas:Ljava/util/List;

    .line 52
    :cond_0
    return-void
.end method
