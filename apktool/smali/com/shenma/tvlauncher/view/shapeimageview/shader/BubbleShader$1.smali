.class synthetic Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$1;
.super Ljava/lang/Object;
.source "BubbleShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$shenma$tvlauncher$view$shapeimageview$shader$BubbleShader$ArrowPosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    invoke-static {}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->values()[Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$1;->$SwitchMap$com$shenma$tvlauncher$view$shapeimageview$shader$BubbleShader$ArrowPosition:[I

    :try_start_0
    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$1;->$SwitchMap$com$shenma$tvlauncher$view$shapeimageview$shader$BubbleShader$ArrowPosition:[I

    sget-object v1, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->LEFT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$1;->$SwitchMap$com$shenma$tvlauncher$view$shapeimageview$shader$BubbleShader$ArrowPosition:[I

    sget-object v1, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->RIGHT:Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/shapeimageview/shader/BubbleShader$ArrowPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
