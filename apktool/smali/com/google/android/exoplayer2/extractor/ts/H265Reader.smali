.class public final Lcom/google/android/exoplayer2/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final BLA_W_LP:I = 0x10

.field private static final CRA_NUT:I = 0x15

.field private static final PPS_NUT:I = 0x22

.field private static final PREFIX_SEI_NUT:I = 0x27

.field private static final RASL_R:I = 0x9

.field private static final SPS_NUT:I = 0x21

.field private static final SUFFIX_SEI_NUT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "H265Reader"

.field private static final VPS_NUT:I = 0x20


# instance fields
.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

.field private final seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

.field private final seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;)V
    .locals 3
    .param p1, "seiReader"    # Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 77
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x80

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0x21

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0x22

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 80
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0x27

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0x28

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 83
    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 5
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "discardPadding"    # I
    .param p5, "pesTimeUs"    # J

    .line 187
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->endNalUnit(JI)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->parseMediaFormat(Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    .line 198
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 200
    .local v0, "unescapedLength":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v2, v3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 203
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 204
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, p5, p6, v3}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 206
    .end local v0    # "unescapedLength":I
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 208
    .restart local v0    # "unescapedLength":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v2, v3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 211
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 212
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, p5, p6, v2}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 214
    .end local v0    # "unescapedLength":I
    :cond_3
    return-void
.end method

