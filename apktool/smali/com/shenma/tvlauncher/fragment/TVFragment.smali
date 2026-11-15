.class public Lcom/shenma/tvlauncher/fragment/TVFragment;
.super Lcom/shenma/tvlauncher/fragment/BaseFragment;
.source "TVFragment.java"


# instance fields
.field animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

.field private dao:Lcom/shenma/tvlauncher/dao/TVStationDao;

.field private tv_fls:[Landroid/widget/FrameLayout;

.field public tv_typeLogs:[Landroid/widget/ImageView;

.field private tvbgs:[Landroid/widget/ImageView;

.field private tvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/dao/bean/TVSCollect;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/fragment/TVFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TVFragment;
    .param p1, "x1"    # I

    .line 30
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/fragment/TVFragment;->showOnFocusAnimation(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/fragment/TVFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TVFragment;
    .param p1, "x1"    # I

    .line 30
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/fragment/TVFragment;->showLoseFocusAinimation(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/fragment/TVFragment;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TVFragment;

    .line 30
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tvbgs:[Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TVFragment;->loadViewLayout()V

    .line 80
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TVFragment;->findViewById()V

    .line 81
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TVFragment;->setListener()V

    .line 82
    return-void
.end method

.method private initClickListener()V
    .locals 3

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tv_typeLogs:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tvbgs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tv_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    new-instance v2, Lcom/shenma/tvlauncher/fragment/TVFragment$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/fragment/TVFragment$1;-><init>(Lcom/shenma/tvlauncher/fragment/TVFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tv_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    new-instance v2, Lcom/shenma/tvlauncher/fragment/TVFragment$2;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/fragment/TVFragment$2;-><init>(Lcom/shenma/tvlauncher/fragment/TVFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private showLoseFocusAinimation(I)V
    .locals 9
    .param p1, "paramInt"    # I

    .line 181
    const v7, 0x3f8ccccd    # 1.1f

    .line 182
    .local v7, "f1":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 183
    .local v8, "f2":F
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    move v3, v7

    move v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->setAttributs(FFFFJ)V

    .line 184
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 185
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tv_typeLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tvbgs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    return-void
.end method

.method private showOnFocusAnimation(I)V
    .locals 9
    .param p1, "paramInt"    # I

    .line 152
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tv_fls:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 153
    const/high16 v0, 0x3f800000    # 1.0f

    .line 154
    .local v0, "f1":F
    const v8, 0x3f8ccccd    # 1.1f

    .line 155
    .local v8, "f2":F
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f8ccccd    # 1.1f

    const-wide/16 v6, 0xc8

    move v4, v0

    move v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->setAttributs(FFFFJ)V

    .line 156
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 157
    .local v1, "mAnimation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/shenma/tvlauncher/fragment/TVFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/shenma/tvlauncher/fragment/TVFragment$3;-><init>(Lcom/shenma/tvlauncher/fragment/TVFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 171
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tv_typeLogs:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->view:Landroid/view/View;

    const v2, 0x7f08026c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 93
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tv_typeLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->view:Landroid/view/View;

    const v3, 0x7f080288

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 94
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tvbgs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->view:Landroid/view/View;

    const v3, 0x7f080241

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 95
    return-void
.end method

.method protected loadViewLayout()V
    .locals 2

    .line 85
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tv_fls:[Landroid/widget/FrameLayout;

    .line 86
    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tv_typeLogs:[Landroid/widget/ImageView;

    .line 87
    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tvbgs:[Landroid/widget/ImageView;

    .line 88
    new-instance v0, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/dao/TVStationDao;->getInstance(Landroid/content/Context;)Lcom/shenma/tvlauncher/dao/TVStationDao;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->dao:Lcom/shenma/tvlauncher/dao/TVStationDao;

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    if-nez p2, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->view:Landroid/view/View;

    if-nez v0, :cond_1

    .line 52
    const v0, 0x7f0a002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->view:Landroid/view/View;

    .line 53
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/TVFragment;->init()V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 57
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onDetach()V

    .line 66
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 68
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    nop

    .line 76
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onResume()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->dao:Lcom/shenma/tvlauncher/dao/TVStationDao;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/dao/TVStationDao;->queryAllTvsi()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TVFragment;->tvs:Ljava/util/List;

    .line 205
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onResume()V

    .line 206
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/TVFragment;->initClickListener()V

    .line 99
    return-void
.end method
