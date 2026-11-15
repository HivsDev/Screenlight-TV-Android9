.class public final enum Lcom/aliyun/player/nativeclass/TrackInfo$Type;
.super Ljava/lang/Enum;
.source "TrackInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/nativeclass/TrackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/nativeclass/TrackInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/nativeclass/TrackInfo$Type;

.field public static final enum TYPE_AUDIO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

.field public static final enum TYPE_SUBTITLE:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

.field public static final enum TYPE_VIDEO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

.field public static final enum TYPE_VOD:Lcom/aliyun/player/nativeclass/TrackInfo$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 117
    new-instance v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    const/4 v1, 0x0

    const-string v2, "TYPE_VIDEO"

    invoke-direct {v0, v2, v1}, Lcom/aliyun/player/nativeclass/TrackInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VIDEO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 124
    new-instance v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    const/4 v2, 0x1

    const-string v3, "TYPE_AUDIO"

    invoke-direct {v0, v3, v2}, Lcom/aliyun/player/nativeclass/TrackInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_AUDIO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 131
    new-instance v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    const/4 v3, 0x2

    const-string v4, "TYPE_SUBTITLE"

    invoke-direct {v0, v4, v3}, Lcom/aliyun/player/nativeclass/TrackInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_SUBTITLE:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 138
    new-instance v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    const/4 v4, 0x3

    const-string v5, "TYPE_VOD"

    invoke-direct {v0, v5, v4}, Lcom/aliyun/player/nativeclass/TrackInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VOD:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    sget-object v5, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VIDEO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    aput-object v5, v0, v1

    sget-object v1, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_AUDIO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_SUBTITLE:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VOD:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->$VALUES:[Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/nativeclass/TrackInfo$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 110
    const-class v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/nativeclass/TrackInfo$Type;
    .locals 1

    .line 110
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->$VALUES:[Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    invoke-virtual {v0}, [Lcom/aliyun/player/nativeclass/TrackInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    return-object v0
.end method
