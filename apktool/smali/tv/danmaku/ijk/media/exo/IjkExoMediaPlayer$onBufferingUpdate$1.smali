.class Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate$1;
.super Ljava/lang/Object;
.source "IjkExoMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;

.field final synthetic val$percent:I


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;I)V
    .locals 0
    .param p1, "this$1"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;

    .line 611
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate$1;->this$1:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;

    iput p2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate$1;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 614
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate$1;->this$1:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$200(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->mt:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 615
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate$1;->this$1:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    iget v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$onBufferingUpdate$1;->val$percent:I

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$300(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;I)V

    .line 618
    :cond_0
    return-void
.end method
