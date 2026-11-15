.class public enum Lcom/umeng/analytics/social/UMPlatformData$UMedia;
.super Ljava/lang/Enum;
.source "UMPlatformData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/social/UMPlatformData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "UMedia"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/social/UMPlatformData$UMedia;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOUBAN:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum RENREN:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum SINA_WEIBO:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum TENCENT_QQ:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum TENCENT_QZONE:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum TENCENT_WEIBO:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum WEIXIN_CIRCLE:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum WEIXIN_FRIENDS:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field private static final synthetic a:[Lcom/umeng/analytics/social/UMPlatformData$UMedia;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 15
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$1;

    const/4 v1, 0x0

    const-string v2, "SINA_WEIBO"

    invoke-direct {v0, v2, v1}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->SINA_WEIBO:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 21
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$2;

    const/4 v2, 0x1

    const-string v3, "TENCENT_WEIBO"

    invoke-direct {v0, v3, v2}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->TENCENT_WEIBO:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 27
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$3;

    const/4 v3, 0x2

    const-string v4, "TENCENT_QZONE"

    invoke-direct {v0, v4, v3}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->TENCENT_QZONE:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 33
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$4;

    const/4 v4, 0x3

    const-string v5, "TENCENT_QQ"

    invoke-direct {v0, v5, v4}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->TENCENT_QQ:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 39
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$5;

    const/4 v5, 0x4

    const-string v6, "WEIXIN_FRIENDS"

    invoke-direct {v0, v6, v5}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->WEIXIN_FRIENDS:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 45
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$6;

    const/4 v6, 0x5

    const-string v7, "WEIXIN_CIRCLE"

    invoke-direct {v0, v7, v6}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->WEIXIN_CIRCLE:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 51
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$7;

    const/4 v7, 0x6

    const-string v8, "RENREN"

    invoke-direct {v0, v8, v7}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->RENREN:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 57
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$8;

    const/4 v8, 0x7

    const-string v9, "DOUBAN"

    invoke-direct {v0, v9, v8}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->DOUBAN:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    sget-object v9, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->SINA_WEIBO:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v9, v0, v1

    sget-object v1, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->TENCENT_WEIBO:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->TENCENT_QZONE:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->TENCENT_QQ:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->WEIXIN_FRIENDS:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->WEIXIN_CIRCLE:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->RENREN:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v1, v0, v7

    sget-object v1, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->DOUBAN:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v1, v0, v8

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->a:[Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/analytics/social/UMPlatformData$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/social/UMPlatformData$UMedia;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/social/UMPlatformData$UMedia;
    .locals 1

    .line 14
    const-class v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/social/UMPlatformData$UMedia;
    .locals 1

    .line 14
    sget-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->a:[Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    invoke-virtual {v0}, [Lcom/umeng/analytics/social/UMPlatformData$UMedia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    return-object v0
.end method
