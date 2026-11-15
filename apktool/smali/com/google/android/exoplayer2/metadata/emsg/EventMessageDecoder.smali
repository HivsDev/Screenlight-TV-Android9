.class public final Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;
.super Ljava/lang/Object;
.source "EventMessageDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 28
    .param p1, "inputBuffer"    # Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    .line 39
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 40
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 41
    .local v2, "data":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 42
    .local v3, "size":I
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 43
    .local v4, "emsgData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 44
    .local v5, "schemeIdUri":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/String;

    .line 45
    .local v16, "value":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v17

    .line 46
    .local v17, "timescale":J
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    move-wide/from16 v10, v17

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v19

    .line 48
    .local v19, "presentationTimeUs":J
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v21

    .line 49
    .local v21, "durationMs":J
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v23

    .line 50
    .local v23, "id":J
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    invoke-static {v2, v6, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v25

    .line 51
    .local v25, "messageData":[B
    new-instance v14, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v6, 0x1

    new-array v15, v6, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v26, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object/from16 v6, v26

    move-object v7, v5

    move-object/from16 v8, v16

    move-wide/from16 v9, v21

    move-wide/from16 v11, v23

    move-object/from16 v13, v25

    move-object/from16 v27, v1

    move-object v0, v14

    move-object v1, v15

    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .local v27, "buffer":Ljava/nio/ByteBuffer;
    move-wide/from16 v14, v19

    invoke-direct/range {v6 .. v15}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[BJ)V

    const/4 v6, 0x0

    aput-object v26, v1, v6

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v0
.end method