.method private nalUnitData([BII)V
    .locals 1
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 175
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 184
    return-void
.end method

.method private static parseMediaFormat(Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer2/Format;
    .locals 31
    .param p0, "formatId"    # Ljava/lang/String;
    .param p1, "vps"    # Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;
    .param p2, "sps"    # Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;
    .param p3, "pps"    # Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 219
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v4, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 220
    .local v3, "csd":[B
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v5, v7

    iget v7, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 226
    .local v4, "bitArray":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 227
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 228
    .local v7, "maxSubLayersMinus1":I
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 231
    const/16 v8, 0x58

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 232
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 233
    const/4 v9, 0x0

    .line 234
    .local v9, "toSkip":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_2

    .line 235
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 236
    add-int/lit8 v9, v9, 0x59

    .line 238
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 239
    add-int/lit8 v9, v9, 0x8

    .line 234
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 242
    .end local v10    # "i":I
    :cond_2
    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 243
    const/4 v10, 0x2

    if-lez v7, :cond_3

    .line 244
    rsub-int/lit8 v11, v7, 0x8

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v4, v11}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 247
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 248
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 249
    .local v11, "chromaFormatIdc":I
    if-ne v11, v5, :cond_4

    .line 250
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 252
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 253
    .local v5, "picWidthInLumaSamples":I
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 254
    .local v12, "picHeightInLumaSamples":I
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 255
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 256
    .local v13, "confWinLeftOffset":I
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    .line 257
    .local v14, "confWinRightOffset":I
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 258
    .local v15, "confWinTopOffset":I
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 260
    .local v16, "confWinBottomOffset":I
    const/4 v6, 0x1

    if-eq v11, v6, :cond_6

    if-ne v11, v10, :cond_5

    goto :goto_1

    :cond_5
    const/16 v18, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/16 v18, 0x2

    .line 261
    .local v18, "subWidthC":I
    :goto_2
    if-ne v11, v6, :cond_7

    const/4 v6, 0x2

    .line 262
    .local v6, "subHeightC":I
    :cond_7
    add-int v19, v13, v14

    mul-int v19, v19, v18

    sub-int v5, v5, v19

    .line 263
    add-int v19, v15, v16

    mul-int v19, v19, v6

    sub-int v12, v12, v19

    .line 265
    .end local v6    # "subHeightC":I
    .end local v13    # "confWinLeftOffset":I
    .end local v14    # "confWinRightOffset":I
    .end local v15    # "confWinTopOffset":I
    .end local v16    # "confWinBottomOffset":I
    .end local v18    # "subWidthC":I
    :cond_8
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 266
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 267
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    .line 269
    .local v6, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v17, 0x0

    goto :goto_3

    :cond_9
    move/from16 v17, v7

    :goto_3
    move/from16 v13, v17

    .local v13, "i":I
    :goto_4
    if-gt v13, v7, :cond_a

    .line 270
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 271
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 272
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 269
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 274
    .end local v13    # "i":I
    :cond_a
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 275
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 276
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 277
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 278
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 279
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 281
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    .line 282
    .local v13, "scalingListEnabled":Z
    if-eqz v13, :cond_b

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 283
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 285
    :cond_b
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 286
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 288
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 289
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 290
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 291
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 294
    :cond_c
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->skipShortTermRefPicSets(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 295
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 297
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    if-ge v14, v15, :cond_d

    .line 298
    add-int/lit8 v15, v6, 0x4

    .line 300
    .local v15, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v8, v15, 0x1

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 297
    .end local v15    # "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v14, v14, 0x1

    const/16 v8, 0x8

    goto :goto_5

    .line 303
    .end local v14    # "i":I
    :cond_d
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 304
    const/high16 v8, 0x3f800000    # 1.0f

    .line 305
    .local v8, "pixelWidthHeightRatio":F
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 306
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 307
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 308
    .local v10, "aspectRatioIdc":I
    const/16 v14, 0xff

    if-ne v10, v14, :cond_f

    .line 309
    const/16 v14, 0x10

    invoke-virtual {v4, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    .line 310
    .local v15, "sarWidth":I
    invoke-virtual {v4, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v14

    .line 311
    .local v14, "sarHeight":I
    if-eqz v15, :cond_e

    if-eqz v14, :cond_e

    .line 312
    int-to-float v0, v15

    int-to-float v1, v14

    div-float v8, v0, v1

    .line 314
    .end local v14    # "sarHeight":I
    .end local v15    # "sarWidth":I
    :cond_e
    goto :goto_6

    :cond_f
    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v0, v0

    if-ge v10, v0, :cond_10

    .line 315
    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v0, v0, v10

    move v8, v0

    .end local v8    # "pixelWidthHeightRatio":F
    .local v0, "pixelWidthHeightRatio":F
    goto :goto_6

    .line 317
    .end local v0    # "pixelWidthHeightRatio":F
    .restart local v8    # "pixelWidthHeightRatio":F
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H265Reader"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v10    # "aspectRatioIdc":I
    :cond_11
    :goto_6
    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/high16 v26, -0x40800000    # -1.0f

    .line 324
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    const/16 v28, -0x1

    const/16 v30, 0x0

    .line 322
    const-string/jumbo v20, "video/hevc"

    move-object/from16 v19, p0

    move/from16 v24, v5

    move/from16 v25, v12

    move/from16 v29, v8

    invoke-static/range {v19 .. v30}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method private static skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V
    .locals 6
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    .line 331
    const/4 v0, 0x0

    .local v0, "sizeId":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 332
    const/4 v2, 0x0

    .local v2, "matrixId":I
    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    .line 333
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_3

    .line 337
    :cond_0
    const/16 v3, 0x40

    shl-int/lit8 v5, v0, 0x1

    add-int/2addr v5, v1

    shl-int v5, v4, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 338
    .local v3, "coefNum":I
    if-le v0, v4, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 342
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_2

    .line 343
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 342
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 332
    .end local v3    # "coefNum":I
    .end local v5    # "i":I
    :cond_2
    :goto_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    goto :goto_4

    :cond_3
    const/4 v3, 0x1

    :goto_4
    add-int/2addr v2, v3

    goto :goto_1

    .line 331
    .end local v2    # "matrixId":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "sizeId":I
    :cond_5
    return-void
.end method

.method private static skipShortTermRefPicSets(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V
    .locals 7
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    .line 355
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    .line 356
    .local v0, "numShortTermRefPicSets":I
    const/4 v1, 0x0

    .line 362
    .local v1, "interRefPicSetPredictionFlag":Z
    const/4 v2, 0x0

    .line 363
    .local v2, "previousNumDeltaPocs":I
    const/4 v3, 0x0

    .local v3, "stRpsIdx":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 364
    if-eqz v3, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    .line 367
    :cond_0
    if-eqz v1, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 369
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 370
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-gt v4, v2, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 370
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "j":I
    :cond_2
    goto :goto_4

    .line 376
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 377
    .local v4, "numNegativePics":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 378
    .local v5, "numPositivePics":I
    add-int v2, v4, v5

    .line 379
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v4, :cond_4

    .line 380
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 381
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 379
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 383
    .end local v6    # "i":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v5, :cond_5

    .line 384
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 385
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 383
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 363
    .end local v4    # "numNegativePics":I
    .end local v5    # "numPositivePics":I
    .end local v6    # "i":I
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 389
    .end local v3    # "stRpsIdx":I
    :cond_6
    return-void
.end method

.method private startNalUnit(JIIJ)V
    .locals 8
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "nalUnitType"    # I
    .param p5, "pesTimeUs"    # J

    .line 163
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJ)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 172
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 18
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 113
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_4

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 115
    .local v0, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v9

    .line 116
    .local v9, "limit":I
    iget-object v10, v8, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 119
    .local v10, "dataArray":[B
    iget-wide v1, v7, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 120
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-interface {v1, v8, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    move v11, v0

    .line 123
    .end local v0    # "offset":I
    .local v11, "offset":I
    :goto_1
    if-ge v11, v9, :cond_3

    .line 124
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v10, v11, v9, v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v12

    .line 126
    .local v12, "nalUnitOffset":I
    if-ne v12, v9, :cond_0

    .line 128
    invoke-direct {v7, v10, v11, v9}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 129
    return-void

    .line 133
    :cond_0
    invoke-static {v10, v12}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v13

    .line 137
    .local v13, "nalUnitType":I
    sub-int v14, v12, v11

    .line 138
    .local v14, "lengthToNalUnit":I
    if-lez v14, :cond_1

    .line 139
    invoke-direct {v7, v10, v11, v12}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 142
    :cond_1
    sub-int v15, v9, v12

    .line 143
    .local v15, "bytesWrittenPastPosition":I
    iget-wide v0, v7, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v2, v15

    sub-long v16, v0, v2

    .line 147
    .local v16, "absolutePosition":J
    if-gez v14, :cond_2

    neg-int v0, v14

    move v4, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_2
    iget-wide v5, v7, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move v3, v15

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    .line 150
    iget-wide v5, v7, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    .line 152
    add-int/lit8 v11, v12, 0x3

    .line 153
    .end local v12    # "nalUnitOffset":I
    .end local v13    # "nalUnitType":I
    .end local v14    # "lengthToNalUnit":I
    .end local v15    # "bytesWrittenPastPosition":I
    .end local v16    # "absolutePosition":J
    goto :goto_1

    .line 154
    .end local v9    # "limit":I
    .end local v10    # "dataArray":[B
    .end local v11    # "offset":I
    :cond_3
    goto :goto_0

    .line 155
    :cond_4
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 99
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 100
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    .line 101
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 102
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 104
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 160
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .line 108
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    .line 109
    return-void
.end method

.method public seek()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->reset()V

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 95
    return-void
.end method
