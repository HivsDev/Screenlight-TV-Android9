.class Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VodtypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;
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

.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

.field private videoName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    .line 116
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->this$0:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    .line 116
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->poster:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .line 116
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->poster:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    .line 116
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 116
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    .line 116
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->score:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 116
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->score:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;

    .line 116
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->videoName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 116
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter$ViewHolder;->videoName:Landroid/widget/TextView;

    return-object p1
.end method
