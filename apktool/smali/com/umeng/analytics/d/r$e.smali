.class public final enum Lcom/umeng/analytics/d/r$e;
.super Ljava/lang/Enum;
.source "MiscInfo.java"

# interfaces
.implements Lcom/umeng/a/a/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/d/r$e;",
        ">;",
        "Lcom/umeng/a/a/a/k;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/d/r$e;

.field public static final enum b:Lcom/umeng/analytics/d/r$e;

.field public static final enum c:Lcom/umeng/analytics/d/r$e;

.field public static final enum d:Lcom/umeng/analytics/d/r$e;

.field public static final enum e:Lcom/umeng/analytics/d/r$e;

.field public static final enum f:Lcom/umeng/analytics/d/r$e;

.field public static final enum g:Lcom/umeng/analytics/d/r$e;

.field public static final enum h:Lcom/umeng/analytics/d/r$e;

.field public static final enum i:Lcom/umeng/analytics/d/r$e;

.field public static final enum j:Lcom/umeng/analytics/d/r$e;

.field public static final enum k:Lcom/umeng/analytics/d/r$e;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/r$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic o:[Lcom/umeng/analytics/d/r$e;


# instance fields
.field private final m:S

.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 70
    new-instance v0, Lcom/umeng/analytics/d/r$e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "TIME_ZONE"

    const-string v4, "time_zone"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/umeng/analytics/d/r$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/r$e;->a:Lcom/umeng/analytics/d/r$e;

    .line 71
    new-instance v0, Lcom/umeng/analytics/d/r$e;

    const/4 v3, 0x2

    const-string v4, "LANGUAGE"

    const-string v5, "language"

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/umeng/analytics/d/r$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/r$e;->b:Lcom/umeng/analytics/d/r$e;

    .line 72
    new-instance v0, Lcom/umeng/analytics/d/r$e;

    const/4 v4, 0x3

    const-string v5, "COUNTRY"

    const-string v6, "country"

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/umeng/analytics/d/r$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/r$e;->c:Lcom/umeng/analytics/d/r$e;

    .line 73
    new-instance v0, Lcom/umeng/analytics/d/r$e;

    const/4 v5, 0x4

    const-string v6, "LATITUDE"

    const-string v7, "latitude"

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/umeng/analytics/d/r$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/r$e;->d:Lcom/umeng/analytics/d/r$e;

    .line 74
    new-instance v0, Lcom/umeng/analytics/d/r$e;

    const/4 v6, 0x5

    const-string v7, "LONGITUDE"

    const-string v8, "longitude"

    invoke-direct {v0, v7, v5, v6, v8}, Lcom/umeng/analytics/d/r$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/r$e;->e:Lcom/umeng/analytics/d/r$e;

    .line 75
    new-instance v0, Lcom/umeng/analytics/d/r$e;

    const/4 v7, 0x6

    const-string v8, "CARRIER"

    const-string v9, "carrier"

    invoke-direct {v0, v8, v6, v7, v9}, Lcom/umeng/analytics/d/r$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/r$e;->f:Lcom/umeng/analytics/d/r$e;

    .line 76
    new-instance v0, Lcom/umeng/analytics/d/r$e;

    const/4 v8, 0x7

    const-string v9, "LATENCY"

    const-string v10, "latency"

    invoke-direct {v0, v9, v7, v8, v10}, Lcom/umeng/analytics/d/r$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/r$e;->g:Lcom/umeng/analytics/d/r$e;

    .line 77
    new-instance v0, Lcom/umeng/analytics/d/r$e;

    const/16 v9, 0x8

    const-string v10, "DISPLAY_NAME"

    const-string v11, "display_name"

    invoke-direct {v0, v10, v8, v9, v11}, Lcom/umeng/analytics/d/r$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/r$e;->h:Lcom/umeng/analytics/d/r$e;

    .line 82
    new-instance v0, Lcom/umeng/analytics/d/r$e;

    const/16 v10, 0x9

    const-string v11, "ACCESS_TYPE"

    const-string v12, "access_type"

    invoke-direct {v0, v11, v9, v10, v12}, Lcom/umeng/analytics/d/r$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/r$e;->i:Lcom/umeng/analytics/d/r$e;

    .line 83
    new-instance v0, Lcom/umeng/analytics/d/r$e;

    const/16 v11, 0xa

    const-string v12, "ACCESS_SUBTYPE"

    const-string v13, "access_subtype"

    invoke-direct {v0, v12, v10, v11, v13}, Lcom/umeng/analytics/d/r$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/r$e;->j:Lcom/umeng/analytics/d/r$e;

    .line 84
    new-instance v0, Lcom/umeng/analytics/d/r$e;

    const/16 v12, 0xb

    const-string v13, "USER_INFO"

    const-string/jumbo v14, "user_info"

    invoke-direct {v0, v13, v11, v12, v14}, Lcom/umeng/analytics/d/r$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/r$e;->k:Lcom/umeng/analytics/d/r$e;

    .line 69
    new-array v0, v12, [Lcom/umeng/analytics/d/r$e;

    sget-object v12, Lcom/umeng/analytics/d/r$e;->a:Lcom/umeng/analytics/d/r$e;

    aput-object v12, v0, v1

    sget-object v1, Lcom/umeng/analytics/d/r$e;->b:Lcom/umeng/analytics/d/r$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/d/r$e;->c:Lcom/umeng/analytics/d/r$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/d/r$e;->d:Lcom/umeng/analytics/d/r$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/d/r$e;->e:Lcom/umeng/analytics/d/r$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/analytics/d/r$e;->f:Lcom/umeng/analytics/d/r$e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/analytics/d/r$e;->g:Lcom/umeng/analytics/d/r$e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/umeng/analytics/d/r$e;->h:Lcom/umeng/analytics/d/r$e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/umeng/analytics/d/r$e;->i:Lcom/umeng/analytics/d/r$e;

    aput-object v1, v0, v9

    sget-object v1, Lcom/umeng/analytics/d/r$e;->j:Lcom/umeng/analytics/d/r$e;

    aput-object v1, v0, v10

    sget-object v1, Lcom/umeng/analytics/d/r$e;->k:Lcom/umeng/analytics/d/r$e;

    aput-object v1, v0, v11

    sput-object v0, Lcom/umeng/analytics/d/r$e;->o:[Lcom/umeng/analytics/d/r$e;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/r$e;->l:Ljava/util/Map;

    .line 89
    const-class v0, Lcom/umeng/analytics/d/r$e;

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

    check-cast v1, Lcom/umeng/analytics/d/r$e;

    .line 90
    sget-object v2, Lcom/umeng/analytics/d/r$e;->l:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/r$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    goto :goto_0

    .line 92
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

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput-short p3, p0, Lcom/umeng/analytics/d/r$e;->m:S

    .line 148
    iput-object p4, p0, Lcom/umeng/analytics/d/r$e;->n:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public static a(I)Lcom/umeng/analytics/d/r$e;
    .locals 0

    .line 98
    packed-switch p0, :pswitch_data_0

    .line 122
    const/4 p0, 0x0

    return-object p0

    .line 120
    :pswitch_0
    sget-object p0, Lcom/umeng/analytics/d/r$e;->k:Lcom/umeng/analytics/d/r$e;

    return-object p0

    .line 118
    :pswitch_1
    sget-object p0, Lcom/umeng/analytics/d/r$e;->j:Lcom/umeng/analytics/d/r$e;

    return-object p0

    .line 116
    :pswitch_2
    sget-object p0, Lcom/umeng/analytics/d/r$e;->i:Lcom/umeng/analytics/d/r$e;

    return-object p0

    .line 114
    :pswitch_3
    sget-object p0, Lcom/umeng/analytics/d/r$e;->h:Lcom/umeng/analytics/d/r$e;

    return-object p0

    .line 112
    :pswitch_4
    sget-object p0, Lcom/umeng/analytics/d/r$e;->g:Lcom/umeng/analytics/d/r$e;

    return-object p0

    .line 110
    :pswitch_5
    sget-object p0, Lcom/umeng/analytics/d/r$e;->f:Lcom/umeng/analytics/d/r$e;

    return-object p0

    .line 108
    :pswitch_6
    sget-object p0, Lcom/umeng/analytics/d/r$e;->e:Lcom/umeng/analytics/d/r$e;

    return-object p0

    .line 106
    :pswitch_7
    sget-object p0, Lcom/umeng/analytics/d/r$e;->d:Lcom/umeng/analytics/d/r$e;

    return-object p0

    .line 104
    :pswitch_8
    sget-object p0, Lcom/umeng/analytics/d/r$e;->c:Lcom/umeng/analytics/d/r$e;

    return-object p0

    .line 102
    :pswitch_9
    sget-object p0, Lcom/umeng/analytics/d/r$e;->b:Lcom/umeng/analytics/d/r$e;

    return-object p0

    .line 100
    :pswitch_a
    sget-object p0, Lcom/umeng/analytics/d/r$e;->a:Lcom/umeng/analytics/d/r$e;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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

.method public static a(Ljava/lang/String;)Lcom/umeng/analytics/d/r$e;
    .locals 1

    .line 140
    sget-object v0, Lcom/umeng/analytics/d/r$e;->l:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/r$e;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/analytics/d/r$e;
    .locals 3

    .line 131
    invoke-static {p0}, Lcom/umeng/analytics/d/r$e;->a(I)Lcom/umeng/analytics/d/r$e;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    return-object v0

    .line 132
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

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/d/r$e;
    .locals 1

    .line 69
    const-class v0, Lcom/umeng/analytics/d/r$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/r$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/d/r$e;
    .locals 1

    .line 69
    sget-object v0, Lcom/umeng/analytics/d/r$e;->o:[Lcom/umeng/analytics/d/r$e;

    invoke-virtual {v0}, [Lcom/umeng/analytics/d/r$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/d/r$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 152
    iget-short v0, p0, Lcom/umeng/analytics/d/r$e;->m:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/umeng/analytics/d/r$e;->n:Ljava/lang/String;

    return-object v0
.end method
