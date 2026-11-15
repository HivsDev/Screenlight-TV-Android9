.class public Lcz/msebera/android/httpclient/impl/client/LaxRedirectStrategy;
.super Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;
.source "LaxRedirectStrategy.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/client/LaxRedirectStrategy;

.field private static final REDIRECT_METHODS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/LaxRedirectStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/LaxRedirectStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/LaxRedirectStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/LaxRedirectStrategy;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "POST"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/LaxRedirectStrategy;->REDIRECT_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected isRedirectable(Ljava/lang/String;)Z
    .locals 6
    .param p1, "method"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/LaxRedirectStrategy;->REDIRECT_METHODS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 63
    .local v4, "m":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    const/4 v0, 0x1

    return v0

    .line 62
    .end local v4    # "m":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_1
    return v2
.end method
