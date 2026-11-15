.class public final Lcom/google/android/exoplayer2/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;


# static fields
.field private static final HEADER_SIZE:I = 0x9

.field private static final MAX_HEADER_EXTENSION_SIZE:I = 0xa

.field private static final PES_SCRATCH_SIZE:I = 0xa

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_BODY:I = 0x3

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_HEADER_EXTENSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PesReader"


# instance fields
.field private bytesRead:I

.field private dataAlignmentIndicator:Z

.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private payloadSize:I

.field private final pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J

.field private timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V
    .locals 2
    .param p1, "reader"    # Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 59
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0xa

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    .line 61
    return-void
.end method

.method private continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 3
    .param p1, "source"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 166
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    .local v0, "bytesToRead":I
    const/4 v1, 0x1

    if-gtz v0, :cond_0

    .line 168
    return v1

    .line 169
    :cond_0
    if-nez p2, :cond_1

    .line 170
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 172
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 174
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 175
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    if-ne v2, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private parseHeader()Z
    .locals 7

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 183
    .local v0, "startCodePrefix":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected start code prefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PesReader"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    .line 186
    return v1

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 190
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 191
    .local v1, "packetLength":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 192
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 193
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 194
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    .line 195
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    .line 198
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 199
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 201
    if-nez v1, :cond_1

    .line 202
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    goto :goto_0

    .line 204
    :cond_1
    add-int/lit8 v2, v1, 0x6

    add-int/lit8 v2, v2, -0x9

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    .line 207
    :goto_0
    return v3
.end method

.method private parseHeaderExtension()V
    .locals 10

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 212
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 213
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 216
    .local v3, "pts":J
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 217
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 218
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 219
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 220
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 221
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v5, :cond_0

    .line 222
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 223
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 224
    .local v0, "dts":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 225
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 226
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 227
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 228
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 234
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 235
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 237
    .end local v0    # "dts":J
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 239
    .end local v3    # "pts":J
    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 152
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 154
    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V
    .locals 9
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "payloadUnitStartIndicator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 83
    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    .line 84
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    if-eqz v4, :cond_3

    if-eq v4, v3, :cond_3

    const-string v5, "PesReader"

    if-eq v4, v2, :cond_2

    if-ne v4, v1, :cond_1

    .line 97
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v4, v0, :cond_0

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected start indicator: expected "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " more bytes"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 90
    :cond_2
    const-string v4, "Unexpected start indicator reading extended header"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    goto :goto_0

    .line 88
    :cond_3
    nop

    .line 106
    :goto_0
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    .line 109
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lez v4, :cond_c

    .line 110
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    if-eqz v4, :cond_b

    const/4 v5, 0x0

    if-eq v4, v3, :cond_9

    if-eq v4, v2, :cond_8

    if-ne v4, v1, :cond_7

    .line 130
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    .line 131
    .local v4, "readLength":I
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-ne v6, v0, :cond_5

    goto :goto_2

    :cond_5
    sub-int v5, v4, v6

    .line 132
    .local v5, "padding":I
    :goto_2
    if-lez v5, :cond_6

    .line 133
    sub-int/2addr v4, v5

    .line 134
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 136
    :cond_6
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v6, p1}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 137
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v6, v0, :cond_4

    .line 138
    sub-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    .line 139
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-nez v6, :cond_4

    .line 140
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 141
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_1

    .line 146
    .end local v4    # "readLength":I
    .end local v5    # "padding":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 120
    :cond_8
    const/16 v4, 0xa

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 122
    .restart local v4    # "readLength":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v5, v4}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 123
    invoke-direct {p0, p1, v5, v6}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 124
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->parseHeaderExtension()V

    .line 125
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    invoke-interface {v5, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetStarted(JZ)V

    .line 126
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_1

    .line 115
    .end local v4    # "readLength":I
    :cond_9
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/16 v6, 0x9

    invoke-direct {p0, p1, v4, v6}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 116
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->parseHeader()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v5, 0x2

    :cond_a
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_1

    .line 112
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 113
    goto/16 :goto_1

    .line 149
    :cond_c
    return-void
.end method

.method public init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1
    .param p1, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 68
    return-void
.end method

.method public final seek()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    .line 75
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 76
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->seek()V

    .line 78
    return-void
.end method
