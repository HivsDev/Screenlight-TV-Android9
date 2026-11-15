.class public final enum Lcom/umeng/analytics/e/a$e;
.super Ljava/lang/Enum;
.source "UMEnvelope.java"

# interfaces
.implements Lcom/umeng/a/a/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/e/a$e;",
        ">;",
        "Lcom/umeng/a/a/a/k;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/e/a$e;

.field public static final enum b:Lcom/umeng/analytics/e/a$e;

.field public static final enum c:Lcom/umeng/analytics/e/a$e;

.field public static final enum d:Lcom/umeng/analytics/e/a$e;

.field public static final enum e:Lcom/umeng/analytics/e/a$e;

.field public static final enum f:Lcom/umeng/analytics/e/a$e;

.field public static final enum g:Lcom/umeng/analytics/e/a$e;

.field public static final enum h:Lcom/umeng/analytics/e/a$e;

.field public static final enum i:Lcom/umeng/analytics/e/a$e;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/e/a$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic m:[Lcom/umeng/analytics/e/a$e;


# instance fields
.field private final k:S

.field private final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 64
    new-instance v0, Lcom/umeng/analytics/e/a$e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "VERSION"

    const-string/jumbo v4, "version"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/umeng/analytics/e/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/e/a$e;->a:Lcom/umeng/analytics/e/a$e;

    .line 65
    new-instance v0, Lcom/umeng/analytics/e/a$e;

    const/4 v3, 0x2

    const-string v4, "ADDRESS"

    const-string v5, "address"

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/umeng/analytics/e/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/e/a$e;->b:Lcom/umeng/analytics/e/a$e;

    .line 66
    new-instance v0, Lcom/umeng/analytics/e/a$e;

    const/4 v4, 0x3

    const-string v5, "SIGNATURE"

    const-string v6, "signature"

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/umeng/analytics/e/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/e/a$e;->c:Lcom/umeng/analytics/e/a$e;

    .line 67
    new-instance v0, Lcom/umeng/analytics/e/a$e;

    const/4 v5, 0x4

    const-string v6, "SERIAL_NUM"

    const-string v7, "serial_num"

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/umeng/analytics/e/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/e/a$e;->d:Lcom/umeng/analytics/e/a$e;

    .line 68
    new-instance v0, Lcom/umeng/analytics/e/a$e;

    const/4 v6, 0x5

    const-string v7, "TS_SECS"

    const-string v8, "ts_secs"

    invoke-direct {v0, v7, v5, v6, v8}, Lcom/umeng/analytics/e/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/e/a$e;->e:Lcom/umeng/analytics/e/a$e;

    .line 69
    new-instance v0, Lcom/umeng/analytics/e/a$e;

    const/4 v7, 0x6

    const-string v8, "LENGTH"

    const-string v9, "length"

    invoke-direct {v0, v8, v6, v7, v9}, Lcom/umeng/analytics/e/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/e/a$e;->f:Lcom/umeng/analytics/e/a$e;

    .line 70
    new-instance v0, Lcom/umeng/analytics/e/a$e;

    const/4 v8, 0x7

    const-string v9, "ENTITY"

    const-string v10, "entity"

    invoke-direct {v0, v9, v7, v8, v10}, Lcom/umeng/analytics/e/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/e/a$e;->g:Lcom/umeng/analytics/e/a$e;

    .line 71
    new-instance v0, Lcom/umeng/analytics/e/a$e;

    const/16 v9, 0x8

    const-string v10, "GUID"

    const-string v11, "guid"

    invoke-direct {v0, v10, v8, v9, v11}, Lcom/umeng/analytics/e/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/e/a$e;->h:Lcom/umeng/analytics/e/a$e;

    .line 72
    new-instance v0, Lcom/umeng/analytics/e/a$e;

    const/16 v10, 0x9

    const-string v11, "CHECKSUM"

    const-string v12, "checksum"

    invoke-direct {v0, v11, v9, v10, v12}, Lcom/umeng/analytics/e/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/e/a$e;->i:Lcom/umeng/analytics/e/a$e;

    .line 63
    new-array v0, v10, [Lcom/umeng/analytics/e/a$e;

    sget-object v10, Lcom/umeng/analytics/e/a$e;->a:Lcom/umeng/analytics/e/a$e;

    aput-object v10, v0, v1

    sget-object v1, Lcom/umeng/analytics/e/a$e;->b:Lcom/umeng/analytics/e/a$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/e/a$e;->c:Lcom/umeng/analytics/e/a$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/e/a$e;->d:Lcom/umeng/analytics/e/a$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/e/a$e;->e:Lcom/umeng/analytics/e/a$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/analytics/e/a$e;->f:Lcom/umeng/analytics/e/a$e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/analytics/e/a$e;->g:Lcom/umeng/analytics/e/a$e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/umeng/analytics/e/a$e;->h:Lcom/umeng/analytics/e/a$e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/umeng/analytics/e/a$e;->i:Lcom/umeng/analytics/e/a$e;

    aput-object v1, v0, v9

    sput-object v0, Lcom/umeng/analytics/e/a$e;->m:[Lcom/umeng/analytics/e/a$e;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/e/a$e;->j:Ljava/util/Map;

    .line 77
    const-class v0, Lcom/umeng/analytics/e/a$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/e/a$e;

    .line 78
    sget-object v2, Lcom/umeng/analytics/e/a$e;->j:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/analytics/e/a$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    iput-short p3, p0, Lcom/umeng/analytics/e/a$e;->k:S

    .line 132
    iput-object p4, p0, Lcom/umeng/analytics/e/a$e;->l:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public static a(I)Lcom/umeng/analytics/e/a$e;
    .locals 0

    .line 86
    packed-switch p0, :pswitch_data_0

    .line 106
    const/4 p0, 0x0

    return-object p0

    .line 104
    :pswitch_0
    sget-object p0, Lcom/umeng/analytics/e/a$e;->i:Lcom/umeng/analytics/e/a$e;

    return-object p0

    .line 102
    :pswitch_1
    sget-object p0, Lcom/umeng/analytics/e/a$e;->h:Lcom/umeng/analytics/e/a$e;

    return-object p0

    .line 100
    :pswitch_2
    sget-object p0, Lcom/umeng/analytics/e/a$e;->g:Lcom/umeng/analytics/e/a$e;

    return-object p0

    .line 98
    :pswitch_3
    sget-object p0, Lcom/umeng/analytics/e/a$e;->f:Lcom/umeng/analytics/e/a$e;

    return-object p0

    .line 96
    :pswitch_4
    sget-object p0, Lcom/umeng/analytics/e/a$e;->e:Lcom/umeng/analytics/e/a$e;

    return-object p0

    .line 94
    :pswitch_5
    sget-object p0, Lcom/umeng/analytics/e/a$e;->d:Lcom/umeng/analytics/e/a$e;

    return-object p0

    .line 92
    :pswitch_6
    sget-object p0, Lcom/umeng/analytics/e/a$e;->c:Lcom/umeng/analytics/e/a$e;

    return-object p0

    .line 90
    :pswitch_7
    sget-object p0, Lcom/umeng/analytics/e/a$e;->b:Lcom/umeng/analytics/e/a$e;

    return-object p0

    .line 88
    :pswitch_8
    sget-object p0, Lcom/umeng/analytics/e/a$e;->a:Lcom/umeng/analytics/e/a$e;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/analytics/e/a$e;
    .locals 1

    .line 124
    sget-object v0, Lcom/umeng/analytics/e/a$e;->j:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/e/a$e;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/analytics/e/a$e;
    .locals 3

    .line 115
    invoke-static {p0}, Lcom/umeng/analytics/e/a$e;->a(I)Lcom/umeng/analytics/e/a$e;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/e/a$e;
    .locals 1

    .line 63
    const-class v0, Lcom/umeng/analytics/e/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/e/a$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/e/a$e;
    .locals 1

    .line 63
    sget-object v0, Lcom/umeng/analytics/e/a$e;->m:[Lcom/umeng/analytics/e/a$e;

    invoke-virtual {v0}, [Lcom/umeng/analytics/e/a$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/e/a$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 136
    iget-short v0, p0, Lcom/umeng/analytics/e/a$e;->k:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/umeng/analytics/e/a$e;->l:Ljava/lang/String;

    return-object v0
.end method
