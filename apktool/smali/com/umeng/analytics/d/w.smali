.class public final enum Lcom/umeng/analytics/d/w;
.super Ljava/lang/Enum;
.source "SDKType.java"

# interfaces
.implements Lcom/umeng/a/a/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/d/w;",
        ">;",
        "Lcom/umeng/a/a/a/h;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/d/w;

.field public static final enum b:Lcom/umeng/analytics/d/w;

.field public static final enum c:Lcom/umeng/analytics/d/w;

.field public static final enum d:Lcom/umeng/analytics/d/w;

.field private static final synthetic f:[Lcom/umeng/analytics/d/w;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/umeng/analytics/d/w;

    const/4 v1, 0x0

    const-string v2, "ANDROID"

    invoke-direct {v0, v2, v1, v1}, Lcom/umeng/analytics/d/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/d/w;->a:Lcom/umeng/analytics/d/w;

    .line 16
    new-instance v0, Lcom/umeng/analytics/d/w;

    const/4 v2, 0x1

    const-string v3, "IOS"

    invoke-direct {v0, v3, v2, v2}, Lcom/umeng/analytics/d/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/d/w;->b:Lcom/umeng/analytics/d/w;

    .line 17
    new-instance v0, Lcom/umeng/analytics/d/w;

    const/4 v3, 0x2

    const-string v4, "WINDOWS_PHONE"

    invoke-direct {v0, v4, v3, v3}, Lcom/umeng/analytics/d/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/d/w;->c:Lcom/umeng/analytics/d/w;

    .line 18
    new-instance v0, Lcom/umeng/analytics/d/w;

    const/4 v4, 0x3

    const-string v5, "WINDOWS_RT"

    invoke-direct {v0, v5, v4, v4}, Lcom/umeng/analytics/d/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/d/w;->d:Lcom/umeng/analytics/d/w;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/umeng/analytics/d/w;

    sget-object v5, Lcom/umeng/analytics/d/w;->a:Lcom/umeng/analytics/d/w;

    aput-object v5, v0, v1

    sget-object v1, Lcom/umeng/analytics/d/w;->b:Lcom/umeng/analytics/d/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/d/w;->c:Lcom/umeng/analytics/d/w;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/d/w;->d:Lcom/umeng/analytics/d/w;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/analytics/d/w;->f:[Lcom/umeng/analytics/d/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/umeng/analytics/d/w;->e:I

    .line 24
    return-void
.end method

.method public static a(I)Lcom/umeng/analytics/d/w;
    .locals 1

    .line 38
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 48
    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    sget-object p0, Lcom/umeng/analytics/d/w;->d:Lcom/umeng/analytics/d/w;

    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lcom/umeng/analytics/d/w;->c:Lcom/umeng/analytics/d/w;

    return-object p0

    .line 42
    :cond_2
    sget-object p0, Lcom/umeng/analytics/d/w;->b:Lcom/umeng/analytics/d/w;

    return-object p0

    .line 40
    :cond_3
    sget-object p0, Lcom/umeng/analytics/d/w;->a:Lcom/umeng/analytics/d/w;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/d/w;
    .locals 1

    .line 14
    const-class v0, Lcom/umeng/analytics/d/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/w;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/d/w;
    .locals 1

    .line 14
    sget-object v0, Lcom/umeng/analytics/d/w;->f:[Lcom/umeng/analytics/d/w;

    invoke-virtual {v0}, [Lcom/umeng/analytics/d/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/d/w;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/umeng/analytics/d/w;->e:I

    return v0
.end method
