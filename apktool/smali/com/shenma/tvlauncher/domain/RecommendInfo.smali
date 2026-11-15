.class public Lcom/shenma/tvlauncher/domain/RecommendInfo;
.super Ljava/lang/Object;
.source "RecommendInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private tjendtime:Ljava/lang/String;

.field private tjid:Ljava/lang/String;

.field private tjinfo:Ljava/lang/String;

.field private tjpicur:Ljava/lang/String;

.field private tjstarttime:Ljava/lang/String;

.field private tjtype:Ljava/lang/String;

.field private tjurl:Ljava/lang/String;

.field private tjwei:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTjendtime()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjendtime:Ljava/lang/String;

    return-object v0
.end method

.method public getTjid()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjid:Ljava/lang/String;

    return-object v0
.end method

.method public getTjinfo()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTjpicur()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjpicur:Ljava/lang/String;

    return-object v0
.end method

.method public getTjstarttime()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjstarttime:Ljava/lang/String;

    return-object v0
.end method

.method public getTjtype()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjtype:Ljava/lang/String;

    return-object v0
.end method

.method public getTjurl()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjurl:Ljava/lang/String;

    return-object v0
.end method

.method public getTjwei()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjwei:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->id:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->state:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setTjendtime(Ljava/lang/String;)V
    .locals 0
    .param p1, "tjendtime"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjendtime:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTjid(Ljava/lang/String;)V
    .locals 0
    .param p1, "tjid"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjid:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTjinfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "tjinfo"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjinfo:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTjpicur(Ljava/lang/String;)V
    .locals 0
    .param p1, "tjpicur"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjpicur:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setTjstarttime(Ljava/lang/String;)V
    .locals 0
    .param p1, "tjstarttime"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjstarttime:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setTjtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "tjtype"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjtype:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setTjurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "tjurl"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjurl:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setTjwei(Ljava/lang/String;)V
    .locals 0
    .param p1, "tjwei"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjwei:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tjinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tjid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tjtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tjstarttime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjstarttime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tjendtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjendtime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tjpicur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjpicur:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tjwei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjwei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tjurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->tjurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/domain/RecommendInfo;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
