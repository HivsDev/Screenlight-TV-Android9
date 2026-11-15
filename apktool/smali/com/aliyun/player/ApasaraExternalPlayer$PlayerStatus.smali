.class public final enum Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
.super Ljava/lang/Enum;
.source "ApasaraExternalPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApasaraExternalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_INITIALZED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_PREPARING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_PREPARINIT:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 56
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v1, 0x0

    const-string v2, "PLAYER_IDLE"

    invoke-direct {v0, v2, v1, v1}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 57
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x1

    const-string v3, "PLAYER_INITIALZED"

    invoke-direct {v0, v3, v2, v2}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_INITIALZED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 58
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v3, 0x2

    const-string v4, "PLAYER_PREPARINIT"

    invoke-direct {v0, v4, v3, v3}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARINIT:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 59
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v4, 0x3

    const-string v5, "PLAYER_PREPARING"

    invoke-direct {v0, v5, v4, v4}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 60
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v5, 0x4

    const-string v6, "PLAYER_PREPARED"

    invoke-direct {v0, v6, v5, v5}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 61
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v6, 0x5

    const-string v7, "PLAYER_PLAYING"

    invoke-direct {v0, v7, v6, v6}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 62
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v7, 0x6

    const-string v8, "PLAYER_PAUSED"

    invoke-direct {v0, v8, v7, v7}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 63
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v8, 0x7

    const-string v9, "PLAYER_STOPPED"

    invoke-direct {v0, v9, v8, v8}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 64
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/16 v9, 0x8

    const-string v10, "PLAYER_COMPLETION"

    invoke-direct {v0, v10, v9, v9}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 65
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/16 v10, 0x9

    const-string v11, "PLAYER_ERROR"

    const/16 v12, 0x63

    invoke-direct {v0, v11, v10, v12}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 55
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v11, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    aput-object v11, v0, v1

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_INITIALZED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARINIT:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    aput-object v1, v0, v10

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

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

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    const/4 p1, 0x0

    iput p1, p0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->mValue:I

    .line 72
    iput p3, p0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->mValue:I

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
    .locals 1

    .line 55
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-virtual {v0}, [Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->mValue:I

    return v0
.end method
