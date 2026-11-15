.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$1;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    .line 909
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .line 937
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 938
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 939
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/view/Reflect3DImage;->skewImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 940
    .local v2, "bit":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 941
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .line 928
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 929
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 930
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/view/Reflect3DImage;->skewImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 931
    .local v2, "bit":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 932
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .line 919
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 920
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 921
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/view/Reflect3DImage;->skewImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 922
    .local v2, "bit":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14$1;->this$1:Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    iget-object v3, v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->access$3000(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 923
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .line 914
    return-void
.end method
