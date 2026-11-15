.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_CLOSED_CAPTIONS_NONE:Ljava/lang/String; = "CLOSED-CAPTIONS=NONE"

.field private static final BOOLEAN_FALSE:Ljava/lang/String; = "NO"

.field private static final BOOLEAN_TRUE:Ljava/lang/String; = "YES"

.field private static final KEYFORMAT_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEYFORMAT_PLAYREADY:Ljava/lang/String; = "com.microsoft.playready"

.field private static final KEYFORMAT_WIDEVINE_PSSH_BINARY:Ljava/lang/String; = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

.field private static final KEYFORMAT_WIDEVINE_PSSH_JSON:Ljava/lang/String; = "com.widevine"

.field private static final METHOD_AES_128:Ljava/lang/String; = "AES-128"

.field private static final METHOD_NONE:Ljava/lang/String; = "NONE"

.field private static final METHOD_SAMPLE_AES:Ljava/lang/String; = "SAMPLE-AES"

.field private static final METHOD_SAMPLE_AES_CENC:Ljava/lang/String; = "SAMPLE-AES-CENC"

.field private static final METHOD_SAMPLE_AES_CTR:Ljava/lang/String; = "SAMPLE-AES-CTR"

.field private static final PLAYLIST_HEADER:Ljava/lang/String; = "#EXTM3U"

.field private static final REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_AUDIO:Ljava/util/regex/Pattern;

.field private static final REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

.field private static final REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_CODECS:Ljava/util/regex/Pattern;

.field private static final REGEX_DEFAULT:Ljava/util/regex/Pattern;

.field private static final REGEX_FORCED:Ljava/util/regex/Pattern;

.field private static final REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

.field private static final REGEX_GROUP_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IMPORT:Ljava/util/regex/Pattern;

.field private static final REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IV:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_LANGUAGE:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

.field private static final REGEX_METHOD:Ljava/util/regex/Pattern;

.field private static final REGEX_NAME:Ljava/util/regex/Pattern;

.field private static final REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

.field private static final REGEX_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_VALUE:Ljava/util/regex/Pattern;

.field private static final REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_VERSION:Ljava/util/regex/Pattern;

.field private static final TAG_BYTERANGE:Ljava/lang/String; = "#EXT-X-BYTERANGE"

.field private static final TAG_DEFINE:Ljava/lang/String; = "#EXT-X-DEFINE"

.field private static final TAG_DISCONTINUITY:Ljava/lang/String; = "#EXT-X-DISCONTINUITY"

.field private static final TAG_DISCONTINUITY_SEQUENCE:Ljava/lang/String; = "#EXT-X-DISCONTINUITY-SEQUENCE"

.field private static final TAG_ENDLIST:Ljava/lang/String; = "#EXT-X-ENDLIST"

.field private static final TAG_GAP:Ljava/lang/String; = "#EXT-X-GAP"

.field private static final TAG_INDEPENDENT_SEGMENTS:Ljava/lang/String; = "#EXT-X-INDEPENDENT-SEGMENTS"

.field private static final TAG_INIT_SEGMENT:Ljava/lang/String; = "#EXT-X-MAP"

.field private static final TAG_KEY:Ljava/lang/String; = "#EXT-X-KEY"

.field private static final TAG_MEDIA:Ljava/lang/String; = "#EXT-X-MEDIA"

.field private static final TAG_MEDIA_DURATION:Ljava/lang/String; = "#EXTINF"

.field private static final TAG_MEDIA_SEQUENCE:Ljava/lang/String; = "#EXT-X-MEDIA-SEQUENCE"

.field private static final TAG_PLAYLIST_TYPE:Ljava/lang/String; = "#EXT-X-PLAYLIST-TYPE"

.field private static final TAG_PREFIX:Ljava/lang/String; = "#EXT"

.field private static final TAG_PROGRAM_DATE_TIME:Ljava/lang/String; = "#EXT-X-PROGRAM-DATE-TIME"

.field private static final TAG_START:Ljava/lang/String; = "#EXT-X-START"

.field private static final TAG_STREAM_INF:Ljava/lang/String; = "#EXT-X-STREAM-INF"

.field private static final TAG_TARGET_DURATION:Ljava/lang/String; = "#EXT-X-TARGETDURATION"

.field private static final TAG_VERSION:Ljava/lang/String; = "#EXT-X-VERSION"

.field private static final TYPE_AUDIO:Ljava/lang/String; = "AUDIO"

.field private static final TYPE_CLOSED_CAPTIONS:Ljava/lang/String; = "CLOSED-CAPTIONS"

.field private static final TYPE_SUBTITLES:Ljava/lang/String; = "SUBTITLES"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "VIDEO"


# instance fields
.field private final masterPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    nop

    .line 101
    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 102
    const-string v0, "AUDIO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    .line 103
    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 104
    const-string v0, "CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    .line 105
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 106
    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 107
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 109
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    .line 110
    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    .line 112
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    .line 114
    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 116
    nop

    .line 117
    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    .line 118
    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    .line 119
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    .line 121
    nop

    .line 122
    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 123
    nop

    .line 124
    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, "KEYFORMAT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 138
    nop

    .line 139
    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 140
    const-string v0, "URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 141
    const-string v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    .line 142
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    .line 144
    const-string v0, "LANGUAGE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 145
    const-string v0, "NAME=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 146
    const-string v0, "GROUP-ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    .line 147
    nop

    .line 148
    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    .line 149
    const-string v0, "AUTOSELECT"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    .line 150
    const-string v0, "DEFAULT"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    .line 151
    const-string v0, "FORCED"

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    .line 152
    const-string v0, "VALUE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 153
    const-string v0, "IMPORT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    .line 154
    nop

    .line 155
    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 164
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->EMPTY:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;)V
    .locals 0
    .param p1, "masterPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->masterPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 175
    return-void
