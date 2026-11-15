.class public Lcom/shenma/tvlauncher/vod/db/Album;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "albums"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shenma/tvlauncher/vod/db/Album;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumPic:Ljava/lang/String;

.field private albumSourceType:Ljava/lang/String;

.field private albumState:Ljava/lang/String;

.field private albumTitle:Ljava/lang/String;

.field private albumType:Ljava/lang/String;

.field private collectionTime:I

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private nextLink:Ljava/lang/String;

.field private playIndex:I

.field private time:Ljava/lang/String;

.field private typeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Lcom/shenma/tvlauncher/vod/db/Album$1;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/db/Album$1;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/vod/db/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/shenma/tvlauncher/vod/db/Album;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p1, "x1"    # I

    .line 184
    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->id:I

    return p1
.end method

.method static synthetic access$1002(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p1, "x1"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->nextLink:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/shenma/tvlauncher/vod/db/Album;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p1, "x1"    # I

    .line 184
    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->playIndex:I

    return p1
.end method

.method static synthetic access$1102(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p1, "x1"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->time:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/shenma/tvlauncher/vod/db/Album;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p1, "x1"    # I

    .line 184
    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->collectionTime:I

    return p1
.end method

.method static synthetic access$302(Lcom/shenma/tvlauncher/vod/db/Album;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p1, "x1"    # I

    .line 184
    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->typeId:I

    return p1
.end method

.method static synthetic access$402(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p1, "x1"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p1, "x1"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p1, "x1"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumSourceType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p1, "x1"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumPic:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p1, "x1"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p1, "x1"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumState:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumPic()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumPic:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumSourceType()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumSourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumState()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumState:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumType()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumType:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionTime()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->collectionTime:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->id:I

    return v0
.end method

.method public getNextLink()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->nextLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayIndex()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->playIndex:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->typeId:I

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .line 238
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumId:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setAlbumPic(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumPic"    # Ljava/lang/String;

    .line 302
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumPic:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setAlbumSourceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumSourceType"    # Ljava/lang/String;

    .line 278
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumSourceType:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setAlbumState(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumState"    # Ljava/lang/String;

    .line 294
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumState:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumTitle"    # Ljava/lang/String;

    .line 286
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumTitle:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setAlbumType(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumType"    # Ljava/lang/String;

    .line 270
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumType:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setCollectionTime(I)V
    .locals 0
    .param p1, "collectionTime"    # I

    .line 254
    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->collectionTime:I

    .line 255
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 230
    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->id:I

    .line 231
    return-void
.end method

.method public setNextLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextLink"    # Ljava/lang/String;

    .line 310
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->nextLink:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setPlayIndex(I)V
    .locals 0
    .param p1, "playIndex"    # I

    .line 246
    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->playIndex:I

    .line 247
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .line 318
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->time:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setTypeId(I)V
    .locals 0
    .param p1, "typeId"    # I

    .line 262
    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->typeId:I

    .line 263
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Album [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->playIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", collectionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->collectionTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->typeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", albumType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumSourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumSourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumPic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumPic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->nextLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 344
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->id:I

    const-string v2, "ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    iget v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->playIndex:I

    const-string v2, "PlayIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    iget v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->collectionTime:I

    const-string v2, "CollectionTime"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    iget v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->typeId:I

    const-string v2, "TypeId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumId:Ljava/lang/String;

    const-string v2, "AlbumId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumType:Ljava/lang/String;

    const-string v2, "AlbumType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumSourceType:Ljava/lang/String;

    const-string v2, "AlbumSourceType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumPic:Ljava/lang/String;

    const-string v2, "AlbumPic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumTitle:Ljava/lang/String;

    const-string v2, "AlbumTitle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumState:Ljava/lang/String;

    const-string v2, "AlbumState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->nextLink:Ljava/lang/String;

    const-string v2, "NextLink"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->time:Ljava/lang/String;

    const-string v2, "Time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 358
    return-void
.end method
