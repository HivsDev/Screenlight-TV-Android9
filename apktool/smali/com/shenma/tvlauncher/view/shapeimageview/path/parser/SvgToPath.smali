.class public Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;
.super Ljava/lang/Object;
.source "SvgToPath.java"


# static fields
.field private static final DPI:F = 72.0f

.field private static final IDENTITY_MATRIX:Landroid/graphics/Matrix;

.field static final TAG:Ljava/lang/String;


# instance fields
.field private final atts:Lorg/xmlpull/v1/XmlPullParser;

.field private dpi:F

.field private height:F

.field private hidden:Z

.field private hiddenLevel:I

.field private idXml:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inDefsElement:Z

.field private final matrixStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private path:Landroid/graphics/Path;

.field private pathInfo:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

.field private final pathStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method private constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "atts"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->idXml:Ljava/util/HashMap;

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->rect:Landroid/graphics/RectF;

    .line 83
    const/high16 v0, 0x42900000    # 72.0f

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->dpi:F

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    .line 85
    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    .line 86
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->inDefsElement:Z

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathStack:Ljava/util/Deque;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->matrixStack:Ljava/util/Deque;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathInfo:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    .line 97
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    .line 98
    return-void
.end method

.method public static getSVGFromInputStream(Ljava/io/InputStream;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 46
    const/4 v0, 0x1

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->parse(Ljava/io/InputStream;ZF)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/io/InputStream;ZF)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "ignoreDefs"    # Z
    .param p2, "dpi"    # F

    .line 51
    :try_start_0
    new-instance v0, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 52
    .local v0, "xr":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;

    invoke-direct {v1, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 53
    .local v1, "svgHandler":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;
    invoke-virtual {v1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->setDpi(F)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 57
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->processSvg()V

    goto :goto_0

    .line 59
    :cond_0
    new-instance v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    .local v2, "cin":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;
    new-instance v3, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v3}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 62
    .local v3, "ids":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;->getCopy()Ljava/io/ByteArrayInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 63
    new-instance v4, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;

    invoke-direct {v4, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 64
    .local v4, "idHandler":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;
    invoke-virtual {v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->processIds()V

    .line 65
    iget-object v5, v4, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idXml:Ljava/util/HashMap;

    iput-object v5, v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->idXml:Ljava/util/HashMap;

    .line 67
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;->getCopy()Ljava/io/ByteArrayInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 68
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->processSvg()V

    .line 71
    .end local v2    # "cin":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;
    .end local v3    # "ids":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "idHandler":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;
    :goto_0
    iget-object v2, v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathInfo:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 72
    .end local v0    # "xr":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "svgHandler":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private popPath()Landroid/graphics/Path;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 147
    .local v0, "poppedPath":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    .line 148
    return-object v0
.end method

.method private popTransform()Landroid/graphics/Matrix;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->matrixStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    return-object v0
.end method

.method private pushPath()V
    .locals 2

    .line 140
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 141
    .local v0, "path":Landroid/graphics/Path;
    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    .line 142
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathStack:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method private pushTransform(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "pMatrix"    # Landroid/graphics/Matrix;

    .line 131
    if-nez p1, :cond_0

    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 132
    .local v0, "matrix":Landroid/graphics/Matrix;
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->matrixStack:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method private pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "atts"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 125
    const-string v0, "transform"

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "transform":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/TransformParser;->parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 127
    .local v1, "matrix":Landroid/graphics/Matrix;
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->matrixStack:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method private showAttributes(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .param p1, "a"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 334
    const-string v0, ""

    .line 335
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method endElement()V
    .locals 6

    .line 343
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "localName":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->inDefsElement:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 345
    const-string v1, "defs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->inDefsElement:Z

    .line 348
    :cond_0
    return-void

    .line 351
    :cond_1
    const-string v1, "svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popPath()Landroid/graphics/Path;

    move-result-object v1

    .line 353
    .local v1, "p":Landroid/graphics/Path;
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v2

    .line 354
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 355
    new-instance v3, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    iget v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    iget v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->height:F

    invoke-direct {v3, v1, v4, v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;-><init>(Landroid/graphics/Path;FF)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathInfo:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    .end local v1    # "p":Landroid/graphics/Path;
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    goto :goto_0

    .line 356
    :cond_2
    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 358
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-eqz v1, :cond_3

    .line 359
    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    .line 360
    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    if-nez v1, :cond_3

    .line 361
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    .line 365
    :cond_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popPath()Landroid/graphics/Path;

    move-result-object v1

    .line 366
    .restart local v1    # "p":Landroid/graphics/Path;
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v2

    .line 367
    .restart local v2    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 368
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1

    .line 356
    .end local v1    # "p":Landroid/graphics/Path;
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    :cond_4
    :goto_0
    nop

    .line 370
    :goto_1
    return-void
.end method

.method final getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method final getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "defaultValue"    # Ljava/lang/Float;

    .line 377
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->dpi:F

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->height:F

    invoke-static {p1, p2, v0, v1, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->convertUnits(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;FFF)Ljava/lang/Float;

    move-result-object v0

    .line 378
    .local v0, "result":Ljava/lang/Float;
    if-nez v0, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method processSvg()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 107
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->endElement()V

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->startElement()V

    .line 115
    goto :goto_1

    .line 112
    :cond_2
    nop

    .line 120
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 121
    if-ne v0, v1, :cond_3

    .line 122
    return-void

    .line 121
    :cond_3
    goto :goto_0
.end method

.method setDpi(F)V
    .locals 0
    .param p1, "dpi"    # F

    .line 101
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->dpi:F

    .line 102
    return-void
.end method

.method startElement()V
    .locals 18

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "localName":Ljava/lang/String;
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->inDefsElement:Z

    if-eqz v2, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    const-string v2, "svg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "height"

    const-string/jumbo v4, "width"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_4

    .line 159
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v4, v2, v9}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    .line 160
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->height:F

    .line 162
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v3, "viewBox"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->getNumberParseAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v2

    .line 164
    .local v2, "viewbox":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushPath()V

    .line 165
    sget-object v3, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 167
    .local v3, "matrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_3

    .line 168
    iget v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    const v7, 0x3dcccccd    # 0.1f

    const/4 v9, 0x3

    cmpg-float v7, v4, v7

    if-ltz v7, :cond_2

    iget v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->height:F

    const v10, -0x42333333    # -0.1f

    cmpg-float v7, v7, v10

    if-gez v7, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    iget-object v7, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v6, v5

    div-float/2addr v4, v6

    .line 173
    .local v4, "sx":F
    iget v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->height:F

    iget-object v6, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    .line 174
    .local v5, "sy":F
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 169
    .end local v4    # "sx":F
    .end local v5    # "sy":F
    :cond_2
    :goto_0
    iget-object v4, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v6, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    .line 170
    iget-object v4, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    .line 178
    :cond_3
    :goto_1
    invoke-direct {v0, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Landroid/graphics/Matrix;)V

    .line 179
    .end local v2    # "viewbox":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    goto/16 :goto_8

    :cond_4
    const-string v2, "defs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    iput-boolean v8, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->inDefsElement:Z

    goto/16 :goto_8

    .line 181
    :cond_5
    const-string/jumbo v2, "use"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v9, "y"

    const-string/jumbo v10, "x"

    if-eqz v2, :cond_11

    .line 182
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v5, "xlink:href"

    invoke-static {v5, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "href":Ljava/lang/String;
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "transform"

    invoke-static {v7, v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "attTransform":Ljava/lang/String;
    iget-object v11, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v10, v11}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    .line 185
    .local v11, "attX":Ljava/lang/String;
    iget-object v12, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v9, v12}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, "attY":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v13, "sb":Ljava/lang/StringBuilder;
    const-string v14, "<g"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v14, " xmlns=\'http://www.w3.org/2000/svg\' "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v14, " xmlns:xlink=\'http://www.w3.org/1999/xlink\' "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v14, " xmlns:sodipodi=\'http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd\' "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v14, " xmlns:inkscape=\'http://www.inkscape.org/namespaces/inkscape\' version=\'1.1\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v14, "\'"

    if-nez v6, :cond_6

    if-nez v11, :cond_6

    if-eqz v12, :cond_c

    .line 194
    :cond_6
    const-string v15, " transform=\'"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    if-eqz v6, :cond_7

    .line 196
    invoke-static {v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_7
    if-nez v11, :cond_8

    if-eqz v12, :cond_b

    .line 199
    :cond_8
    const-string v15, "translate("

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v15, "0"

    if-eqz v11, :cond_9

    invoke-static {v11}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, v16

    goto :goto_2

    :cond_9
    move-object v8, v15

    :goto_2
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v8, ","

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    if-eqz v12, :cond_a

    invoke-static {v12}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_a
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v8, ")"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_c
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget-object v15, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    if-ge v8, v15, :cond_10

    .line 209
    iget-object v15, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v15, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    .line 210
    .local v15, "attrQName":Ljava/lang/String;
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 211
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 212
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 214
    move-object/from16 v17, v5

    const-string v5, " "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v5, "=\'"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 212
    :cond_d
    move-object/from16 v17, v5

    goto :goto_4

    .line 211
    :cond_e
    move-object/from16 v17, v5

    goto :goto_4

    .line 210
    :cond_f
    move-object/from16 v17, v5

    .line 208
    .end local v15    # "attrQName":Ljava/lang/String;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v17

    goto :goto_3

    .line 222
    .end local v8    # "i":I
    :cond_10
    const-string v3, ">"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->idXml:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v3, "</g>"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .end local v2    # "href":Ljava/lang/String;
    .end local v6    # "attTransform":Ljava/lang/String;
    .end local v11    # "attX":Ljava/lang/String;
    .end local v12    # "attY":Ljava/lang/String;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    goto/16 :goto_8

    :cond_11
    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 228
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-eqz v2, :cond_12

    .line 229
    iget v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    .line 232
    :cond_12
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "display"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 233
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_13

    .line 234
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    .line 235
    iput v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    .line 238
    :cond_13
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushPath()V

    goto/16 :goto_8

    .line 240
    :cond_14
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    const-string v8, "ry"

    const-string v11, "rx"

    if-nez v2, :cond_16

    const-string v2, "rect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 241
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v10, v2, v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    .line 242
    .local v2, "x":Ljava/lang/Float;
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v9, v5, v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v5

    .line 243
    .local v5, "y":Ljava/lang/Float;
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v4, v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v4

    .line 244
    .local v4, "width":Ljava/lang/Float;
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v3, v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v3

    .line 245
    .local v3, "height":Ljava/lang/Float;
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v11, v6, v9}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v6

    .line 246
    .local v6, "rx":Ljava/lang/Float;
    iget-object v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v8

    .line 247
    .local v8, "ry":Ljava/lang/Float;
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 248
    .local v9, "p":Landroid/graphics/Path;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    cmpg-float v10, v10, v7

    if-gtz v10, :cond_15

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v10

    cmpg-float v7, v10, v7

    if-gtz v7, :cond_15

    .line 249
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float v13, v7, v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float v14, v7, v10

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v10, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_5

    .line 251
    :cond_15
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float/2addr v13, v14

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 252
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v7, v10, v11, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 255
    :goto_5
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v7}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v7

    .line 257
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 258
    iget-object v10, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v10, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 259
    .end local v2    # "x":Ljava/lang/Float;
    .end local v3    # "height":Ljava/lang/Float;
    .end local v4    # "width":Ljava/lang/Float;
    .end local v5    # "y":Ljava/lang/Float;
    .end local v6    # "rx":Ljava/lang/Float;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "ry":Ljava/lang/Float;
    .end local v9    # "p":Landroid/graphics/Path;
    goto/16 :goto_8

    :cond_16
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_17

    const-string v2, "line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 260
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v3, "x1"

    invoke-virtual {v0, v3, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v2

    .line 261
    .local v2, "x1":Ljava/lang/Float;
    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v4, "x2"

    invoke-virtual {v0, v4, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v3

    .line 262
    .local v3, "x2":Ljava/lang/Float;
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v5, "y1"

    invoke-virtual {v0, v5, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v4

    .line 263
    .local v4, "y1":Ljava/lang/Float;
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v6, "y2"

    invoke-virtual {v0, v6, v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v5

    .line 264
    .local v5, "y2":Ljava/lang/Float;
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 265
    .local v6, "p":Landroid/graphics/Path;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 266
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 267
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v7}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v7

    .line 269
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 270
    iget-object v8, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v6}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 271
    .end local v2    # "x1":Ljava/lang/Float;
    .end local v3    # "x2":Ljava/lang/Float;
    .end local v4    # "y1":Ljava/lang/Float;
    .end local v5    # "y2":Ljava/lang/Float;
    .end local v6    # "p":Landroid/graphics/Path;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    goto/16 :goto_8

    :cond_17
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_19

    const-string v2, "circle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 272
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "cx"

    invoke-virtual {v0, v3, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v2

    .line 273
    .local v2, "centerX":Ljava/lang/Float;
    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string v4, "cy"

    invoke-virtual {v0, v4, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v3

    .line 274
    .local v3, "centerY":Ljava/lang/Float;
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string v5, "r"

    invoke-virtual {v0, v5, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v4

    .line 275
    .local v4, "radius":Ljava/lang/Float;
    if-eqz v2, :cond_18

    if-eqz v3, :cond_18

    if-eqz v4, :cond_18

    .line 276
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 277
    .local v5, "p":Landroid/graphics/Path;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 278
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v6

    .line 280
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 281
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 283
    .end local v2    # "centerX":Ljava/lang/Float;
    .end local v3    # "centerY":Ljava/lang/Float;
    .end local v4    # "radius":Ljava/lang/Float;
    .end local v5    # "p":Landroid/graphics/Path;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_18
    goto/16 :goto_8

    :cond_19
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_1b

    const-string v2, "ellipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 284
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "cx"

    invoke-virtual {v0, v3, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v2

    .line 285
    .restart local v2    # "centerX":Ljava/lang/Float;
    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string v4, "cy"

    invoke-virtual {v0, v4, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v3

    .line 286
    .restart local v3    # "centerY":Ljava/lang/Float;
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v11, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v4

    .line 287
    .local v4, "radiusX":Ljava/lang/Float;
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v8, v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v5

    .line 288
    .local v5, "radiusY":Ljava/lang/Float;
    if-eqz v2, :cond_1a

    if-eqz v3, :cond_1a

    if-eqz v4, :cond_1a

    if-eqz v5, :cond_1a

    .line 289
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 290
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 291
    .local v6, "p":Landroid/graphics/Path;
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->rect:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 292
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v7}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v7

    .line 294
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 295
    iget-object v8, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v6}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 297
    .end local v2    # "centerX":Ljava/lang/Float;
    .end local v3    # "centerY":Ljava/lang/Float;
    .end local v4    # "radiusX":Ljava/lang/Float;
    .end local v5    # "radiusY":Ljava/lang/Float;
    .end local v6    # "p":Landroid/graphics/Path;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :cond_1a
    goto/16 :goto_8

    :cond_1b
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_20

    const-string v2, "polygon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "polyline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 298
    :cond_1c
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "points"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->getNumberParseAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v2

    .line 299
    .local v2, "numbers":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    if-eqz v2, :cond_1f

    .line 300
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 301
    .local v3, "p":Landroid/graphics/Path;
    iget-object v4, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 302
    .local v4, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1f

    .line 303
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 304
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1d

    .line 305
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 306
    .local v6, "x":F
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 307
    .local v7, "y":F
    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 304
    .end local v6    # "x":F
    .end local v7    # "y":F
    add-int/lit8 v5, v5, 0x2

    goto :goto_6

    .line 310
    .end local v5    # "i":I
    :cond_1d
    const-string v5, "polygon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 311
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 314
    :cond_1e
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v5

    .line 316
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 317
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 320
    .end local v2    # "numbers":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v3    # "p":Landroid/graphics/Path;
    .end local v4    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_1f
    goto :goto_8

    :cond_20
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_21

    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 321
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "d"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathParser;->doPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    .line 322
    .local v2, "p":Landroid/graphics/Path;
    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v3

    .line 324
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 325
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 326
    .end local v2    # "p":Landroid/graphics/Path;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :goto_7
    goto :goto_8

    :cond_21
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_22

    const-string v2, "metadata"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_7

    .line 328
    :cond_22
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_23

    .line 329
    sget-object v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->showAttributes(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Unrecognized tag: %s (%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_23
    :goto_8
    return-void
.end method
