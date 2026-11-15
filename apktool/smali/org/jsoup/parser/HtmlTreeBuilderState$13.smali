.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$13;
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

    .line 1031
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 1088
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    return v0
.end method

.method private exitTableBody(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 2
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 1077
    const-string v0, "tbody"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "thead"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tfoot"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1080
    const/4 v0, 0x0

    return v0

    .line 1082
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableBodyContext()V

    .line 1083
    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 1084
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 20
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 1033
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    move-object/from16 v3, p1

    iget-object v4, v3, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v4}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const-string v4, "col"

    const-string v5, "caption"

    const-string v7, "td"

    const-string v8, "th"

    const-string v9, "thead"

    const-string v10, "tfoot"

    const-string v11, "tbody"

    const-string v12, "tr"

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x3

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eq v2, v15, :cond_5

    const/16 v18, 0x0

    if-eq v2, v13, :cond_0

    move-object/from16 v2, v18

    .local v2, "startTag":Lorg/jsoup/parser/Token$StartTag;
    move-object/from16 v4, v18

    .local v4, "name":Ljava/lang/String;
    move-object/from16 v5, v18

    .line 1071
    .local v5, "endTag":Lorg/jsoup/parser/Token$EndTag;
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v6

    return v6

    .line 1033
    .end local v2    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "endTag":Lorg/jsoup/parser/Token$EndTag;
    :cond_0
    move-object/from16 v2, v18

    .line 1051
    .restart local v2    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .local v18, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v19

    .line 1052
    .local v19, "endTag":Lorg/jsoup/parser/Token$EndTag;
    invoke-virtual/range {v19 .. v19}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v6

    .line 1053
    .end local v18    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    new-array v13, v15, [Ljava/lang/String;

    aput-object v11, v13, v17

    aput-object v10, v13, v16

    aput-object v9, v13, v14

    invoke-static {v6, v13}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1054
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1055
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1056
    return v17

    .line 1058
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableBodyContext()V

    .line 1059
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 1060
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 1062
    :cond_2
    const-string v9, "table"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1063
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->exitTableBody(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    return v4

    .line 1064
    :cond_3
    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "body"

    aput-object v10, v9, v17

    aput-object v5, v9, v16

    aput-object v4, v9, v14

    const-string v4, "colgroup"

    aput-object v4, v9, v15

    const-string v4, "html"

    const/4 v5, 0x4

    aput-object v4, v9, v5

    const/4 v4, 0x5

    aput-object v7, v9, v4

    const/4 v4, 0x6

    aput-object v8, v9, v4

    const/4 v4, 0x7

    aput-object v12, v9, v4

    invoke-static {v6, v9}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1065
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1066
    return v17

    .line 1068
    :cond_4
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    return v4

    .line 1035
    .end local v2    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .end local v6    # "name":Ljava/lang/String;
    .end local v19    # "endTag":Lorg/jsoup/parser/Token$EndTag;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    .line 1036
    .restart local v2    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v6

    .line 1037
    .restart local v6    # "name":Ljava/lang/String;
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1038
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableBodyContext()V

    .line 1039
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 1040
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1073
    .end local v2    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .end local v6    # "name":Ljava/lang/String;
    :goto_0
    return v16

    .line 1041
    .restart local v2    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_6
    new-array v13, v14, [Ljava/lang/String;

    aput-object v8, v13, v17

    aput-object v7, v13, v16

    invoke-static {v6, v13}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1042
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1043
    new-instance v4, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v4, v12}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 1044
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    return v4

    .line 1045
    :cond_7
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    aput-object v5, v7, v17

    aput-object v4, v7, v16

    const-string v4, "colgroup"

    aput-object v4, v7, v14

    aput-object v11, v7, v15

    const/4 v4, 0x4

    aput-object v10, v7, v4

    const/4 v4, 0x5

    aput-object v9, v7, v4

    invoke-static {v6, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1046
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->exitTableBody(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    return v4

    .line 1048
    :cond_8
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    return v4
.end method
