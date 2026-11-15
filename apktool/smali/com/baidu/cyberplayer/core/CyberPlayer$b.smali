.class final enum Lcom/baidu/cyberplayer/core/CyberPlayer$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/CyberPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/cyberplayer/core/CyberPlayer$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

.field private static final synthetic a:[Lcom/baidu/cyberplayer/core/CyberPlayer$b;

.field public static final enum b:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

.field public static final enum c:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

.field public static final enum d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 86
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    const/4 v1, 0x0

    const-string v2, "PLAYER_IDLE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/cyberplayer/core/CyberPlayer$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    const/4 v2, 0x1

    const-string v3, "PLAYER_SNIFFERMETADATA"

    invoke-direct {v0, v3, v2}, Lcom/baidu/cyberplayer/core/CyberPlayer$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    const/4 v3, 0x2

    const-string v4, "PLAYER_PREPARING"

    invoke-direct {v0, v4, v3}, Lcom/baidu/cyberplayer/core/CyberPlayer$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->c:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    const/4 v4, 0x3

    const-string v5, "PLAYER_PLAYING"

    invoke-direct {v0, v5, v4}, Lcom/baidu/cyberplayer/core/CyberPlayer$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    sget-object v5, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    aput-object v5, v0, v1

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->c:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->d:Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:[Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/cyberplayer/core/CyberPlayer$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 85
    const-class v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    return-object v0
.end method

.method public static values()[Lcom/baidu/cyberplayer/core/CyberPlayer$b;
    .locals 1

    .line 85
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayer$b;->a:[Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    invoke-virtual {v0}, [Lcom/baidu/cyberplayer/core/CyberPlayer$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/cyberplayer/core/CyberPlayer$b;

    return-object v0
.end method
