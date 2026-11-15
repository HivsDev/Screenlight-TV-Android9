.class public Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;
.super Ljava/lang/Object;
.source "VodDataInfo.java"


# instance fields
.field private blurb:Ljava/lang/String;

.field private nextlink:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private pic_slide:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlurb()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->blurb:Ljava/lang/String;

    return-object v0
.end method

.method public getNextlink()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->nextlink:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_slide()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->pic_slide:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setNextlink(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextlink"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->nextlink:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .param p1, "pic"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->pic:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .param p1, "score"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->score:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->state:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->title:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->type:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VodDataInfo [title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextlink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->nextlink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->pic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", blurb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->blurb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pic_slide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->pic_slide:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->score:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
