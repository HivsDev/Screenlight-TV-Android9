.class public Lcom/shenma/tvlauncher/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final DEF_ZH_PATTERN:Ljava/lang/String; = "[\u4e00-\u9fa5]+"

.field private static Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog; = null

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static lDialog:Lcom/shenma/tvlauncher/view/LoadingDialog;

.field private static mtext:Ljava/lang/String;

.field private static start:J

.field private static toast:Landroid/widget/Toast;


# instance fields
.field iplay:Lcom/wepower/live/parser/IPlay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/shenma/tvlauncher/utils/Utils;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    .line 102
    sput-object v0, Lcom/shenma/tvlauncher/utils/Utils;->lDialog:Lcom/shenma/tvlauncher/view/LoadingDialog;

    .line 104
    const-string v0, ""

    sput-object v0, Lcom/shenma/tvlauncher/utils/Utils;->mtext:Ljava/lang/String;

    .line 105
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/shenma/tvlauncher/utils/Utils;->start:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/shenma/tvlauncher/utils/Utils$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/utils/Utils$1;-><init>(Lcom/shenma/tvlauncher/utils/Utils;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/utils/Utils;->iplay:Lcom/wepower/live/parser/IPlay;

    return-void
.end method

.method public static Email(Ljava/lang/String;)Z
    .locals 2
    .param p0, "strEmail"    # Ljava/lang/String;

    .line 1522
    const-string v0, "^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$"

    .line 1523
    .local v0, "strPattern":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1524
    const/4 v1, 0x0

    return v1

    .line 1526
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static GetAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLightness(Landroid/app/Activity;)F
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;

    .line 921
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 922
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 924
    .local v1, "brightness":F
    return v1
.end method

.method public static Phone(Ljava/lang/String;)Z
    .locals 2
    .param p0, "strEmail"    # Ljava/lang/String;

    .line 1532
    const-string v0, "^1[0-9]{10}$"

    .line 1533
    .local v0, "strPattern":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1534
    const/4 v1, 0x0

    return v1

    .line 1536
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static SetLightness(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "value"    # I

    .line 911
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 912
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-gtz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 913
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    goto :goto_1

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    const-string/jumbo v2, "\u65e0\u6cd5\u6539\u53d8\u4eae\u5ea6"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 917
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static UrlEncodeChinese(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 1337
    :try_start_0
    const-string v0, "[\\u4e00-\\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1338
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v1, ""

    .line 1339
    .local v1, "tmp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1340
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1341
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    goto :goto_0

    .line 1345
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1346
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "logoBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "logoPercent"    # F

    .line 1420
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1421
    return-object v0

    .line 1423
    :cond_0
    if-nez p1, :cond_1

    .line 1424
    return-object p0

    .line 1427
    :cond_1
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-ltz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 1428
    :cond_2
    const p2, 0x3e4ccccd    # 0.2f

    .line 1432
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1433
    .local v2, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1434
    .local v3, "srcHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1435
    .local v4, "logoWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1438
    .local v5, "logoHeight":I
    int-to-float v6, v2

    mul-float v6, v6, p2

    int-to-float v7, v4

    div-float/2addr v6, v7

    .line 1439
    .local v6, "scaleWidth":F
    int-to-float v7, v3

    mul-float v7, v7, p2

    int-to-float v8, v5

    div-float/2addr v7, v8

    .line 1442
    .local v7, "scaleHeight":F
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1443
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1444
    .local v9, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v9, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1445
    div-int/lit8 v1, v2, 0x2

    int-to-float v1, v1

    div-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    invoke-virtual {v9, v6, v7, v1, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1446
    div-int/lit8 v1, v2, 0x2

    div-int/lit8 v10, v4, 0x2

    sub-int/2addr v1, v10

    int-to-float v1, v1

    div-int/lit8 v10, v3, 0x2

    div-int/lit8 v11, v5, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v9, p1, v1, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1448
    return-object v8
.end method

.method public static checkXpFormMap()Z
    .locals 6

    .line 1638
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1639
    .local v0, "Pid":I
    if-gez v0, :cond_0

    .line 1640
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/self/maps"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "maps":Ljava/io/File;
    goto :goto_0

    .line 1642
    .end local v1    # "maps":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/maps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1645
    .restart local v1    # "maps":Ljava/io/File;
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1647
    .local v3, "reader":Ljava/io/BufferedReader;
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1648
    .local v4, "readLine":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1649
    const/4 v2, 0x0

    return v2

    .line 1651
    :cond_2
    const-string v5, "libdexposed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "libsubstrate.so"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "libepic.so"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 1654
    :cond_3
    const-string v5, "libxposed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 1655
    return v2

    .line 1652
    :cond_4
    :goto_1
    return v2

    .line 1656
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "readLine":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1657
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1658
    return v2
.end method

.method public static copyApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 706
    const/4 v0, 0x0

    .line 708
    .local v0, "copyIsFinish":Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 710
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 712
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 713
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 714
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 715
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 716
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 717
    .local v5, "temp":[B
    const/4 v6, 0x0

    move v7, v6

    .line 718
    .local v7, "i":I
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v7, v8

    if-lez v8, :cond_1

    .line 719
    invoke-virtual {v4, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 722
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    const/4 v0, 0x1

    .line 726
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "temp":[B
    .end local v7    # "i":I
    goto :goto_1

    .line 724
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 727
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public static createQRCodeBitmap(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "character_set"    # Ljava/lang/String;
    .param p4, "error_correction_level"    # Ljava/lang/String;
    .param p5, "margin"    # Ljava/lang/String;
    .param p6, "color_black"    # I
    .param p7, "color_white"    # I

    .line 1364
    move/from16 v9, p1

    move/from16 v10, p2

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    .line 1365
    return-object v11

    .line 1368
    :cond_0
    if-ltz v9, :cond_8

    if-gez v10, :cond_1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    goto/16 :goto_9

    .line 1373
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1375
    .local v0, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1376
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v12, p3

    :try_start_1
    invoke-virtual {v0, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1375
    :cond_2
    move-object/from16 v12, p3

    .line 1379
    :goto_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1380
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v13, p4

    :try_start_2
    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1379
    :cond_3
    move-object/from16 v13, p4

    .line 1383
    :goto_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1384
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;
    :try_end_2
    .catch Lcom/google/zxing/WriterException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v14, p5

    :try_start_3
    invoke-virtual {v0, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1383
    :cond_4
    move-object/from16 v14, p5

    .line 1387
    :goto_2
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    move-object v15, v1

    .line 1390
    .local v15, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v1, v9, v10

    new-array v1, v1, [I

    move-object/from16 v16, v1

    .line 1391
    .local v16, "pixels":[I
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_3
    if-ge v1, v10, :cond_7

    .line 1392
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_4
    if-ge v2, v9, :cond_6

    .line 1394
    invoke-virtual {v15, v2, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1395
    mul-int v3, v1, v9

    add-int/2addr v3, v2

    aput p6, v16, v3

    goto :goto_5

    .line 1397
    :cond_5
    mul-int v3, v1, v9

    add-int/2addr v3, v2

    aput p7, v16, v3

    .line 1392
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1391
    .end local v2    # "x":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1402
    .end local v1    # "y":I
    :cond_7
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v17, v1

    .line 1403
    .local v17, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, v16

    move/from16 v4, p1

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_3
    .catch Lcom/google/zxing/WriterException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1404
    return-object v17

    .line 1405
    .end local v0    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    .end local v15    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v16    # "pixels":[I
    .end local v17    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v12, p3

    :goto_6
    move-object/from16 v13, p4

    :goto_7
    move-object/from16 v14, p5

    .line 1406
    .local v0, "e":Lcom/google/zxing/WriterException;
    :goto_8
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 1407
    return-object v11

    .line 1368
    .end local v0    # "e":Lcom/google/zxing/WriterException;
    :cond_8
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 1369
    :goto_9
    return-object v11
.end method

.method public static createQRCodeBitmap(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "character_set"    # Ljava/lang/String;
    .param p4, "error_correction_level"    # Ljava/lang/String;
    .param p5, "margin"    # Ljava/lang/String;
    .param p6, "color_black"    # I
    .param p7, "color_white"    # I
    .param p8, "logoBitmap"    # Landroid/graphics/Bitmap;
    .param p9, "logoPercent"    # F

    .line 1467
    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p8

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 1468
    return-object v12

    .line 1471
    :cond_0
    if-ltz v9, :cond_9

    if-gez v10, :cond_1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v1, p9

    move-object v2, v12

    goto/16 :goto_a

    .line 1476
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1478
    .local v0, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1479
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v13, p3

    :try_start_1
    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1478
    :cond_2
    move-object/from16 v13, p3

    .line 1482
    :goto_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1483
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v14, p4

    :try_start_2
    invoke-virtual {v0, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1482
    :cond_3
    move-object/from16 v14, p4

    .line 1486
    :goto_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1487
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;
    :try_end_2
    .catch Lcom/google/zxing/WriterException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v15, p5

    :try_start_3
    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1486
    :cond_4
    move-object/from16 v15, p5

    .line 1490
    :goto_2
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    move-object v8, v1

    .line 1493
    .local v8, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v1, v9, v10

    new-array v1, v1, [I

    move-object/from16 v16, v1

    .line 1494
    .local v16, "pixels":[I
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_3
    if-ge v1, v10, :cond_7

    .line 1495
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_4
    if-ge v2, v9, :cond_6

    .line 1497
    invoke-virtual {v8, v2, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1498
    mul-int v3, v1, v9

    add-int/2addr v3, v2

    aput p6, v16, v3

    goto :goto_5

    .line 1500
    :cond_5
    mul-int v3, v1, v9

    add-int/2addr v3, v2

    aput p7, v16, v3

    .line 1495
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1494
    .end local v2    # "x":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1506
    .end local v1    # "y":I
    :cond_7
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v7, v1

    .line 1507
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, v16

    move/from16 v4, p1

    move-object v12, v7

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v7, p1

    move-object/from16 v17, v8

    .end local v8    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .local v17, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    move/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_3
    .catch Lcom/google/zxing/WriterException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1510
    if-eqz v11, :cond_8

    .line 1511
    move/from16 v1, p9

    :try_start_4
    invoke-static {v12, v11, v1}, Lcom/shenma/tvlauncher/utils/Utils;->addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_4
    .catch Lcom/google/zxing/WriterException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    .line 1514
    .end local v0    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "pixels":[I
    .end local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    :catch_0
    move-exception v0

    goto :goto_9

    .line 1513
    .restart local v0    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "pixels":[I
    .restart local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    :cond_8
    move/from16 v1, p9

    return-object v12

    .line 1514
    .end local v0    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "pixels":[I
    .end local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v13, p3

    :goto_6
    move-object/from16 v14, p4

    :goto_7
    move-object/from16 v15, p5

    :goto_8
    move/from16 v1, p9

    .line 1515
    .local v0, "e":Lcom/google/zxing/WriterException;
    :goto_9
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 1516
    const/4 v2, 0x0

    return-object v2

    .line 1471
    .end local v0    # "e":Lcom/google/zxing/WriterException;
    :cond_9
    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v1, p9

    move-object v2, v12

    .line 1472
    :goto_a
    return-object v2
.end method

.method public static deleteAppApks(Ljava/lang/String;)V
    .locals 9
    .param p0, "dir"    # Ljava/lang/String;

    .line 942
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 944
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 945
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 946
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 947
    .local v5, "fileName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 948
    const-string/jumbo v6, "zhouchuan"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete the "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 954
    :cond_1
    goto :goto_1

    .line 952
    :catch_0
    move-exception v1

    .line 953
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 955
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 514
    const-string v0, "Utils"

    const-string v1, "_encode() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v1, 0x0

    .line 518
    .local v1, "result":Ljava/lang/String;
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 520
    :try_start_0
    const-string v2, "[\u4e00-\u9fa5]+"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 521
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 523
    .local v4, "m":Ljava/util/regex/Matcher;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 524
    .local v5, "b":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 525
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 530
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 533
    .end local v2    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "m":Ljava/util/regex/Matcher;
    .end local v5    # "b":Ljava/lang/StringBuffer;
    :goto_1
    goto :goto_2

    .line 531
    :catch_0
    move-exception v2

    .line 532
    .local v2, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual {v2}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    .end local v2    # "e":Ljava/util/regex/PatternSyntaxException;
    goto :goto_1

    .line 535
    :cond_1
    if-nez p0, :cond_2

    .line 536
    const-string v2, "encode(): str is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_2
    if-nez p1, :cond_3

    .line 540
    const-string v2, "encode(): charset is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_3
    :goto_2
    const-string v2, "encode() end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-object v1
.end method

.method public static encodeBase64String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 862
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static exit()V
    .locals 2

    .line 1691
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/utils/Utils$4;

    invoke-direct {v1}, Lcom/shenma/tvlauncher/utils/Utils$4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1698
    const/4 v0, 0x0

    .line 1700
    .local v0, "meIsNull":Ljava/lang/String;
    const-string/jumbo v1, "\u7a7a\u6307\u9488"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1701
    return-void
.end method

.method private static extractFile(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    .locals 5
    .param p0, "zipIn"    # Ljava/util/zip/ZipInputStream;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1121
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1122
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 1124
    .local v1, "bytesIn":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "read":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1125
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 1127
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1128
    return-void
.end method

.method public static varargs findLastIndexOfSeparators(Ljava/lang/String;[C)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separators"    # [C

    .line 1730
    const/4 v0, -0x1

    .line 1731
    .local v0, "lastIndex":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p1, v2

    .line 1732
    .local v3, "separator":C
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1733
    .local v4, "index":I
    if-le v4, v0, :cond_0

    .line 1734
    move v0, v4

    .line 1731
    .end local v3    # "separator":C
    .end local v4    # "index":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1737
    :cond_1
    return v0
.end method

.method public static getApkName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1296
    const/4 v0, 0x0

    .line 1297
    .local v0, "apkName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1299
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1300
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 1301
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1302
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 1308
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 1306
    :catch_0
    move-exception v2

    .line 1307
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1310
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v0
.end method

.method public static getAppNameByApkFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilePath"    # Ljava/lang/String;

    .line 1321
    const/4 v0, 0x0

    .line 1322
    .local v0, "apkName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1323
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1324
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 1325
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1327
    :cond_0
    return-object v0
.end method

.method public static getEcodString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filter"    # Ljava/lang/String;

    .line 873
    const-string v0, ""

    .line 875
    .local v0, "s":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 878
    goto :goto_0

    .line 876
    :catch_0
    move-exception v1

    .line 877
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 879
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v0
.end method

.method public static getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "urlpath"    # Ljava/lang/String;

    .line 736
    nop

    .line 737
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 736
    return-object v0
.end method

.method public static getMD5(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 1668
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1670
    .local v0, "md5StringBuffer":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1671
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 1672
    .local v2, "bytes":[B
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 1673
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 1674
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1675
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 1676
    .local v5, "digest":[B
    nop

    .local v3, "i":I
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 1677
    aget-byte v6, v5, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 1678
    .local v6, "hexString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1679
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1680
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    nop

    .end local v6    # "hexString":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1685
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "bytes":[B
    .end local v3    # "i":I
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .end local v5    # "digest":[B
    :cond_1
    goto :goto_1

    .line 1683
    :catch_0
    move-exception v1

    .line 1684
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1686
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1063
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1064
    .local v0, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v1, "fis":Ljava/io/FileInputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 1068
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "bytesRead":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_0

    .line 1069
    invoke-virtual {v0, v2, v6, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 1072
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 1073
    .local v3, "digest":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1074
    .local v5, "sb":Ljava/lang/StringBuilder;
    array-length v7, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-byte v9, v3, v8

    .line 1075
    .local v9, "b":B
    const-string v10, "%02x"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    nop

    .end local v9    # "b":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1078
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1079
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 1080
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "digest":[B
    .end local v4    # "bytesRead":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1082
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 14

    .line 156
    const-string v0, ""

    .line 158
    .local v0, "macAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 159
    .local v1, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    const/4 v2, 0x0

    .line 160
    .local v2, "wifiInterfaceName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 161
    .local v3, "wiredInterfaceName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 162
    .local v5, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "wlan0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 165
    :cond_0
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "eth0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 168
    .end local v5    # "intf":Ljava/net/NetworkInterface;
    :cond_1
    goto :goto_0

    .line 169
    :cond_2
    const-string v4, "%02X"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    .line 170
    :try_start_1
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v7

    .line 171
    .local v7, "macBytes":[B
    if-eqz v7, :cond_4

    .line 172
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v9, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_3

    aget-byte v11, v7, v10

    .line 174
    .local v11, "b":B
    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v4, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    nop

    .end local v11    # "b":B
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 178
    .end local v7    # "macBytes":[B
    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_4
    goto :goto_3

    :cond_5
    if-eqz v3, :cond_4

    .line 179
    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v7

    .line 180
    .restart local v7    # "macBytes":[B
    if-eqz v7, :cond_7

    .line 181
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .restart local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    array-length v9, v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_6

    aget-byte v11, v7, v10

    .line 183
    .restart local v11    # "b":B
    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v4, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    nop

    .end local v11    # "b":B
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 185
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    .line 190
    .end local v1    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v2    # "wifiInterfaceName":Ljava/lang/String;
    .end local v3    # "wiredInterfaceName":Ljava/lang/String;
    .end local v7    # "macBytes":[B
    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_7
    :goto_3
    goto :goto_4

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v0, :cond_9

    const-string v1, "020000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 193
    :cond_8
    const-string v0, ""

    .line 196
    :cond_9
    return-object v0
.end method

.method public static getNameToLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "label"    # Ljava/lang/String;

    .line 671
    const-string v0, ""

    .line 672
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    .line 673
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 675
    :cond_0
    return-object v0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1278
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1280
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1281
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1282
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 1283
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1284
    const-string v2, ""

    return-object v2
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strFile"    # Ljava/lang/String;

    .line 1267
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1268
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1269
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 1270
    .local v2, "mPackageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1271
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1272
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1274
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-object v2
.end method

.method public static getStringData()Ljava/lang/String;
    .locals 6

    .line 1191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1192
    .local v0, "c":Ljava/util/Calendar;
    const-string v1, "GMT+8:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1193
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1194
    .local v1, "mMonth":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1195
    .local v2, "mDay":Ljava/lang/String;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1196
    .local v3, "mWay":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1197
    const-string/jumbo v3, "\u65e5"

    goto :goto_0

    .line 1198
    :cond_0
    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1199
    const-string/jumbo v3, "\u4e00"

    goto :goto_0

    .line 1200
    :cond_1
    const-string v4, "3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1201
    const-string/jumbo v3, "\u4e8c"

    goto :goto_0

    .line 1202
    :cond_2
    const-string v4, "4"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1203
    const-string/jumbo v3, "\u4e09"

    goto :goto_0

    .line 1204
    :cond_3
    const-string v4, "5"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1205
    const-string/jumbo v3, "\u56db"

    goto :goto_0

    .line 1206
    :cond_4
    const-string v4, "6"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1207
    const-string/jumbo v3, "\u4e94"

    goto :goto_0

    .line 1208
    :cond_5
    const-string v4, "7"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1209
    const-string/jumbo v3, "\u516d"

    .line 1211
    :cond_6
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6708"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u65e5\n\u661f\u671f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getStringTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;

    .line 312
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 313
    .local v0, "t":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 314
    iget v1, v0, Landroid/text/format/Time;->hour:I

    const-string v2, "0"

    const-string v3, ""

    const/16 v4, 0xa

    if-ge v1, v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "hour":Ljava/lang/String;
    iget v5, v0, Landroid/text/format/Time;->minute:I

    if-ge v5, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/text/format/Time;->minute:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/text/format/Time;->minute:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "minute":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getTimeToLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "label"    # Ljava/lang/String;

    .line 658
    const-string v0, ""

    .line 659
    .local v0, "time":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 660
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 662
    :cond_0
    return-object v0
.end method

.method public static getTimeToSrc(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "src"    # Ljava/lang/String;

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "time":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "stringarray":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 647
    .local v3, "srcnew":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 648
    .local v4, "timenew":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "start":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 650
    .local v5, "end":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    return-object v0
.end method

.method public static getUninatllApkInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1170
    const/4 v0, 0x0

    .line 1172
    .local v0, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1173
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 1175
    const/4 v0, 0x1

    .line 1180
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 1177
    :catch_0
    move-exception v1

    .line 1178
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*****  \u89e3\u6790\u672a\u5b89\u88c5\u7684 apk \u51fa\u73b0\u5f02\u5e38 *****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zhouchuan"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getUserData(I)Ljava/util/ArrayList;
    .locals 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "\u5220\u9664"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    const-string/jumbo v1, "\u5168\u90e8\u6e05\u7a7a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 296
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 297
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 298
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    const-string v2, ""

    return-object v2
.end method

.method public static getVideolvDatas(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation

    .line 802
    .local p0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v0, "arrayList":Ljava/util/ArrayList;
    mul-int/lit8 v1, p1, 0x14

    .line 804
    .local v1, "i2":I
    const/4 v2, 0x0

    .line 805
    .local v2, "i3":I
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    const/16 v4, 0x14

    if-ge v3, v4, :cond_0

    goto :goto_1

    .line 815
    :cond_0
    :goto_0
    if-ge v2, v4, :cond_2

    .line 816
    new-instance v3, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-direct {v3}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;-><init>()V

    .line 817
    .local v3, "vodUrlList2":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    add-int v5, v1, v2

    .line 818
    .local v5, "i5":I
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->setTitle(Ljava/lang/String;)V

    .line 819
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->setUrl(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    nop

    .end local v3    # "vodUrlList2":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    .end local v5    # "i5":I
    add-int/lit8 v2, v2, 0x1

    .line 822
    goto :goto_0

    .line 806
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 807
    new-instance v3, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-direct {v3}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;-><init>()V

    .line 808
    .local v3, "vodUrlList":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    add-int v4, v1, v2

    .line 809
    .local v4, "i4":I
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->setTitle(Ljava/lang/String;)V

    .line 810
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->setUrl(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    nop

    .end local v3    # "vodUrlList":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    .end local v4    # "i4":I
    add-int/lit8 v2, v2, 0x1

    .line 813
    goto :goto_1

    .line 824
    :cond_2
    return-object v0
.end method

.method public static getVideolvDatas(Ljava/util/List;II)Ljava/util/List;
    .locals 6
    .param p1, "index"    # I
    .param p2, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation

    .line 829
    .local p0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v0, "arrayList":Ljava/util/ArrayList;
    mul-int v1, p1, p2

    .line 831
    .local v1, "i2":I
    const/4 v2, 0x0

    .line 832
    .local v2, "i3":I
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v3, p2, :cond_0

    goto :goto_1

    .line 842
    :cond_0
    :goto_0
    if-ge v2, p2, :cond_2

    .line 843
    new-instance v3, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-direct {v3}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;-><init>()V

    .line 844
    .local v3, "vodUrlList2":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    add-int v4, v1, v2

    .line 845
    .local v4, "i5":I
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->setTitle(Ljava/lang/String;)V

    .line 846
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->setUrl(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    nop

    .end local v3    # "vodUrlList2":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    .end local v4    # "i5":I
    add-int/lit8 v2, v2, 0x1

    .line 849
    goto :goto_0

    .line 833
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 834
    new-instance v3, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-direct {v3}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;-><init>()V

    .line 835
    .local v3, "vodUrlList":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    add-int v4, v1, v2

    .line 836
    .local v4, "i4":I
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->setTitle(Ljava/lang/String;)V

    .line 837
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->setUrl(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    nop

    .end local v3    # "vodUrlList":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    .end local v4    # "i4":I
    add-int/lit8 v2, v2, 0x1

    .line 840
    goto :goto_1

    .line 851
    :cond_2
    return-object v0
.end method

.method public static getWeek(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 632
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "week":Ljava/lang/String;
    return-object v1
.end method

.method public static getWeekToDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mdate"    # Ljava/lang/String;

    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, "week":Ljava/lang/String;
    const-string v1, "/"

    const-string v2, "-"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 620
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 622
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 623
    .local v2, "date":Ljava/util/Date;
    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->getWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 626
    .end local v2    # "date":Ljava/util/Date;
    goto :goto_0

    .line 624
    :catch_0
    move-exception v2

    .line 625
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 627
    .end local v2    # "e":Ljava/text/ParseException;
    :goto_0
    return-object v0
.end method

.method public static hasNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 263
    nop

    .line 264
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 265
    .local v0, "con":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 266
    .local v1, "workinfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 268
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public static installApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1137
    invoke-static {p0, p1}, Lcom/shenma/tvlauncher/utils/Utils;->getUninatllApkInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1138
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v0, "updateFile":Ljava/io/File;
    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "chmod"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "604"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 1141
    .local v1, "args2":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    nop

    .end local v1    # "args2":[Ljava/lang/String;
    goto :goto_0

    .line 1142
    :catch_0
    move-exception v1

    .line 1143
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1146
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1157
    .end local v0    # "updateFile":Ljava/io/File;
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 1158
    :cond_0
    const v0, 0x7f0e01bd

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1160
    :goto_1
    return-void
.end method

.method public static installApk(Ljava/io/File;Landroid/content/Context;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 4
    .param p0, "strEmail"    # Ljava/lang/String;

    .line 1543
    const-string v0, "^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$"

    .line 1545
    .local v0, "emailPattern":Ljava/lang/String;
    const-string v1, "^1[0-9]{10}$"

    .line 1547
    .local v1, "phonePattern":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1548
    return v3

    .line 1550
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public static isHookByStack()Z
    .locals 10

    .line 1608
    const/4 v0, 0x0

    .line 1610
    .local v0, "isHook":Z
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "blah"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "isHook":Z
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1611
    .restart local v0    # "isHook":Z
    :catch_0
    move-exception v1

    .line 1612
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1613
    .local v2, "zygoteInitCallCount":I
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 1614
    .local v3, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 1615
    .local v6, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.internal.os.ZygoteInit"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v2, 0x1

    move v2, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1616
    const/4 v0, 0x1

    .line 1618
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.saurik.substrate.MS$2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "invoked"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1619
    const/4 v0, 0x1

    .line 1621
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "main"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1622
    const/4 v0, 0x1

    .line 1624
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "handleHookedMethod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1625
    const/4 v0, 0x1

    .line 1614
    .end local v6    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1628
    :cond_4
    return v0
.end method

.method public static isPortAvailable(I)Z
    .locals 2
    .param p0, "port"    # I

    .line 1767
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p0}, Ljava/net/ServerSocket;-><init>(I)V

    .line 1768
    .local v0, "ignored":Ljava/net/ServerSocket;
    const/4 v1, 0x1

    .line 1769
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1768
    return v1

    .line 1769
    .end local v0    # "ignored":Ljava/net/ServerSocket;
    :catch_0
    move-exception v0

    .line 1770
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isShowing()Z
    .locals 3

    .line 595
    const-string v0, "Utils"

    const-string v1, "isShowing() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v1, 0x0

    .line 599
    .local v1, "result":Z
    sget-object v2, Lcom/shenma/tvlauncher/utils/Utils;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    if-eqz v2, :cond_0

    .line 600
    const/4 v1, 0x1

    .line 603
    :cond_0
    const-string v2, "isShowing() end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return v1
.end method

.method public static isValidLink(Ljava/lang/String;)Z
    .locals 6
    .param p0, "strLink"    # Ljava/lang/String;

    .line 479
    const-string v0, "UiUtil"

    const-string v1, "isValidLink() start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v1, 0x0

    .line 481
    .local v1, "result":Z
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 484
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 485
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 486
    .local v3, "connt":Ljava/net/HttpURLConnection;
    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 487
    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 489
    .local v4, "code":I
    const/16 v5, 0x194

    if-ne v4, v5, :cond_0

    .line 490
    const/4 v1, 0x1

    .line 492
    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v3    # "connt":Ljava/net/HttpURLConnection;
    .end local v4    # "code":I
    goto :goto_0

    .line 493
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 495
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 497
    :cond_1
    const/4 v1, 0x1

    .line 499
    :goto_0
    const-string v2, "isValidLink() end."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return v1
.end method

.method public static isVpnConnected()Z
    .locals 6

    .line 1559
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 1560
    .local v1, "niList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v1, :cond_0

    .line 1561
    return v0

    .line 1563
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1564
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/NetworkInterface;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1565
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 1566
    .local v3, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1567
    const-string v4, "tun0"

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ppp0"

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    .line 1568
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1571
    .end local v3    # "intf":Ljava/net/NetworkInterface;
    :cond_2
    goto :goto_0

    .line 1572
    :cond_3
    return v0

    .line 1573
    .end local v1    # "niList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v1

    .line 1574
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1575
    return v0
.end method

.method public static isWifiProxy(Landroid/content/Context;)Z
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .line 1587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 1588
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1589
    .local v0, "proxyAddress":Ljava/lang/String;
    const-string v1, "http.proxyPort"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1590
    .local v1, "portStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1591
    const-string v1, "-1"

    .line 1593
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1594
    .local v1, "proxyPort":I
    goto :goto_0

    .line 1595
    .end local v0    # "proxyAddress":Ljava/lang/String;
    .end local v1    # "proxyPort":I
    :cond_1
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1596
    .restart local v0    # "proxyAddress":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 1598
    .restart local v1    # "proxyPort":I
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 1601
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 1599
    :cond_3
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method public static loadingClose()V
    .locals 1

    .line 245
    sget-object v0, Lcom/shenma/tvlauncher/utils/Utils;->lDialog:Lcom/shenma/tvlauncher/view/LoadingDialog;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/LoadingDialog;->dismiss()V

    .line 247
    sget-object v0, Lcom/shenma/tvlauncher/utils/Utils;->lDialog:Lcom/shenma/tvlauncher/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/LoadingDialog;->cancel()V

    .line 248
    const/4 v0, 0x0

    sput-object v0, Lcom/shenma/tvlauncher/utils/Utils;->lDialog:Lcom/shenma/tvlauncher/view/LoadingDialog;

    .line 254
    :cond_0
    return-void
.end method

.method public static loadingClose_Tv()V
    .locals 2

    .line 578
    const-string v0, "Utils"

    const-string v1, "close() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    sget-object v1, Lcom/shenma/tvlauncher/utils/Utils;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    if-eqz v1, :cond_0

    .line 580
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->cancel()V

    .line 581
    const/4 v1, 0x0

    sput-object v1, Lcom/shenma/tvlauncher/utils/Utils;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    goto :goto_0

    .line 583
    :cond_0
    const-string v1, "close(): mDialog is not showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :goto_0
    const-string v1, "close() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void
.end method

.method public static loadingShow(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/shenma/tvlauncher/utils/Utils;->lDialog:Lcom/shenma/tvlauncher/view/LoadingDialog;

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose()V

    .line 231
    :cond_0
    new-instance v0, Lcom/shenma/tvlauncher/view/LoadingDialog;

    invoke-direct {v0, p0, p1}, Lcom/shenma/tvlauncher/view/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/shenma/tvlauncher/utils/Utils;->lDialog:Lcom/shenma/tvlauncher/view/LoadingDialog;

    .line 232
    sget-object v0, Lcom/shenma/tvlauncher/utils/Utils;->lDialog:Lcom/shenma/tvlauncher/view/LoadingDialog;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    sget-object v0, Lcom/shenma/tvlauncher/utils/Utils;->lDialog:Lcom/shenma/tvlauncher/view/LoadingDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/LoadingDialog;->setCancelable(Z)V

    .line 235
    sget-object v0, Lcom/shenma/tvlauncher/utils/Utils;->lDialog:Lcom/shenma/tvlauncher/view/LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 236
    sget-object v0, Lcom/shenma/tvlauncher/utils/Utils;->lDialog:Lcom/shenma/tvlauncher/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/LoadingDialog;->show()V

    .line 237
    return-void
.end method

.method public static loadingShow_tv(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # I

    .line 559
    const-string v0, "Utils"

    const-string v1, "show() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    sget-object v1, Lcom/shenma/tvlauncher/utils/Utils;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    sget-object v1, Lcom/shenma/tvlauncher/utils/Utils;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->dismiss()V

    .line 565
    :cond_0
    new-instance v1, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/shenma/tvlauncher/utils/Utils;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    .line 566
    sget-object v1, Lcom/shenma/tvlauncher/utils/Utils;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    invoke-virtual {v1, p1}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->setLoadingMsg(I)V

    .line 567
    sget-object v1, Lcom/shenma/tvlauncher/utils/Utils;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 568
    sget-object v1, Lcom/shenma/tvlauncher/utils/Utils;->Loadingdialog:Lcom/shenma/tvlauncher/view/LiveLoadingDialog;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/LiveLoadingDialog;->show()V

    .line 569
    const-string v1, "show() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void
.end method

.method public static localIPv4get()Ljava/lang/String;
    .locals 5

    .line 1243
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1244
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 1245
    .local v1, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1246
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1247
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_0

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    .line 1249
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1251
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    goto :goto_1

    .line 1252
    .end local v1    # "intf":Ljava/net/NetworkInterface;
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    goto :goto_0

    .line 1255
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    goto :goto_2

    .line 1253
    :catch_0
    move-exception v0

    .line 1254
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 1256
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static localipget()Ljava/lang/String;
    .locals 5

    .line 1221
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1222
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 1223
    .local v1, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1224
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1225
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1226
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1228
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    goto :goto_1

    .line 1229
    .end local v1    # "intf":Ljava/net/NetworkInterface;
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    goto :goto_0

    .line 1231
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    goto :goto_2

    .line 1230
    :catch_0
    move-exception v0

    .line 1232
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 127
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 130
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 133
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static sanitizeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .line 1749
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 1756
    goto :goto_0

    .line 1750
    :catch_0
    move-exception v0

    .line 1752
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    const-string v1, "ISO-8859-1"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v1

    .line 1755
    nop

    .line 1757
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 1753
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 1754
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    throw v2
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # I
    .param p2, "image"    # I

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "view":Landroid/view/View;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Utils;->toast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 435
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/shenma/tvlauncher/utils/Utils;->toast:Landroid/widget/Toast;

    .line 436
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a006d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 440
    :goto_0
    const v1, 0x7f0802ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 441
    .local v1, "tv_toast":Landroid/widget/TextView;
    const v2, 0x7f080107

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 442
    .local v2, "iv_toast":Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 443
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 444
    sget-object v3, Lcom/shenma/tvlauncher/utils/Utils;->toast:Landroid/widget/Toast;

    invoke-virtual {v3, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 445
    sget-object v3, Lcom/shenma/tvlauncher/utils/Utils;->toast:Landroid/widget/Toast;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 446
    sget-object v3, Lcom/shenma/tvlauncher/utils/Utils;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 447
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "image"    # I

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 371
    .local v0, "end":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v3, Lcom/shenma/tvlauncher/utils/Utils;->start:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Utils;->mtext:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 372
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v3, Lcom/shenma/tvlauncher/utils/Utils;->start:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x5dc

    const/4 v5, 0x0

    const v6, 0x7f080107

    const v7, 0x7f0802ab

    const/4 v8, 0x0

    const v9, 0x7f0a006d

    cmp-long v10, v1, v3

    if-gez v10, :cond_2

    sget-object v1, Lcom/shenma/tvlauncher/utils/Utils;->mtext:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 384
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v1, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 385
    .local v1, "view2":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 386
    .local v2, "tv_toast2":Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 387
    .local v3, "iv_toast2":Landroid/widget/ImageView;
    const v4, 0x7f0e008d

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 388
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 389
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 390
    .local v4, "toast3":Landroid/widget/Toast;
    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 391
    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 392
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 393
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sput-wide v5, Lcom/shenma/tvlauncher/utils/Utils;->start:J

    goto :goto_1

    .line 373
    .end local v1    # "view2":Landroid/view/View;
    .end local v2    # "tv_toast2":Landroid/widget/TextView;
    .end local v3    # "iv_toast2":Landroid/widget/ImageView;
    .end local v4    # "toast3":Landroid/widget/Toast;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sput-wide v1, Lcom/shenma/tvlauncher/utils/Utils;->start:J

    .line 374
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v1, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 375
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 376
    .local v2, "tv_toast":Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 377
    .local v3, "iv_toast":Landroid/widget/ImageView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 379
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 380
    .local v4, "toast2":Landroid/widget/Toast;
    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 381
    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 382
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 383
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "tv_toast":Landroid/widget/TextView;
    .end local v3    # "iv_toast":Landroid/widget/ImageView;
    .end local v4    # "toast2":Landroid/widget/Toast;
    nop

    .line 395
    :goto_1
    sput-object p1, Lcom/shenma/tvlauncher/utils/Utils;->mtext:Ljava/lang/String;

    .line 397
    :cond_3
    return-void
.end method

.method public static showToast(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "image"    # I

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "view":Landroid/view/View;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Utils;->toast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 410
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/shenma/tvlauncher/utils/Utils;->toast:Landroid/widget/Toast;

    .line 411
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a006d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 415
    :goto_0
    const v1, 0x7f0802ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 416
    .local v1, "tv_toast":Landroid/widget/TextView;
    const v2, 0x7f080107

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 417
    .local v2, "iv_toast":Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 419
    sget-object v3, Lcom/shenma/tvlauncher/utils/Utils;->toast:Landroid/widget/Toast;

    invoke-virtual {v3, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 420
    sget-object v3, Lcom/shenma/tvlauncher/utils/Utils;->toast:Landroid/widget/Toast;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 421
    sget-object v3, Lcom/shenma/tvlauncher/utils/Utils;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 422
    return-void
.end method

.method public static startAutoBrightness(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 936
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 937
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 938
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 939
    return-void
.end method

.method public static startCheckLoaclApk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 890
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shenma/tvlauncher/application/MyApplication;->PUBLIC_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 892
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 893
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 894
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 895
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 896
    .local v6, "fName":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shenma/tvlauncher/application/MyApplication;->PUBLIC_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/shenma/tvlauncher/utils/Utils;->installApk(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    const/4 v1, 0x1

    return v1

    .line 894
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "fName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 904
    .end local v2    # "files":[Ljava/io/File;
    :cond_1
    goto :goto_1

    .line 902
    :catch_0
    move-exception v2

    .line 903
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 905
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method public static startDownloadApk(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .line 966
    const-string/jumbo v0, "\u6b63\u5728\u540e\u53f0\u4e0b\u8f7d\uff0c\u5b8c\u6210\u540e\u63d0\u793a\u5b89\u88c5..."

    const v1, 0x7f070140

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 967
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/utils/Utils$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/shenma/tvlauncher/utils/Utils$2;-><init>(Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1009
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1010
    return-void
.end method

.method public static startDownloadzip(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .line 1022
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/utils/Utils$3;

    invoke-direct {v1, p1, p0, p2}, Lcom/shenma/tvlauncher/utils/Utils$3;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1057
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1058
    return-void
.end method

.method public static stopAutoBrightness(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 929
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 930
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 931
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 932
    return-void
.end method

.method public static strRot13(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1706
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1707
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1708
    .local v2, "c":C
    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    const/16 v3, 0x6d

    if-gt v2, v3, :cond_0

    .line 1709
    add-int/lit8 v3, v2, 0xd

    int-to-char v2, v3

    goto :goto_1

    .line 1710
    :cond_0
    const/16 v3, 0x6e

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    .line 1711
    add-int/lit8 v3, v2, -0xd

    int-to-char v2, v3

    goto :goto_1

    .line 1712
    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x4d

    if-gt v2, v3, :cond_2

    .line 1713
    add-int/lit8 v3, v2, 0xd

    int-to-char v2, v3

    goto :goto_1

    .line 1714
    :cond_2
    const/16 v3, 0x4e

    if-lt v2, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_3

    .line 1715
    add-int/lit8 v3, v2, -0xd

    int-to-char v2, v3

    .line 1717
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1706
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1719
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stringDrawNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .line 137
    const-string v0, ""

    .line 138
    .local v0, "str2":Ljava/lang/String;
    const/4 v1, 0x0

    .line 139
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    return-object v0
.end method

.method public static tarZip(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkName"    # Ljava/lang/String;

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/files/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "zipFilePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/files"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1092
    .local v1, "destDirectory":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->unzip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    goto :goto_0

    .line 1093
    :catch_0
    move-exception v2

    .line 1095
    :goto_0
    return-void
.end method

.method public static toTime(I)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # I

    .line 686
    div-int/lit16 p0, p0, 0x3e8

    .line 687
    div-int/lit8 v0, p0, 0x3c

    .line 688
    .local v0, "minute":I
    div-int/lit8 v1, v0, 0x3c

    .line 689
    .local v1, "hour":I
    rem-int/lit8 v2, p0, 0x3c

    .line 690
    .local v2, "second":I
    rem-int/lit8 v0, v0, 0x3c

    .line 691
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 692
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 691
    const-string v4, "%02d:%02d:%02d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "destDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1098
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v0, "destDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1103
    :cond_0
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1104
    .local v1, "zipIn":Ljava/util/zip/ZipInputStream;
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 1106
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v2, :cond_2

    .line 1107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1108
    .local v3, "filePath":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1109
    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Utils;->extractFile(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 1111
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1112
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 1114
    .end local v4    # "dir":Ljava/io/File;
    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 1115
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 1116
    .end local v3    # "filePath":Ljava/lang/String;
    goto :goto_0

    .line 1117
    :cond_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 1118
    return-void
.end method
