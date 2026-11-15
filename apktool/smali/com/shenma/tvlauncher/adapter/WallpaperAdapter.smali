.class public Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private viewHoder:Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;

.field private wallpaperes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/WallpaperInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/WallpaperInfo;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p2, "wallpaperes":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/WallpaperInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->wallpaperes:Ljava/util/List;

    .line 30
    invoke-static {}, Lcom/shenma/tvlauncher/application/MyVolley;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->wallpaperes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 44
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->wallpaperes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 54
    if-nez p2, :cond_0

    .line 55
    new-instance v0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;-><init>(Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$1;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->viewHoder:Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0a006e

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->viewHoder:Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;

    const v1, 0x7f0802b6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;->tvs_item_img_iv:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->viewHoder:Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;

    iput-object v0, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->viewHoder:Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->wallpaperes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/WallpaperInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->getSkinpath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->viewHoder:Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;

    iget-object v2, v2, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter$ViewHoder;->tvs_item_img_iv:Landroid/widget/ImageView;

    const v3, 0x106000d

    invoke-static {v2, v3, v3}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v2

    const/16 v3, 0xc9

    const/16 v4, 0x96

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->wallpaperes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/WallpaperInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/WallpaperInfo;->getSkinpath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zhouchuan"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/WallpaperInfo;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "wallpaperes":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/WallpaperInfo;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/WallpaperAdapter;->wallpaperes:Ljava/util/List;

    .line 35
    return-void
.end method
