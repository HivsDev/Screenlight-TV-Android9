.class public final enum Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;
.super Ljava/lang/Enum;
.source "VidPlayerConfigGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/VidPlayerConfigGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

.field public static final enum AliyunVodEncryption:Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

.field public static final enum HLSEncryption:Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

.field public static final enum Unencrypted:Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    const/4 v1, 0x0

    const-string v2, "Unencrypted"

    invoke-direct {v0, v2, v1}, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;->Unencrypted:Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    .line 48
    new-instance v0, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    const/4 v2, 0x1

    const-string v3, "AliyunVodEncryption"

    invoke-direct {v0, v3, v2}, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;->AliyunVodEncryption:Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    .line 55
    new-instance v0, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    const/4 v3, 0x2

    const-string v4, "HLSEncryption"

    invoke-direct {v0, v4, v3}, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;->HLSEncryption:Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    sget-object v4, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;->Unencrypted:Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;->AliyunVodEncryption:Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;->HLSEncryption:Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;->$VALUES:[Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;
    .locals 1

    .line 33
    sget-object v0, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;->$VALUES:[Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    invoke-virtual {v0}, [Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    return-object v0
.end method
