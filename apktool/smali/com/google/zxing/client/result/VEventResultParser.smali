.class public final Lcom/google/zxing/client/result/VEventResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VEventResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z

    .line 95
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 96
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    return-object v2
.end method

.method private static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 6
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z

    .line 100
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 101
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v3, v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    .line 105
    .local v2, "size":I
    move v2, v1

    new-array v1, v1, [Ljava/lang/String;

    .line 106
    .local v1, "result":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 107
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .end local v4    # "i":I
    :cond_1
    return-object v1

    .line 102
    .end local v1    # "result":[Ljava/lang/String;
    .end local v2    # "size":I
    :cond_2
    :goto_1
    return-object v2
.end method

.method private static stripMailto(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 113
    if-eqz p0, :cond_1

    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MAILTO:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 116
    :cond_1
    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;
    .locals 28
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 33
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/VEventResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 34
    .local v2, "rawText":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "BEGIN:VEVENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 35
    if-gez v0, :cond_0

    .line 36
    return-object v1

    .line 39
    :cond_0
    const/4 v0, 0x1

    const-string v3, "SUMMARY"

    invoke-static {v3, v2, v0}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "summary":Ljava/lang/String;
    const-string v4, "DTSTART"

    invoke-static {v4, v2, v0}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 41
    .local v5, "start":Ljava/lang/String;
    move-object v6, v4

    .end local v5    # "start":Ljava/lang/String;
    .local v6, "start":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 42
    return-object v1

    .line 44
    :cond_1
    const-string v4, "DTEND"

    invoke-static {v4, v2, v0}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 45
    .local v17, "end":Ljava/lang/String;
    const-string v4, "DURATION"

    invoke-static {v4, v2, v0}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    .line 46
    .local v18, "duration":Ljava/lang/String;
    const-string v4, "LOCATION"

    invoke-static {v4, v2, v0}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 47
    .local v19, "location":Ljava/lang/String;
    const-string v4, "ORGANIZER"

    invoke-static {v4, v2, v0}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 49
    .local v20, "organizer":Ljava/lang/String;
    const-string v4, "ATTENDEE"

    invoke-static {v4, v2, v0}, Lcom/google/zxing/client/result/VEventResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 50
    .local v5, "attendees":[Ljava/lang/String;
    move-object v15, v4

    .end local v5    # "attendees":[Ljava/lang/String;
    .local v15, "attendees":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 51
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v15

    if-ge v4, v5, :cond_2

    .line 52
    aget-object v5, v15, v4

    invoke-static {v5}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v4

    .line 51
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    .end local v4    # "i":I
    :cond_2
    const-string v4, "DESCRIPTION"

    invoke-static {v4, v2, v0}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 57
    .local v21, "description":Ljava/lang/String;
    const-string v4, "GEO"

    invoke-static {v4, v2, v0}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    .line 60
    .local v4, "geoString":Ljava/lang/String;
    move-object v13, v0

    .end local v4    # "geoString":Ljava/lang/String;
    .local v13, "geoString":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 61
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 62
    .local v4, "latitude":D
    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v22, v4

    move-wide/from16 v24, v7

    .local v7, "longitude":D
    goto :goto_1

    .line 64
    .end local v4    # "latitude":D
    .end local v7    # "longitude":D
    :cond_3
    const/16 v0, 0x3b

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, 0x0

    move v5, v4

    .line 65
    .local v5, "semicolon":I
    move v5, v0

    if-gez v0, :cond_4

    .line 66
    return-object v1

    .line 69
    :cond_4
    :try_start_0
    invoke-virtual {v13, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 70
    .local v7, "latitude":D
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    .local v9, "longitude":D
    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    .line 77
    .end local v5    # "semicolon":I
    .end local v7    # "latitude":D
    .end local v9    # "longitude":D
    .local v22, "latitude":D
    .local v24, "longitude":D
    :goto_1
    :try_start_1
    new-instance v0, Lcom/google/zxing/client/result/CalendarParsedResult;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v0

    move-object v5, v3

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object v11, v15

    move-object/from16 v12, v21

    move-object/from16 v26, v13

    .end local v13    # "geoString":Ljava/lang/String;
    .local v26, "geoString":Ljava/lang/String;
    move-wide/from16 v13, v22

    move-object/from16 v27, v15

    .end local v15    # "attendees":[Ljava/lang/String;
    .local v27, "attendees":[Ljava/lang/String;
    move-wide/from16 v15, v24

    :try_start_2
    invoke-direct/range {v4 .. v16}, Lcom/google/zxing/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v26    # "geoString":Ljava/lang/String;
    .end local v27    # "attendees":[Ljava/lang/String;
    .restart local v13    # "geoString":Ljava/lang/String;
    .restart local v15    # "attendees":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    .end local v13    # "geoString":Ljava/lang/String;
    .end local v15    # "attendees":[Ljava/lang/String;
    .restart local v26    # "geoString":Ljava/lang/String;
    .restart local v27    # "attendees":[Ljava/lang/String;
    :goto_2
    move-object v0, v1

    .line 88
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    return-object v1

    .line 71
    .end local v0    # "ignored":Ljava/lang/IllegalArgumentException;
    .end local v22    # "latitude":D
    .end local v24    # "longitude":D
    .end local v26    # "geoString":Ljava/lang/String;
    .end local v27    # "attendees":[Ljava/lang/String;
    .restart local v5    # "semicolon":I
    .restart local v13    # "geoString":Ljava/lang/String;
    .restart local v15    # "attendees":[Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    .line 72
    .end local v13    # "geoString":Ljava/lang/String;
    .end local v15    # "attendees":[Ljava/lang/String;
    .restart local v26    # "geoString":Ljava/lang/String;
    .restart local v27    # "attendees":[Ljava/lang/String;
    return-object v1
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VEventResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;

    move-result-object p1

    return-object p1
.end method
