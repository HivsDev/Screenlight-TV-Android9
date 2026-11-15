.class public Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# static fields
.field private static final CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MpdParser"


# instance fields
.field private final contentId:Ljava/lang/String;

.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-string v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    .line 65
    const-string v0, "CC([1-4])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    .line 66
    nop

    .line 67
    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentId"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->contentId:Ljava/lang/String;

    .line 85
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static checkContentTypeConsistency(II)I
    .locals 1
    .param p0, "firstType"    # I
    .param p1, "secondType"    # I

    .line 1196
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 1197
    return p1

    .line 1198
    :cond_0
    if-ne p1, v0, :cond_1

    .line 1199
    return p0

    .line 1201
    :cond_1
    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1202
    return p0
.end method

.method private static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "firstLanguage"    # Ljava/lang/String;
    .param p1, "secondLanguage"    # Ljava/lang/String;

    .line 1174
    if-nez p0, :cond_0

    .line 1175
    return-object p1

    .line 1176
    :cond_0
    if-nez p1, :cond_1

    .line 1177
    return-object p0

    .line 1179
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1180
    return-object p0
.end method

.method private static filterRedundantIncompleteSchemeDatas(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 1099
    .local p0, "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1100
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 1101
    .local v1, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1102
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1103
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->canReplace(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1106
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1107
    goto :goto_2

    .line 1102
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1099
    .end local v1    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v2    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1112
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private static getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "containerMimeType"    # Ljava/lang/String;
    .param p1, "codecs"    # Ljava/lang/String;

    .line 1122
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1124
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1126
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1127
    return-object p0

    .line 1128
    :cond_2
    const-string v0, "application/mp4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1129
    if-eqz p1, :cond_8

    .line 1130
    const-string v0, "stpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1131
    const-string v0, "application/ttml+xml"

    return-object v0

    .line 1132
    :cond_3
    const-string/jumbo v0, "wvtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1133
    const-string v0, "application/x-mp4-vtt"

    return-object v0

    .line 1136
    :cond_4
    const-string v0, "application/x-rawcc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1137
    if-eqz p1, :cond_7

    .line 1138
    const-string v0, "cea708"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1139
    const-string v0, "application/cea-708"

    return-object v0

    .line 1140
    :cond_5
    const-string v0, "eia608"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "cea608"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1141
    :cond_6
    const-string v0, "application/cea-608"

    return-object v0

    .line 1144
    :cond_7
    return-object v1

    .line 1146
    :cond_8
    return-object v1
.end method

.method public static maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1081
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    return-void

    .line 1084
    :cond_0
    const/4 v0, 0x1

    .line 1085
    .local v0, "depth":I
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1086
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1087
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1088
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1089
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1090
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1093
    :cond_3
    return-void
.end method

.method private static mimeTypeIsRawText(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 1156
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1157
    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1159
    const-string v0, "application/cea-708"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1160
    const-string v0, "application/cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1156
    :goto_1
    return v0
.end method

.method protected static parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "parentBaseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1312
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static parseCea608AccessibilityChannel(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1228
    .local p0, "accessibilityDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1229
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1230
    .local v1, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v3, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1232
    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1233
    .local v2, "accessibilityValueMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1234
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 1236
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse CEA-608 channel number from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MpdParser"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    .end local v1    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .end local v2    # "accessibilityValueMatcher":Ljava/util/regex/Matcher;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1240
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method protected static parseCea708AccessibilityChannel(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1245
    .local p0, "accessibilityDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1246
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1247
    .local v1, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v3, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1249
    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1250
    .local v2, "accessibilityValueMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1251
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 1253
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse CEA-708 service block number from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MpdParser"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    .end local v1    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .end local v2    # "accessibilityValueMatcher":Ljava/util/regex/Matcher;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1257
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method protected static parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1301
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1302
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1303
    return-wide p2

    .line 1305
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected static parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .locals 4
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1217
    const-string v0, "schemeIdUri"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1218
    .local v0, "schemeIdUri":Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    invoke-static {p0, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1219
    .local v2, "value":Ljava/lang/String;
    const-string v3, "id"

    invoke-static {p0, v3, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, "id":Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1222
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1223
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    invoke-direct {v3, v0, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 1222
    :cond_0
    goto :goto_0
.end method

.method protected static parseDolbyChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 6
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1340
    const/4 v0, 0x0

    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, "value":Ljava/lang/String;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1342
    return v1

    .line 1344
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "fa01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "f801"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "a000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "4000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    .line 1354
    return v1

    .line 1352
    :cond_2
    const/16 v1, 0x8

    return v1

    .line 1350
    :cond_3
    const/4 v1, 0x6

    return v1

    .line 1348
    :cond_4
    return v4

    .line 1346
    :cond_5
    return v5

    :sswitch_data_0
    .sparse-switch
        0x185d7c -> :sswitch_3
        0x2cd22f -> :sswitch_2
        0x2f3613 -> :sswitch_1
        0x2fcffc -> :sswitch_0
    .end sparse-switch
.end method

.method protected static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 1291
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1292
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1293
    return-wide p2

    .line 1295
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected static parseEac3SupplementalProperties(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1261
    .local p0, "supplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1262
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1263
    .local v1, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 1264
    .local v2, "schemeIdUri":Ljava/lang/String;
    const-string v3, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 1265
    const-string v4, "ec+3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1266
    const-string v3, "audio/eac3-joc"

    return-object v3

    .line 1261
    .end local v1    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .end local v2    # "schemeIdUri":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1269
    .end local v0    # "i":I
    :cond_1
    const-string v0, "audio/eac3"

    return-object v0
.end method

.method protected static parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "defaultValue"    # F

    .line 1273
    move v0, p1

    .line 1274
    .local v0, "frameRate":F
    const/4 v1, 0x0

    const-string v2, "frameRate"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1275
    .local v1, "frameRateAttribute":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1276
    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1277
    .local v2, "frameRateMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1278
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1279
    .local v3, "numerator":I
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 1280
    .local v4, "denominatorString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1281
    int-to-float v5, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    goto :goto_0

    .line 1283
    :cond_0
    int-to-float v0, v3

    .line 1287
    .end local v2    # "frameRateMatcher":Ljava/util/regex/Matcher;
    .end local v3    # "numerator":I
    .end local v4    # "denominatorString":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1316
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 1321
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1322
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    move-wide v1, p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method protected static parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1326
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method


# virtual methods
.method protected buildAdaptationSet(IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 7
    .param p1, "id"    # I
    .param p2, "contentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;"
        }
    .end annotation

    .line 369
    .local p3, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .local p4, "accessibilityDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p5, "supplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v6
.end method

.method protected buildEvent(Ljava/lang/String;Ljava/lang/String;JJ[BJ)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 11
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "durationMs"    # J
    .param p7, "messageData"    # [B
    .param p8, "presentationTimeUs"    # J

    .line 968
    new-instance v10, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    move-wide v5, p3

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[BJ)V

    return-object v10
.end method

.method protected buildEventStream(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    .locals 8
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "timescale"    # J
    .param p5, "presentationTimesUs"    # [J
    .param p6, "events"    # [Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 862
    new-instance v7, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V

    return-object v7
.end method

.method protected buildFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer2/Format;
    .locals 14
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "containerMimeType"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "frameRate"    # F
    .param p7, "audioChannels"    # I
    .param p8, "audioSamplingRate"    # I
    .param p9, "bitrate"    # I
    .param p10, "language"    # Ljava/lang/String;
    .param p11, "selectionFlags"    # I
    .param p13, "codecs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .line 611
    .local p12, "accessibilityDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local p14, "supplementalProperties":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v11, p3

    move-object/from16 v12, p13

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "sampleMimeType":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 613
    const-string v1, "audio/eac3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    invoke-static/range {p14 .. p14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseEac3SupplementalProperties(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 613
    :cond_0
    move-object v13, v0

    .line 616
    .end local v0    # "sampleMimeType":Ljava/lang/String;
    .local v13, "sampleMimeType":Ljava/lang/String;
    :goto_0
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    const/4 v9, 0x0

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v13

    move-object/from16 v4, p13

    move/from16 v5, p9

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p11

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 629
    :cond_1
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 630
    const/4 v8, 0x0

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v13

    move-object/from16 v4, p13

    move/from16 v5, p9

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v9, p11

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 642
    :cond_2
    invoke-static {v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 644
    const-string v0, "application/cea-608"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    invoke-static/range {p12 .. p12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseCea608AccessibilityChannel(Ljava/util/List;)I

    move-result v0

    move v9, v0

    .local v0, "accessibilityChannel":I
    goto :goto_1

    .line 646
    .end local v0    # "accessibilityChannel":I
    :cond_3
    const-string v0, "application/cea-708"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 647
    invoke-static/range {p12 .. p12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseCea708AccessibilityChannel(Ljava/util/List;)I

    move-result v0

    move v9, v0

    .restart local v0    # "accessibilityChannel":I
    goto :goto_1

    .line 649
    .end local v0    # "accessibilityChannel":I
    :cond_4
    const/4 v0, -0x1

    move v9, v0

    .line 651
    .local v9, "accessibilityChannel":I
    :goto_1
    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v13

    move-object/from16 v4, p13

    move/from16 v5, p9

    move/from16 v6, p11

    move-object/from16 v7, p10

    move v8, v9

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 612
    .end local v9    # "accessibilityChannel":I
    .end local v13    # "sampleMimeType":Ljava/lang/String;
    .local v0, "sampleMimeType":Ljava/lang/String;
    :cond_5
    move-object v13, v0

    .line 663
    .end local v0    # "sampleMimeType":Ljava/lang/String;
    .restart local v13    # "sampleMimeType":Ljava/lang/String;
    :cond_6
    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v13

    move-object/from16 v4, p13

    move/from16 v5, p9

    move/from16 v6, p11

    move-object/from16 v7, p10

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/Format;->createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method protected buildMediaPresentationDescription(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 21
    .param p1, "availabilityStartTime"    # J
    .param p3, "durationMs"    # J
    .param p5, "minBufferTimeMs"    # J
    .param p7, "dynamic"    # Z
    .param p8, "minUpdateTimeMs"    # J
    .param p10, "timeShiftBufferDepthMs"    # J
    .param p12, "suggestedPresentationDelayMs"    # J
    .param p14, "publishTimeMs"    # J
    .param p16, "programInformation"    # Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .param p17, "utcTiming"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .param p18, "location"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;"
        }
    .end annotation

    .local p19, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    .line 207
    new-instance v20, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;-><init>(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)V

    return-object v20
.end method

.method protected buildPeriod(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;"
        }
    .end annotation

    .line 268
    .local p4, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .local p5, "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    return-object v6
.end method

.method protected buildRangedUri(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 7
    .param p1, "urlText"    # Ljava/lang/String;
    .param p2, "rangeStart"    # J
    .param p4, "rangeLength"    # J

    .line 1030
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method protected buildRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .locals 14
    .param p1, "representationInfo"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "extraDrmSchemeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;"
        }
    .end annotation

    .line 670
    .local p4, "extraDrmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local p5, "extraInbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object v0, p1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplayer2/Format;

    .line 671
    .local v1, "format":Lcom/google/android/exoplayer2/Format;
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    .line 673
    .local v2, "drmSchemeType":Ljava/lang/String;
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    .line 674
    .local v3, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move-object/from16 v4, p4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 675
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 676
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->filterRedundantIncompleteSchemeDatas(Ljava/util/ArrayList;)V

    .line 677
    new-instance v5, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v5, v2, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 678
    .local v5, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/Format;->copyWithDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 680
    .end local v5    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_1
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    .line 681
    .local v5, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v13, p5

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 682
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->revisionId:J

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->baseUrl:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;

    move-object/from16 v6, p2

    move-object v9, v1

    move-object v12, v5

    invoke-static/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->newInstance(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v6

    return-object v6
.end method

.method protected buildSegmentList(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .locals 13
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # J
    .param p8, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;"
        }
    .end annotation

    .line 771
    .local p10, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .local p11, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    new-instance v12, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-object v0, v12

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Ljava/util/List;)V

    return-object v12
.end method

.method protected buildSegmentTemplate(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 14
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # J
    .param p8, "duration"    # J
    .param p11, "initializationTemplate"    # Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .param p12, "mediaTemplate"    # Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .line 819
    .local p10, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    new-instance v13, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object v0, v13

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)V

    return-object v13
.end method

.method protected buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;
    .locals 1
    .param p1, "elapsedTime"    # J
    .param p3, "duration"    # J

    .line 993
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object v0
.end method

.method protected buildSingleSegmentBase(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 11
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "indexStart"    # J
    .param p8, "indexLength"    # J

    .line 720
    new-instance v10, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    return-object v10
.end method

.method protected buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .locals 1
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 229
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getContentType(Lcom/google/android/exoplayer2/Format;)I
    .locals 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 383
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 384
    .local v0, "sampleMimeType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 385
    return v2

    .line 386
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    const/4 v1, 0x2

    return v1

    .line 388
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    const/4 v1, 0x1

    return v1

    .line 390
    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    const/4 v1, 0x3

    return v1

    .line 393
    :cond_3
    return v2
.end method

.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 97
    .local v0, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 98
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 99
    .local v1, "eventType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v2, "MPD"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v2

    return-object v2

    .line 100
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v3, "inputStream does not contain a valid media presentation description"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "eventType":I
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method

.method protected parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 39
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "segmentBase"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const/4 v0, -0x1

    const-string v1, "id"

    invoke-static {v14, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    .line 276
    .local v16, "id":I
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    .line 278
    .local v1, "contentType":I
    const/4 v13, 0x0

    const-string v2, "mimeType"

    invoke-interface {v14, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 279
    .local v17, "mimeType":Ljava/lang/String;
    const-string v2, "codecs"

    invoke-interface {v14, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 280
    .local v18, "codecs":Ljava/lang/String;
    const-string/jumbo v2, "width"

    invoke-static {v14, v2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    .line 281
    .local v19, "width":I
    const-string v2, "height"

    invoke-static {v14, v2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    .line 282
    .local v20, "height":I
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v21

    .line 283
    .local v21, "frameRate":F
    const/4 v2, -0x1

    .line 284
    .local v2, "audioChannels":I
    const-string v3, "audioSamplingRate"

    invoke-static {v14, v3, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    .line 285
    .local v22, "audioSamplingRate":I
    const-string v12, "lang"

    invoke-interface {v14, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "language":Ljava/lang/String;
    const-string v3, "label"

    invoke-interface {v14, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 287
    .local v23, "label":Ljava/lang/String;
    const/4 v3, 0x0

    .line 288
    .local v3, "drmSchemeType":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v4

    .line 289
    .local v11, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v4

    .line 290
    .local v10, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v4

    .line 291
    .local v9, "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v4

    .line 292
    .local v8, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v4

    .line 293
    .local v7, "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    const/4 v4, 0x0

    .line 295
    .local v4, "selectionFlags":I
    const/4 v5, 0x0

    move-object/from16 v6, p2

    move-object/from16 v28, p3

    move/from16 v27, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    move/from16 v24, v5

    move-object v5, v0

    move v4, v1

    .line 297
    .end local v0    # "language":Ljava/lang/String;
    .end local v1    # "contentType":I
    .end local v2    # "audioChannels":I
    .end local v3    # "drmSchemeType":Ljava/lang/String;
    .end local p2    # "baseUrl":Ljava/lang/String;
    .end local p3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v4, "contentType":I
    .local v5, "language":Ljava/lang/String;
    .local v6, "baseUrl":Ljava/lang/String;
    .local v24, "seenFirstBaseUrl":Z
    .local v25, "drmSchemeType":Ljava/lang/String;
    .local v26, "selectionFlags":I
    .local v27, "audioChannels":I
    .local v28, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 298
    const-string v0, "BaseURL"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    if-nez v24, :cond_0

    .line 300
    invoke-static {v14, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .end local v6    # "baseUrl":Ljava/lang/String;
    .local v0, "baseUrl":Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v31, v0

    move/from16 v24, v1

    move-object/from16 v30, v5

    move-object v6, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object v8, v10

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move-object/from16 v38, v13

    move-object v7, v14

    move v9, v4

    .end local v24    # "seenFirstBaseUrl":Z
    .local v1, "seenFirstBaseUrl":Z
    goto/16 :goto_2

    .line 299
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v1    # "seenFirstBaseUrl":Z
    .restart local v6    # "baseUrl":Ljava/lang/String;
    .restart local v24    # "seenFirstBaseUrl":Z
    :cond_0
    move v2, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object v6, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object v8, v10

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move-object/from16 v38, v13

    move-object v7, v14

    goto/16 :goto_1

    .line 303
    :cond_1
    const-string v0, "ContentProtection"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v0

    .line 305
    .local v0, "contentProtection":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v1

    check-cast v25, Ljava/lang/String;

    .line 308
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 309
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v0    # "contentProtection":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :cond_3
    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object v6, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object v8, v10

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move-object/from16 v38, v13

    move-object v7, v14

    move v9, v4

    goto/16 :goto_2

    :cond_4
    const-string v0, "ContentComponent"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 312
    invoke-interface {v14, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v0

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object v6, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object v8, v10

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move-object/from16 v38, v13

    move-object v7, v14

    move v9, v0

    .end local v4    # "contentType":I
    .local v0, "contentType":I
    goto/16 :goto_2

    .line 314
    .end local v0    # "contentType":I
    .restart local v4    # "contentType":I
    :cond_5
    const-string v0, "Role"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRole(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    or-int v26, v26, v0

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object v6, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object v8, v10

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move-object/from16 v38, v13

    move-object v7, v14

    move v9, v4

    goto/16 :goto_2

    .line 316
    :cond_6
    const-string v0, "AudioChannelConfiguration"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 317
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v27

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object v6, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object v8, v10

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move-object/from16 v38, v13

    move-object v7, v14

    move v9, v4

    goto/16 :goto_2

    .line 318
    :cond_7
    const-string v0, "Accessibility"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 319
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object v6, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object v8, v10

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move-object/from16 v38, v13

    move-object v7, v14

    goto/16 :goto_1

    .line 320
    :cond_8
    const-string v0, "SupplementalProperty"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 321
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object v6, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object v8, v10

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move-object/from16 v38, v13

    move-object v7, v14

    goto/16 :goto_1

    .line 322
    :cond_9
    const-string v0, "Representation"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 323
    nop

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, v23

    move/from16 v29, v4

    .end local v4    # "contentType":I
    .local v29, "contentType":I
    move-object/from16 v4, v17

    move-object/from16 v30, v5

    .end local v5    # "language":Ljava/lang/String;
    .local v30, "language":Ljava/lang/String;
    move-object/from16 v5, v18

    move-object/from16 v31, v6

    .end local v6    # "baseUrl":Ljava/lang/String;
    .local v31, "baseUrl":Ljava/lang/String;
    move/from16 v6, v19

    move-object/from16 v32, v7

    .end local v7    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .local v32, "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    move/from16 v7, v20

    move-object/from16 v33, v8

    .end local v8    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v33, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move/from16 v8, v21

    move-object/from16 v34, v9

    .end local v9    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v34, "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move/from16 v9, v27

    move-object/from16 v35, v10

    .end local v10    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v35, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move/from16 v10, v22

    move-object/from16 v36, v11

    .end local v11    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v36, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move-object/from16 v11, v30

    move-object/from16 v37, v12

    move/from16 v12, v26

    move-object/from16 v38, v13

    move-object/from16 v13, v34

    move-object/from16 v14, v28

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    move-result-object v0

    .line 339
    .local v0, "representationInfo":Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplayer2/Format;

    .line 340
    invoke-virtual {v15, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->getContentType(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 339
    move/from16 v2, v29

    .end local v29    # "contentType":I
    .local v2, "contentType":I
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v1

    .line 341
    .end local v2    # "contentType":I
    .local v1, "contentType":I
    move-object/from16 v6, v32

    .end local v32    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .local v6, "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    .end local v0    # "representationInfo":Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    move-object/from16 v7, p1

    move v9, v1

    move-object/from16 v8, v35

    goto/16 :goto_2

    .end local v1    # "contentType":I
    .end local v30    # "language":Ljava/lang/String;
    .end local v31    # "baseUrl":Ljava/lang/String;
    .end local v33    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v34    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v35    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v36    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v4    # "contentType":I
    .restart local v5    # "language":Ljava/lang/String;
    .local v6, "baseUrl":Ljava/lang/String;
    .restart local v7    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .restart local v8    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v9    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v10    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v11    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :cond_a
    move v2, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object v6, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move-object/from16 v38, v13

    .end local v4    # "contentType":I
    .end local v5    # "language":Ljava/lang/String;
    .end local v7    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .end local v8    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v9    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v10    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v11    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v2    # "contentType":I
    .local v6, "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .restart local v30    # "language":Ljava/lang/String;
    .restart local v31    # "baseUrl":Ljava/lang/String;
    .restart local v33    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v34    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v35    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v36    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const-string v0, "SegmentBase"

    move-object/from16 v7, p1

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 343
    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v15, v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    move-object/from16 v28, v0

    move v9, v2

    move-object/from16 v8, v35

    .end local v28    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v0, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto :goto_2

    .line 344
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v28    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_b
    const-string v0, "SegmentList"

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 345
    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    invoke-virtual {v15, v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    move-object/from16 v28, v0

    move v9, v2

    move-object/from16 v8, v35

    .end local v28    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto :goto_2

    .line 346
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v28    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_c
    const-string v0, "SegmentTemplate"

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 347
    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    invoke-virtual {v15, v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    move-object/from16 v28, v0

    move v9, v2

    move-object/from16 v8, v35

    .end local v28    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto :goto_2

    .line 348
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v28    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_d
    const-string v0, "InbandEventStream"

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 349
    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    move-object/from16 v8, v35

    .end local v35    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v8, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    .end local v8    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v35    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    :cond_e
    move-object/from16 v8, v35

    .end local v35    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v8    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 351
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 353
    .end local v2    # "contentType":I
    .end local v30    # "language":Ljava/lang/String;
    .end local v31    # "baseUrl":Ljava/lang/String;
    .end local v33    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v34    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v36    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v4    # "contentType":I
    .restart local v5    # "language":Ljava/lang/String;
    .local v6, "baseUrl":Ljava/lang/String;
    .restart local v7    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .local v8, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v9    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v10    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v11    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :cond_f
    :goto_1
    move v9, v2

    .end local v4    # "contentType":I
    .end local v5    # "language":Ljava/lang/String;
    .end local v7    # "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .end local v10    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v11    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v6, "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    .local v8, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v9, "contentType":I
    .restart local v30    # "language":Ljava/lang/String;
    .restart local v31    # "baseUrl":Ljava/lang/String;
    .restart local v33    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v34    # "accessibilityDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v36    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :goto_2
    const-string v0, "AdaptationSet"

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 357
    .local v10, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_10

    .line 358
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    iget-object v2, v15, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->contentId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v3, v25

    move-object/from16 v4, v36

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 362
    .end local v11    # "i":I
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v9

    move-object v3, v10

    move-object/from16 v4, v34

    move-object/from16 v5, v33

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildAdaptationSet(IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v0

    return-object v0

    .line 353
    .end local v10    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_11
    move-object v14, v7

    move-object v10, v8

    move v4, v9

    move-object/from16 v5, v30

    move-object/from16 v8, v33

    move-object/from16 v9, v34

    move-object/from16 v11, v36

    move-object/from16 v12, v37

    move-object/from16 v13, v38

    move-object v7, v6

    move-object/from16 v6, v31

    goto/16 :goto_0
.end method

.method protected parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 506
    return-void
.end method

.method protected parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1059
    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, "schemeIdUri":Ljava/lang/String;
    const-string/jumbo v1, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 1061
    const-string/jumbo v1, "value"

    invoke-static {p1, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_0
    nop

    .line 1062
    const-string v1, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1063
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDolbyChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    move v1, v2

    .line 1065
    .local v1, "audioChannels":I
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1066
    const-string v2, "AudioChannelConfiguration"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1067
    return v1

    .line 1066
    :cond_2
    goto :goto_1
.end method

.method protected parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 16
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 408
    .local v1, "schemeType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 409
    .local v2, "licenseServerUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 410
    .local v3, "data":[B
    const/4 v4, 0x0

    .line 411
    .local v4, "uuid":Ljava/util/UUID;
    const/4 v5, 0x0

    .line 413
    .local v5, "requiresSecureDecoder":Z
    const/4 v6, 0x0

    const-string v7, "schemeIdUri"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, "schemeIdUri":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_8

    .line 415
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, 0x1d2c5beb

    const/4 v14, 0x2

    if-eq v12, v13, :cond_3

    const v13, 0x2d06c692

    if-eq v12, v13, :cond_2

    const v13, 0x6c0c9d2a

    if-eq v12, v13, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string/jumbo v12, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v12, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v11, 0x2

    goto :goto_0

    :cond_3
    const-string/jumbo v12, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v11, 0x1

    :goto_0
    if-eqz v11, :cond_6

    if-eq v11, v9, :cond_5

    if-eq v11, v14, :cond_4

    goto :goto_2

    .line 434
    :cond_4
    sget-object v4, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 435
    goto :goto_2

    .line 431
    :cond_5
    sget-object v4, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 432
    goto :goto_2

    .line 417
    :cond_6
    const-string/jumbo v10, "value"

    invoke-interface {v0, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    const-string v10, "default_KID"

    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValueIgnorePrefix(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 419
    .local v10, "defaultKid":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 420
    const-string v11, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 421
    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 422
    .local v11, "defaultKidStrings":[Ljava/lang/String;
    array-length v12, v11

    new-array v12, v12, [Ljava/util/UUID;

    .line 423
    .local v12, "defaultKids":[Ljava/util/UUID;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v14, v11

    if-ge v13, v14, :cond_7

    .line 424
    aget-object v14, v11, v13

    invoke-static {v14}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v14

    aput-object v14, v12, v13

    .line 423
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 426
    .end local v13    # "i":I
    :cond_7
    sget-object v13, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-static {v13, v12, v6}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v3

    .line 427
    sget-object v4, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    .line 442
    .end local v10    # "defaultKid":Ljava/lang/String;
    .end local v11    # "defaultKidStrings":[Ljava/lang/String;
    .end local v12    # "defaultKids":[Ljava/util/UUID;
    :cond_8
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 443
    const-string v10, "ms:laurl"

    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 444
    const-string v10, "licenseUrl"

    invoke-interface {v0, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 445
    :cond_9
    const-string/jumbo v10, "widevine:license"

    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 446
    const-string v10, "robustness_level"

    invoke-interface {v0, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 447
    .local v10, "robustnessLevel":Ljava/lang/String;
    if-eqz v10, :cond_a

    const-string v11, "HW"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    goto :goto_3

    :cond_a
    const/4 v11, 0x0

    :goto_3
    move v5, v11

    .line 448
    .end local v10    # "robustnessLevel":Ljava/lang/String;
    goto :goto_4

    :cond_b
    const/4 v10, 0x4

    if-nez v3, :cond_c

    .line 449
    const-string v11, "pssh"

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTagIgnorePrefix(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 450
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-ne v11, v10, :cond_c

    .line 452
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 453
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v4

    .line 454
    if-nez v4, :cond_e

    .line 455
    const-string v10, "MpdParser"

    const-string v11, "Skipping malformed cenc:pssh data"

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v3, 0x0

    goto :goto_4

    .line 458
    :cond_c
    if-nez v3, :cond_d

    sget-object v11, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 459
    invoke-virtual {v11, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 460
    const-string v11, "mspr:pro"

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 461
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-ne v11, v10, :cond_d

    .line 463
    sget-object v10, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 465
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    .line 464
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v3

    goto :goto_4

    .line 467
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 469
    :cond_e
    :goto_4
    const-string v10, "ContentProtection"

    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 470
    if-eqz v4, :cond_f

    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string/jumbo v13, "video/mp4"

    move-object v10, v6

    move-object v11, v4

    move-object v12, v2

    move-object v14, v3

    move v15, v5

    invoke-direct/range {v10 .. v15}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V

    .line 475
    .local v6, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_f
    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    return-object v8

    .line 469
    .end local v6    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_10
    goto/16 :goto_2
.end method

.method protected parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 374
    const/4 v0, 0x0

    const-string v1, "contentType"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 377
    :cond_1
    const-string/jumbo v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 378
    :cond_2
    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 375
    :cond_3
    :goto_0
    return v2
.end method

.method protected parseEvent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 23
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "schemeIdUri"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "timescale"    # J
    .param p6, "scratchOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 885
    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    const-string v3, "id"

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 886
    .local v14, "id":J
    const-string v3, "duration"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 887
    .local v16, "duration":J
    const-string v3, "presentationTime"

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    .line 888
    .local v1, "presentationTime":J
    const-wide/16 v8, 0x3e8

    move-wide/from16 v6, v16

    move-wide/from16 v10, p4

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v18

    .line 889
    .local v18, "durationMs":J
    const-wide/32 v6, 0xf4240

    move-wide v4, v1

    move-wide/from16 v8, p4

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v20

    .line 891
    .local v20, "presentationTimesUs":J
    const-string v3, "messageData"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 892
    .local v3, "messageData":Ljava/lang/String;
    move-object/from16 v12, p0

    move-object/from16 v13, p6

    invoke-virtual {v12, v0, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseEventObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v22

    .line 893
    .local v22, "eventObject":[B
    if-nez v3, :cond_0

    move-object/from16 v11, v22

    goto :goto_0

    .line 898
    :cond_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v11, v4

    .line 893
    :goto_0
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide v7, v14

    move-wide/from16 v9, v18

    move-wide/from16 v12, v20

    invoke-virtual/range {v4 .. v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildEvent(Ljava/lang/String;Ljava/lang/String;JJ[BJ)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object v4

    return-object v4
.end method

.method protected parseEventObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B
    .locals 5
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "scratchOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 913
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 914
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 915
    .local v0, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v1, "UTF-8"

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 918
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 919
    :goto_0
    const-string v1, "Event"

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 920
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 956
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 957
    goto/16 :goto_2

    .line 953
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 954
    goto :goto_2

    .line 950
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 951
    goto :goto_2

    .line 947
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 948
    goto :goto_2

    .line 944
    :pswitch_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 945
    goto :goto_2

    .line 941
    :pswitch_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 942
    goto :goto_2

    .line 938
    :pswitch_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 939
    goto :goto_2

    .line 935
    :pswitch_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 936
    goto :goto_2

    .line 928
    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 929
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 930
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 931
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 930
    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 929
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 933
    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 925
    :pswitch_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 926
    goto :goto_2

    .line 922
    :pswitch_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 923
    nop

    .line 960
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    goto/16 :goto_0

    .line 962
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 963
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseEventStream(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    .locals 19
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    move-object/from16 v7, p1

    const-string v0, ""

    const-string v1, "schemeIdUri"

    invoke-static {v7, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 835
    .local v15, "schemeIdUri":Ljava/lang/String;
    const-string/jumbo v1, "value"

    invoke-static {v7, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 836
    .local v16, "value":Ljava/lang/String;
    const-string v0, "timescale"

    const-wide/16 v1, 0x1

    invoke-static {v7, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    .line 837
    .local v17, "timescale":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 838
    .local v14, "eventMessages":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;"
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 840
    .local v6, "scratchOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 841
    const-string v0, "Event"

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseEvent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object v0

    .line 844
    .local v0, "event":Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    .end local v0    # "event":Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    goto :goto_1

    .line 846
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 848
    :goto_1
    const-string v0, "EventStream"

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 850
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 851
    .local v0, "presentationTimesUs":[J
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 852
    .local v1, "events":[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 853
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 854
    .local v3, "event":Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    iget-wide v4, v3, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->presentationTimeUs:J

    aput-wide v4, v0, v2

    .line 855
    aput-object v3, v1, v2

    .line 852
    .end local v3    # "event":Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 857
    .end local v2    # "i":I
    :cond_1
    move-object/from16 v8, p0

    move-object v9, v15

    move-object/from16 v10, v16

    move-wide/from16 v11, v17

    move-object v13, v0

    move-object v2, v14

    .end local v14    # "eventMessages":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;"
    .local v2, "eventMessages":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;"
    move-object v14, v1

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildEventStream(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    move-result-object v3

    return-object v3

    .line 848
    .end local v0    # "presentationTimesUs":[J
    .end local v1    # "events":[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .end local v2    # "eventMessages":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;"
    .restart local v14    # "eventMessages":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;"
    :cond_2
    move-object v2, v14

    .end local v14    # "eventMessages":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;"
    .restart local v2    # "eventMessages":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;>;"
    goto :goto_0
.end method

.method protected parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1006
    const-string v0, "sourceURL"

    const-string v1, "range"

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 41
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    move-object/from16 v0, p1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-string v3, "availabilityStartTime"

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v24

    .line 112
    .local v24, "availabilityStartTime":J
    const-string v3, "mediaPresentationDuration"

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    .line 113
    .local v3, "durationMs":J
    const-string v5, "minBufferTime"

    invoke-static {v0, v5, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v26

    .line 114
    .local v26, "minBufferTimeMs":J
    const/4 v5, 0x0

    const-string v6, "type"

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "typeString":Ljava/lang/String;
    if-eqz v11, :cond_0

    const-string v5, "dynamic"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move/from16 v28, v5

    .line 116
    .local v28, "dynamic":Z
    if-eqz v28, :cond_1

    const-string v5, "minimumUpdatePeriod"

    invoke-static {v0, v5, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    move-wide v12, v5

    goto :goto_1

    :cond_1
    move-wide v12, v1

    .line 118
    .local v12, "minUpdateTimeMs":J
    :goto_1
    if-eqz v28, :cond_2

    .line 119
    const-string v5, "timeShiftBufferDepth"

    invoke-static {v0, v5, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    move-wide v14, v5

    goto :goto_2

    :cond_2
    move-wide v14, v1

    .line 120
    .local v14, "timeShiftBufferDepthMs":J
    :goto_2
    if-eqz v28, :cond_3

    .line 121
    const-string v5, "suggestedPresentationDelay"

    invoke-static {v0, v5, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    move-wide/from16 v16, v5

    goto :goto_3

    :cond_3
    move-wide/from16 v16, v1

    .line 122
    .local v16, "suggestedPresentationDelayMs":J
    :goto_3
    const-string v5, "publishTime"

    invoke-static {v0, v5, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v29

    .line 123
    .local v29, "publishTimeMs":J
    const/4 v5, 0x0

    .line 124
    .local v5, "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    const/4 v6, 0x0

    .line 125
    .local v6, "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    const/4 v7, 0x0

    .line 127
    .local v7, "location":Landroid/net/Uri;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v8

    .line 128
    .local v9, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    if-eqz v28, :cond_4

    move-wide/from16 v18, v1

    goto :goto_4

    :cond_4
    const-wide/16 v18, 0x0

    .line 129
    .local v18, "nextPeriodStartMs":J
    :goto_4
    const/4 v8, 0x0

    .line 130
    .local v8, "seenEarlyAccessPeriod":Z
    const/4 v10, 0x0

    move-wide/from16 v1, v18

    move/from16 v18, v8

    move-object v8, v7

    move-object v7, v6

    move-object/from16 v6, p2

    .line 132
    .end local p2    # "baseUrl":Ljava/lang/String;
    .local v1, "nextPeriodStartMs":J
    .local v6, "baseUrl":Ljava/lang/String;
    .local v7, "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .local v8, "location":Landroid/net/Uri;
    .local v10, "seenFirstBaseUrl":Z
    .local v18, "seenEarlyAccessPeriod":Z
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 133
    move-object/from16 p2, v5

    .end local v5    # "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .local p2, "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    const-string v5, "BaseURL"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 134
    if-nez v10, :cond_5

    .line 135
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .end local v6    # "baseUrl":Ljava/lang/String;
    .local v5, "baseUrl":Ljava/lang/String;
    const/4 v6, 0x1

    move-wide/from16 v34, v1

    move-object/from16 v31, v5

    move/from16 v32, v6

    move-object v2, v7

    move-object/from16 v33, v8

    move/from16 v36, v18

    move-object/from16 v1, p2

    .end local v10    # "seenFirstBaseUrl":Z
    .local v6, "seenFirstBaseUrl":Z
    goto/16 :goto_9

    .line 134
    .end local v5    # "baseUrl":Ljava/lang/String;
    .local v6, "baseUrl":Ljava/lang/String;
    .restart local v10    # "seenFirstBaseUrl":Z
    :cond_5
    move-wide/from16 v22, v1

    move-object/from16 v31, v6

    move-object/from16 v21, v7

    move-object v2, v8

    goto/16 :goto_8

    .line 138
    :cond_6
    const-string v5, "ProgramInformation"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 139
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseProgramInformation(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;

    move-result-object v5

    move-wide/from16 v34, v1

    move-object v1, v5

    move-object/from16 v31, v6

    move-object v2, v7

    move-object/from16 v33, v8

    move/from16 v32, v10

    move/from16 v36, v18

    .end local p2    # "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .local v5, "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    goto/16 :goto_9

    .line 140
    .end local v5    # "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .restart local p2    # "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    :cond_7
    const-string v5, "UTCTiming"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 141
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-result-object v5

    move-wide/from16 v34, v1

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v33, v8

    move/from16 v32, v10

    move/from16 v36, v18

    move-object/from16 v1, p2

    .end local v7    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .local v5, "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    goto/16 :goto_9

    .line 142
    .end local v5    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .restart local v7    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    :cond_8
    const-string v5, "Location"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 143
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-wide/from16 v34, v1

    move-object/from16 v33, v5

    move-object/from16 v31, v6

    move-object v2, v7

    move/from16 v32, v10

    move/from16 v36, v18

    move-object/from16 v1, p2

    .end local v8    # "location":Landroid/net/Uri;
    .local v5, "location":Landroid/net/Uri;
    goto/16 :goto_9

    .line 144
    .end local v5    # "location":Landroid/net/Uri;
    .restart local v8    # "location":Landroid/net/Uri;
    :cond_9
    const-string v5, "Period"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez v18, :cond_d

    .line 145
    move-object/from16 v5, p0

    move-object/from16 v21, v7

    .end local v7    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .local v21, "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    invoke-virtual {v5, v0, v6, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object v7

    .line 146
    .local v7, "periodWithDurationMs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/dash/manifest/Period;Ljava/lang/Long;>;"
    move-wide/from16 v22, v1

    .end local v1    # "nextPeriodStartMs":J
    .local v22, "nextPeriodStartMs":J
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    .line 147
    .local v1, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    move-object v2, v6

    .end local v6    # "baseUrl":Ljava/lang/String;
    .local v2, "baseUrl":Ljava/lang/String;
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v31, v5, v19

    if-nez v31, :cond_b

    .line 148
    if-eqz v28, :cond_a

    .line 151
    const/16 v18, 0x1

    move-object/from16 v31, v2

    move-object v2, v8

    goto :goto_7

    .line 153
    :cond_a
    new-instance v5, Lcom/google/android/exoplayer2/ParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v2

    .end local v2    # "baseUrl":Ljava/lang/String;
    .local v31, "baseUrl":Ljava/lang/String;
    const-string v2, "Unable to determine start of period "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    .end local v31    # "baseUrl":Ljava/lang/String;
    .restart local v2    # "baseUrl":Ljava/lang/String;
    :cond_b
    move-object/from16 v31, v2

    .end local v2    # "baseUrl":Ljava/lang/String;
    .restart local v31    # "baseUrl":Ljava/lang/String;
    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 157
    .local v5, "periodDurationMs":J
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v5, v19

    if-nez v2, :cond_c

    move-object/from16 v32, v7

    move-object v2, v8

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_6

    :cond_c
    move-object/from16 v32, v7

    move-object v2, v8

    .end local v7    # "periodWithDurationMs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/dash/manifest/Period;Ljava/lang/Long;>;"
    .end local v8    # "location":Landroid/net/Uri;
    .local v2, "location":Landroid/net/Uri;
    .local v32, "periodWithDurationMs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/dash/manifest/Period;Ljava/lang/Long;>;"
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    add-long/2addr v7, v5

    .line 159
    .end local v22    # "nextPeriodStartMs":J
    .local v7, "nextPeriodStartMs":J
    :goto_6
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v22, v7

    .line 161
    .end local v1    # "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .end local v5    # "periodDurationMs":J
    .end local v7    # "nextPeriodStartMs":J
    .end local v32    # "periodWithDurationMs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/dash/manifest/Period;Ljava/lang/Long;>;"
    .restart local v22    # "nextPeriodStartMs":J
    :goto_7
    move-object/from16 v1, p2

    move-object/from16 v33, v2

    move/from16 v32, v10

    move/from16 v36, v18

    move-object/from16 v2, v21

    move-wide/from16 v34, v22

    goto :goto_9

    .line 144
    .end local v2    # "location":Landroid/net/Uri;
    .end local v21    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .end local v22    # "nextPeriodStartMs":J
    .end local v31    # "baseUrl":Ljava/lang/String;
    .local v1, "nextPeriodStartMs":J
    .restart local v6    # "baseUrl":Ljava/lang/String;
    .local v7, "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .restart local v8    # "location":Landroid/net/Uri;
    :cond_d
    move-wide/from16 v22, v1

    move-object/from16 v31, v6

    move-object/from16 v21, v7

    move-object v2, v8

    .line 162
    .end local v1    # "nextPeriodStartMs":J
    .end local v6    # "baseUrl":Ljava/lang/String;
    .end local v7    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .end local v8    # "location":Landroid/net/Uri;
    .restart local v2    # "location":Landroid/net/Uri;
    .restart local v21    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .restart local v22    # "nextPeriodStartMs":J
    .restart local v31    # "baseUrl":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 164
    .end local v2    # "location":Landroid/net/Uri;
    .end local v21    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .end local v22    # "nextPeriodStartMs":J
    .end local v31    # "baseUrl":Ljava/lang/String;
    .restart local v1    # "nextPeriodStartMs":J
    .restart local v6    # "baseUrl":Ljava/lang/String;
    .restart local v7    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .restart local v8    # "location":Landroid/net/Uri;
    :goto_8
    move-object/from16 v1, p2

    move-object/from16 v33, v2

    move/from16 v32, v10

    move/from16 v36, v18

    move-object/from16 v2, v21

    move-wide/from16 v34, v22

    .end local v6    # "baseUrl":Ljava/lang/String;
    .end local v7    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .end local v8    # "location":Landroid/net/Uri;
    .end local v10    # "seenFirstBaseUrl":Z
    .end local v18    # "seenEarlyAccessPeriod":Z
    .end local p2    # "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .local v1, "programInformation":Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .local v2, "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .restart local v31    # "baseUrl":Ljava/lang/String;
    .local v32, "seenFirstBaseUrl":Z
    .local v33, "location":Landroid/net/Uri;
    .local v34, "nextPeriodStartMs":J
    .local v36, "seenEarlyAccessPeriod":Z
    :goto_9
    const-string v5, "MPD"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 166
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_10

    .line 167
    cmp-long v7, v34, v5

    if-eqz v7, :cond_e

    .line 169
    move-wide/from16 v3, v34

    move-wide/from16 v37, v3

    goto :goto_b

    .line 170
    :cond_e
    if-eqz v28, :cond_f

    goto :goto_a

    .line 171
    :cond_f
    new-instance v5, Lcom/google/android/exoplayer2/ParserException;

    const-string v6, "Unable to determine duration of static manifest."

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 175
    :cond_10
    :goto_a
    move-wide/from16 v37, v3

    .end local v3    # "durationMs":J
    .local v37, "durationMs":J
    :goto_b
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 179
    move-object/from16 v4, p0

    move-wide/from16 v5, v24

    move-wide/from16 v7, v37

    move-object/from16 v39, v9

    .end local v9    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .local v39, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    move-wide/from16 v9, v26

    move-object/from16 v40, v11

    .end local v11    # "typeString":Ljava/lang/String;
    .local v40, "typeString":Ljava/lang/String;
    move/from16 v11, v28

    move-wide/from16 v18, v29

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v33

    move-object/from16 v23, v39

    invoke-virtual/range {v4 .. v23}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildMediaPresentationDescription(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v3

    return-object v3

    .line 176
    .end local v39    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .end local v40    # "typeString":Ljava/lang/String;
    .restart local v9    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .restart local v11    # "typeString":Ljava/lang/String;
    :cond_11
    move-object/from16 v39, v9

    move-object/from16 v40, v11

    .end local v9    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .end local v11    # "typeString":Ljava/lang/String;
    .restart local v39    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .restart local v40    # "typeString":Ljava/lang/String;
    new-instance v3, Lcom/google/android/exoplayer2/ParserException;

    const-string v4, "No periods found."

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    .end local v37    # "durationMs":J
    .end local v39    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .end local v40    # "typeString":Ljava/lang/String;
    .restart local v3    # "durationMs":J
    .restart local v9    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .restart local v11    # "typeString":Ljava/lang/String;
    :cond_12
    move-object/from16 v39, v9

    move-object/from16 v40, v11

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .end local v9    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .end local v11    # "typeString":Ljava/lang/String;
    .restart local v39    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .restart local v40    # "typeString":Ljava/lang/String;
    move-object v5, v1

    move-object v7, v2

    move-object/from16 v6, v31

    move/from16 v10, v32

    move-object/from16 v8, v33

    move-wide/from16 v1, v34

    move/from16 v18, v36

    goto/16 :goto_5
.end method

.method protected parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 20
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "defaultStartMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v0, 0x0

    const-string v1, "id"

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 235
    .local v8, "id":Ljava/lang/String;
    const-string v1, "start"

    move-wide/from16 v9, p3

    invoke-static {v7, v1, v9, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 236
    .local v11, "startMs":J
    const-string v1, "duration"

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v7, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    .line 237
    .local v13, "durationMs":J
    const/4 v1, 0x0

    .line 238
    .local v1, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v2

    .line 239
    .local v15, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    .line 240
    .local v5, "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    const/4 v2, 0x0

    move-object v3, v1

    move-object/from16 v1, p2

    .line 242
    .end local p2    # "baseUrl":Ljava/lang/String;
    .local v1, "baseUrl":Ljava/lang/String;
    .local v2, "seenFirstBaseUrl":Z
    .local v3, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 243
    const-string v4, "BaseURL"

    invoke-static {v7, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    if-nez v2, :cond_6

    .line 245
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    const/4 v2, 0x1

    move-object/from16 v16, v1

    move/from16 v18, v2

    move-object/from16 v17, v3

    goto/16 :goto_2

    .line 248
    :cond_0
    const-string v4, "AdaptationSet"

    invoke-static {v7, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    invoke-virtual {v6, v7, v1, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    :cond_1
    const-string v4, "EventStream"

    invoke-static {v7, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseEventStream(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :cond_2
    const-string v4, "SegmentBase"

    invoke-static {v7, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 253
    invoke-virtual {v6, v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v3

    move-object/from16 v16, v1

    move/from16 v18, v2

    move-object/from16 v17, v3

    goto :goto_2

    .line 254
    :cond_3
    const-string v4, "SegmentList"

    invoke-static {v7, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 255
    invoke-virtual {v6, v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v3

    move-object/from16 v16, v1

    move/from16 v18, v2

    move-object/from16 v17, v3

    goto :goto_2

    .line 256
    :cond_4
    const-string v4, "SegmentTemplate"

    invoke-static {v7, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 257
    invoke-virtual {v6, v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v3

    move-object/from16 v16, v1

    move/from16 v18, v2

    move-object/from16 v17, v3

    goto :goto_2

    .line 259
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 261
    :cond_6
    :goto_1
    move-object/from16 v16, v1

    move/from16 v18, v2

    move-object/from16 v17, v3

    .end local v1    # "baseUrl":Ljava/lang/String;
    .end local v2    # "seenFirstBaseUrl":Z
    .end local v3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v16, "baseUrl":Ljava/lang/String;
    .local v17, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v18, "seenFirstBaseUrl":Z
    :goto_2
    const-string v1, "Period"

    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 263
    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v11

    move-object v4, v15

    move-object/from16 v19, v5

    .end local v5    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .local v19, "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildPeriod(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 261
    .end local v19    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .restart local v5    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    :cond_7
    move-object/from16 v19, v5

    .end local v5    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    .restart local v19    # "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move/from16 v2, v18

    goto/16 :goto_0
.end method

.method protected parseProgramInformation(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .locals 12
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1037
    .local v1, "source":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1038
    .local v2, "copyright":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "moreInformationURL"

    invoke-static {p1, v4, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1039
    .local v4, "moreInformationURL":Ljava/lang/String;
    const-string v5, "lang"

    invoke-static {p1, v5, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1041
    .local v3, "lang":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1042
    const-string v5, "Title"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1043
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1044
    :cond_0
    const-string v5, "Source"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1045
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1046
    :cond_1
    const-string v5, "Copyright"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1047
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1049
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1051
    :goto_1
    const-string v5, "ProgramInformation"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1052
    new-instance v11, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;

    move-object v5, v11

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v4

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    .line 1051
    :cond_3
    goto :goto_0
.end method

.method protected parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 12
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "urlAttribute"    # Ljava/lang/String;
    .param p3, "rangeAttribute"    # Ljava/lang/String;

    .line 1015
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1016
    .local v7, "urlText":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 1017
    .local v1, "rangeStart":J
    const-wide/16 v3, -0x1

    .line 1018
    .local v3, "rangeLength":J
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, "rangeText":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1020
    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1021
    .local v5, "rangeTextArray":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1022
    array-length v6, v5

    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    .line 1023
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v8, v1

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-wide v10, v8

    move-wide v8, v1

    .end local v3    # "rangeLength":J
    .local v8, "rangeLength":J
    goto :goto_0

    .line 1022
    .end local v8    # "rangeLength":J
    .restart local v3    # "rangeLength":J
    :cond_0
    move-wide v8, v1

    move-wide v10, v3

    goto :goto_0

    .line 1019
    .end local v5    # "rangeTextArray":[Ljava/lang/String;
    :cond_1
    move-wide v8, v1

    move-wide v10, v3

    .line 1026
    .end local v1    # "rangeStart":J
    .end local v3    # "rangeLength":J
    .local v8, "rangeStart":J
    .local v10, "rangeLength":J
    :goto_0
    move-object v1, p0

    move-object v2, v7

    move-wide v3, v8

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildRangedUri(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    return-object v1
.end method

.method protected parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    .locals 32
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "adaptationSetMimeType"    # Ljava/lang/String;
    .param p5, "adaptationSetCodecs"    # Ljava/lang/String;
    .param p6, "adaptationSetWidth"    # I
    .param p7, "adaptationSetHeight"    # I
    .param p8, "adaptationSetFrameRate"    # F
    .param p9, "adaptationSetAudioChannels"    # I
    .param p10, "adaptationSetAudioSamplingRate"    # I
    .param p11, "adaptationSetLanguage"    # Ljava/lang/String;
    .param p12, "adaptationSetSelectionFlags"    # I
    .param p14, "segmentBase"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    .local p13, "adaptationSetAccessibilityDescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const/4 v0, 0x0

    const-string v1, "id"

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 527
    .local v16, "id":Ljava/lang/String;
    const-string v0, "bandwidth"

    const/4 v1, -0x1

    invoke-static {v14, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    .line 529
    .local v17, "bandwidth":I
    const-string v0, "mimeType"

    move-object/from16 v13, p4

    invoke-static {v14, v0, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 530
    .local v18, "mimeType":Ljava/lang/String;
    const-string v0, "codecs"

    move-object/from16 v12, p5

    invoke-static {v14, v0, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 531
    .local v19, "codecs":Ljava/lang/String;
    const-string/jumbo v0, "width"

    move/from16 v11, p6

    invoke-static {v14, v0, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    .line 532
    .local v20, "width":I
    const-string v0, "height"

    move/from16 v10, p7

    invoke-static {v14, v0, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    .line 533
    .local v21, "height":I
    move/from16 v9, p8

    invoke-static {v14, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v22

    .line 534
    .local v22, "frameRate":F
    move/from16 v0, p9

    .line 535
    .local v0, "audioChannels":I
    const-string v1, "audioSamplingRate"

    move/from16 v8, p10

    invoke-static {v14, v1, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    .line 536
    .local v23, "audioSamplingRate":I
    const/4 v1, 0x0

    .line 537
    .local v1, "drmSchemeType":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v2

    .line 538
    .local v7, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v2

    .line 539
    .local v6, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    .line 541
    .local v5, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v2, 0x0

    move-object/from16 v3, p14

    move-object v4, v1

    move-object/from16 v1, p2

    .line 543
    .end local p2    # "baseUrl":Ljava/lang/String;
    .end local p14    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v1, "baseUrl":Ljava/lang/String;
    .local v2, "seenFirstBaseUrl":Z
    .local v3, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v4, "drmSchemeType":Ljava/lang/String;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 544
    move/from16 p2, v0

    .end local v0    # "audioChannels":I
    .local p2, "audioChannels":I
    const-string v0, "BaseURL"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    if-nez v2, :cond_0

    .line 546
    invoke-static {v14, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .end local v1    # "baseUrl":Ljava/lang/String;
    .local v0, "baseUrl":Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v25, p2

    move-object/from16 v24, v0

    move/from16 v26, v1

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .end local v2    # "seenFirstBaseUrl":Z
    .local v1, "seenFirstBaseUrl":Z
    goto/16 :goto_2

    .line 545
    .end local v0    # "baseUrl":Ljava/lang/String;
    .local v1, "baseUrl":Ljava/lang/String;
    .restart local v2    # "seenFirstBaseUrl":Z
    :cond_0
    move-object/from16 p14, v1

    goto/16 :goto_1

    .line 549
    :cond_1
    const-string v0, "AudioChannelConfiguration"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    move/from16 v25, v0

    move-object/from16 v24, v1

    move/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .end local p2    # "audioChannels":I
    .local v0, "audioChannels":I
    goto/16 :goto_2

    .line 551
    .end local v0    # "audioChannels":I
    .restart local p2    # "audioChannels":I
    :cond_2
    const-string v0, "SegmentBase"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    move-object v0, v3

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v15, v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    move/from16 v25, p2

    move-object/from16 v27, v0

    move-object/from16 v24, v1

    move/from16 v26, v2

    move-object/from16 v28, v4

    .end local v3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v0, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto/16 :goto_2

    .line 553
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_3
    const-string v0, "SegmentList"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    move-object v0, v3

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    invoke-virtual {v15, v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    move/from16 v25, p2

    move-object/from16 v27, v0

    move-object/from16 v24, v1

    move/from16 v26, v2

    move-object/from16 v28, v4

    .end local v3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto/16 :goto_2

    .line 555
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_4
    const-string v0, "SegmentTemplate"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 556
    move-object v0, v3

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    invoke-virtual {v15, v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    move/from16 v25, p2

    move-object/from16 v27, v0

    move-object/from16 v24, v1

    move/from16 v26, v2

    move-object/from16 v28, v4

    .end local v3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto :goto_2

    .line 557
    .end local v0    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .restart local v3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_5
    const-string v0, "ContentProtection"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 558
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v0

    .line 559
    .local v0, "contentProtection":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move-object/from16 p14, v1

    .end local v1    # "baseUrl":Ljava/lang/String;
    .local p14, "baseUrl":Ljava/lang/String;
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 560
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 562
    :cond_6
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 563
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    .end local v0    # "contentProtection":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :cond_7
    move/from16 v25, p2

    move-object/from16 v24, p14

    move/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    goto :goto_2

    .end local p14    # "baseUrl":Ljava/lang/String;
    .restart local v1    # "baseUrl":Ljava/lang/String;
    :cond_8
    move-object/from16 p14, v1

    .end local v1    # "baseUrl":Ljava/lang/String;
    .restart local p14    # "baseUrl":Ljava/lang/String;
    const-string v0, "InbandEventStream"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 566
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 567
    :cond_9
    const-string v0, "SupplementalProperty"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 568
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 570
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 572
    .end local p14    # "baseUrl":Ljava/lang/String;
    .restart local v1    # "baseUrl":Ljava/lang/String;
    :goto_1
    move/from16 v25, p2

    move-object/from16 v24, p14

    move/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .end local v1    # "baseUrl":Ljava/lang/String;
    .end local v2    # "seenFirstBaseUrl":Z
    .end local v3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .end local v4    # "drmSchemeType":Ljava/lang/String;
    .end local p2    # "audioChannels":I
    .local v24, "baseUrl":Ljava/lang/String;
    .local v25, "audioChannels":I
    .local v26, "seenFirstBaseUrl":Z
    .local v27, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v28, "drmSchemeType":Ljava/lang/String;
    :goto_2
    const-string v0, "Representation"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 574
    nop

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    move/from16 v4, v20

    move-object/from16 v29, v5

    .end local v5    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v29, "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move/from16 v5, v21

    move-object/from16 v30, v6

    .end local v6    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v30, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    move/from16 v6, v22

    move-object/from16 v31, v7

    .end local v7    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v31, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move/from16 v7, v25

    move/from16 v8, v23

    move/from16 v9, v17

    move-object/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, v19

    move-object/from16 v14, v29

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 590
    .local v0, "format":Lcom/google/android/exoplayer2/Format;
    if-eqz v27, :cond_b

    move-object/from16 v6, v27

    goto :goto_3

    :cond_b
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>()V

    move-object v6, v1

    .line 592
    .end local v27    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .local v6, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :goto_3
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    const-wide/16 v10, -0x1

    move-object v3, v1

    move-object v4, v0

    move-object/from16 v5, v24

    move-object/from16 v7, v28

    move-object/from16 v8, v31

    move-object/from16 v9, v30

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    return-object v1

    .line 572
    .end local v0    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v29    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v30    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v31    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v5    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .local v6, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v7    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v27    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    :cond_c
    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    .end local v5    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v6    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v7    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v29    # "supplementalProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v30    # "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v31    # "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move-object/from16 v14, p1

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move/from16 v11, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v8, p10

    move-object/from16 v1, v24

    move/from16 v0, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    goto/16 :goto_0
.end method

.method protected parseRole(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "schemeIdUri":Ljava/lang/String;
    const-string/jumbo v2, "value"

    invoke-static {p1, v2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 491
    const-string v2, "Role"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    const-string/jumbo v2, "urn:mpeg:dash:role:2011"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "main"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 491
    :cond_1
    goto :goto_0
.end method

.method protected parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 22
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 692
    .local v4, "timescale":J
    const-wide/16 v6, 0x0

    if-eqz v1, :cond_1

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    move-wide v8, v6

    :goto_1
    const-string v10, "presentationTimeOffset"

    invoke-static {v0, v10, v8, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    .line 695
    .local v17, "presentationTimeOffset":J
    if-eqz v1, :cond_2

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    goto :goto_2

    :cond_2
    move-wide v8, v6

    .line 696
    .local v8, "indexStart":J
    :goto_2
    if-eqz v1, :cond_3

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    .line 697
    .local v6, "indexLength":J
    :cond_3
    const/4 v10, 0x0

    const-string v11, "indexRange"

    invoke-interface {v0, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 698
    .local v15, "indexRangeText":Ljava/lang/String;
    if-eqz v15, :cond_4

    .line 699
    const-string v11, "-"

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 700
    .local v11, "indexRange":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 701
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long/2addr v12, v2

    move-wide v2, v8

    move-wide/from16 v19, v12

    .end local v6    # "indexLength":J
    .local v12, "indexLength":J
    goto :goto_3

    .line 698
    .end local v11    # "indexRange":[Ljava/lang/String;
    .end local v12    # "indexLength":J
    .restart local v6    # "indexLength":J
    :cond_4
    move-wide/from16 v19, v6

    move-wide v2, v8

    .line 704
    .end local v6    # "indexLength":J
    .end local v8    # "indexStart":J
    .local v2, "indexStart":J
    .local v19, "indexLength":J
    :goto_3
    if-eqz v1, :cond_5

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    :cond_5
    move-object v6, v10

    .line 706
    .local v6, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 707
    const-string v7, "Initialization"

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 708
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v6

    goto :goto_5

    .line 710
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 712
    :goto_5
    const-string v7, "SegmentBase"

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 714
    move-object/from16 v7, p0

    move-object v8, v6

    move-wide v9, v4

    move-wide/from16 v11, v17

    move-wide v13, v2

    move-object/from16 v21, v15

    .end local v15    # "indexRangeText":Ljava/lang/String;
    .local v21, "indexRangeText":Ljava/lang/String;
    move-wide/from16 v15, v19

    invoke-virtual/range {v7 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSingleSegmentBase(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v7

    return-object v7

    .line 712
    .end local v21    # "indexRangeText":Ljava/lang/String;
    .restart local v15    # "indexRangeText":Ljava/lang/String;
    :cond_7
    move-object/from16 v21, v15

    .end local v15    # "indexRangeText":Ljava/lang/String;
    .restart local v21    # "indexRangeText":Ljava/lang/String;
    goto :goto_4
.end method

.method protected parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .locals 25
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 728
    .local v4, "timescale":J
    if-eqz v1, :cond_1

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x0

    :goto_1
    const-string v8, "presentationTimeOffset"

    invoke-static {v0, v8, v6, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v19

    .line 730
    .local v19, "presentationTimeOffset":J
    if-eqz v1, :cond_2

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->duration:J

    goto :goto_2

    :cond_2
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v8, "duration"

    invoke-static {v0, v8, v6, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v21

    .line 731
    .local v21, "duration":J
    if-eqz v1, :cond_3

    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->startNumber:J

    :cond_3
    const-string v6, "startNumber"

    invoke-static {v0, v6, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 733
    .local v2, "startNumber":J
    const/4 v6, 0x0

    .line 734
    .local v6, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    const/4 v7, 0x0

    .line 735
    .local v7, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    const/4 v8, 0x0

    .line 738
    .local v8, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 739
    const-string v9, "Initialization"

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 740
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v6

    goto :goto_4

    .line 741
    :cond_4
    const-string v9, "SegmentTimeline"

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 742
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    .line 743
    :cond_5
    const-string v9, "SegmentURL"

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 744
    if-nez v8, :cond_6

    .line 745
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    .line 747
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 749
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 751
    :goto_4
    const-string v9, "SegmentList"

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 753
    if-eqz v1, :cond_b

    .line 754
    if-eqz v6, :cond_8

    move-object v9, v6

    goto :goto_5

    :cond_8
    iget-object v9, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    :goto_5
    move-object v6, v9

    .line 755
    if-eqz v7, :cond_9

    move-object v9, v7

    goto :goto_6

    :cond_9
    iget-object v9, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->segmentTimeline:Ljava/util/List;

    :goto_6
    move-object v7, v9

    .line 756
    if-eqz v8, :cond_a

    move-object v9, v8

    goto :goto_7

    :cond_a
    iget-object v9, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    :goto_7
    move-object v8, v9

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    goto :goto_8

    .line 753
    :cond_b
    move-object/from16 v23, v7

    move-object/from16 v24, v8

    .line 759
    .end local v7    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .end local v8    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    .local v23, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .local v24, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    :goto_8
    move-object/from16 v7, p0

    move-object v8, v6

    move-wide v9, v4

    move-wide/from16 v11, v19

    move-wide v13, v2

    move-wide/from16 v15, v21

    move-object/from16 v17, v23

    move-object/from16 v18, v24

    invoke-virtual/range {v7 .. v18}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentList(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v7

    return-object v7

    .line 751
    .end local v23    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .end local v24    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    .restart local v7    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .restart local v8    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    :cond_c
    goto :goto_3
.end method

.method protected parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 28
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    const-wide/16 v0, 0x1

    if-eqz v15, :cond_0

    iget-wide v2, v15, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string v4, "timescale"

    invoke-static {v14, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 778
    .local v16, "timescale":J
    if-eqz v15, :cond_1

    iget-wide v2, v15, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    invoke-static {v14, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    .line 780
    .local v18, "presentationTimeOffset":J
    if-eqz v15, :cond_2

    iget-wide v2, v15, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->duration:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    invoke-static {v14, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v20

    .line 781
    .local v20, "duration":J
    if-eqz v15, :cond_3

    iget-wide v0, v15, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:J

    :cond_3
    const-string v2, "startNumber"

    invoke-static {v14, v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v22

    .line 782
    .local v22, "startNumber":J
    const/4 v0, 0x0

    if-eqz v15, :cond_4

    iget-object v1, v15, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    const-string v2, "media"

    invoke-virtual {v13, v14, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v24

    .line 784
    .local v24, "mediaTemplate":Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    if-eqz v15, :cond_5

    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    :cond_5
    const-string v1, "initialization"

    invoke-virtual {v13, v14, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v25

    .line 787
    .local v25, "initializationTemplate":Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    const/4 v0, 0x0

    .line 788
    .local v0, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    const/4 v1, 0x0

    .line 791
    .local v1, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 792
    const-string v2, "Initialization"

    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 793
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    goto :goto_5

    .line 794
    :cond_6
    const-string v2, "SegmentTimeline"

    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 795
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    goto :goto_5

    .line 797
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 799
    :goto_5
    const-string v2, "SegmentTemplate"

    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 801
    if-eqz v15, :cond_a

    .line 802
    if-eqz v0, :cond_8

    move-object v2, v0

    goto :goto_6

    :cond_8
    iget-object v2, v15, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    :goto_6
    move-object v0, v2

    .line 803
    if-eqz v1, :cond_9

    move-object v2, v1

    goto :goto_7

    :cond_9
    iget-object v2, v15, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    :goto_7
    move-object v1, v2

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    goto :goto_8

    .line 801
    :cond_a
    move-object/from16 v26, v0

    move-object/from16 v27, v1

    .line 806
    .end local v0    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v1    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .local v26, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v27, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v16

    move-wide/from16 v4, v18

    move-wide/from16 v6, v22

    move-wide/from16 v8, v20

    move-object/from16 v10, v27

    move-object/from16 v11, v25

    move-object/from16 v12, v24

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentTemplate(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    return-object v0

    .line 799
    .end local v26    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v27    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .restart local v0    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v1    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    :cond_b
    goto :goto_4
.end method

.method protected parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 8
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v0, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    const-wide/16 v1, 0x0

    .line 976
    .local v1, "elapsedTime":J
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 977
    const-string v3, "S"

    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 978
    const-string v3, "t"

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    .line 979
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-string v5, "d"

    invoke-static {p1, v5, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    .line 980
    .local v3, "duration":J
    const/4 v5, 0x0

    const-string v6, "r"

    invoke-static {p1, v6, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 981
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 982
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    add-long/2addr v1, v3

    .line 981
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 985
    .end local v3    # "duration":J
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_0
    goto :goto_2

    .line 986
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 988
    :goto_2
    const-string v3, "SegmentTimeline"

    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 989
    return-object v0

    .line 988
    :cond_2
    goto :goto_0
.end method

.method protected parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1010
    const-string v0, "media"

    const-string v1, "mediaRange"

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .locals 2
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    .line 998
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, "valueString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1000
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->compile(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v1

    return-object v1

    .line 1002
    :cond_0
    return-object p3
.end method

.method protected parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .locals 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 223
    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "schemeIdUri":Ljava/lang/String;
    const-string/jumbo v2, "value"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-result-object v2

    return-object v2
.end method
