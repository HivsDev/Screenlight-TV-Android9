.class Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UserTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private app_icon:Landroid/widget/ImageView;

.field private app_title:Landroid/widget/TextView;

.field private checked:Landroid/widget/ImageView;

.field private packflag:Landroid/widget/TextView;

.field private poster:Landroid/widget/ImageView;

.field private state:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

.field private videoName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    .line 131
    .local p0, "this":Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;, "Lcom/shenma/tvlauncher/adapter/UserTypeAdapter<TT;>.ViewHolder;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->this$0:Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 122
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->app_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .line 122
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->app_icon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 122
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->app_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 122
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->app_title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 122
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->packflag:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 122
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->packflag:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 122
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->poster:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .line 122
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->poster:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$402(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .line 122
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->checked:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 122
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 122
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->state:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;

    .line 122
    iget-object v0, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->videoName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 122
    iput-object p1, p0, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter$ViewHolder;->videoName:Landroid/widget/TextView;

    return-object p1
.end method
