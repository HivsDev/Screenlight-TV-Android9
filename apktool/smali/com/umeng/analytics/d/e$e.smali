.class public final enum Lcom/umeng/analytics/d/e$e;
.super Ljava/lang/Enum;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/umeng/a/a/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/d/e$e;",
        ">;",
        "Lcom/umeng/a/a/a/k;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/d/e$e;

.field public static final enum b:Lcom/umeng/analytics/d/e$e;

.field public static final enum c:Lcom/umeng/analytics/d/e$e;

.field public static final enum d:Lcom/umeng/analytics/d/e$e;

.field public static final enum e:Lcom/umeng/analytics/d/e$e;

.field public static final enum f:Lcom/umeng/analytics/d/e$e;

.field public static final enum g:Lcom/umeng/analytics/d/e$e;

.field public static final enum h:Lcom/umeng/analytics/d/e$e;

.field public static final enum i:Lcom/umeng/analytics/d/e$e;

.field public static final enum j:Lcom/umeng/analytics/d/e$e;

.field public static final enum k:Lcom/umeng/analytics/d/e$e;

.field public static final enum l:Lcom/umeng/analytics/d/e$e;

.field public static final enum m:Lcom/umeng/analytics/d/e$e;

.field public static final enum n:Lcom/umeng/analytics/d/e$e;

.field public static final enum o:Lcom/umeng/analytics/d/e$e;

.field public static final enum p:Lcom/umeng/analytics/d/e$e;

.field public static final enum q:Lcom/umeng/analytics/d/e$e;

