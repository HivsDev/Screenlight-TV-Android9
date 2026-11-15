.class public final enum Lcom/aliyun/player/source/Definition;
.super Ljava/lang/Enum;
.source "Definition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/source/Definition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_2K:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_4K:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_AUTO:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_FD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_HD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_HQ:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_LD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_OD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_SD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_SQ:Lcom/aliyun/player/source/Definition;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 11
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const/4 v1, 0x0

    const-string v2, "DEFINITION_FD"

    const-string v3, "FD"

    invoke-direct {v0, v2, v1, v3}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_FD:Lcom/aliyun/player/source/Definition;

    .line 15
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const/4 v2, 0x1

    const-string v3, "DEFINITION_LD"

    const-string v4, "LD"

    invoke-direct {v0, v3, v2, v4}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_LD:Lcom/aliyun/player/source/Definition;

    .line 19
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const/4 v3, 0x2

    const-string v4, "DEFINITION_SD"

    const-string v5, "SD"

    invoke-direct {v0, v4, v3, v5}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_SD:Lcom/aliyun/player/source/Definition;

    .line 23
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const/4 v4, 0x3

    const-string v5, "DEFINITION_HD"

    const-string v6, "HD"

    invoke-direct {v0, v5, v4, v6}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_HD:Lcom/aliyun/player/source/Definition;

    .line 27
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const/4 v5, 0x4

    const-string v6, "DEFINITION_OD"

    const-string v7, "OD"

    invoke-direct {v0, v6, v5, v7}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_OD:Lcom/aliyun/player/source/Definition;

    .line 31
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const/4 v6, 0x5

    const-string v7, "DEFINITION_2K"

    const-string v8, "2K"

    invoke-direct {v0, v7, v6, v8}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_2K:Lcom/aliyun/player/source/Definition;

    .line 35
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const/4 v7, 0x6

    const-string v8, "DEFINITION_4K"

    const-string v9, "4K"

    invoke-direct {v0, v8, v7, v9}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_4K:Lcom/aliyun/player/source/Definition;

    .line 39
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const/4 v8, 0x7

    const-string v9, "DEFINITION_SQ"

    const-string v10, "SQ"

    invoke-direct {v0, v9, v8, v10}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_SQ:Lcom/aliyun/player/source/Definition;

    .line 43
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const/16 v9, 0x8

    const-string v10, "DEFINITION_HQ"

    const-string v11, "HQ"

    invoke-direct {v0, v10, v9, v11}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_HQ:Lcom/aliyun/player/source/Definition;

    .line 47
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const/16 v10, 0x9

    const-string v11, "DEFINITION_AUTO"

    const-string v12, "AUTO"

    invoke-direct {v0, v11, v10, v12}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_AUTO:Lcom/aliyun/player/source/Definition;

    .line 6
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/aliyun/player/source/Definition;

    sget-object v11, Lcom/aliyun/player/source/Definition;->DEFINITION_FD:Lcom/aliyun/player/source/Definition;

    aput-object v11, v0, v1

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_LD:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_SD:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_HD:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_OD:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_2K:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_4K:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_SQ:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v8

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_HQ:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v9

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_AUTO:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v10

    sput-object v0, Lcom/aliyun/player/source/Definition;->$VALUES:[Lcom/aliyun/player/source/Definition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/aliyun/player/source/Definition;->mName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/source/Definition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/aliyun/player/source/Definition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/source/Definition;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/source/Definition;
    .locals 1

    .line 6
    sget-object v0, Lcom/aliyun/player/source/Definition;->$VALUES:[Lcom/aliyun/player/source/Definition;

    invoke-virtual {v0}, [Lcom/aliyun/player/source/Definition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/source/Definition;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/aliyun/player/source/Definition;->mName:Ljava/lang/String;

    return-object v0
.end method
