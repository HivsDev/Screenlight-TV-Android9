.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$11;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 941
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 22
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 943
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "caption"

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 944
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    .line 945
    .local v3, "endTag":Lorg/jsoup/parser/Token$EndTag;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v7

    .line 946
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 947
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 948
    return v5

    .line 950
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 951
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 952
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 953
    :cond_1
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    .line 955
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$11;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 957
    .end local v3    # "endTag":Lorg/jsoup/parser/Token$EndTag;
    .end local v7    # "name":Ljava/lang/String;
    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v3

    const-string v7, "th"

    const-string v9, "tfoot"

    const-string v11, "td"

    const/4 v12, 0x4

    const-string v13, "tbody"

    const/4 v14, 0x3

    const-string v15, "colgroup"

    const/16 v16, 0x2

    const-string v17, "col"

    const/16 v8, 0x9

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v3

    new-array v10, v8, [Ljava/lang/String;

    aput-object v6, v10, v5

    aput-object v17, v10, v4

    aput-object v15, v10, v16

    aput-object v13, v10, v14

    aput-object v11, v10, v12

    const/16 v19, 0x5

    aput-object v9, v10, v19

    const/16 v18, 0x6

    aput-object v7, v10, v18

    const/16 v20, 0x7

    const-string v21, "thead"

    aput-object v21, v10, v20

    const/16 v20, 0x8

    const-string v21, "tr"

    aput-object v21, v10, v20

    invoke-static {v3, v10}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v3

    const-string v10, "table"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 962
    :cond_4
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 963
    new-instance v3, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v3, v6}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v3

    .line 964
    .local v3, "processed":Z
    if-eqz v3, :cond_5

    .line 965
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    return v4

    .line 966
    .end local v3    # "processed":Z
    :cond_5
    nop

    .line 973
    :goto_0
    return v4

    .line 966
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const-string v10, "body"

    aput-object v10, v6, v5

    aput-object v17, v6, v4

    aput-object v15, v6, v16

    const-string v4, "html"

    aput-object v4, v6, v14

    aput-object v13, v6, v12

    const/4 v4, 0x5

    aput-object v11, v6, v4

    const/4 v4, 0x6

    aput-object v9, v6, v4

    const/4 v4, 0x7

    aput-object v7, v6, v4

    const/16 v4, 0x8

    const-string v7, "thead"

    aput-object v7, v6, v4

    const-string v4, "tr"

    aput-object v4, v6, v8

    invoke-static {v3, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 968
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 969
    return v5

    .line 971
    :cond_7
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$11;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v3

    return v3
.end method
