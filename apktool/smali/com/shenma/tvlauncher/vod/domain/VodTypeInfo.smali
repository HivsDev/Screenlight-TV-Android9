.class public Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;
.super Ljava/lang/Object;
.source "VodTypeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pageindex:I

.field private totalpage:I

.field private videonum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->data:Ljava/util/List;

    return-object v0
.end method

.method public getPageindex()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->pageindex:I

    return v0
.end method

.method public getTotalpage()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->totalpage:I

    return v0
.end method

.method public getVideonum()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->videonum:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->data:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setPageindex(I)V
    .locals 0
    .param p1, "pageindex"    # I

    .line 18
    iput p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->pageindex:I

    .line 19
    return-void
.end method

.method public setTotalpage(I)V
    .locals 0
    .param p1, "totalpage"    # I

    .line 34
    iput p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->totalpage:I

    .line 35
    return-void
.end method

.method public setVideonum(I)V
    .locals 0
    .param p1, "videonum"    # I

    .line 26
    iput p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->videonum:I

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VodTypeInfo [pageindex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->pageindex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videonum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->videonum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalpage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->totalpage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
