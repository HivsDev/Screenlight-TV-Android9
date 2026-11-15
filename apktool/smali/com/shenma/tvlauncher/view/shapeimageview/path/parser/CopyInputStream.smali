.class Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;
.super Ljava/lang/Object;
.source "CopyInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _copy:Ljava/io/ByteArrayOutputStream;

.field private final _is:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;->_is:Ljava/io/InputStream;

    .line 22
    :try_start_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;->copy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 27
    :goto_0
    return-void
.end method

.method private copy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;->_copy:Ljava/io/ByteArrayOutputStream;

    .line 32
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 34
    .local v0, "data":[B
    :goto_0
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;->_is:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "chunk":I
    if-eq v1, v2, :cond_0

    .line 35
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;->_copy:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;->_copy:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 38
    return-void
.end method


# virtual methods
.method public getCopy()Ljava/io/ByteArrayInputStream;
    .locals 2

    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;->_copy:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
