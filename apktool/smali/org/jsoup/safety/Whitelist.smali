.class public Lorg/jsoup/safety/Whitelist;
.super Ljava/lang/Object;
.source "Whitelist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/safety/Whitelist$TypedValue;,
        Lorg/jsoup/safety/Whitelist$Protocol;,
        Lorg/jsoup/safety/Whitelist$AttributeValue;,
        Lorg/jsoup/safety/Whitelist$AttributeKey;,
        Lorg/jsoup/safety/Whitelist$TagName;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Whitelist$TagName;",
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/Whitelist$AttributeKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private enforcedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Whitelist$TagName;",
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Whitelist$AttributeKey;",
            "Lorg/jsoup/safety/Whitelist$AttributeValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private preserveRelativeLinks:Z

.field private protocols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Whitelist$TagName;",
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Whitelist$AttributeKey;",
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/Whitelist$Protocol;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private tagNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/Whitelist$TagName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/safety/Whitelist;->preserveRelativeLinks:Z

    .line 176
    return-void
.end method

.method public static basic()Lorg/jsoup/safety/Whitelist;
    .locals 13

    .line 90
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Whitelist;-><init>()V

    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    const-string v5, "b"

    aput-object v5, v1, v4

    const-string v5, "blockquote"

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const/4 v7, 0x3

    const-string v8, "br"

    aput-object v8, v1, v7

    const/4 v8, 0x4

    const-string v9, "cite"

    aput-object v9, v1, v8

    const/4 v10, 0x5

    const-string v11, "code"

    aput-object v11, v1, v10

    const/4 v10, 0x6

    const-string v11, "dd"

    aput-object v11, v1, v10

    const/4 v10, 0x7

    const-string v11, "dl"

    aput-object v11, v1, v10

    const/16 v10, 0x8

    const-string v11, "dt"

    aput-object v11, v1, v10

    const/16 v10, 0x9

    const-string v11, "em"

    aput-object v11, v1, v10

    const/16 v10, 0xa

    const-string v11, "i"

    aput-object v11, v1, v10

    const/16 v10, 0xb

    const-string v11, "li"

    aput-object v11, v1, v10

    const/16 v10, 0xc

    const-string v11, "ol"

    aput-object v11, v1, v10

    const/16 v10, 0xd

    const-string v11, "p"

    aput-object v11, v1, v10

    const/16 v10, 0xe

    const-string v11, "pre"

    aput-object v11, v1, v10

    const-string v10, "q"

    const/16 v11, 0xf

    aput-object v10, v1, v11

    const/16 v11, 0x10

    const-string v12, "small"

    aput-object v12, v1, v11

    const/16 v11, 0x11

    const-string v12, "strike"

    aput-object v12, v1, v11

    const/16 v11, 0x12

    const-string v12, "strong"

    aput-object v12, v1, v11

    const/16 v11, 0x13

    const-string v12, "sub"

    aput-object v12, v1, v11

    const/16 v11, 0x14

    const-string v12, "sup"

    aput-object v12, v1, v11

    const/16 v11, 0x15

    const-string v12, "u"

    aput-object v12, v1, v11

    const/16 v11, 0x16

    const-string v12, "ul"

    aput-object v12, v1, v11

    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v11, "href"

    aput-object v11, v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v9, v1, v3

    invoke-virtual {v0, v5, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v9, v1, v3

    invoke-virtual {v0, v10, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v8, "ftp"

    aput-object v8, v1, v3

    const-string v8, "http"

    aput-object v8, v1, v4

    const-string v10, "https"

    aput-object v10, v1, v6

    const-string v12, "mailto"

    aput-object v12, v1, v7

    invoke-virtual {v0, v2, v11, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v8, v1, v3

    aput-object v10, v1, v4

    invoke-virtual {v0, v5, v9, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v8, v1, v3

    aput-object v10, v1, v4

    invoke-virtual {v0, v9, v9, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v1, "rel"

    const-string v3, "nofollow"

    invoke-virtual {v0, v2, v1, v3}, Lorg/jsoup/safety/Whitelist;->addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public static basicWithImages()Lorg/jsoup/safety/Whitelist;
    .locals 9

    .line 116
    invoke-static {}, Lorg/jsoup/safety/Whitelist;->basic()Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "img"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "align"

    aput-object v5, v2, v4

    const-string v5, "alt"

    aput-object v5, v2, v1

    const/4 v5, 0x2

    const-string v6, "height"

    aput-object v6, v2, v5

    const-string v6, "src"

    const/4 v7, 0x3

    aput-object v6, v2, v7

    const/4 v7, 0x4

    const-string v8, "title"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string/jumbo v8, "width"

    aput-object v8, v2, v7

    invoke-virtual {v0, v3, v2}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "http"

    aput-object v5, v2, v4

    const-string v4, "https"

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v6, v2}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public static none()Lorg/jsoup/safety/Whitelist;
    .locals 1

    .line 63
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Whitelist;-><init>()V

    return-object v0
.end method

.method public static relaxed()Lorg/jsoup/safety/Whitelist;
    .locals 16

    .line 133
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Whitelist;-><init>()V

    const/16 v1, 0x29

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    const-string v5, "b"

    aput-object v5, v1, v4

    const-string v5, "blockquote"

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const/4 v7, 0x3

    const-string v8, "br"

    aput-object v8, v1, v7

    const/4 v8, 0x4

    const-string v9, "caption"

    aput-object v9, v1, v8

    const/4 v9, 0x5

    const-string v10, "cite"

    aput-object v10, v1, v9

    const/4 v11, 0x6

    const-string v12, "code"

    aput-object v12, v1, v11

    const/4 v12, 0x7

    const-string v13, "col"

    aput-object v13, v1, v12

    const/16 v12, 0x8

    const-string v13, "colgroup"

    aput-object v13, v1, v12

    const/16 v12, 0x9

    const-string v13, "dd"

    aput-object v13, v1, v12

    const/16 v12, 0xa

    const-string v13, "div"

    aput-object v13, v1, v12

    const/16 v12, 0xb

    const-string v13, "dl"

    aput-object v13, v1, v12

    const/16 v12, 0xc

    const-string v13, "dt"

    aput-object v13, v1, v12

    const/16 v12, 0xd

    const-string v13, "em"

    aput-object v13, v1, v12

    const/16 v12, 0xe

    const-string v13, "h1"

    aput-object v13, v1, v12

    const/16 v12, 0xf

    const-string v13, "h2"

    aput-object v13, v1, v12

    const/16 v12, 0x10

    const-string v13, "h3"

    aput-object v13, v1, v12

    const/16 v12, 0x11

    const-string v13, "h4"

    aput-object v13, v1, v12

    const/16 v12, 0x12

    const-string v13, "h5"

    aput-object v13, v1, v12

    const/16 v12, 0x13

    const-string v13, "h6"

    aput-object v13, v1, v12

    const/16 v12, 0x14

    const-string v13, "i"

    aput-object v13, v1, v12

    const-string v12, "img"

    const/16 v13, 0x15

    aput-object v12, v1, v13

    const/16 v13, 0x16

    const-string v14, "li"

    aput-object v14, v1, v13

    const/16 v13, 0x17

    const-string v14, "ol"

    aput-object v14, v1, v13

    const/16 v13, 0x18

    const-string v14, "p"

    aput-object v14, v1, v13

    const/16 v13, 0x19

    const-string v14, "pre"

    aput-object v14, v1, v13

    const-string v13, "q"

    const/16 v14, 0x1a

    aput-object v13, v1, v14

    const/16 v14, 0x1b

    const-string v15, "small"

    aput-object v15, v1, v14

    const/16 v14, 0x1c

    const-string v15, "strike"

    aput-object v15, v1, v14

    const/16 v14, 0x1d

    const-string v15, "strong"

    aput-object v15, v1, v14

    const/16 v14, 0x1e

    const-string v15, "sub"

    aput-object v15, v1, v14

    const/16 v14, 0x1f

    const-string v15, "sup"

    aput-object v15, v1, v14

    const/16 v14, 0x20

    const-string v15, "table"

    aput-object v15, v1, v14

    const/16 v14, 0x21

    const-string v15, "tbody"

    aput-object v15, v1, v14

    const/16 v14, 0x22

    const-string v15, "td"

    aput-object v15, v1, v14

    const/16 v14, 0x23

    const-string v15, "tfoot"

    aput-object v15, v1, v14

    const/16 v14, 0x24

    const-string v15, "th"

    aput-object v15, v1, v14

    const/16 v14, 0x25

    const-string v15, "thead"

    aput-object v15, v1, v14

    const/16 v14, 0x26

    const-string v15, "tr"

    aput-object v15, v1, v14

    const/16 v14, 0x27

    const-string v15, "u"

    aput-object v15, v1, v14

    const/16 v14, 0x28

    const-string v15, "ul"

    aput-object v15, v1, v14

    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v14, "href"

    aput-object v14, v1, v3

    const-string v14, "title"

    aput-object v14, v1, v4

    invoke-virtual {v0, v2, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v10, v1, v3

    invoke-virtual {v0, v5, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v14, "span"

    aput-object v14, v1, v3

    const-string/jumbo v14, "width"

    aput-object v14, v1, v4

    const-string v15, "col"

    invoke-virtual {v0, v15, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v15, "span"

    aput-object v15, v1, v3

    aput-object v14, v1, v4

    const-string v15, "colgroup"

    invoke-virtual {v0, v15, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/String;

    const-string v15, "align"

    aput-object v15, v1, v3

    const-string v15, "alt"

    aput-object v15, v1, v4

    const-string v15, "height"

    aput-object v15, v1, v6

    const-string v15, "src"

    aput-object v15, v1, v7

    const-string v15, "title"

    aput-object v15, v1, v8

    aput-object v14, v1, v9

    invoke-virtual {v0, v12, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v15, "start"

    aput-object v15, v1, v3

    const-string v15, "type"

    aput-object v15, v1, v4

    const-string v15, "ol"

    invoke-virtual {v0, v15, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v10, v1, v3

    invoke-virtual {v0, v13, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v15, "summary"

    aput-object v15, v1, v3

    aput-object v14, v1, v4

    const-string v15, "table"

    invoke-virtual {v0, v15, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    const-string v15, "abbr"

    aput-object v15, v1, v3

    const-string v15, "axis"

    aput-object v15, v1, v4

    const-string v15, "colspan"

    aput-object v15, v1, v6

    const-string v15, "rowspan"

    aput-object v15, v1, v7

    aput-object v14, v1, v8

    const-string v15, "td"

    invoke-virtual {v0, v15, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/String;

    const-string v11, "abbr"

    aput-object v11, v1, v3

    const-string v11, "axis"

    aput-object v11, v1, v4

    const-string v11, "colspan"

    aput-object v11, v1, v6

    const-string v11, "rowspan"

    aput-object v11, v1, v7

    const-string v11, "scope"

    aput-object v11, v1, v8

    aput-object v14, v1, v9

    const-string v9, "th"

    invoke-virtual {v0, v9, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v9, "type"

    aput-object v9, v1, v3

    const-string v9, "ul"

    invoke-virtual {v0, v9, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v8, "ftp"

    aput-object v8, v1, v3

    const-string v8, "http"

    aput-object v8, v1, v4

    const-string v9, "https"

    aput-object v9, v1, v6

    const-string v11, "mailto"

    aput-object v11, v1, v7

    const-string v7, "href"

    invoke-virtual {v0, v2, v7, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v8, v1, v3

    aput-object v9, v1, v4

    invoke-virtual {v0, v5, v10, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v8, v1, v3

    aput-object v9, v1, v4

    const-string v2, "src"

    invoke-virtual {v0, v12, v2, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v8, v1, v3

    aput-object v9, v1, v4

    invoke-virtual {v0, v13, v10, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public static simpleText()Lorg/jsoup/safety/Whitelist;
    .locals 4

    .line 73
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Whitelist;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "b"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "em"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "i"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "strong"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "u"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method private testValidProtocol(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;Ljava/util/Set;)Z
    .locals 5
    .param p1, "el"    # Lorg/jsoup/nodes/Element;
    .param p2, "attr"    # Lorg/jsoup/nodes/Attribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Element;",
            "Lorg/jsoup/nodes/Attribute;",
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/Whitelist$Protocol;",
            ">;)Z"
        }
    .end annotation

    .line 360
    .local p3, "protocols":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Whitelist$Protocol;>;"
    invoke-virtual {p2}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 362
    invoke-virtual {p2}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 363
    :cond_0
    iget-boolean v1, p0, Lorg/jsoup/safety/Whitelist;->preserveRelativeLinks:Z

    if-nez v1, :cond_1

    .line 364
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Attribute;->setValue(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/safety/Whitelist$Protocol;

    .line 367
    .local v2, "protocol":Lorg/jsoup/safety/Whitelist$Protocol;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/jsoup/safety/Whitelist$Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "prot":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 369
    const/4 v4, 0x1

    return v4

    .line 371
    .end local v2    # "protocol":Lorg/jsoup/safety/Whitelist$Protocol;
    .end local v3    # "prot":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 372
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public varargs addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .line 208
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 209
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 210
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "No attributes supplied."

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 212
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 213
    .local v0, "tagName":Lorg/jsoup/safety/Whitelist$TagName;
    iget-object v1, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    iget-object v1, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 216
    .local v1, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Whitelist$AttributeKey;>;"
    move-object v2, p2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 217
    .local v5, "key":Ljava/lang/String;
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 218
    invoke-static {v5}, Lorg/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v5    # "key":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 220
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 222
    .local v2, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Whitelist$AttributeKey;>;"
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 223
    .end local v2    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Whitelist$AttributeKey;>;"
    goto :goto_2

    .line 224
    :cond_3
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :goto_2
    return-object p0
.end method

.method public addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 242
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 243
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 244
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 246
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 247
    .local v0, "tagName":Lorg/jsoup/safety/Whitelist$TagName;
    iget-object v1, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    invoke-static {p2}, Lorg/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v1

    .line 250
    .local v1, "attrKey":Lorg/jsoup/safety/Whitelist$AttributeKey;
    invoke-static {p3}, Lorg/jsoup/safety/Whitelist$AttributeValue;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeValue;

    move-result-object v2

    .line 252
    .local v2, "attrVal":Lorg/jsoup/safety/Whitelist$AttributeValue;
    iget-object v3, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    iget-object v3, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v3, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Whitelist$AttributeKey;Lorg/jsoup/safety/Whitelist$AttributeValue;>;"
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v4, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v3    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Whitelist$AttributeKey;Lorg/jsoup/safety/Whitelist$AttributeValue;>;"
    :goto_0
    return-object p0
.end method

.method public varargs addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "protocols"    # [Ljava/lang/String;

    .line 293
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 294
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 295
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 297
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 298
    .local v0, "tagName":Lorg/jsoup/safety/Whitelist$TagName;
    invoke-static {p2}, Lorg/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v1

    .line 302
    .local v1, "attrKey":Lorg/jsoup/safety/Whitelist$AttributeKey;
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Whitelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Whitelist$Protocol;>;>;"
    goto :goto_0

    .line 305
    .end local v2    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Whitelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Whitelist$Protocol;>;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 306
    .restart local v2    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Whitelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Whitelist$Protocol;>;>;"
    iget-object v3, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :goto_0
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .local v3, "protSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Whitelist$Protocol;>;"
    goto :goto_1

    .line 311
    .end local v3    # "protSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Whitelist$Protocol;>;"
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 312
    .restart local v3    # "protSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Whitelist$Protocol;>;"
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :goto_1
    move-object v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 315
    .local v7, "protocol":Ljava/lang/String;
    invoke-static {v7}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 316
    invoke-static {v7}, Lorg/jsoup/safety/Whitelist$Protocol;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$Protocol;

    move-result-object v8

    .line 317
    .local v8, "prot":Lorg/jsoup/safety/Whitelist$Protocol;
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v7    # "protocol":Ljava/lang/String;
    .end local v8    # "prot":Lorg/jsoup/safety/Whitelist$Protocol;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 319
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_2
    return-object p0
.end method

.method public varargs addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 6
    .param p1, "tags"    # [Ljava/lang/String;

    .line 185
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 187
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 188
    .local v3, "tagName":Ljava/lang/String;
    invoke-static {v3}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-static {v3}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v3    # "tagName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-object p0
.end method

.method getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .locals 7
    .param p1, "tagName"    # Ljava/lang/String;

    .line 376
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 377
    .local v0, "attrs":Lorg/jsoup/nodes/Attributes;
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v1

    .line 378
    .local v1, "tag":Lorg/jsoup/safety/Whitelist$TagName;
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 380
    .local v2, "keyVals":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Whitelist$AttributeKey;Lorg/jsoup/safety/Whitelist$AttributeValue;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 381
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Whitelist$AttributeKey;Lorg/jsoup/safety/Whitelist$AttributeValue;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/safety/Whitelist$AttributeKey;

    invoke-virtual {v5}, Lorg/jsoup/safety/Whitelist$AttributeKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/safety/Whitelist$AttributeValue;

    invoke-virtual {v6}, Lorg/jsoup/safety/Whitelist$AttributeValue;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Whitelist$AttributeKey;Lorg/jsoup/safety/Whitelist$AttributeValue;>;"
    goto :goto_0

    .line 384
    .end local v2    # "keyVals":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Whitelist$AttributeKey;Lorg/jsoup/safety/Whitelist$AttributeValue;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z
    .locals 6
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "el"    # Lorg/jsoup/nodes/Element;
    .param p3, "attr"    # Lorg/jsoup/nodes/Attribute;

    .line 339
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 340
    .local v0, "tag":Lorg/jsoup/safety/Whitelist$TagName;
    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v1

    .line 342
    .local v1, "key":Lorg/jsoup/safety/Whitelist$AttributeKey;
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 343
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 347
    .local v2, "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Whitelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Whitelist$Protocol;>;>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-direct {p0, p2, p3, v5}, Lorg/jsoup/safety/Whitelist;->testValidProtocol(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;Ljava/util/Set;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3

    .line 349
    .end local v2    # "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Whitelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Whitelist$Protocol;>;>;"
    :cond_2
    return v4

    .line 354
    :cond_3
    const-string v2, ":all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v2, p2, p3}, Lorg/jsoup/safety/Whitelist;->isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method protected isSafeTag(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public preserveRelativeLinks(Z)Lorg/jsoup/safety/Whitelist;
    .locals 0
    .param p1, "preserve"    # Z

    .line 277
    iput-boolean p1, p0, Lorg/jsoup/safety/Whitelist;->preserveRelativeLinks:Z

    .line 278
    return-object p0
.end method
