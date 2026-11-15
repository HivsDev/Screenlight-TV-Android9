.class Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$1;
.super Lorg/apache/commons/fileupload/util/LimitedInputStream;
.source "SWFileUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;-><init>(Lorg/apache/commons/fileupload/SWFileUploadBase;Lorg/apache/commons/fileupload/RequestContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;


# direct methods
.method constructor <init>(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;Ljava/io/InputStream;J)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/io/InputStream;
    .param p3, "$anonymous1"    # J

    .line 1
    iput-object p1, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$1;->this$1:Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;

    .line 683
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/commons/fileupload/util/LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method


# virtual methods
.method protected raiseError(JJ)V
    .locals 7
    .param p1, "pSizeMax"    # J
    .param p3, "pCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    new-instance v6, Lorg/apache/commons/fileupload/SWFileUploadBase$SizeLimitExceededException;

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "the request was rejected because its size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 690
    const-string v1, ") exceeds the configured maximum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 691
    nop

    .line 692
    nop

    .line 686
    move-object v0, v6

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/fileupload/SWFileUploadBase$SizeLimitExceededException;-><init>(Ljava/lang/String;JJ)V

    .line 693
    .local v0, "ex":Lorg/apache/commons/fileupload/FileUploadException;
    new-instance v1, Lorg/apache/commons/fileupload/SWFileUploadBase$FileUploadIOException;

    invoke-direct {v1, v0}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileUploadIOException;-><init>(Lorg/apache/commons/fileupload/FileUploadException;)V

    throw v1
.end method
