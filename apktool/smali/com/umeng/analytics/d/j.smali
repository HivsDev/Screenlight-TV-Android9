.class public final enum Lcom/umeng/analytics/d/j;
.super Ljava/lang/Enum;
.source "Gender.java"

# interfaces
.implements Lcom/umeng/a/a/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/d/j;",
        ">;",
        "Lcom/umeng/a/a/a/h;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/d/j;

.field public static final enum b:Lcom/umeng/analytics/d/j;

.field public static final enum c:Lcom/umeng/analytics/d/j;

.field private static final synthetic e:[Lcom/umeng/analytics/d/j;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/umeng/analytics/d/j;

    const/4 v1, 0x0

    const-string v2, "MALE"

    invoke-direct {v0, v2, v1, v1}, Lcom/umeng/analytics/d/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/d/j;->a:Lcom/umeng/analytics/d/j;

    .line 16
    new-instance v0, Lcom/umeng/analytics/d/j;

    const/4 v2, 0x1

    const-string v3, "FEMALE"

    invoke-direct {v0, v3, v2, v2}, Lcom/umeng/analytics/d/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/d/j;->b:Lcom/umeng/analytics/d/j;

    .line 17
    new-instance v0, Lcom/umeng/analytics/d/j;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3, v3}, Lcom/umeng/analytics/d/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/d/j;->c:Lcom/umeng/analytics/d/j;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/umeng/analytics/d/j;

    sget-object v4, Lcom/umeng/analytics/d/j;->a:Lcom/umeng/analytics/d/j;

    aput-object v4, v0, v1

    sget-object v1, Lcom/umeng/analytics/d/j;->b:Lcom/umeng/analytics/d/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/d/j;->c:Lcom/umeng/analytics/d/j;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/analytics/d/j;->e:[Lcom/umeng/analytics/d/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/umeng/analytics/d/j;->d:I

    .line 23
    return-void
.end method

.method public static a(I)Lcom/umeng/analytics/d/j;
    .locals 1

    .line 37
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    sget-object p0, Lcom/umeng/analytics/d/j;->c:Lcom/umeng/analytics/d/j;

    return-object p0

    .line 41
    :cond_1
    sget-object p0, Lcom/umeng/analytics/d/j;->b:Lcom/umeng/analytics/d/j;

    return-object p0

    .line 39
    :cond_2
    sget-object p0, Lcom/umeng/analytics/d/j;->a:Lcom/umeng/analytics/d/j;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/d/j;
    .locals 1

    .line 14
    const-class v0, Lcom/umeng/analytics/d/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/j;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/d/j;
    .locals 1

    .line 14
    sget-object v0, Lcom/umeng/analytics/d/j;->e:[Lcom/umeng/analytics/d/j;

    invoke-virtual {v0}, [Lcom/umeng/analytics/d/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/d/j;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/umeng/analytics/d/j;->d:I

    return v0
.end method
