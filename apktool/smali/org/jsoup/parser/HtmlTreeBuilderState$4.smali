.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$4;
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

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 2
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/TreeBuilder;

    .line 161
    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    const-string v1, "head"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 162
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 11
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 96
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    .line 98
    return v1

    .line 100
    :cond_0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v2, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_f

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_e

    const-string v4, "head"

    const-string v5, "html"

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v0, v7, :cond_4

    const/4 v8, 0x0

    if-eq v0, v6, :cond_1

    move-object v0, v8

    .local v0, "start":Lorg/jsoup/parser/Token$StartTag;
    move-object v1, v8

    .local v1, "name":Ljava/lang/String;
    move-object v2, v8

    .line 155
    .local v2, "end":Lorg/jsoup/parser/Token$EndTag;
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v3

    return v3

    .line 100
    .end local v0    # "start":Lorg/jsoup/parser/Token$StartTag;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "end":Lorg/jsoup/parser/Token$EndTag;
    :cond_1
    move-object v0, v8

    .restart local v0    # "start":Lorg/jsoup/parser/Token$StartTag;
    move-object v6, v8

    .line 142
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v8

    .line 143
    .local v8, "end":Lorg/jsoup/parser/Token$EndTag;
    invoke-virtual {v8}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v6

    .line 144
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 146
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 147
    :cond_2
    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "body"

    aput-object v7, v4, v3

    aput-object v5, v4, v1

    const-string v1, "br"

    aput-object v1, v4, v2

    invoke-static {v6, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v1

    return v1

    .line 150
    :cond_3
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 151
    return v3

    .line 108
    .end local v0    # "start":Lorg/jsoup/parser/Token$StartTag;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "end":Lorg/jsoup/parser/Token$EndTag;
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    .line 109
    .restart local v0    # "start":Lorg/jsoup/parser/Token$StartTag;
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 111
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 112
    :cond_5
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v9, "base"

    aput-object v9, v5, v3

    const-string v10, "basefont"

    aput-object v10, v5, v1

    const-string v10, "bgsound"

    aput-object v10, v5, v2

    const-string v10, "command"

    aput-object v10, v5, v7

    const-string v7, "link"

    aput-object v7, v5, v6

    invoke-static {v8, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 113
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    .line 115
    .local v2, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "href"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 116
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->maybeSetBaseUri(Lorg/jsoup/nodes/Element;)V

    .line 117
    .end local v2    # "el":Lorg/jsoup/nodes/Element;
    :cond_6
    goto/16 :goto_0

    :cond_7
    const-string v5, "meta"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 118
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 120
    goto :goto_0

    :cond_8
    const-string v5, "title"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 121
    invoke-static {v0, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$200(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto :goto_0

    .line 122
    :cond_9
    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "noframes"

    aput-object v5, v2, v3

    const-string v5, "style"

    aput-object v5, v2, v1

    invoke-static {v8, v2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 123
    invoke-static {v0, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto :goto_0

    .line 124
    :cond_a
    const-string v2, "noscript"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 126
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 127
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 128
    :cond_b
    const-string v2, "script"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 130
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 131
    iget-object v2, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v3, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 132
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 133
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 134
    :cond_c
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 135
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 136
    return v3

    .line 138
    :cond_d
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v1

    return v1

    .line 105
    .end local v0    # "start":Lorg/jsoup/parser/Token$StartTag;
    .end local v8    # "name":Ljava/lang/String;
    :cond_e
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 106
    return v3

    .line 102
    :cond_f
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    .line 103
    nop

    .line 157
    :goto_0
    return v1
.end method
