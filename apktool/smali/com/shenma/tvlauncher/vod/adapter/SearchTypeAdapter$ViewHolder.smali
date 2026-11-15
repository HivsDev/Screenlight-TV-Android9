.class Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SearchTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private poster:Landroid/widget/ImageView;

.field private score:Landroid/widget/TextView;

.field private spuerHd:Landroid/widget/ImageView;

.field private state:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

.field private videoName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    .line 97
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;->this$0:Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;

    .line 90
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;->poster:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .line 90
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;->poster:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;

    .line 90
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 90
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;

    .line 90
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;->score:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 90
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;->score:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;

    .line 90
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;->videoName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 90
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter$ViewHolder;->videoName:Landroid/widget/TextView;

    return-object p1
.end method
