.class public final enum Lcom/aliyun/player/bean/InfoCode;
.super Ljava/lang/Enum;
.source "InfoCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/bean/InfoCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/bean/InfoCode;

.field public static final enum AudioCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum AudioDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum AutoPlayStart:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum BufferedPosition:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum CacheError:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum CacheSuccess:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum CurrentDownloadSpeed:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum DemuxerTraceID:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum DirectComponentMSG:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum LoopingStart:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum LowMemory:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum NetworkRetry:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum NetworkRetrySuccess:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum RTSServerMaybeDisconnect:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum RTSServerRecover:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum SubtitleSelectError:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum SwitchToSoftwareVideoDecoder:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum Unknown:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum UtcTime:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum VideoCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum VideoDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum VideoRenderInitError:Lcom/aliyun/player/bean/InfoCode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 13
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->Unknown:Lcom/aliyun/player/bean/InfoCode;

    .line 21
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/4 v2, 0x1

    const-string v3, "LoopingStart"

    invoke-direct {v0, v3, v2, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->LoopingStart:Lcom/aliyun/player/bean/InfoCode;

    .line 29
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/4 v3, 0x2

    const-string v4, "BufferedPosition"

    invoke-direct {v0, v4, v3, v2}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->BufferedPosition:Lcom/aliyun/player/bean/InfoCode;

    .line 36
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/4 v4, 0x3

    const-string v5, "CurrentPosition"

    invoke-direct {v0, v5, v4, v3}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    .line 43
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/4 v5, 0x4

    const-string v6, "AutoPlayStart"

    invoke-direct {v0, v6, v5, v4}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->AutoPlayStart:Lcom/aliyun/player/bean/InfoCode;

    .line 51
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/4 v6, 0x5

    const-string v7, "CurrentDownloadSpeed"

    invoke-direct {v0, v7, v6, v5}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->CurrentDownloadSpeed:Lcom/aliyun/player/bean/InfoCode;

    .line 59
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/4 v7, 0x6

    const-string v8, "UtcTime"

    invoke-direct {v0, v8, v7, v6}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->UtcTime:Lcom/aliyun/player/bean/InfoCode;

    .line 67
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/4 v8, 0x7

    const-string v9, "SwitchToSoftwareVideoDecoder"

    const/16 v10, 0x64

    invoke-direct {v0, v9, v8, v10}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->SwitchToSoftwareVideoDecoder:Lcom/aliyun/player/bean/InfoCode;

    .line 74
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v9, 0x8

    const-string v10, "AudioCodecNotSupport"

    const/16 v11, 0x65

    invoke-direct {v0, v10, v9, v11}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->AudioCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

    .line 81
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v10, 0x9

    const-string v11, "AudioDecoderDeviceError"

    const/16 v12, 0x66

    invoke-direct {v0, v11, v10, v12}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->AudioDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

    .line 88
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v11, 0xa

    const-string v12, "VideoCodecNotSupport"

    const/16 v13, 0x67

    invoke-direct {v0, v12, v11, v13}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->VideoCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

    .line 95
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v12, 0xb

    const-string v13, "VideoDecoderDeviceError"

    const/16 v14, 0x68

    invoke-direct {v0, v13, v12, v14}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->VideoDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

    .line 102
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v13, 0xc

    const-string v14, "VideoRenderInitError"

    const/16 v15, 0x69

    invoke-direct {v0, v14, v13, v15}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->VideoRenderInitError:Lcom/aliyun/player/bean/InfoCode;

    .line 110
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v14, 0xd

    const-string v15, "DemuxerTraceID"

    const/16 v13, 0x6a

    invoke-direct {v0, v15, v14, v13}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->DemuxerTraceID:Lcom/aliyun/player/bean/InfoCode;

    .line 118
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v13, 0xe

    const-string v15, "NetworkRetry"

    const/16 v14, 0x6c

    invoke-direct {v0, v15, v13, v14}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->NetworkRetry:Lcom/aliyun/player/bean/InfoCode;

    .line 126
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v14, "CacheSuccess"

    const/16 v15, 0xf

    const/16 v13, 0x6d

    invoke-direct {v0, v14, v15, v13}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->CacheSuccess:Lcom/aliyun/player/bean/InfoCode;

    .line 134
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v13, "CacheError"

    const/16 v14, 0x10

    const/16 v15, 0x6e

    invoke-direct {v0, v13, v14, v15}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->CacheError:Lcom/aliyun/player/bean/InfoCode;

    .line 142
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v13, "LowMemory"

    const/16 v14, 0x11

    const/16 v15, 0x6f

    invoke-direct {v0, v13, v14, v15}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->LowMemory:Lcom/aliyun/player/bean/InfoCode;

    .line 150
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v13, "NetworkRetrySuccess"

    const/16 v14, 0x12

    const/16 v15, 0x71

    invoke-direct {v0, v13, v14, v15}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->NetworkRetrySuccess:Lcom/aliyun/player/bean/InfoCode;

    .line 158
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v13, "SubtitleSelectError"

    const/16 v14, 0x13

    const/16 v15, 0x72

    invoke-direct {v0, v13, v14, v15}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->SubtitleSelectError:Lcom/aliyun/player/bean/InfoCode;

    .line 167
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v13, "DirectComponentMSG"

    const/16 v14, 0x14

    const/16 v15, 0x74

    invoke-direct {v0, v13, v14, v15}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->DirectComponentMSG:Lcom/aliyun/player/bean/InfoCode;

    .line 175
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v13, "RTSServerMaybeDisconnect"

    const/16 v14, 0x15

    const v15, 0x30010001

    invoke-direct {v0, v13, v14, v15}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->RTSServerMaybeDisconnect:Lcom/aliyun/player/bean/InfoCode;

    .line 182
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v13, "RTSServerRecover"

    const/16 v14, 0x16

    const v15, 0x30010002

    invoke-direct {v0, v13, v14, v15}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->RTSServerRecover:Lcom/aliyun/player/bean/InfoCode;

    .line 6
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/aliyun/player/bean/InfoCode;

    sget-object v13, Lcom/aliyun/player/bean/InfoCode;->Unknown:Lcom/aliyun/player/bean/InfoCode;

    aput-object v13, v0, v1

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->LoopingStart:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->BufferedPosition:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->AutoPlayStart:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentDownloadSpeed:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->UtcTime:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->SwitchToSoftwareVideoDecoder:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->AudioCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->AudioDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->VideoCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->VideoDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->VideoRenderInitError:Lcom/aliyun/player/bean/InfoCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->DemuxerTraceID:Lcom/aliyun/player/bean/InfoCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->NetworkRetry:Lcom/aliyun/player/bean/InfoCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CacheSuccess:Lcom/aliyun/player/bean/InfoCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CacheError:Lcom/aliyun/player/bean/InfoCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->LowMemory:Lcom/aliyun/player/bean/InfoCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->NetworkRetrySuccess:Lcom/aliyun/player/bean/InfoCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->SubtitleSelectError:Lcom/aliyun/player/bean/InfoCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->DirectComponentMSG:Lcom/aliyun/player/bean/InfoCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->RTSServerMaybeDisconnect:Lcom/aliyun/player/bean/InfoCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->RTSServerRecover:Lcom/aliyun/player/bean/InfoCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->$VALUES:[Lcom/aliyun/player/bean/InfoCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 190
    iput p3, p0, Lcom/aliyun/player/bean/InfoCode;->value:I

    .line 191
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/bean/InfoCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/aliyun/player/bean/InfoCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/bean/InfoCode;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/bean/InfoCode;
    .locals 1

    .line 6
    sget-object v0, Lcom/aliyun/player/bean/InfoCode;->$VALUES:[Lcom/aliyun/player/bean/InfoCode;

    invoke-virtual {v0}, [Lcom/aliyun/player/bean/InfoCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/bean/InfoCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/aliyun/player/bean/InfoCode;->value:I

    return v0
.end method
