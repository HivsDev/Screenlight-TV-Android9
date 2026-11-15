.class Lcom/baidu/cyberplayer/subtitle/SubtitleSettings$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings$1;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 64
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings$1;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a(Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;)V

    .line 62
    nop

    .line 67
    :goto_0
    return-void
.end method
