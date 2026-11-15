.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$14;
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

    .line 1091
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 1141
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    return v0
.end method

.method private handleMissingTr(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 2
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/TreeBuilder;

    .line 1145
    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    const-string v1, "tr"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    .line 1146
    .local v0, "processed":Z
    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 1149
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 18
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 1093
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v2

    const-string v4, "tfoot"

    const-string v6, "tbody"

    const-string v7, "colgroup"

    const-string v8, "col"

    const-string v9, "caption"

    const/4 v10, 0x7

    const-string v11, "td"

    const-string v12, "th"

    const/4 v13, 0x3

    const-string v14, "tr"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v2, :cond_2

    .line 1094
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    .line 1095
    .local v2, "startTag":Lorg/jsoup/parser/Token$StartTag;
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v3

    .line 1097
    .local v3, "name":Ljava/lang/String;
    new-array v5, v15, [Ljava/lang/String;

    aput-object v12, v5, v17

    aput-object v11, v5, v16

    invoke-static {v3, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1098
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableRowContext()V

    .line 1099
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 1100
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 1107
    .end local v2    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1102
    .restart local v2    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    new-array v5, v10, [Ljava/lang/String;

    aput-object v9, v5, v17

    aput-object v8, v5, v16

    aput-object v7, v5, v15

    aput-object v6, v5, v13

    const/4 v6, 0x4

    aput-object v4, v5, v6

    const-string v4, "thead"

    const/4 v6, 0x5

    aput-object v4, v5, v6

    const/4 v4, 0x6

    aput-object v14, v5, v4

    invoke-static {v3, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1103
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->handleMissingTr(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v4

    return v4

    .line 1105
    :cond_1
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    return v4

    .line 1107
    .end local v2    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1108
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v2

    .line 1109
    .local v2, "endTag":Lorg/jsoup/parser/Token$EndTag;
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v3

    .line 1111
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1112
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1113
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1114
    return v17

    .line 1116
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableRowContext()V

    .line 1117
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 1118
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1134
    .end local v2    # "endTag":Lorg/jsoup/parser/Token$EndTag;
    .end local v3    # "name":Ljava/lang/String;
    nop

    .line 1137
    :goto_0
    return v16

    .line 1119
    .restart local v2    # "endTag":Lorg/jsoup/parser/Token$EndTag;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_4
    const-string v5, "table"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1120
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->handleMissingTr(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v4

    return v4

    .line 1121
    :cond_5
    new-array v5, v13, [Ljava/lang/String;

    aput-object v6, v5, v17

    aput-object v4, v5, v16

    const-string v4, "thead"

    aput-object v4, v5, v15

    invoke-static {v3, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1122
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1123
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1124
    return v17

    .line 1126
    :cond_6
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v14}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 1127
    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v5

    return v5

    .line 1128
    :cond_7
    move-object/from16 v4, p1

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "body"

    aput-object v6, v5, v17

    aput-object v9, v5, v16

    aput-object v8, v5, v15

    aput-object v7, v5, v13

    const-string v6, "html"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    const/4 v6, 0x5

    aput-object v11, v5, v6

    const/4 v6, 0x6

    aput-object v12, v5, v6

    invoke-static {v3, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1129
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1130
    return v17

    .line 1132
    :cond_8
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v5

    return v5

    .line 1135
    .end local v2    # "endTag":Lorg/jsoup/parser/Token$EndTag;
    .end local v3    # "name":Ljava/lang/String;
    :cond_9
    move-object/from16 v4, p1

    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v2

    return v2
.end method
