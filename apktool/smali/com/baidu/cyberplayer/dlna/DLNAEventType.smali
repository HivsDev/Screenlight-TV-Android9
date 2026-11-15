.class public final enum Lcom/baidu/cyberplayer/dlna/DLNAEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/cyberplayer/dlna/DLNAEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTENT_DIRECTORY_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

.field public static final enum DURATION_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

.field public static final enum POSITION_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

.field public static final enum RENDER_STATE_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

.field public static final enum RENDER_TIMEOUT:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

.field public static final enum SERVER_TIMEOUT:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

.field public static final enum SOURCE_CHANGE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

.field public static final enum SYNC_SUCCESS:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

.field private static final synthetic a:[Lcom/baidu/cyberplayer/dlna/DLNAEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    const/4 v1, 0x0

    const-string v2, "RENDER_STATE_UPDATE"

    invoke-direct {v0, v2, v1}, Lcom/baidu/cyberplayer/dlna/DLNAEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->RENDER_STATE_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    .line 5
    new-instance v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    const/4 v2, 0x1

    const-string v3, "DURATION_UPDATE"

    invoke-direct {v0, v3, v2}, Lcom/baidu/cyberplayer/dlna/DLNAEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->DURATION_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    .line 6
    new-instance v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    const/4 v3, 0x2

    const-string v4, "POSITION_UPDATE"

    invoke-direct {v0, v4, v3}, Lcom/baidu/cyberplayer/dlna/DLNAEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->POSITION_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    .line 7
    new-instance v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    const/4 v4, 0x3

    const-string v5, "SOURCE_CHANGE"

    invoke-direct {v0, v5, v4}, Lcom/baidu/cyberplayer/dlna/DLNAEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->SOURCE_CHANGE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    .line 8
    new-instance v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    const/4 v5, 0x4

    const-string v6, "SYNC_SUCCESS"

    invoke-direct {v0, v6, v5}, Lcom/baidu/cyberplayer/dlna/DLNAEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->SYNC_SUCCESS:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    .line 9
    new-instance v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    const/4 v6, 0x5

    const-string v7, "CONTENT_DIRECTORY_UPDATE"

    invoke-direct {v0, v7, v6}, Lcom/baidu/cyberplayer/dlna/DLNAEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->CONTENT_DIRECTORY_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    .line 10
    new-instance v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    const/4 v7, 0x6

    const-string v8, "RENDER_TIMEOUT"

    invoke-direct {v0, v8, v7}, Lcom/baidu/cyberplayer/dlna/DLNAEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->RENDER_TIMEOUT:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    .line 11
    new-instance v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    const/4 v8, 0x7

    const-string v9, "SERVER_TIMEOUT"

    invoke-direct {v0, v9, v8}, Lcom/baidu/cyberplayer/dlna/DLNAEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->SERVER_TIMEOUT:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    sget-object v9, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->RENDER_STATE_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    aput-object v9, v0, v1

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->DURATION_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->POSITION_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->SOURCE_CHANGE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->SYNC_SUCCESS:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->CONTENT_DIRECTORY_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->RENDER_TIMEOUT:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->SERVER_TIMEOUT:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->a:[Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/cyberplayer/dlna/DLNAEventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/cyberplayer/dlna/DLNAEventType;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->a:[Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    invoke-virtual {v0}, [Lcom/baidu/cyberplayer/dlna/DLNAEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    return-object v0
.end method
