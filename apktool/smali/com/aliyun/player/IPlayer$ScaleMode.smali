.class public final enum Lcom/aliyun/player/IPlayer$ScaleMode;
.super Ljava/lang/Enum;
.source "IPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/IPlayer$ScaleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/IPlayer$ScaleMode;

.field public static final enum SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

.field public static final enum SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

.field public static final enum SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 603
    new-instance v0, Lcom/aliyun/player/IPlayer$ScaleMode;

    const/4 v1, 0x0

    const-string v2, "SCALE_ASPECT_FIT"

    invoke-direct {v0, v2, v1, v1}, Lcom/aliyun/player/IPlayer$ScaleMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 610
    new-instance v0, Lcom/aliyun/player/IPlayer$ScaleMode;

    const/4 v2, 0x1

    const-string v3, "SCALE_ASPECT_FILL"

    invoke-direct {v0, v3, v2, v2}, Lcom/aliyun/player/IPlayer$ScaleMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 617
    new-instance v0, Lcom/aliyun/player/IPlayer$ScaleMode;

    const/4 v3, 0x2

    const-string v4, "SCALE_TO_FILL"

    invoke-direct {v0, v4, v3, v3}, Lcom/aliyun/player/IPlayer$ScaleMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 595
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aliyun/player/IPlayer$ScaleMode;

    sget-object v4, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->$VALUES:[Lcom/aliyun/player/IPlayer$ScaleMode;

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

    .line 622
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 623
    iput p3, p0, Lcom/aliyun/player/IPlayer$ScaleMode;->mValue:I

    .line 624
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 595
    const-class v0, Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/IPlayer$ScaleMode;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 1

    .line 595
    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->$VALUES:[Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {v0}, [Lcom/aliyun/player/IPlayer$ScaleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/IPlayer$ScaleMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 637
    iget v0, p0, Lcom/aliyun/player/IPlayer$ScaleMode;->mValue:I

    return v0
.end method
