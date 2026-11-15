.class final enum Lorg/jsoup/parser/TokeniserState$40;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 992
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 5
    .param p1, "t"    # Lorg/jsoup/parser/Tokeniser;
    .param p2, "r"    # Lorg/jsoup/parser/CharacterReader;

    .line 994
    const/16 v0, 0xd

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 996
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(Ljava/lang/String;)V

    .line 998
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v2

    .line 999
    .local v2, "c":C
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/16 v4, 0x20

    if-eq v2, v4, :cond_5

    const/16 v4, 0x22

    if-eq v2, v4, :cond_4

    const/16 v4, 0x60

    if-eq v2, v4, :cond_4

    const v4, 0xffff

    if-eq v2, v4, :cond_3

    const/16 v4, 0x9

    if-eq v2, v4, :cond_5

    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v4, 0xc

    if-eq v2, v4, :cond_5

    if-eq v2, v0, :cond_5

    const/16 v0, 0x26

    if-eq v2, v0, :cond_1

    const/16 v0, 0x27

    if-eq v2, v0, :cond_4

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v0, v3

    .line 1015
    .local v0, "ref":[C
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 1016
    sget-object v3, Lorg/jsoup/parser/TokeniserState$40;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1017
    goto :goto_0

    .line 1008
    .end local v0    # "ref":[C
    :cond_1
    const/16 v3, 0x3e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[C

    move-result-object v3

    .line 1009
    .local v3, "ref":[C
    if-eqz v3, :cond_2

    .line 1010
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue([C)V

    goto :goto_0

    .line 1012
    :cond_2
    iget-object v4, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v4, v0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    .line 1013
    goto :goto_0

    .line 999
    .end local v3    # "ref":[C
    :cond_3
    move-object v0, v3

    .line 1023
    .restart local v0    # "ref":[C
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 1024
    sget-object v3, Lorg/jsoup/parser/TokeniserState$40;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1025
    goto :goto_0

    .line 999
    .end local v0    # "ref":[C
    :cond_4
    :pswitch_1
    move-object v0, v3

    .line 1031
    .restart local v0    # "ref":[C
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 1032
    iget-object v3, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v3, v2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    goto :goto_0

    .line 1005
    .end local v0    # "ref":[C
    :cond_5
    sget-object v0, Lorg/jsoup/parser/TokeniserState$40;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1006
    goto :goto_0

    .line 999
    :cond_6
    move-object v0, v3

    .line 1019
    .restart local v0    # "ref":[C
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 1020
    iget-object v3, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    const v4, 0xfffd

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    .line 1021
    nop

    .line 1037
    .end local v0    # "ref":[C
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x26s
        0x3es
        0x0s
        0x22s
        0x27s
        0x3cs
        0x3ds
        0x60s
    .end array-data
.end method