.end method

.method private static checkPlaylistHeader(Ljava/io/BufferedReader;)Z
    .locals 6
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 217
    .local v0, "last":I
    const/4 v1, 0x0

    const/16 v2, 0xef

    if-ne v0, v2, :cond_2

    .line 218
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/16 v3, 0xbf

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_1

    .line 219
    :cond_1
    :goto_0
    return v1

    .line 224
    :cond_2
    :goto_1
    const/4 v2, 0x1

    invoke-static {p0, v2, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result v0

    .line 225
    const-string v2, "#EXTM3U"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 226
    .local v3, "playlistHeaderLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_4

    .line 227
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v0, v5, :cond_3

    .line 228
    return v1

    .line 230
    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 232
    .end local v4    # "i":I
    :cond_4
    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result v0

    .line 233
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->isLinebreak(I)Z

    move-result v1

    return v1
.end method

.method private static compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .param p0, "attribute"    # Ljava/lang/String;

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private static parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 707
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 699
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 703
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseMasterPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .locals 48
    .param p0, "iterator"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;
    .param p1, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 247
    .local v0, "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v1, "audioGroupIdToCodecs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v2, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 250
    .local v13, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v3

    .line 251
    .local v14, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v3

    .line 252
    .local v15, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    .line 253
    .local v12, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    .line 254
    .local v11, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 255
    .local v3, "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    const/4 v4, 0x0

    .line 256
    .local v4, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    const/4 v5, 0x0

    .line 257
    .local v5, "noClosedCaptions":Z
    const/4 v6, 0x0

    move/from16 v17, v5

    move/from16 v16, v6

    .line 260
    .end local v5    # "noClosedCaptions":Z
    .local v16, "hasIndependentSegmentsTag":Z
    .local v17, "noClosedCaptions":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "line":Ljava/lang/String;
    const-string v8, "#EXT"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 265
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    const-string v8, "#EXT-X-DEFINE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 269
    sget-object v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 270
    invoke-static {v5, v6, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 271
    invoke-static {v5, v7, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 269
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    goto/16 :goto_5

    .line 272
    :cond_1
    const-string v8, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 273
    const/16 v16, 0x1

    goto :goto_0

    .line 274
    :cond_2
    const-string v8, "#EXT-X-MEDIA"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 277
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v0

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    goto/16 :goto_5

    .line 278
    :cond_3
    const-string v8, "#EXT-X-STREAM-INF"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 279
    const-string v8, "CLOSED-CAPTIONS=NONE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    or-int v17, v17, v8

    .line 280
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    invoke-static {v5, v8}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v8

    .line 281
    .local v8, "bitrate":I
    sget-object v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 282
    invoke-static {v5, v9, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 283
    .local v9, "averageBandwidthString":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 285
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 287
    :cond_4
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    invoke-static {v5, v10, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, "codecs":Ljava/lang/String;
    sget-object v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 289
    invoke-static {v5, v7, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "resolutionString":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 293
    const-string/jumbo v6, "x"

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, "widthAndHeight":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 295
    .local v19, "width":I
    const/16 v18, 0x1

    aget-object v20, v6, v18

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 296
    .local v20, "height":I
    if-lez v19, :cond_5

    if-gtz v20, :cond_6

    .line 298
    :cond_5
    const/16 v19, -0x1

    .line 299
    const/16 v20, -0x1

    .line 301
    .end local v6    # "widthAndHeight":[Ljava/lang/String;
    :cond_6
    move/from16 v6, v19

    move/from16 v29, v20

    goto :goto_1

    .line 302
    .end local v19    # "width":I
    .end local v20    # "height":I
    :cond_7
    const/4 v6, -0x1

    .line 303
    .local v6, "width":I
    const/16 v19, -0x1

    move/from16 v29, v19

    .line 305
    .local v29, "height":I
    :goto_1
    const/high16 v19, -0x40800000    # -1.0f

    .line 306
    .local v19, "frameRate":F
    move-object/from16 v30, v3

    .end local v3    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .local v30, "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    sget-object v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 307
    invoke-static {v5, v3, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "frameRateString":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 309
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v31, v19

    goto :goto_2

    .line 308
    :cond_8
    move/from16 v31, v19

    .line 311
    .end local v19    # "frameRate":F
    .local v31, "frameRate":F
    :goto_2
    move-object/from16 v32, v3

    .end local v3    # "frameRateString":Ljava/lang/String;
    .local v32, "frameRateString":Ljava/lang/String;
    sget-object v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    invoke-static {v5, v3, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "audioGroupId":Ljava/lang/String;
    if-eqz v3, :cond_9

    if-eqz v10, :cond_9

    .line 313
    move-object/from16 v33, v4

    const/4 v4, 0x1

    .end local v4    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v33, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    invoke-static {v10, v4}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 312
    .end local v33    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v4    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :cond_9
    move-object/from16 v33, v4

    .line 315
    .end local v4    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v33    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :goto_3
    nop

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 318
    .end local v5    # "line":Ljava/lang/String;
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 319
    nop

    .line 321
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 320
    const-string v20, "application/x-mpegURL"

    move-object/from16 v22, v10

    move/from16 v23, v8

    move/from16 v24, v6

    move/from16 v25, v29

    move/from16 v26, v31

    invoke-static/range {v18 .. v28}, Lcom/google/android/exoplayer2/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 332
    .local v5, "format":Lcom/google/android/exoplayer2/Format;
    move-object/from16 v20, v0

    .end local v0    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v20, "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 318
    .end local v5    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v20    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v0    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v20, v0

    .line 334
    .end local v0    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "audioGroupId":Ljava/lang/String;
    .end local v6    # "width":I
    .end local v7    # "resolutionString":Ljava/lang/String;
    .end local v8    # "bitrate":I
    .end local v9    # "averageBandwidthString":Ljava/lang/String;
    .end local v10    # "codecs":Ljava/lang/String;
    .end local v29    # "height":I
    .end local v31    # "frameRate":F
    .end local v32    # "frameRateString":Ljava/lang/String;
    .restart local v20    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v3, v30

    move-object/from16 v4, v33

    goto/16 :goto_0

    .line 278
    .end local v20    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v30    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .end local v33    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v0    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v3, "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .local v4, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v5, "line":Ljava/lang/String;
    :cond_b
    move-object/from16 v20, v0

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    .line 260
    .end local v5    # "line":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v3, v30

    move-object/from16 v4, v33

    .end local v0    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .end local v4    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v20    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v30    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .restart local v33    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    goto/16 :goto_0

    .line 337
    .end local v20    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v30    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .end local v33    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v0    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .restart local v4    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :cond_c
    move-object/from16 v20, v0

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    const/16 v19, 0x0

    .end local v0    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .end local v4    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v20    # "variantUrls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v30    # "muxedAudioFormat":Lcom/google/android/exoplayer2/Format;
    .restart local v33    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_18

    .line 338
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 339
    .local v3, "line":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseSelectionFlags(Ljava/lang/String;)I

    move-result v4

    .line 340
    .local v4, "selectionFlags":I
    sget-object v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v3, v5, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "uri":Ljava/lang/String;
    sget-object v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    invoke-static {v3, v6, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "name":Ljava/lang/String;
    sget-object v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    invoke-static {v3, v7, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, "language":Ljava/lang/String;
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    invoke-static {v3, v8, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 344
    .local v8, "groupId":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, "id":Ljava/lang/String;
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v3, v10, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    const/16 v21, -0x1

    move-object/from16 v31, v12

    .end local v12    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v31, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    move-object/from16 v32, v13

    .end local v13    # "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .local v32, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    const v13, -0x392db8c5

    move-object/from16 v45, v11

    .end local v11    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v45, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x2

    if-eq v12, v13, :cond_10

    const v13, -0x13dc6572

    if-eq v12, v13, :cond_f

    const v13, 0x3bba3b6

    if-eq v12, v13, :cond_e

    :cond_d
    goto :goto_7

    :cond_e
    const-string v12, "AUDIO"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x0

    goto :goto_8

    :cond_f
    const-string v12, "CLOSED-CAPTIONS"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x2

    goto :goto_8

    :cond_10
    const-string v12, "SUBTITLES"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    goto :goto_8

    :goto_7
    const/4 v10, -0x1

    :goto_8
    if-eqz v10, :cond_15

    const/4 v12, 0x1

    if-eq v10, v12, :cond_14

    if-eq v10, v11, :cond_11

    move-object/from16 v46, v3

    goto/16 :goto_c

    .line 383
    :cond_11
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    invoke-static {v3, v10, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 386
    .local v10, "instreamId":Ljava/lang/String;
    const-string v13, "CC"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 387
    const-string v13, "application/cea-608"

    .line 388
    .local v13, "mimeType":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v47, v13

    move v13, v11

    move-object/from16 v11, v47

    .local v11, "accessibilityChannel":I
    goto :goto_9

    .line 390
    .end local v11    # "accessibilityChannel":I
    .end local v13    # "mimeType":Ljava/lang/String;
    :cond_12
    const-string v11, "application/cea-708"

    .line 391
    .local v11, "mimeType":Ljava/lang/String;
    const/4 v13, 0x7

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 393
    .local v13, "accessibilityChannel":I
    :goto_9
    if-nez v33, :cond_13

    .line 394
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v33, v18

    move-object/from16 v12, v33

    goto :goto_a

    .line 393
    :cond_13
    move-object/from16 v12, v33

    .line 396
    .end local v33    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v12, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :goto_a
    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    .line 397
    move-object/from16 v21, v9

    move-object/from16 v22, v6

    move-object/from16 v24, v11

    move/from16 v27, v4

    move-object/from16 v28, v7

    move/from16 v29, v13

    move-object/from16 v46, v3

    .end local v3    # "line":Ljava/lang/String;
    .local v46, "line":Ljava/lang/String;
    invoke-static/range {v21 .. v29}, Lcom/google/android/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 396
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    move-object/from16 v33, v12

    goto :goto_c

    .line 370
    .end local v10    # "instreamId":Ljava/lang/String;
    .end local v11    # "mimeType":Ljava/lang/String;
    .end local v12    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v13    # "accessibilityChannel":I
    .end local v46    # "line":Ljava/lang/String;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v33    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :cond_14
    move-object/from16 v46, v3

    .end local v3    # "line":Ljava/lang/String;
    .restart local v46    # "line":Ljava/lang/String;
    const/16 v25, 0x0

    const/16 v26, -0x1

    .line 371
    const-string v23, "application/x-mpegURL"

    const-string v24, "text/vtt"

    move-object/from16 v21, v9

    move-object/from16 v22, v6

    move/from16 v27, v4

    move-object/from16 v28, v7

    invoke-static/range {v21 .. v28}, Lcom/google/android/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 380
    .local v3, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-direct {v10, v5, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    goto :goto_c

    .line 348
    .end local v46    # "line":Ljava/lang/String;
    .local v3, "line":Ljava/lang/String;
    :cond_15
    move-object/from16 v46, v3

    .end local v3    # "line":Ljava/lang/String;
    .restart local v46    # "line":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 349
    .local v3, "codecs":Ljava/lang/String;
    if-eqz v3, :cond_16

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    :cond_16
    const/4 v10, 0x0

    :goto_b
    move-object/from16 v37, v10

    .line 350
    .local v37, "sampleMimeType":Ljava/lang/String;
    const/16 v39, -0x1

    const/16 v40, -0x1

    const/16 v41, -0x1

    const/16 v42, 0x0

    .line 351
    const-string v36, "application/x-mpegURL"

    move-object/from16 v34, v9

    move-object/from16 v35, v6

    move-object/from16 v38, v3

    move/from16 v43, v4

    move-object/from16 v44, v7

    invoke-static/range {v34 .. v44}, Lcom/google/android/exoplayer2/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    .line 363
    .local v10, "format":Lcom/google/android/exoplayer2/Format;
    if-nez v5, :cond_17

    .line 364
    move-object/from16 v30, v10

    goto :goto_c

    .line 366
    :cond_17
    new-instance v11, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-direct {v11, v5, v10}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    nop

    .line 337
    .end local v3    # "codecs":Ljava/lang/String;
    .end local v4    # "selectionFlags":I
    .end local v5    # "uri":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "language":Ljava/lang/String;
    .end local v8    # "groupId":Ljava/lang/String;
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v37    # "sampleMimeType":Ljava/lang/String;
    :goto_c
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    move-object/from16 v11, v45

    goto/16 :goto_6

    .end local v31    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32    # "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .end local v45    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v46    # "line":Ljava/lang/String;
    .local v11, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v12, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v13, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    :cond_18
    move-object/from16 v45, v11

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    .line 414
    .end local v0    # "i":I
    .end local v11    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .restart local v31    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v32    # "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .restart local v45    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v17, :cond_19

    .line 415
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .end local v33    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local v0, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    goto :goto_d

    .line 414
    .end local v0    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v33    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :cond_19
    move-object/from16 v0, v33

    .line 417
    .end local v33    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .restart local v0    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :goto_d
    new-instance v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, v45

    move-object/from16 v6, v32

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v30

    move-object v10, v0

    move-object/from16 v18, v45

    .end local v45    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v11, v16

    move-object/from16 v19, v31

    .end local v31    # "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v12, v2

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;ZLjava/util/Map;)V

    return-object v13
.end method

.method private static parseMediaPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 60
    .param p0, "masterPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .param p1, "iterator"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 447
    .local v1, "playlistType":I
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 448
    .local v2, "startOffsetUs":J
    const-wide/16 v4, 0x0

    .line 449
    .local v4, "mediaSequence":J
    const/4 v6, 0x1

    .line 450
    .local v6, "version":I
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 451
    .local v7, "targetDurationUs":J
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->hasIndependentSegments:Z

    .line 452
    .local v9, "hasIndependentSegmentsTag":Z
    const/4 v10, 0x0

    .line 453
    .local v10, "hasEndTag":Z
    const/4 v11, 0x0

    .line 454
    .local v11, "initializationSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 455
    .local v12, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v13, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v14

    .line 458
    .local v15, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v16, 0x0

    .line 459
    .local v16, "segmentDurationUs":J
    const-string v14, ""

    .line 460
    .local v14, "segmentTitle":Ljava/lang/String;
    const/16 v18, 0x0

    .line 461
    .local v18, "hasDiscontinuitySequence":Z
    const/16 v19, 0x0

    .line 462
    .local v19, "playlistDiscontinuitySequence":I
    const/16 v20, 0x0

    .line 463
    .local v20, "relativeDiscontinuitySequence":I
    const-wide/16 v21, 0x0

    .line 464
    .local v21, "playlistStartTimeUs":J
    const-wide/16 v23, 0x0

    .line 465
    .local v23, "segmentStartTimeUs":J
    const-wide/16 v25, 0x0

    .line 466
    .local v25, "segmentByteRangeOffset":J
    const-wide/16 v27, -0x1

    .line 467
    .local v27, "segmentByteRangeLength":J
    const-wide/16 v29, 0x0

    .line 468
    .local v29, "segmentMediaSequence":J
    const/16 v31, 0x0

    .line 470
    .local v31, "hasGapTag":Z
    const/16 v32, 0x0

    .line 471
    .local v32, "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    const/16 v33, 0x0

    .line 472
    .local v33, "encryptionKeyUri":Ljava/lang/String;
    const/16 v34, 0x0

    .line 473
    .local v34, "encryptionIV":Ljava/lang/String;
    new-instance v35, Ljava/util/TreeMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v36, v35

    .line 474
    .local v36, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const/16 v35, 0x0

    .line 475
    .local v35, "encryptionScheme":Ljava/lang/String;
    const/16 v37, 0x0

    move-object/from16 v39, v11

    move-object/from16 v40, v14

    move-wide/from16 v46, v16

    move/from16 v44, v20

    move-wide/from16 v48, v23

    move-wide/from16 v50, v25

    move-wide/from16 v52, v27

    move-wide/from16 v54, v29

    move/from16 v45, v31

    move-object/from16 v38, v32

    move-object/from16 v41, v33

    move-object/from16 v42, v34

    move-object/from16 v14, v35

    move-object/from16 v43, v37

    move-wide/from16 v34, v7

    move v11, v9

    move/from16 v37, v10

    move/from16 v7, v19

    move-wide v8, v4

    move v10, v6

    move/from16 v6, v18

    move-wide/from16 v4, v21

    .line 478
    .end local v9    # "hasIndependentSegmentsTag":Z
    .end local v16    # "segmentDurationUs":J
    .end local v18    # "hasDiscontinuitySequence":Z
    .end local v19    # "playlistDiscontinuitySequence":I
    .end local v20    # "relativeDiscontinuitySequence":I
    .end local v21    # "playlistStartTimeUs":J
    .end local v23    # "segmentStartTimeUs":J
    .end local v25    # "segmentByteRangeOffset":J
    .end local v27    # "segmentByteRangeLength":J
    .end local v29    # "segmentMediaSequence":J
    .end local v31    # "hasGapTag":Z
    .end local v32    # "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v33    # "encryptionKeyUri":Ljava/lang/String;
    .end local v35    # "encryptionScheme":Ljava/lang/String;
    .local v4, "playlistStartTimeUs":J
    .local v6, "hasDiscontinuitySequence":Z
    .local v7, "playlistDiscontinuitySequence":I
    .local v8, "mediaSequence":J
    .local v10, "version":I
    .local v11, "hasIndependentSegmentsTag":Z
    .local v14, "encryptionScheme":Ljava/lang/String;
    .local v34, "targetDurationUs":J
    .local v37, "hasEndTag":Z
    .local v38, "playlistProtectionSchemes":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v39, "initializationSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .local v40, "segmentTitle":Ljava/lang/String;
    .local v41, "encryptionKeyUri":Ljava/lang/String;
    .local v42, "encryptionIV":Ljava/lang/String;
    .local v43, "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v44, "relativeDiscontinuitySequence":I
    .local v45, "hasGapTag":Z
    .local v46, "segmentDurationUs":J
    .local v48, "segmentStartTimeUs":J
    .local v50, "segmentByteRangeOffset":J
    .local v52, "segmentByteRangeLength":J
    .local v54, "segmentMediaSequence":J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v16

    const-wide/16 v17, 0x0

    move/from16 v56, v11

    .end local v11    # "hasIndependentSegmentsTag":Z
    .local v56, "hasIndependentSegmentsTag":Z
    if-eqz v16, :cond_29

    .line 479
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v11

    .line 481
    .local v11, "line":Ljava/lang/String;
    move/from16 v57, v10

    .end local v10    # "version":I
    .local v57, "version":I
    const-string v10, "#EXT"

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 483
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_0
    const-string v10, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 487
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v11, v10, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 488
    .local v10, "playlistTypeString":Ljava/lang/String;
    move-object/from16 v33, v15

    .end local v15    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v33, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v15, "VOD"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 489
    const/4 v1, 0x1

    goto :goto_1

    .line 490
    :cond_1
    const-string v15, "EVENT"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 491
    const/4 v1, 0x2

    .line 493
    .end local v10    # "playlistTypeString":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    goto :goto_0

    .end local v33    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v33, v15

    .end local v15    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "#EXT-X-START"

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const-wide v20, 0x412e848000000000L    # 1000000.0

    if-eqz v10, :cond_4

    .line 494
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    invoke-static {v11, v10}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v15

    move-wide/from16 v58, v8

    .end local v8    # "mediaSequence":J
    .local v58, "mediaSequence":J
    mul-double v8, v15, v20

    double-to-long v2, v8

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    goto :goto_0

    .line 495
    .end local v58    # "mediaSequence":J
    .restart local v8    # "mediaSequence":J
    :cond_4
    move-wide/from16 v58, v8

    .end local v8    # "mediaSequence":J
    .restart local v58    # "mediaSequence":J
    const-string v8, "#EXT-X-MAP"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "@"

    if-eqz v8, :cond_7

    .line 496
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 497
    .local v8, "uri":Ljava/lang/String;
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v11, v10, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 498
    .local v10, "byteRange":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 499
    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 500
    .local v9, "splitByteRange":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v9, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v52

    .line 501
    array-length v15, v9

    move-object/from16 v17, v10

    const/4 v10, 0x1

    .end local v10    # "byteRange":Ljava/lang/String;
    .local v17, "byteRange":Ljava/lang/String;
    if-le v15, v10, :cond_6

    .line 502
    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v50

    goto :goto_2

    .line 498
    .end local v9    # "splitByteRange":[Ljava/lang/String;
    .end local v17    # "byteRange":Ljava/lang/String;
    .restart local v10    # "byteRange":Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v10

    .line 505
    .end local v10    # "byteRange":Ljava/lang/String;
    .restart local v17    # "byteRange":Ljava/lang/String;
    :cond_6
    :goto_2
    new-instance v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    move-wide/from16 v22, v50

    move-wide/from16 v24, v52

    invoke-direct/range {v20 .. v25}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJ)V

    move-object/from16 v39, v9

    .line 506
    const-wide/16 v50, 0x0

    .line 507
    const-wide/16 v52, -0x1

    .line 508
    .end local v8    # "uri":Ljava/lang/String;
    .end local v17    # "byteRange":Ljava/lang/String;
    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    goto/16 :goto_0

    :cond_7
    const-string v8, "#EXT-X-TARGETDURATION"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 509
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v11, v8}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v8

    int-to-long v8, v8

    const-wide/32 v15, 0xf4240

    mul-long v34, v8, v15

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    goto/16 :goto_0

    .line 510
    :cond_8
    const-string v8, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 511
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    invoke-static {v11, v8}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v8

    .line 512
    .end local v58    # "mediaSequence":J
    .local v8, "mediaSequence":J
    move-wide/from16 v54, v8

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    goto/16 :goto_0

    .line 513
    .end local v8    # "mediaSequence":J
    .restart local v58    # "mediaSequence":J
    :cond_9
    const-string v8, "#EXT-X-VERSION"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 514
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    invoke-static {v11, v8}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v10

    move-object/from16 v15, v33

    move/from16 v11, v56

    move-wide/from16 v8, v58

    .end local v57    # "version":I
    .local v10, "version":I
    goto/16 :goto_0

    .line 515
    .end local v10    # "version":I
    .restart local v57    # "version":I
    :cond_a
    const-string v8, "#EXT-X-DEFINE"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 516
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 517
    .local v8, "importName":Ljava/lang/String;
    if-eqz v8, :cond_c

    .line 518
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variableDefinitions:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 519
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 520
    invoke-virtual {v12, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .end local v9    # "value":Ljava/lang/String;
    :cond_b
    goto :goto_3

    .line 525
    :cond_c
    sget-object v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 526
    invoke-static {v11, v9, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 527
    invoke-static {v11, v10, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 525
    invoke-virtual {v12, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .end local v8    # "importName":Ljava/lang/String;
    :goto_3
    goto/16 :goto_b

    :cond_d
    const-string v8, "#EXTINF"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 530
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 531
    invoke-static {v11, v8}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v8

    mul-double v8, v8, v20

    double-to-long v8, v8

    .line 532
    .end local v46    # "segmentDurationUs":J
    .local v8, "segmentDurationUs":J
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    const-string v15, ""

    invoke-static {v11, v10, v15, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v40

    move-wide/from16 v46, v8

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    goto/16 :goto_0

    .line 533
    .end local v8    # "segmentDurationUs":J
    .restart local v46    # "segmentDurationUs":J
    :cond_e
    const-string v8, "#EXT-X-KEY"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 534
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, "method":Ljava/lang/String;
    sget-object v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 536
    const-string v10, "identity"

    invoke-static {v11, v9, v10, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 537
    .local v9, "keyFormat":Ljava/lang/String;
    const/4 v15, 0x0

    .line 538
    .end local v41    # "encryptionKeyUri":Ljava/lang/String;
    .local v15, "encryptionKeyUri":Ljava/lang/String;
    const/16 v16, 0x0

    .line 539
    .end local v42    # "encryptionIV":Ljava/lang/String;
    .local v16, "encryptionIV":Ljava/lang/String;
    const-string v0, "NONE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 540
    invoke-virtual/range {v36 .. v36}, Ljava/util/TreeMap;->clear()V

    .line 541
    const/4 v0, 0x0

    move-object/from16 v43, v0

    move-object/from16 v41, v15

    move-object/from16 v42, v16

    move-object/from16 v0, v36

    .end local v43    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v0, "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    goto/16 :goto_7

    .line 543
    .end local v0    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v43    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_f
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    invoke-static {v11, v0, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .end local v16    # "encryptionIV":Ljava/lang/String;
    .local v0, "encryptionIV":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 545
    const-string v10, "AES-128"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 547
    sget-object v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v11, v10, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v42, v0

    move-object/from16 v41, v10

    move-object/from16 v0, v36

    .end local v15    # "encryptionKeyUri":Ljava/lang/String;
    .local v10, "encryptionKeyUri":Ljava/lang/String;
    goto :goto_7

    .line 545
    .end local v10    # "encryptionKeyUri":Ljava/lang/String;
    .restart local v15    # "encryptionKeyUri":Ljava/lang/String;
    :cond_10
    move-object/from16 v42, v0

    move-object/from16 v41, v15

    move-object/from16 v0, v36

    goto :goto_7

    .line 553
    :cond_11
    if-nez v14, :cond_14

    .line 554
    nop

    .line 555
    const-string v10, "SAMPLE-AES-CENC"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, "SAMPLE-AES-CTR"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    goto :goto_4

    :cond_12
    const-string v10, "cbcs"

    goto :goto_5

    :cond_13
    :goto_4
    const-string v10, "cenc"

    :goto_5
    move-object v14, v10

    .line 560
    :cond_14
    const-string v10, "com.microsoft.playready"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 561
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parsePlayReadySchemeData(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v10

    .local v10, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    goto :goto_6

    .line 563
    .end local v10    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_15
    invoke-static {v11, v9, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseWidevineSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v10

    .line 565
    .restart local v10    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :goto_6
    if-eqz v10, :cond_16

    .line 566
    const/16 v16, 0x0

    .line 567
    .end local v43    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v16, "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    move-object/from16 v17, v0

    move-object/from16 v0, v36

    .end local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v0, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v17, "encryptionIV":Ljava/lang/String;
    invoke-virtual {v0, v9, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v41, v15

    move-object/from16 v43, v16

    move-object/from16 v42, v17

    goto :goto_7

    .line 565
    .end local v16    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v17    # "encryptionIV":Ljava/lang/String;
    .local v0, "encryptionIV":Ljava/lang/String;
    .restart local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v43    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_16
    move-object/from16 v17, v0

    move-object/from16 v0, v36

    .end local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v0, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v17    # "encryptionIV":Ljava/lang/String;
    move-object/from16 v41, v15

    move-object/from16 v42, v17

    .line 571
    .end local v8    # "method":Ljava/lang/String;
    .end local v9    # "keyFormat":Ljava/lang/String;
    .end local v10    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v15    # "encryptionKeyUri":Ljava/lang/String;
    .end local v17    # "encryptionIV":Ljava/lang/String;
    .restart local v41    # "encryptionKeyUri":Ljava/lang/String;
    .restart local v42    # "encryptionIV":Ljava/lang/String;
    :goto_7
    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .end local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :cond_17
    move-object/from16 v0, v36

    .end local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const-string v8, "#EXT-X-BYTERANGE"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 572
    sget-object v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 573
    .local v8, "byteRange":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 574
    .local v9, "splitByteRange":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v52

    .line 575
    array-length v10, v9

    const/4 v15, 0x1

    if-le v10, v15, :cond_18

    .line 576
    aget-object v10, v9, v15

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v50, v15

    .line 578
    .end local v8    # "byteRange":Ljava/lang/String;
    .end local v9    # "splitByteRange":[Ljava/lang/String;
    :cond_18
    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_19
    const-string v8, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/16 v9, 0x3a

    if-eqz v8, :cond_1a

    .line 579
    const/4 v6, 0x1

    .line 580
    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 581
    :cond_1a
    const-string v8, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 582
    add-int/lit8 v44, v44, 0x1

    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 583
    :cond_1b
    const-string v8, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 584
    cmp-long v8, v4, v17

    if-nez v8, :cond_1c

    .line 585
    nop

    .line 586
    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v8

    .line 587
    .local v8, "programDatetimeUs":J
    sub-long v4, v8, v48

    .line 588
    .end local v8    # "programDatetimeUs":J
    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 584
    :cond_1c
    move-object/from16 v36, v0

    goto/16 :goto_b

    .line 589
    :cond_1d
    const-string v8, "#EXT-X-GAP"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 590
    const/16 v45, 0x1

    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 591
    :cond_1e
    const-string v8, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 592
    const/4 v8, 0x1

    move-object/from16 v36, v0

    move v11, v8

    move-object/from16 v15, v33

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    .end local v56    # "hasIndependentSegmentsTag":Z
    .local v8, "hasIndependentSegmentsTag":Z
    goto/16 :goto_0

    .line 593
    .end local v8    # "hasIndependentSegmentsTag":Z
    .restart local v56    # "hasIndependentSegmentsTag":Z
    :cond_1f
    const-string v8, "#EXT-X-ENDLIST"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 594
    const/16 v37, 0x1

    move-object/from16 v36, v0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 595
    :cond_20
    const-string v8, "#"

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 597
    if-nez v41, :cond_21

    .line 598
    const/4 v8, 0x0

    .local v8, "segmentEncryptionIV":Ljava/lang/String;
    goto :goto_8

    .line 599
    .end local v8    # "segmentEncryptionIV":Ljava/lang/String;
    :cond_21
    if-eqz v42, :cond_22

    .line 600
    move-object/from16 v8, v42

    .restart local v8    # "segmentEncryptionIV":Ljava/lang/String;
    goto :goto_8

    .line 602
    .end local v8    # "segmentEncryptionIV":Ljava/lang/String;
    :cond_22
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    .line 605
    .restart local v8    # "segmentEncryptionIV":Ljava/lang/String;
    :goto_8
    const-wide/16 v9, 0x1

    add-long v54, v54, v9

    .line 606
    const-wide/16 v9, -0x1

    cmp-long v15, v52, v9

    if-nez v15, :cond_23

    .line 607
    const-wide/16 v15, 0x0

    move-wide/from16 v50, v15

    .line 610
    :cond_23
    if-nez v43, :cond_26

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_26

    .line 611
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v15

    const/4 v9, 0x0

    new-array v9, v9, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-interface {v15, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 612
    .local v9, "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    new-instance v10, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v10, v14, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 613
    .end local v43    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v10, "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-nez v38, :cond_25

    .line 614
    array-length v15, v9

    new-array v15, v15, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 615
    .local v15, "playlistSchemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    const/16 v16, 0x0

    move-object/from16 v36, v0

    move/from16 v0, v16

    .local v0, "i":I
    .restart local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :goto_9
    move-object/from16 v16, v10

    .end local v10    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v16    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    array-length v10, v9

    if-ge v0, v10, :cond_24

    .line 616
    aget-object v10, v9, v0

    move-object/from16 v17, v9

    .end local v9    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .local v17, "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->copyWithData([B)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v9

    aput-object v9, v15, v0

    .line 615
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v16

    move-object/from16 v9, v17

    goto :goto_9

    .end local v17    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .restart local v9    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_24
    move-object/from16 v17, v9

    .line 618
    .end local v0    # "i":I
    .end local v9    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .restart local v17    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v0, v14, v15}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    move-object/from16 v38, v0

    move-object/from16 v43, v16

    goto :goto_a

    .line 613
    .end local v15    # "playlistSchemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v16    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v17    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local v0, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v9    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .restart local v10    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_25
    move-object/from16 v36, v0

    move-object/from16 v17, v9

    move-object/from16 v16, v10

    .end local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .end local v9    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v10    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v16    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v17    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .restart local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    move-object/from16 v43, v16

    goto :goto_a

    .line 610
    .end local v16    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v17    # "schemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v43    # "cachedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_26
    move-object/from16 v36, v0

    .line 622
    .end local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :goto_a
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v16, v0

    .line 624
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v39

    move-object/from16 v19, v40

    move-wide/from16 v20, v46

    move/from16 v22, v44

    move-wide/from16 v23, v48

    move-object/from16 v25, v43

    move-object/from16 v26, v41

    move-object/from16 v27, v8

    move-wide/from16 v28, v50

    move-wide/from16 v30, v52

    move/from16 v32, v45

    invoke-direct/range {v16 .. v32}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 622
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    add-long v48, v48, v46

    .line 637
    const-wide/16 v46, 0x0

    .line 638
    const-string v40, ""

    .line 639
    const-wide/16 v9, -0x1

    cmp-long v0, v52, v9

    if-eqz v0, :cond_27

    .line 640
    add-long v50, v50, v52

    .line 642
    :cond_27
    const-wide/16 v52, -0x1

    .line 643
    const/16 v45, 0x0

    .line 644
    .end local v8    # "segmentEncryptionIV":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    goto/16 :goto_0

    .line 595
    .end local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .restart local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :cond_28
    move-object/from16 v36, v0

    .line 478
    .end local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .end local v11    # "line":Ljava/lang/String;
    .restart local v36    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v15, v33

    move/from16 v11, v56

    move/from16 v10, v57

    move-wide/from16 v8, v58

    goto/16 :goto_0

    .line 646
    .end local v33    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v57    # "version":I
    .end local v58    # "mediaSequence":J
    .local v8, "mediaSequence":J
    .local v10, "version":I
    .local v15, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_29
    move-wide/from16 v58, v8

    move/from16 v57, v10

    move-object/from16 v33, v15

    const/4 v0, 0x1

    const/4 v9, 0x0

    .end local v8    # "mediaSequence":J
    .end local v10    # "version":I
    .end local v15    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v57    # "version":I
    .restart local v58    # "mediaSequence":J
    new-instance v8, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    cmp-long v10, v4, v17

    if-eqz v10, :cond_2a

    const/16 v31, 0x1

    goto :goto_c

    :cond_2a
    const/16 v31, 0x0

    :goto_c
    move-object v0, v14

    .end local v14    # "encryptionScheme":Ljava/lang/String;
    .local v0, "encryptionScheme":Ljava/lang/String;
    move-object v14, v8

    move-object/from16 v9, v33

    .end local v33    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v15, v1

    move-object/from16 v16, p2

    move-object/from16 v17, v9

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move/from16 v22, v6

    move/from16 v23, v7

    move-wide/from16 v24, v58

    move/from16 v26, v57

    move-wide/from16 v27, v34

    move/from16 v29, v56

    move/from16 v30, v37

    move-object/from16 v32, v38

    move-object/from16 v33, v13

    invoke-direct/range {v14 .. v33}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    return-object v8
.end method

.method private static parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # Z

    .line 758
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 759
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 762
    :cond_0
    return p2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 731
    .local p3, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 732
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    .line 733
    .local v1, "value":Ljava/lang/String;
    :goto_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 735
    :cond_1
    invoke-static {v1, p3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 733
    :cond_2
    :goto_1
    move-object v2, v1

    :goto_2
    return-object v2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 723
    .local p2, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parsePlayReadySchemeData(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 7
    .param p0, "line"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 666
    .local p1, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 667
    const-string v1, "1"

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "keyFormatVersions":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    const/4 v1, 0x0

    return-object v1

    .line 672
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 673
    .local v1, "uriString":Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 674
    .local v2, "data":[B
    sget-object v3, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v3

    .line 675
    .local v3, "psshData":[B
    new-instance v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v5, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    const-string/jumbo v6, "video/mp4"

    invoke-direct {v4, v5, v6, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object v4
.end method

.method private static parseSelectionFlags(Ljava/lang/String;)I
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "flags":I
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    or-int/lit8 v0, v0, 0x1

    .line 435
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    or-int/lit8 v0, v0, 0x2

    .line 438
    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    or-int/lit8 v0, v0, 0x4

    .line 441
    :cond_2
    return v0
.end method

.method private static parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 713
    .local p2, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 715
    return-object v0

    .line 717
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseWidevineSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 5
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "keyFormat"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 681
    .local p2, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "uriString":Ljava/lang/String;
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v2, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    const/16 v3, 0x2c

    .line 686
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string/jumbo v4, "video/mp4"

    invoke-direct {v1, v2, v4, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 683
    return-object v1

    .line 688
    .end local v0    # "uriString":Ljava/lang/String;
    :cond_0
    const-string v0, "com.widevine"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v1, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    const-string v2, "hls"

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 695
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 740
    .local p1, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 742
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 743
    .local v1, "stringWithReplacements":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 744
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 745
    .local v2, "groupName":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    nop

    .line 747
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-virtual {v0, v1, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 751
    .end local v2    # "groupName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 752
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 753
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "skipLinebreaks"    # Z
    .param p2, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->isLinebreak(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    .line 241
    :cond_1
    return p2
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 180
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 183
    .local v1, "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->checkPlaylistHeader(Ljava/io/BufferedReader;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 187
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 188
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 189
    .end local v3    # "line":Ljava/lang/String;
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    const-string v3, "#EXT-X-STREAM-INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, v1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseMasterPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 193
    return-object v3

    .line 194
    :cond_1
    :try_start_1
    const-string v3, "#EXT-X-TARGETDURATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXTINF"

    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-KEY"

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-BYTERANGE"

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-DISCONTINUITY"

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-ENDLIST"

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 206
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_3
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->masterPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    new-instance v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v4, v1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 204
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseMediaPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 203
    return-object v3

    .line 210
    .end local v2    # "line":Ljava/lang/String;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 211
    nop

    .line 212
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v4, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    .end local v3    # "line":Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v2, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    const-string v3, "Input does not start with the #EXTM3U header."

    invoke-direct {v2, v3, p1}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 211
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    move-result-object p1

    return-object p1
.end method
