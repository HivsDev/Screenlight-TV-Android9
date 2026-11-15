.class public Lcom/shenma/tvlauncher/Api;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field public static APPID:Ljava/lang/String;

.field public static COS_MIAN_URL:Ljava/lang/String;

.field public static MIAN_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const-string v0, "blVFMHBRYmlZbVZqWnY0a0JReGhaR1JoWndINkFHVmtZM0UyWnY1ZHAyOWg="

    sput-object v0, Lcom/shenma/tvlauncher/Api;->COS_MIAN_URL:Ljava/lang/String;

    .line 8
    const-string v0, "blVFMHBRYmlZbVIxWlA0a1ptdGhBbXBoWndObUJ3dDRaUVJp"

    sput-object v0, Lcom/shenma/tvlauncher/Api;->MIAN_URL:Ljava/lang/String;

    .line 10
    const-string v0, "10000"

    sput-object v0, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
