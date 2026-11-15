.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$SortTime;
.super Ljava/lang/Object;
.source "TVLivePlayer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method private constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0

    .line 1964
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$SortTime;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .param p2, "x1"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;

    .line 1964
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$SortTime;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;)I
    .locals 3
    .param p1, "arg0"    # Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;
    .param p2, "arg1"    # Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;

    .line 1968
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->getKeyTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1969
    .local v0, "time0":I
    invoke-virtual {p2}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->getKeyTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1970
    .local v1, "time1":I
    if-le v0, v1, :cond_0

    .line 1971
    const/4 v2, 0x1

    return v2

    .line 1972
    :cond_0
    if-ge v0, v1, :cond_1

    .line 1973
    const/4 v2, -0x1

    return v2

    .line 1975
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1964
    check-cast p1, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;

    check-cast p2, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;

    invoke-virtual {p0, p1, p2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$SortTime;->compare(Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;)I

    move-result p1

    return p1
.end method
