.class final enum Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;
.super Ljava/lang/Enum;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PLAYER_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

.field public static final enum PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

.field public static final enum PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

.field public static final enum PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

.field public static final enum PLAYER_PREPARING:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 3302
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    const/4 v1, 0x0

    const-string v2, "PLAYER_IDLE"

    invoke-direct {v0, v2, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 3303
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    const/4 v2, 0x1

    const-string v3, "PLAYER_PREPARING"

    invoke-direct {v0, v3, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARING:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 3304
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    const/4 v3, 0x2

    const-string v4, "PLAYER_PREPARED"

    invoke-direct {v0, v4, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 3305
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    const/4 v4, 0x3

    const-string v5, "PLAYER_BACKSTAGE"

    invoke-direct {v0, v5, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 3301
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    sget-object v5, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    aput-object v5, v0, v1

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARING:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->$VALUES:[Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3301
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3301
    const-class v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;
    .locals 1

    .line 3301
    sget-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->$VALUES:[Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-virtual {v0}, [Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    return-object v0
.end method
