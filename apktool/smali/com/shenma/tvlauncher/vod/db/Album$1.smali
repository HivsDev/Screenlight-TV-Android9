.class Lcom/shenma/tvlauncher/vod/db/Album$1;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/db/Album;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/shenma/tvlauncher/vod/db/Album;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/shenma/tvlauncher/vod/db/Album;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 188
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-direct {v1}, Lcom/shenma/tvlauncher/vod/db/Album;-><init>()V

    .line 189
    .local v1, "data":Lcom/shenma/tvlauncher/vod/db/Album;
    const-string v2, "ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->access$002(Lcom/shenma/tvlauncher/vod/db/Album;I)I

    .line 190
    const-string v2, "PlayIndex"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->access$102(Lcom/shenma/tvlauncher/vod/db/Album;I)I

    .line 191
    const-string v2, "CollectionTime"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->access$202(Lcom/shenma/tvlauncher/vod/db/Album;I)I

    .line 192
    const-string v2, "TypeId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->access$302(Lcom/shenma/tvlauncher/vod/db/Album;I)I

    .line 193
    const-string v2, "AlbumId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->access$402(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    const-string v2, "AlbumType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->access$502(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    const-string v2, "AlbumSourceType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->access$602(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    const-string v2, "AlbumPic"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->access$702(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    const-string v2, "AlbumTitle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->access$802(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    const-string v2, "AlbumState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->access$902(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    const-string v2, "NextLink"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->access$1002(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    const-string v2, "Time"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/db/Album;->access$1102(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/db/Album$1;->createFromParcel(Landroid/os/Parcel;)Lcom/shenma/tvlauncher/vod/db/Album;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/shenma/tvlauncher/vod/db/Album;
    .locals 1
    .param p1, "size"    # I

    .line 205
    new-array v0, p1, [Lcom/shenma/tvlauncher/vod/db/Album;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/db/Album$1;->newArray(I)[Lcom/shenma/tvlauncher/vod/db/Album;

    move-result-object p1

    return-object p1
.end method
