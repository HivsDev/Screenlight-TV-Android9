.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
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

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 5
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 766
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v1

    .line 768
    .local v1, "stack":Lorg/jsoup/helper/DescendableLinkedList;, "Lorg/jsoup/helper/DescendableLinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {v1}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 769
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 770
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 771
    .local v3, "node":Lorg/jsoup/nodes/Element;
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 772
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 774
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 775
    :cond_0
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 776
    goto :goto_1

    .line 778
    :cond_1
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 779
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 780
    const/4 v4, 0x0

    return v4

    .line 783
    .end local v3    # "node":Lorg/jsoup/nodes/Element;
    :cond_2
    goto :goto_0

    .line 784
    :cond_3
    :goto_1
    const/4 v3, 0x1

    return v3
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 24
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v4, v1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v4}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_80

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v5, :cond_7f

    const-string v7, "h1"

    const-string v12, "body"

    const/4 v15, 0x5

    const/4 v8, 0x4

    const/4 v11, 0x3

    const-string v9, "p"

    if-eq v3, v11, :cond_33

    if-eq v3, v8, :cond_3

    if-eq v3, v15, :cond_0

    goto/16 :goto_17

    .line 249
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v3

    .line 250
    .local v3, "c":Lorg/jsoup/parser/Token$Character;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 253
    return v6

    .line 254
    :cond_1
    invoke-static {v3}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 255
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 256
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto/16 :goto_17

    .line 258
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 259
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    .line 260
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 262
    goto/16 :goto_17

    .line 247
    .end local v3    # "c":Lorg/jsoup/parser/Token$Character;
    :cond_3
    const/4 v3, 0x0

    .local v3, "startTag":Lorg/jsoup/parser/Token$StartTag;
    const/16 v19, 0x0

    .line 559
    .local v19, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v13

    .line 560
    .local v13, "endTag":Lorg/jsoup/parser/Token$EndTag;
    invoke-virtual {v13}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v10

    .line 561
    .end local v19    # "name":Ljava/lang/String;
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 562
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 563
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 564
    return v6

    .line 567
    :cond_4
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_17

    .line 569
    :cond_5
    const-string v14, "html"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 570
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v5, v12}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v5

    .line 571
    .local v5, "notIgnored":Z
    if-eqz v5, :cond_6

    .line 572
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    return v4

    .line 573
    .end local v5    # "notIgnored":Z
    :cond_6
    goto/16 :goto_17

    :cond_7
    const/16 v12, 0x18

    new-array v12, v12, [Ljava/lang/String;

    const-string v14, "address"

    aput-object v14, v12, v6

    const-string v14, "article"

    aput-object v14, v12, v4

    const-string v14, "aside"

    aput-object v14, v12, v5

    const-string v14, "blockquote"

    aput-object v14, v12, v11

    const-string v14, "button"

    aput-object v14, v12, v8

    const-string v14, "center"

    aput-object v14, v12, v15

    const-string v14, "details"

    const/16 v19, 0x6

    aput-object v14, v12, v19

    const-string v14, "dir"

    const/16 v21, 0x7

    aput-object v14, v12, v21

    const-string v14, "div"

    const/16 v20, 0x8

    aput-object v14, v12, v20

    const-string v14, "dl"

    const/16 v18, 0x9

    aput-object v14, v12, v18

    const-string v14, "fieldset"

    const/16 v17, 0xa

    aput-object v14, v12, v17

    const-string v14, "figcaption"

    const/16 v16, 0xb

    aput-object v14, v12, v16

    const/16 v14, 0xc

    const-string v22, "figure"

    aput-object v22, v12, v14

    const/16 v14, 0xd

    const-string v22, "footer"

    aput-object v22, v12, v14

    const/16 v14, 0xe

    const-string v22, "header"

    aput-object v22, v12, v14

    const/16 v14, 0xf

    const-string v22, "hgroup"

    aput-object v22, v12, v14

    const/16 v14, 0x10

    const-string v22, "listing"

    aput-object v22, v12, v14

    const/16 v14, 0x11

    const-string v22, "menu"

    aput-object v22, v12, v14

    const/16 v14, 0x12

    const-string v22, "nav"

    aput-object v22, v12, v14

    const/16 v14, 0x13

    const-string v22, "ol"

    aput-object v22, v12, v14

    const/16 v14, 0x14

    const-string v22, "pre"

    aput-object v22, v12, v14

    const/16 v14, 0x15

    const-string v22, "section"

    aput-object v22, v12, v14

    const/16 v14, 0x16

    const-string v22, "summary"

    aput-object v22, v12, v14

    const/16 v14, 0x17

    const-string v22, "ul"

    aput-object v22, v12, v14

    invoke-static {v10, v12}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 578
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 580
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 581
    return v6

    .line 583
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 584
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 585
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 586
    :cond_9
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 588
    :cond_a
    const-string v12, "form"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 589
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 590
    .local v5, "currentForm":Lorg/jsoup/nodes/Element;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/Element;)V

    .line 591
    if-eqz v5, :cond_d

    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_0

    .line 595
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 596
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 597
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 599
    :cond_c
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 601
    .end local v5    # "currentForm":Lorg/jsoup/nodes/Element;
    goto/16 :goto_17

    .line 592
    .restart local v5    # "currentForm":Lorg/jsoup/nodes/Element;
    :cond_d
    :goto_0
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 593
    return v6

    .line 601
    .end local v5    # "currentForm":Lorg/jsoup/nodes/Element;
    :cond_e
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 602
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 603
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 604
    new-instance v4, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v4, v10}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 605
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    return v4

    .line 607
    :cond_f
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 609
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 610
    :cond_10
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 612
    :cond_11
    const-string v9, "li"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 613
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->inListItemScope(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 614
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 615
    return v6

    .line 617
    :cond_12
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 619
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 620
    :cond_13
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 622
    :cond_14
    new-array v9, v5, [Ljava/lang/String;

    const-string v12, "dd"

    aput-object v12, v9, v6

    const-string v12, "dt"

    aput-object v12, v9, v4

    invoke-static {v10, v9}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 623
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 624
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 625
    return v6

    .line 627
    :cond_15
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 629
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 630
    :cond_16
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 632
    :cond_17
    const/4 v9, 0x6

    new-array v12, v9, [Ljava/lang/String;

    aput-object v7, v12, v6

    const-string v9, "h2"

    aput-object v9, v12, v4

    const-string v9, "h3"

    aput-object v9, v12, v5

    const-string v9, "h4"

    aput-object v9, v12, v11

    const-string v9, "h5"

    aput-object v9, v12, v8

    const-string v9, "h6"

    aput-object v9, v12, v15

    invoke-static {v10, v12}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 633
    const/4 v9, 0x6

    new-array v12, v9, [Ljava/lang/String;

    aput-object v7, v12, v6

    const-string v9, "h2"

    aput-object v9, v12, v4

    const-string v9, "h3"

    aput-object v9, v12, v5

    const-string v9, "h4"

    aput-object v9, v12, v11

    const-string v9, "h5"

    aput-object v9, v12, v8

    const-string v9, "h6"

    aput-object v9, v12, v15

    invoke-virtual {v2, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 634
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 635
    return v6

    .line 637
    :cond_18
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    .line 639
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 640
    :cond_19
    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    aput-object v7, v9, v6

    const-string v6, "h2"

    aput-object v6, v9, v4

    const-string v6, "h3"

    aput-object v6, v9, v5

    const-string v5, "h4"

    aput-object v5, v9, v11

    const-string v5, "h5"

    aput-object v5, v9, v8

    const-string v5, "h6"

    aput-object v5, v9, v15

    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose([Ljava/lang/String;)V

    goto/16 :goto_17

    .line 642
    :cond_1a
    const-string v7, "sarcasm"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 644
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    return v4

    .line 645
    :cond_1b
    const/16 v7, 0xe

    new-array v7, v7, [Ljava/lang/String;

    const-string v9, "a"

    aput-object v9, v7, v6

    const-string v9, "b"

    aput-object v9, v7, v4

    const-string v9, "big"

    aput-object v9, v7, v5

    const-string v9, "code"

    aput-object v9, v7, v11

    const-string v9, "em"

    aput-object v9, v7, v8

    const-string v9, "font"

    aput-object v9, v7, v15

    const-string v9, "i"

    const/4 v12, 0x6

    aput-object v9, v7, v12

    const-string v9, "nobr"

    const/4 v12, 0x7

    aput-object v9, v7, v12

    const-string v9, "s"

    const/16 v12, 0x8

    aput-object v9, v7, v12

    const-string v9, "small"

    const/16 v12, 0x9

    aput-object v9, v7, v12

    const-string v9, "strike"

    const/16 v12, 0xa

    aput-object v9, v7, v12

    const-string v9, "strong"

    const/16 v12, 0xb

    aput-object v9, v7, v12

    const/16 v9, 0xc

    const-string v12, "tt"

    aput-object v12, v7, v9

    const/16 v9, 0xd

    const-string v12, "u"

    aput-object v12, v7, v9

    invoke-static {v10, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 649
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v9, 0x8

    if-ge v7, v9, :cond_2d

    .line 650
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v9

    .line 651
    .local v9, "formatEl":Lorg/jsoup/nodes/Element;
    if-nez v9, :cond_1c

    .line 652
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    return v4

    .line 653
    :cond_1c
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v12

    if-nez v12, :cond_1d

    .line 654
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 655
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 656
    return v4

    .line 657
    :cond_1d
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1e

    .line 658
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 659
    return v6

    .line 660
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v12

    if-eq v12, v9, :cond_1f

    .line 661
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 663
    :cond_1f
    const/4 v12, 0x0

    .line 664
    .local v12, "furthestBlock":Lorg/jsoup/nodes/Element;
    const/4 v14, 0x0

    .line 665
    .local v14, "commonAncestor":Lorg/jsoup/nodes/Element;
    const/16 v16, 0x0

    .line 666
    .local v16, "seenFormattingElement":Z
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v8

    .line 669
    .local v8, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    const/16 v17, 0x0

    move/from16 v23, v17

    move-object/from16 v17, v14

    move/from16 v14, v23

    .local v14, "si":I
    .local v17, "commonAncestor":Lorg/jsoup/nodes/Element;
    :goto_2
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v14, v5, :cond_22

    const/16 v5, 0x40

    if-ge v14, v5, :cond_22

    .line 670
    invoke-virtual {v8, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 671
    .local v5, "el":Lorg/jsoup/nodes/Element;
    if-ne v5, v9, :cond_20

    .line 672
    add-int/lit8 v6, v14, -0x1

    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 673
    .end local v17    # "commonAncestor":Lorg/jsoup/nodes/Element;
    .local v6, "commonAncestor":Lorg/jsoup/nodes/Element;
    const/16 v16, 0x1

    move-object/from16 v17, v6

    goto :goto_3

    .line 674
    .end local v6    # "commonAncestor":Lorg/jsoup/nodes/Element;
    .restart local v17    # "commonAncestor":Lorg/jsoup/nodes/Element;
    :cond_20
    if-eqz v16, :cond_21

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 675
    move-object v12, v5

    .line 676
    goto :goto_4

    .line 669
    .end local v5    # "el":Lorg/jsoup/nodes/Element;
    :cond_21
    :goto_3
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto :goto_2

    .line 679
    .end local v14    # "si":I
    :cond_22
    :goto_4
    if-nez v12, :cond_23

    .line 680
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 682
    return v4

    .line 687
    :cond_23
    move-object v5, v12

    .line 688
    .local v5, "node":Lorg/jsoup/nodes/Element;
    move-object v6, v12

    .line 690
    .local v6, "lastNode":Lorg/jsoup/nodes/Element;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    if-ge v14, v11, :cond_28

    .line 691
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v18

    if-eqz v18, :cond_24

    .line 692
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 693
    :cond_24
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->isInActiveFormattingElements(Lorg/jsoup/nodes/Element;)Z

    move-result v18

    if-nez v18, :cond_25

    .line 694
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 695
    goto :goto_6

    .line 696
    :cond_25
    if-ne v5, v9, :cond_26

    .line 697
    goto :goto_7

    .line 699
    :cond_26
    new-instance v11, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v4, v15}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    move-object v4, v11

    .line 700
    .local v4, "replacement":Lorg/jsoup/nodes/Element;
    invoke-virtual {v2, v5, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceActiveFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 701
    invoke-virtual {v2, v5, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceOnStack(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 702
    move-object v5, v4

    .line 704
    nop

    .line 708
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v11

    if-eqz v11, :cond_27

    .line 709
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->remove()V

    .line 710
    :cond_27
    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 712
    move-object v6, v5

    .line 690
    .end local v4    # "replacement":Lorg/jsoup/nodes/Element;
    :goto_6
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    const/4 v11, 0x3

    const/4 v15, 0x5

    goto :goto_5

    .line 715
    .end local v14    # "j":I
    :cond_28
    :goto_7
    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x5

    new-array v14, v11, [Ljava/lang/String;

    const-string v11, "table"

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const-string v11, "tbody"

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const-string v11, "tfoot"

    const/4 v15, 0x2

    aput-object v11, v14, v15

    const-string v11, "thead"

    const/4 v15, 0x3

    aput-object v11, v14, v15

    const-string v11, "tr"

    const/4 v15, 0x4

    aput-object v11, v14, v15

    invoke-static {v4, v14}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 716
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 717
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->remove()V

    .line 718
    :cond_29
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lorg/jsoup/nodes/Node;)V

    move-object/from16 v14, v17

    goto :goto_8

    .line 720
    :cond_2a
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 721
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->remove()V

    .line 722
    :cond_2b
    move-object/from16 v14, v17

    .end local v17    # "commonAncestor":Lorg/jsoup/nodes/Element;
    .local v14, "commonAncestor":Lorg/jsoup/nodes/Element;
    invoke-virtual {v14, v6}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 725
    :goto_8
    new-instance v4, Lorg/jsoup/nodes/Element;

    invoke-static {v10}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v11, v15}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 726
    .local v4, "adopter":Lorg/jsoup/nodes/Element;
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v15

    new-array v15, v15, [Lorg/jsoup/nodes/Node;

    invoke-interface {v11, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/jsoup/nodes/Node;

    .line 727
    .local v11, "childNodes":[Lorg/jsoup/nodes/Node;
    move-object v15, v11

    move-object/from16 v17, v3

    .end local v3    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .local v15, "arr$":[Lorg/jsoup/nodes/Node;
    .local v17, "startTag":Lorg/jsoup/parser/Token$StartTag;
    array-length v3, v15

    .local v3, "len$":I
    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v5, v18

    .local v5, "i$":I
    .local v19, "node":Lorg/jsoup/nodes/Element;
    :goto_9
    if-ge v5, v3, :cond_2c

    move/from16 v18, v3

    .end local v3    # "len$":I
    .local v18, "len$":I
    aget-object v3, v15, v5

    .line 728
    .local v3, "childNode":Lorg/jsoup/nodes/Node;
    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 727
    .end local v3    # "childNode":Lorg/jsoup/nodes/Node;
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v18

    goto :goto_9

    .end local v18    # "len$":I
    .local v3, "len$":I
    :cond_2c
    move/from16 v18, v3

    .line 730
    .end local v3    # "len$":I
    .end local v5    # "i$":I
    .end local v15    # "arr$":[Lorg/jsoup/nodes/Node;
    invoke-virtual {v12, v4}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 731
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 733
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 734
    invoke-virtual {v2, v12, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertOnStackAfter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 649
    .end local v4    # "adopter":Lorg/jsoup/nodes/Element;
    .end local v6    # "lastNode":Lorg/jsoup/nodes/Element;
    .end local v8    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    .end local v9    # "formatEl":Lorg/jsoup/nodes/Element;
    .end local v11    # "childNodes":[Lorg/jsoup/nodes/Node;
    .end local v12    # "furthestBlock":Lorg/jsoup/nodes/Element;
    .end local v14    # "commonAncestor":Lorg/jsoup/nodes/Element;
    .end local v16    # "seenFormattingElement":Z
    .end local v19    # "node":Lorg/jsoup/nodes/Element;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v17

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v11, 0x3

    const/4 v15, 0x5

    goto/16 :goto_1

    .end local v17    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .local v3, "startTag":Lorg/jsoup/parser/Token$StartTag;
    :cond_2d
    move-object/from16 v17, v3

    .end local v3    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .end local v7    # "i":I
    .restart local v17    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    goto/16 :goto_17

    .line 736
    .end local v17    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .restart local v3    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    :cond_2e
    move-object/from16 v17, v3

    .end local v3    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .restart local v17    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "applet"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "marquee"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "object"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v10, v3}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 737
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_81

    .line 738
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 739
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 740
    const/4 v3, 0x0

    return v3

    .line 742
    :cond_2f
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 743
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 744
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 745
    :cond_30
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    goto/16 :goto_17

    .line 748
    :cond_31
    const-string v3, "br"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 749
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 750
    new-instance v3, Lorg/jsoup/parser/Token$StartTag;

    const-string v4, "br"

    invoke-direct {v3, v4}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 751
    const/4 v3, 0x0

    return v3

    .line 753
    :cond_32
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v3

    return v3

    .line 273
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "endTag":Lorg/jsoup/parser/Token$EndTag;
    .end local v17    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    :cond_33
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v3

    .line 274
    .restart local v3    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "name":Ljava/lang/String;
    const-string v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 276
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/helper/DescendableLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 279
    .local v5, "html":Lorg/jsoup/nodes/Element;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->getAttributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Attribute;

    .line 280
    .local v7, "attribute":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v7}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_34

    .line 281
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    .end local v7    # "attribute":Lorg/jsoup/nodes/Attribute;
    :cond_34
    goto :goto_a

    .line 283
    .end local v5    # "html":Lorg/jsoup/nodes/Element;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_35
    goto/16 :goto_17

    :cond_36
    const/16 v5, 0xa

    new-array v6, v5, [Ljava/lang/String;

    const-string v5, "base"

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const-string v5, "basefont"

    const/4 v8, 0x1

    aput-object v5, v6, v8

    const-string v5, "bgsound"

    const/4 v8, 0x2

    aput-object v5, v6, v8

    const-string v5, "command"

    const/4 v8, 0x3

    aput-object v5, v6, v8

    const-string v5, "link"

    const/4 v8, 0x4

    aput-object v5, v6, v8

    const-string v5, "meta"

    const/4 v8, 0x5

    aput-object v5, v6, v8

    const-string v5, "noframes"

    const/4 v8, 0x6

    aput-object v5, v6, v8

    const-string v5, "script"

    const/4 v8, 0x7

    aput-object v5, v6, v8

    const-string v5, "style"

    const/16 v8, 0x8

    aput-object v5, v6, v8

    const-string v5, "title"

    const/16 v8, 0x9

    aput-object v5, v6, v8

    invoke-static {v4, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 284
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v5

    return v5

    .line 285
    :cond_37
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 286
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v5

    .line 288
    .local v5, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3b

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v8, 0x2

    if-le v6, v8, :cond_38

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    goto :goto_c

    .line 292
    :cond_38
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 293
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 294
    .local v6, "body":Lorg/jsoup/nodes/Element;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->getAttributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/Attribute;

    .line 295
    .local v8, "attribute":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v8}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_39

    .line 296
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    .end local v8    # "attribute":Lorg/jsoup/nodes/Attribute;
    :cond_39
    goto :goto_b

    .line 299
    .end local v5    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    .end local v6    # "body":Lorg/jsoup/nodes/Element;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_3a
    goto/16 :goto_17

    .line 290
    .restart local v5    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_3b
    :goto_c
    const/4 v6, 0x0

    return v6

    .line 299
    .end local v5    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_3c
    const-string v5, "frameset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 300
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v5

    .line 302
    .restart local v5    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_41

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v8, 0x2

    if-le v6, v8, :cond_3d

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    goto :goto_e

    .line 305
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v6

    if-nez v6, :cond_3e

    .line 306
    const/4 v6, 0x0

    return v6

    .line 308
    :cond_3e
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 309
    .local v6, "second":Lorg/jsoup/nodes/Element;
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v7

    if-eqz v7, :cond_3f

    .line 310
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->remove()V

    .line 312
    :cond_3f
    :goto_d
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_40

    .line 313
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_d

    .line 314
    :cond_40
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 315
    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 317
    .end local v5    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    .end local v6    # "second":Lorg/jsoup/nodes/Element;
    goto/16 :goto_17

    .line 304
    .restart local v5    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_41
    :goto_e
    const/4 v6, 0x0

    return v6

    .line 317
    .end local v5    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_42
    const/4 v6, 0x0

    const/16 v5, 0x16

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "address"

    aput-object v8, v5, v6

    const-string v6, "article"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "aside"

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-string v6, "blockquote"

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const-string v6, "center"

    const/4 v8, 0x4

    aput-object v6, v5, v8

    const-string v6, "details"

    const/4 v8, 0x5

    aput-object v6, v5, v8

    const-string v6, "dir"

    const/4 v8, 0x6

    aput-object v6, v5, v8

    const-string v6, "div"

    const/4 v8, 0x7

    aput-object v6, v5, v8

    const-string v6, "dl"

    const/16 v8, 0x8

    aput-object v6, v5, v8

    const-string v6, "fieldset"

    const/16 v8, 0x9

    aput-object v6, v5, v8

    const-string v6, "figcaption"

    const/16 v8, 0xa

    aput-object v6, v5, v8

    const-string v6, "figure"

    const/16 v8, 0xb

    aput-object v6, v5, v8

    const/16 v6, 0xc

    const-string v8, "footer"

    aput-object v8, v5, v6

    const/16 v6, 0xd

    const-string v8, "header"

    aput-object v8, v5, v6

    const/16 v6, 0xe

    const-string v8, "hgroup"

    aput-object v8, v5, v6

    const/16 v6, 0xf

    const-string v8, "menu"

    aput-object v8, v5, v6

    const/16 v6, 0x10

    const-string v8, "nav"

    aput-object v8, v5, v6

    const/16 v6, 0x11

    const-string v8, "ol"

    aput-object v8, v5, v6

    const/16 v6, 0x12

    aput-object v9, v5, v6

    const/16 v6, 0x13

    const-string v8, "section"

    aput-object v8, v5, v6

    const/16 v6, 0x14

    const-string v8, "summary"

    aput-object v8, v5, v6

    const/16 v6, 0x15

    const-string v8, "ul"

    aput-object v8, v5, v6

    invoke-static {v4, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 321
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 322
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v5, v9}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 324
    :cond_43
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 325
    :cond_44
    const/4 v5, 0x6

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v6, v5

    const-string v5, "h2"

    const/4 v8, 0x1

    aput-object v5, v6, v8

    const-string v5, "h3"

    const/4 v8, 0x2

    aput-object v5, v6, v8

    const-string v5, "h4"

    const/4 v8, 0x3

    aput-object v5, v6, v8

    const-string v5, "h5"

    const/4 v8, 0x4

    aput-object v5, v6, v8

    const-string v5, "h6"

    const/4 v8, 0x5

    aput-object v5, v6, v8

    invoke-static {v4, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 326
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 327
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v5, v9}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 329
    :cond_45
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "h2"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "h3"

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, "h4"

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-string v7, "h5"

    const/4 v8, 0x4

    aput-object v7, v6, v8

    const-string v7, "h6"

    const/4 v8, 0x5

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 330
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 333
    :cond_46
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 334
    :cond_47
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const-string v5, "pre"

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "listing"

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-static {v4, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 335
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 336
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v5, v9}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 338
    :cond_48
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 340
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 341
    :cond_49
    const-string v5, "form"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 342
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 343
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 344
    const/4 v5, 0x0

    return v5

    .line 346
    :cond_4a
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 347
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v5, v9}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 349
    :cond_4b
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 350
    .local v5, "form":Lorg/jsoup/nodes/Element;
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/Element;)V

    .line 351
    .end local v5    # "form":Lorg/jsoup/nodes/Element;
    goto/16 :goto_17

    :cond_4c
    const-string v5, "li"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 352
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v5

    .line 354
    .local v5, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_f
    if-lez v6, :cond_4f

    .line 355
    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 356
    .local v7, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "li"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 357
    new-instance v8, Lorg/jsoup/parser/Token$EndTag;

    const-string v10, "li"

    invoke-direct {v8, v10}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 358
    goto :goto_10

    .line 360
    :cond_4d
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/String;

    const-string v10, "address"

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const-string v10, "div"

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v10, 0x2

    aput-object v9, v11, v10

    invoke-static {v8, v11}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4e

    .line 361
    goto :goto_10

    .line 354
    .end local v7    # "el":Lorg/jsoup/nodes/Element;
    :cond_4e
    add-int/lit8 v6, v6, -0x1

    goto :goto_f

    .line 363
    .end local v6    # "i":I
    :cond_4f
    :goto_10
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 364
    new-instance v6, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v6, v9}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 366
    :cond_50
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 367
    .end local v5    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    goto/16 :goto_17

    :cond_51
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const-string v5, "dd"

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "dt"

    const/4 v8, 0x1

    aput-object v5, v6, v8

    invoke-static {v4, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 368
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v5

    .line 370
    .restart local v5    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    sub-int/2addr v6, v8

    .restart local v6    # "i":I
    :goto_11
    if-lez v6, :cond_54

    .line 371
    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 372
    .restart local v7    # "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/String;

    const-string v10, "dd"

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const-string v10, "dt"

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-static {v8, v11}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 373
    new-instance v8, Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 374
    goto :goto_12

    .line 376
    :cond_52
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/String;

    const-string v10, "address"

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const-string v10, "div"

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v10, 0x2

    aput-object v9, v11, v10

    invoke-static {v8, v11}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_53

    .line 377
    goto :goto_12

    .line 370
    .end local v7    # "el":Lorg/jsoup/nodes/Element;
    :cond_53
    add-int/lit8 v6, v6, -0x1

    goto :goto_11

    .line 379
    .end local v6    # "i":I
    :cond_54
    :goto_12
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 380
    new-instance v6, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v6, v9}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 382
    :cond_55
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 383
    .end local v5    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    goto/16 :goto_17

    :cond_56
    const-string v5, "plaintext"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 384
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 385
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v5, v9}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 387
    :cond_57
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 388
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v6, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto/16 :goto_17

    .line 389
    :cond_58
    const-string v5, "button"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 390
    const-string v5, "button"

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 392
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 393
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    const-string v6, "button"

    invoke-direct {v5, v6}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 394
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto/16 :goto_17

    .line 396
    :cond_59
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 397
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 398
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 400
    :cond_5a
    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 401
    const-string v5, "a"

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    if-eqz v5, :cond_5b

    .line 402
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 403
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    const-string v6, "a"

    invoke-direct {v5, v6}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 406
    const-string v5, "a"

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 407
    .local v5, "remainingA":Lorg/jsoup/nodes/Element;
    if-eqz v5, :cond_5b

    .line 408
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 409
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 412
    .end local v5    # "remainingA":Lorg/jsoup/nodes/Element;
    :cond_5b
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 413
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 414
    .local v5, "a":Lorg/jsoup/nodes/Element;
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 415
    .end local v5    # "a":Lorg/jsoup/nodes/Element;
    goto/16 :goto_17

    :cond_5c
    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "b"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "big"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "code"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "em"

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const-string v6, "font"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    const-string v6, "i"

    const/4 v7, 0x5

    aput-object v6, v5, v7

    const-string v6, "s"

    const/4 v7, 0x6

    aput-object v6, v5, v7

    const-string v6, "small"

    const/4 v7, 0x7

    aput-object v6, v5, v7

    const-string v6, "strike"

    const/16 v7, 0x8

    aput-object v6, v5, v7

    const-string v6, "strong"

    const/16 v7, 0x9

    aput-object v6, v5, v7

    const-string v6, "tt"

    const/16 v7, 0xa

    aput-object v6, v5, v7

    const-string v6, "u"

    const/16 v7, 0xb

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 417
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 418
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 419
    .local v5, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 420
    .end local v5    # "el":Lorg/jsoup/nodes/Element;
    goto/16 :goto_17

    :cond_5d
    const-string v5, "nobr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 421
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 422
    const-string v5, "nobr"

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 423
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 424
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    const-string v6, "nobr"

    invoke-direct {v5, v6}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 425
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 427
    :cond_5e
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 428
    .restart local v5    # "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 429
    .end local v5    # "el":Lorg/jsoup/nodes/Element;
    goto/16 :goto_17

    :cond_5f
    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/String;

    const-string v5, "applet"

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "marquee"

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const-string v5, "object"

    const/4 v7, 0x2

    aput-object v5, v6, v7

    invoke-static {v4, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 430
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 431
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 432
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 433
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 434
    :cond_60
    const-string v5, "table"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 435
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v5

    sget-object v6, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    if-eq v5, v6, :cond_61

    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 436
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v5, v9}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 438
    :cond_61
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 439
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 440
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_17

    .line 441
    :cond_62
    const/4 v5, 0x0

    const/4 v6, 0x6

    new-array v7, v6, [Ljava/lang/String;

    const-string v6, "area"

    aput-object v6, v7, v5

    const-string v5, "br"

    const/4 v6, 0x1

    aput-object v5, v7, v6

    const-string v5, "embed"

    const/4 v6, 0x2

    aput-object v5, v7, v6

    const-string v5, "img"

    const/4 v6, 0x3

    aput-object v5, v7, v6

    const-string v5, "keygen"

    const/4 v6, 0x4

    aput-object v5, v7, v6

    const-string/jumbo v5, "wbr"

    const/4 v6, 0x5

    aput-object v5, v7, v6

    invoke-static {v4, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 442
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 443
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 444
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 445
    :cond_63
    const-string v5, "input"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 446
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 447
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 448
    .restart local v5    # "el":Lorg/jsoup/nodes/Element;
    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "hidden"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 449
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 450
    .end local v5    # "el":Lorg/jsoup/nodes/Element;
    :cond_64
    goto/16 :goto_17

    :cond_65
    const/4 v6, 0x0

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/String;

    const-string v5, "param"

    aput-object v5, v7, v6

    const-string v5, "source"

    const/4 v6, 0x1

    aput-object v5, v7, v6

    const-string v5, "track"

    const/4 v6, 0x2

    aput-object v5, v7, v6

    invoke-static {v4, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 451
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 452
    :cond_66
    const-string v5, "hr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 453
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 454
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v5, v9}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 456
    :cond_67
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 457
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 458
    :cond_68
    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 460
    const-string v5, "img"

    invoke-virtual {v3, v5}, Lorg/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    .line 461
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v5

    return v5

    .line 462
    :cond_69
    const-string v5, "isindex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 464
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    if-eqz v5, :cond_6a

    .line 466
    const/4 v5, 0x0

    return v5

    .line 468
    :cond_6a
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v5}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    .line 469
    new-instance v5, Lorg/jsoup/parser/Token$StartTag;

    const-string v6, "form"

    invoke-direct {v5, v6}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 470
    iget-object v5, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v6, "action"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 471
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 472
    .local v5, "form":Lorg/jsoup/nodes/Element;
    iget-object v6, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v7, "action"

    invoke-virtual {v6, v7}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "action"

    invoke-virtual {v5, v7, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 474
    .end local v5    # "form":Lorg/jsoup/nodes/Element;
    :cond_6b
    new-instance v5, Lorg/jsoup/parser/Token$StartTag;

    const-string v6, "hr"

    invoke-direct {v5, v6}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 475
    new-instance v5, Lorg/jsoup/parser/Token$StartTag;

    const-string v6, "label"

    invoke-direct {v5, v6}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 477
    iget-object v5, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v6, "prompt"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    iget-object v5, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v6, "prompt"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    :cond_6c
    const-string v5, "This is a searchable index. Enter search keywords: "

    .line 481
    .local v5, "prompt":Ljava/lang/String;
    :goto_13
    new-instance v6, Lorg/jsoup/parser/Token$Character;

    invoke-direct {v6, v5}, Lorg/jsoup/parser/Token$Character;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 484
    new-instance v6, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v6}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 485
    .local v6, "inputAttribs":Lorg/jsoup/nodes/Attributes;
    iget-object v7, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v7}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/Attribute;

    .line 486
    .local v8, "attr":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v8}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/String;

    const-string v10, "name"

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const-string v10, "action"

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const-string v10, "prompt"

    const/4 v12, 0x2

    aput-object v10, v11, v12

    invoke-static {v9, v11}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6d

    .line 487
    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    .end local v8    # "attr":Lorg/jsoup/nodes/Attribute;
    :cond_6d
    goto :goto_14

    .line 489
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_6e
    const-string v7, "name"

    const-string v8, "isindex"

    invoke-virtual {v6, v7, v8}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v7, Lorg/jsoup/parser/Token$StartTag;

    const-string v8, "input"

    invoke-direct {v7, v8, v6}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 491
    new-instance v7, Lorg/jsoup/parser/Token$EndTag;

    const-string v8, "label"

    invoke-direct {v7, v8}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 492
    new-instance v7, Lorg/jsoup/parser/Token$StartTag;

    const-string v8, "hr"

    invoke-direct {v7, v8}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 493
    new-instance v7, Lorg/jsoup/parser/Token$EndTag;

    const-string v8, "form"

    invoke-direct {v7, v8}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 494
    .end local v5    # "prompt":Ljava/lang/String;
    .end local v6    # "inputAttribs":Lorg/jsoup/nodes/Attributes;
    goto/16 :goto_17

    :cond_6f
    const-string v5, "textarea"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 495
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 497
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v6, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 499
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 500
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_17

    .line 501
    :cond_70
    const-string/jumbo v5, "xmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 502
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 503
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v5, v9}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 505
    :cond_71
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 506
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 507
    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_17

    .line 508
    :cond_72
    const/4 v5, 0x0

    const-string v6, "iframe"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 509
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 510
    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_17

    .line 511
    :cond_73
    const-string v5, "noembed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 513
    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_17

    .line 514
    :cond_74
    const-string v5, "select"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 515
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 516
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 517
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->state()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v5

    .line 520
    .local v5, "state":Lorg/jsoup/parser/HtmlTreeBuilderState;
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_76

    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_76

    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_76

    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_76

    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    goto :goto_15

    .line 523
    :cond_75
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_16

    .line 521
    :cond_76
    :goto_15
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 524
    .end local v5    # "state":Lorg/jsoup/parser/HtmlTreeBuilderState;
    :goto_16
    goto/16 :goto_17

    :cond_77
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const-string v5, "option"

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "optgroup"

    invoke-static {v5, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 525
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "option"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 526
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    const-string v6, "option"

    invoke-direct {v5, v6}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 527
    :cond_78
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 528
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 529
    :cond_79
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const-string v5, "rt"

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "rp"

    invoke-static {v5, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 530
    const-string v5, "ruby"

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 531
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 532
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ruby"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    .line 533
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 534
    const-string v5, "ruby"

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToBefore(Ljava/lang/String;)V

    .line 536
    :cond_7a
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 538
    :cond_7b
    const-string v5, "math"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 539
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 541
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 542
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v5}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto :goto_17

    .line 543
    :cond_7c
    const-string v5, "svg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 544
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 546
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 547
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v5}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto :goto_17

    .line 548
    :cond_7d
    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "caption"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "col"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "colgroup"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "frame"

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const-string v6, "head"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    const-string v6, "tbody"

    const/4 v7, 0x5

    aput-object v6, v5, v7

    const-string v6, "td"

    const/4 v7, 0x6

    aput-object v6, v5, v7

    const-string v6, "tfoot"

    const/4 v7, 0x7

    aput-object v6, v5, v7

    const-string v6, "th"

    const/16 v7, 0x8

    aput-object v6, v5, v7

    const-string v6, "thead"

    const/16 v7, 0x9

    aput-object v6, v5, v7

    const-string v6, "tr"

    const/16 v7, 0xa

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 550
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 551
    const/4 v5, 0x0

    return v5

    .line 553
    :cond_7e
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 554
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 556
    goto :goto_17

    .line 269
    .end local v3    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .end local v4    # "name":Ljava/lang/String;
    :cond_7f
    const/4 v5, 0x0

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 270
    return v5

    .line 265
    :cond_80
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    .line 266
    nop

    .line 762
    :cond_81
    :goto_17
    const/4 v3, 0x1

    return v3
.end method
