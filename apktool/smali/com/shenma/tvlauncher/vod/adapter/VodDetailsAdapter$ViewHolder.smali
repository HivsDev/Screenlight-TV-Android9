.class Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VodDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private iv_details_recommend_poster:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

.field private tv_details_recommend_name:Landroid/widget/TextView;

.field private tv_details_recommend_score:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

    .line 96
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->this$0:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    .line 92
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->iv_details_recommend_poster:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .line 92
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->iv_details_recommend_poster:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    .line 92
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->tv_details_recommend_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 92
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->tv_details_recommend_name:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;

    .line 92
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->tv_details_recommend_score:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 92
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter$ViewHolder;->tv_details_recommend_score:Landroid/widget/TextView;

    return-object p1
.end method