.field private static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/e$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic u:[Lcom/umeng/analytics/d/e$e;


# instance fields
.field private final s:S

.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 78
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/4 v1, 0x1

    const-string v2, "DEVICE_ID"

    const/4 v3, 0x0

    const-string v4, "device_id"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->a:Lcom/umeng/analytics/d/e$e;

    .line 79
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/4 v2, 0x2

    const-string v3, "IDMD5"

    const-string v4, "idmd5"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->b:Lcom/umeng/analytics/d/e$e;

    .line 80
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/4 v3, 0x3

    const-string v4, "MAC_ADDRESS"

    const-string v5, "mac_address"

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->c:Lcom/umeng/analytics/d/e$e;

    .line 81
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/4 v4, 0x4

    const-string v5, "OPEN_UDID"

    const-string v6, "open_udid"

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->d:Lcom/umeng/analytics/d/e$e;

    .line 82
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/4 v5, 0x5

    const-string v6, "MODEL"

    const-string v7, "model"

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->e:Lcom/umeng/analytics/d/e$e;

    .line 83
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/4 v6, 0x6

    const-string v7, "CPU"

    const-string v8, "cpu"

    invoke-direct {v0, v7, v5, v6, v8}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->f:Lcom/umeng/analytics/d/e$e;

    .line 84
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/4 v7, 0x7

    const-string v8, "OS"

    const-string v9, "os"

    invoke-direct {v0, v8, v6, v7, v9}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->g:Lcom/umeng/analytics/d/e$e;

    .line 85
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/16 v8, 0x8

    const-string v9, "OS_VERSION"

    const-string v10, "os_version"

    invoke-direct {v0, v9, v7, v8, v10}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->h:Lcom/umeng/analytics/d/e$e;

    .line 86
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/16 v9, 0x9

    const-string v10, "RESOLUTION"

    const-string v11, "resolution"

    invoke-direct {v0, v10, v8, v9, v11}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->i:Lcom/umeng/analytics/d/e$e;

    .line 87
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/16 v10, 0xa

    const-string v11, "IS_JAILBROKEN"

    const-string v12, "is_jailbroken"

    invoke-direct {v0, v11, v9, v10, v12}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->j:Lcom/umeng/analytics/d/e$e;

    .line 88
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/16 v11, 0xb

    const-string v12, "IS_PIRATED"

    const-string v13, "is_pirated"

    invoke-direct {v0, v12, v10, v11, v13}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->k:Lcom/umeng/analytics/d/e$e;

    .line 89
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/16 v12, 0xc

    const-string v13, "DEVICE_BOARD"

    const-string v14, "device_board"

    invoke-direct {v0, v13, v11, v12, v14}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->l:Lcom/umeng/analytics/d/e$e;

    .line 90
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/16 v13, 0xd

    const-string v14, "DEVICE_BRAND"

    const-string v15, "device_brand"

    invoke-direct {v0, v14, v12, v13, v15}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->m:Lcom/umeng/analytics/d/e$e;

    .line 91
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/16 v14, 0xe

    const-string v15, "DEVICE_MANUTIME"

    const-string v12, "device_manutime"

    invoke-direct {v0, v15, v13, v14, v12}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->n:Lcom/umeng/analytics/d/e$e;

    .line 92
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const/16 v12, 0xf

    const-string v15, "DEVICE_MANUFACTURER"

    const-string v13, "device_manufacturer"

    invoke-direct {v0, v15, v14, v12, v13}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->o:Lcom/umeng/analytics/d/e$e;

    .line 93
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v13, "DEVICE_MANUID"

    const/16 v15, 0x10

    const-string v14, "device_manuid"

    invoke-direct {v0, v13, v12, v15, v14}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->p:Lcom/umeng/analytics/d/e$e;

    .line 94
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v13, "DEVICE_NAME"

    const/16 v14, 0x10

    const/16 v15, 0x11

    const-string v12, "device_name"

    invoke-direct {v0, v13, v14, v15, v12}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->q:Lcom/umeng/analytics/d/e$e;

    .line 77
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/umeng/analytics/d/e$e;

    sget-object v12, Lcom/umeng/analytics/d/e$e;->a:Lcom/umeng/analytics/d/e$e;

    const/4 v13, 0x0

    aput-object v12, v0, v13

    sget-object v12, Lcom/umeng/analytics/d/e$e;->b:Lcom/umeng/analytics/d/e$e;

    aput-object v12, v0, v1

    sget-object v1, Lcom/umeng/analytics/d/e$e;->c:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/d/e$e;->d:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/d/e$e;->e:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/d/e$e;->f:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/analytics/d/e$e;->g:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/analytics/d/e$e;->h:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/umeng/analytics/d/e$e;->i:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/umeng/analytics/d/e$e;->j:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v9

    sget-object v1, Lcom/umeng/analytics/d/e$e;->k:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v10

    sget-object v1, Lcom/umeng/analytics/d/e$e;->l:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v11

    sget-object v1, Lcom/umeng/analytics/d/e$e;->m:Lcom/umeng/analytics/d/e$e;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/d/e$e;->n:Lcom/umeng/analytics/d/e$e;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/d/e$e;->o:Lcom/umeng/analytics/d/e$e;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/d/e$e;->p:Lcom/umeng/analytics/d/e$e;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/d/e$e;->q:Lcom/umeng/analytics/d/e$e;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/umeng/analytics/d/e$e;->u:[Lcom/umeng/analytics/d/e$e;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->r:Ljava/util/Map;

    .line 99
    const-class v0, Lcom/umeng/analytics/d/e$e;

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

    check-cast v1, Lcom/umeng/analytics/d/e$e;

    .line 100
    sget-object v2, Lcom/umeng/analytics/d/e$e;->r:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/e$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    goto :goto_0

    .line 102
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

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    iput-short p3, p0, Lcom/umeng/analytics/d/e$e;->s:S

    .line 170
    iput-object p4, p0, Lcom/umeng/analytics/d/e$e;->t:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public static a(I)Lcom/umeng/analytics/d/e$e;
    .locals 0

    .line 108
    packed-switch p0, :pswitch_data_0

    .line 144
    const/4 p0, 0x0

    return-object p0

    .line 142
    :pswitch_0
    sget-object p0, Lcom/umeng/analytics/d/e$e;->q:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 140
    :pswitch_1
    sget-object p0, Lcom/umeng/analytics/d/e$e;->p:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 138
    :pswitch_2
    sget-object p0, Lcom/umeng/analytics/d/e$e;->o:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 136
    :pswitch_3
    sget-object p0, Lcom/umeng/analytics/d/e$e;->n:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 134
    :pswitch_4
    sget-object p0, Lcom/umeng/analytics/d/e$e;->m:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 132
    :pswitch_5
    sget-object p0, Lcom/umeng/analytics/d/e$e;->l:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 130
    :pswitch_6
    sget-object p0, Lcom/umeng/analytics/d/e$e;->k:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 128
    :pswitch_7
    sget-object p0, Lcom/umeng/analytics/d/e$e;->j:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 126
    :pswitch_8
    sget-object p0, Lcom/umeng/analytics/d/e$e;->i:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 124
    :pswitch_9
    sget-object p0, Lcom/umeng/analytics/d/e$e;->h:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 122
    :pswitch_a
    sget-object p0, Lcom/umeng/analytics/d/e$e;->g:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 120
    :pswitch_b
    sget-object p0, Lcom/umeng/analytics/d/e$e;->f:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 118
    :pswitch_c
    sget-object p0, Lcom/umeng/analytics/d/e$e;->e:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 116
    :pswitch_d
    sget-object p0, Lcom/umeng/analytics/d/e$e;->d:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 114
    :pswitch_e
    sget-object p0, Lcom/umeng/analytics/d/e$e;->c:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 112
    :pswitch_f
    sget-object p0, Lcom/umeng/analytics/d/e$e;->b:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 110
    :pswitch_10
    sget-object p0, Lcom/umeng/analytics/d/e$e;->a:Lcom/umeng/analytics/d/e$e;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public static a(Ljava/lang/String;)Lcom/umeng/analytics/d/e$e;
    .locals 1

    .line 162
    sget-object v0, Lcom/umeng/analytics/d/e$e;->r:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/e$e;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/analytics/d/e$e;
    .locals 3

    .line 153
    invoke-static {p0}, Lcom/umeng/analytics/d/e$e;->a(I)Lcom/umeng/analytics/d/e$e;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    return-object v0

    .line 154
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

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/d/e$e;
    .locals 1

    .line 77
    const-class v0, Lcom/umeng/analytics/d/e$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/e$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/d/e$e;
    .locals 1

    .line 77
    sget-object v0, Lcom/umeng/analytics/d/e$e;->u:[Lcom/umeng/analytics/d/e$e;

    invoke-virtual {v0}, [Lcom/umeng/analytics/d/e$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/d/e$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 174
    iget-short v0, p0, Lcom/umeng/analytics/d/e$e;->s:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/umeng/analytics/d/e$e;->t:Ljava/lang/String;

    return-object v0
.end method
