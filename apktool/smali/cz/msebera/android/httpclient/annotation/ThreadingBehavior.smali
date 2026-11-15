.class public final enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.super Ljava/lang/Enum;
.source "ThreadingBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

.field public static final enum IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

.field public static final enum IMMUTABLE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

.field public static final enum SAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

.field public static final enum SAFE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

.field public static final enum UNSAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    const/4 v1, 0x0

    const-string v2, "IMMUTABLE"

    invoke-direct {v0, v2, v1}, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    .line 45
    new-instance v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    const/4 v2, 0x1

    const-string v3, "IMMUTABLE_CONDITIONAL"

    invoke-direct {v0, v3, v2}, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    .line 50
    new-instance v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    const/4 v3, 0x2

    const-string v4, "SAFE"

    invoke-direct {v0, v4, v3}, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    .line 56
    new-instance v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    const/4 v4, 0x3

    const-string v5, "SAFE_CONDITIONAL"

    invoke-direct {v0, v5, v4}, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    const/4 v5, 0x4

    const-string v6, "UNSAFE"

    invoke-direct {v0, v6, v5}, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->UNSAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    sget-object v6, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    aput-object v6, v0, v1

    sget-object v1, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    aput-object v1, v0, v4

    sget-object v1, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->UNSAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    aput-object v1, v0, v5

    sput-object v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->$VALUES:[Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    return-object v0
.end method

.method public static values()[Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
    .locals 1

    .line 32
    sget-object v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->$VALUES:[Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    return-object v0
.end method
