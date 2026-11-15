.class public final enum Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;
.super Ljava/lang/Enum;
.source "BubbleShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrowPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

.field public static final enum LEFT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation
.end field

.field public static final enum RIGHT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->LEFT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    .line 20
    new-instance v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    const/4 v2, 0x1

    const-string v3, "RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->RIGHT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    sget-object v3, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->LEFT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    aput-object v3, v0, v1

    sget-object v1, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->RIGHT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    aput-object v1, v0, v2

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->$VALUES:[Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    return-object v0
.end method

.method public static values()[Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;
    .locals 1

    .line 17
    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->$VALUES:[Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    invoke-virtual {v0}, [Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    return-object v0
.end method
