.class Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;
.super Ljava/lang/Object;
.source "IdHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final atts:Lorg/xmlpull/v1/XmlPullParser;

.field private final idRecordingStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;",
            ">;"
        }
    .end annotation
.end field

.field final idXml:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "atts"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idXml:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idRecordingStack:Ljava/util/Stack;

    .line 25
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->atts:Lorg/xmlpull/v1/XmlPullParser;

    .line 26
    return-void
.end method

.method private appendElementString(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "atts"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 60
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface {p3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "=\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {p3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :cond_0
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    return-void
.end method


# virtual methods
.method endElement()V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "localName":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;

    .line 91
    .local v1, "ir":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;
    iget-object v2, v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v2, v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v2, v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget v2, v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->level:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->level:I

    .line 95
    iget v2, v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->level:I

    if-nez v2, :cond_1

    .line 96
    iget-object v2, v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "xml":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idXml:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 100
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;

    iget-object v3, v3, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    sget-object v3, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v1    # "ir":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;
    .end local v2    # "xml":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public processIds()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 43
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->startElement()V

    goto :goto_1

    .line 49
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->endElement()V

    goto :goto_1

    .line 51
    :cond_3
    nop

    .line 54
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    return-void

    .line 55
    :cond_4
    goto :goto_0
.end method

.method startElement()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "localName":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "id"

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 76
    new-instance v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;

    invoke-direct {v2, p0, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;-><init>(Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;Ljava/lang/String;)V

    .line 77
    .local v2, "ir":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v2    # "ir":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;

    .line 81
    .restart local v2    # "ir":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;
    iget v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->level:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->level:I

    .line 83
    iget-object v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v3, v0, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->appendElementString(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 85
    .end local v2    # "ir":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler$IdRecording;
    :cond_1
    return-void
.end method
