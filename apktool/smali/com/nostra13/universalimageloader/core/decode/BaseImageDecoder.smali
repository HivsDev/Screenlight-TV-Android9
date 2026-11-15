.class public Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;,
        Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    }
.end annotation


# static fields
.field protected static final ERROR_CANT_DECODE_IMAGE:Ljava/lang/String; = "Image can\'t be decoded [%s]"

.field protected static final LOG_FLIP_IMAGE:Ljava/lang/String; = "Flip image horizontally [%s]"

.field protected static final LOG_ROTATE_IMAGE:Ljava/lang/String; = "Rotate image on %1$d\u00b0 [%2$s]"

.field protected static final LOG_SABSAMPLE_IMAGE:Ljava/lang/String; = "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

.field protected static final LOG_SCALE_IMAGE:Ljava/lang/String; = "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"


# instance fields
.field protected final loggingEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    .line 56
    return-void
.end method


# virtual methods
.method protected considerExactScaleAndOrientaiton(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "subsampledBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    .param p3, "rotation"    # I
    .param p4, "flipHorizontal"    # Z

    .line 163
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 165
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v8

    .line 166
    .local v8, "scaleType":Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v8, v1, :cond_0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v8, v1, :cond_2

    .line 167
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v1, v6, v7, p3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V

    .line 168
    .local v1, "srcSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v6

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v7

    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v8, v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    invoke-static {v1, v6, v7, v9}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F

    move-result v6

    .line 169
    .local v6, "scale":F
    invoke-static {v6, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_2

    .line 170
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 172
    iget-boolean v7, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v5

    invoke-virtual {v1, v6}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->scale(F)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v9

    aput-object v9, v7, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v2

    const/4 v9, 0x3

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const-string v9, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    invoke-static {v9, v7}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .end local v1    # "srcSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .end local v6    # "scale":F
    :cond_2
    if-eqz p4, :cond_3

    .line 177
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 179
    iget-boolean v1, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v1, :cond_3

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "Flip image horizontally [%s]"

    invoke-static {v3, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_3
    if-eqz p3, :cond_4

    .line 183
    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 185
    iget-boolean v1, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v1, :cond_4

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Rotate image on %1$d\u00b0 [%2$s]"

    invoke-static {v2, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 189
    .local v1, "finalBitmap":Landroid/graphics/Bitmap;
    if-eq v1, p1, :cond_5

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_5
    return-object v1
.end method

.method public decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v0

    .line 69
    .local v0, "imageStream":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->defineImageSizeAndRotation(Ljava/io/InputStream;Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    move-result-object v1

    .line 70
    .local v1, "imageInfo":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    iget-object v2, v1, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->imageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {p0, v2, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->prepareDecodingOptions(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 71
    .local v2, "decodingOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0, v2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 73
    .local v3, "decodedBitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 74
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Image can\'t be decoded [%s]"

    invoke-static {v5, v4}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v4, v1, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    iget v4, v4, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    iget-object v5, v1, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    iget-boolean v5, v5, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    invoke-virtual {p0, v3, p1, v4, v5}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->considerExactScaleAndOrientaiton(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 78
    :goto_0
    return-object v3
.end method

.method protected decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "imageStream"    # Ljava/io/InputStream;
    .param p2, "decodingOptions"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected defineExifOrientation(Ljava/lang/String;Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    .locals 5
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "rotation":I
    const/4 v1, 0x0

    .line 106
    .local v1, "flip":Z
    const-string v2, "image/jpeg"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v2

    sget-object v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v2, v3, :cond_0

    .line 108
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    sget-object v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v4, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, "exif":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    invoke-virtual {v3, v4, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v2, "exifOrientation":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 117
    :pswitch_0
    const/4 v1, 0x1

    .line 119
    :pswitch_1
    const/16 v0, 0x5a

    .line 120
    goto :goto_0

    .line 127
    :pswitch_2
    const/4 v1, 0x1

    .line 129
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 122
    :pswitch_4
    const/4 v1, 0x1

    .line 124
    :pswitch_5
    const/16 v0, 0xb4

    .line 125
    goto :goto_0

    .line 112
    :pswitch_6
    const/4 v1, 0x1

    .line 114
    :pswitch_7
    const/4 v0, 0x0

    .line 115
    nop

    .line 134
    .end local v2    # "exifOrientation":I
    .end local v3    # "exif":Landroid/media/ExifInterface;
    :goto_0
    goto :goto_1

    .line 132
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Ljava/io/IOException;
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const-string v4, "Can\'t read EXIF tags from file [%s]"

    invoke-static {v4, v2}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    invoke-direct {v2, v0, v1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>(IZ)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected defineImageSizeAndRotation(Ljava/io/InputStream;Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    .locals 7
    .param p1, "imageStream"    # Ljava/io/InputStream;
    .param p2, "imageUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 87
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 89
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 92
    nop

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 96
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->defineExifOrientation(Ljava/lang/String;Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    move-result-object v1

    .local v1, "exif":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    goto :goto_0

    .line 98
    .end local v1    # "exif":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>()V

    .line 100
    .restart local v1    # "exif":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    :goto_0
    new-instance v2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v1, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    invoke-direct {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V

    invoke-direct {v2, v3, v1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;-><init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;)V

    return-object v2

    .line 91
    .end local v1    # "exif":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    :catchall_0
    move-exception v1

    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method protected getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
    .locals 3
    .param p1, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected prepareDecodingOptions(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;
    .locals 7
    .param p1, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    .line 140
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    .line 141
    .local v0, "scaleType":Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    .line 142
    .local v1, "targetSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    const/4 v2, 0x1

    .line 143
    .local v2, "scale":I
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-eq v0, v3, :cond_1

    .line 144
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 145
    .local v3, "powerOf2":Z
    :goto_0
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v6

    invoke-static {p1, v1, v6, v3}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I

    move-result v2

    .line 147
    iget-boolean v6, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-virtual {p1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->scaleDown(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v4, 0x3

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    const-string v4, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    invoke-static {v4, v6}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .end local v3    # "powerOf2":Z
    :cond_1
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getDecodingOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 150
    .local v3, "decodingOptions":Landroid/graphics/BitmapFactory$Options;
    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 151
    return-object v3
.end method
