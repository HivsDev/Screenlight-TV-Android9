.class public Lcom/shenma/tvlauncher/fragment/TopicFragment;
.super Lcom/shenma/tvlauncher/fragment/BaseFragment;
.source "TopicFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/TopicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private id1:I

.field private id2:I

.field private id3:I

.field private id4:I

.field private id5:I

.field private id6:I

.field public imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mvLogs:[Landroid/widget/ImageView;

.field private mvLogsa:[Landroid/widget/ImageView;

.field private mv_fls:[Landroid/widget/FrameLayout;

.field public mv_typeLogs:[Landroid/widget/FrameLayout;

.field private mvbgs:[I

.field private tvs:[Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    .line 67
    const-string v0, "topicFragment"

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id1:I

    .line 69
    iput v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id2:I

    .line 70
    iput v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id3:I

    .line 71
    iput v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id4:I

    .line 72
    iput v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id5:I

    .line 73
    iput v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id6:I

    return-void
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;

    .line 55
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/shenma/tvlauncher/fragment/TopicFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;
    .param p1, "x1"    # Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id1:I

    return p1
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;

    .line 55
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id2:I

    return p1
.end method

.method static synthetic access$402(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id3:I

    return p1
.end method

.method static synthetic access$502(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id4:I

    return p1
.end method

.method static synthetic access$602(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id5:I

    return p1
.end method

.method static synthetic access$702(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id6:I

    return p1
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/fragment/TopicFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->setTypeImage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;

    .line 55
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    return-object v0
.end method

.method private createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 255
    new-instance v0, Lcom/shenma/tvlauncher/fragment/TopicFragment$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment$3;-><init>(Lcom/shenma/tvlauncher/fragment/TopicFragment;)V

    return-object v0
.end method

.method private createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/domain/Topic;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;-><init>(Lcom/shenma/tvlauncher/fragment/TopicFragment;)V

    return-object v0
.end method

.method private flyAnimation(I)V
    .locals 12
    .param p1, "paramInt"    # I

    .line 467
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 468
    .local v1, "location":[I
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 469
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    .line 470
    .local v2, "width":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    .line 471
    .local v3, "height":I
    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v4, v4

    .line 472
    .local v4, "x":F
    const/4 v5, 0x1

    aget v6, v1, v5

    int-to-float v6, v6

    .line 473
    .local v6, "y":F
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "paramInt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "..x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "...y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "joychang"

    invoke-static {v8, v7}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget v7, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mHeight:I

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0x3e8

    if-le v7, v11, :cond_6

    iget v7, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mWidth:I

    if-le v7, v11, :cond_6

    .line 475
    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v0, :cond_3

    if-eq p1, v10, :cond_2

    if-eq p1, v9, :cond_1

    if-eq p1, v8, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    add-int/lit8 v2, v2, 0x1e

    .line 508
    add-int/lit8 v3, v3, 0x3c

    .line 509
    const v0, 0x44ca8000    # 1620.0f

    .line 510
    .end local v4    # "x":F
    .local v0, "x":F
    const v4, 0x43f48000    # 489.0f

    move v6, v4

    move v4, v0

    .end local v6    # "y":F
    .local v4, "y":F
    goto :goto_0

    .line 501
    .end local v0    # "x":F
    .local v4, "x":F
    .restart local v6    # "y":F
    :cond_1
    add-int/lit8 v2, v2, 0x28

    .line 502
    add-int/lit8 v3, v3, 0x3c

    .line 503
    const/high16 v0, 0x449f0000    # 1272.0f

    .line 504
    .end local v4    # "x":F
    .restart local v0    # "x":F
    const/high16 v4, 0x43f50000    # 490.0f

    .line 505
    .end local v6    # "y":F
    .local v4, "y":F
    move v6, v4

    move v4, v0

    goto :goto_0

    .line 495
    .end local v0    # "x":F
    .local v4, "x":F
    .restart local v6    # "y":F
    :cond_2
    add-int/lit8 v2, v2, 0x1e

    .line 496
    add-int/lit8 v3, v3, 0x17

    .line 497
    const v0, 0x44678000    # 926.0f

    .line 498
    .end local v4    # "x":F
    .restart local v0    # "x":F
    const v4, 0x4429c000    # 679.0f

    .line 499
    .end local v6    # "y":F
    .local v4, "y":F
    move v6, v4

    move v4, v0

    goto :goto_0

    .line 489
    .end local v0    # "x":F
    .local v4, "x":F
    .restart local v6    # "y":F
    :cond_3
    add-int/lit8 v2, v2, 0x1e

    .line 490
    add-int/lit8 v3, v3, 0x17

    .line 491
    const v0, 0x441d8000    # 630.0f

    .line 492
    .end local v4    # "x":F
    .restart local v0    # "x":F
    const v4, 0x4429c000    # 679.0f

    .line 493
    .end local v6    # "y":F
    .local v4, "y":F
    move v6, v4

    move v4, v0

    goto :goto_0

    .line 483
    .end local v0    # "x":F
    .local v4, "x":F
    .restart local v6    # "y":F
    :cond_4
    add-int/lit8 v2, v2, 0x41

    .line 484
    add-int/lit8 v3, v3, 0x27

    .line 485
    const v0, 0x44434000    # 781.0f

    .line 486
    .end local v4    # "x":F
    .restart local v0    # "x":F
    const v4, 0x43bc8000    # 377.0f

    .line 487
    .end local v6    # "y":F
    .local v4, "y":F
    move v6, v4

    move v4, v0

    goto :goto_0

    .line 477
    .end local v0    # "x":F
    .local v4, "x":F
    .restart local v6    # "y":F
    :cond_5
    add-int/lit8 v2, v2, 0x2e

    .line 478
    add-int/lit8 v3, v3, 0x41

    .line 479
    const v0, 0x438e8000    # 285.0f

    .line 480
    .end local v4    # "x":F
    .restart local v0    # "x":F
    const/high16 v4, 0x43f50000    # 490.0f

    .line 481
    .end local v6    # "y":F
    .local v4, "y":F
    move v6, v4

    move v4, v0

    .line 510
    .end local v0    # "x":F
    .local v4, "x":F
    .restart local v6    # "y":F
    :goto_0
    goto :goto_1

    .line 513
    :cond_6
    if-eqz p1, :cond_c

    if-eq p1, v5, :cond_b

    if-eq p1, v0, :cond_a

    if-eq p1, v10, :cond_9

    if-eq p1, v9, :cond_8

    if-eq p1, v8, :cond_7

    goto :goto_1

    .line 545
    :cond_7
    add-int/lit8 v2, v2, 0x14

    .line 546
    add-int/lit8 v3, v3, 0x28

    .line 547
    const v4, 0x44844000    # 1058.0f

    .line 548
    const/high16 v6, 0x43980000    # 304.0f

    goto :goto_1

    .line 539
    :cond_8
    add-int/lit8 v2, v2, 0x1a

    .line 540
    add-int/lit8 v3, v3, 0x2a

    .line 541
    const v4, 0x444ec000    # 827.0f

    .line 542
    const/high16 v6, 0x43980000    # 304.0f

    .line 543
    goto :goto_1

    .line 533
    :cond_9
    add-int/lit8 v2, v2, 0x15

    .line 534
    add-int/lit8 v3, v3, 0xe

    .line 535
    const/high16 v4, 0x44150000    # 596.0f

    .line 536
    const v6, 0x43d78000    # 431.0f

    .line 537
    goto :goto_1

    .line 527
    :cond_a
    add-int/lit8 v2, v2, 0x15

    .line 528
    add-int/lit8 v3, v3, 0xe

    .line 529
    const/high16 v4, 0x43c70000    # 398.0f

    .line 530
    const v6, 0x43d78000    # 431.0f

    .line 531
    goto :goto_1

    .line 521
    :cond_b
    add-int/lit8 v2, v2, 0x2b

    .line 522
    add-int/lit8 v3, v3, 0x1b

    .line 523
    const v4, 0x43f88000    # 497.0f

    .line 524
    const/high16 v6, 0x43660000    # 230.0f

    .line 525
    goto :goto_1

    .line 515
    :cond_c
    add-int/lit8 v2, v2, 0x1a

    .line 516
    add-int/lit8 v3, v3, 0x28

    .line 517
    const/high16 v4, 0x43280000    # 168.0f

    .line 518
    const v6, 0x43988000    # 305.0f

    .line 519
    nop

    .line 552
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/shenma/tvlauncher/HomeActivity;->flyWhiteBorder(IIFF)V

    .line 553
    return-void
.end method

.method private init()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->loadViewLayout()V

    .line 127
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->findViewById()V

    .line 128
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->setListener()V

    .line 130
    return-void
.end method

.method private initData()V
    .locals 10

    .line 134
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Api_url"

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "Api_url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "BASE_HOST"

    invoke-static {v2, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "BASE_HOST":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/application/MyVolley;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 137
    new-instance v2, Lcom/shenma/tvlauncher/fragment/TopicFragment$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/api.php/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/topic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/shenma/tvlauncher/domain/Topic;

    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v8

    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->createMyReqErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v9

    const/4 v5, 0x1

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/shenma/tvlauncher/fragment/TopicFragment$1;-><init>(Lcom/shenma/tvlauncher/fragment/TopicFragment;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 161
    .local v2, "mtopics":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/domain/Topic;>;"
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 162
    return-void
.end method

.method private setTypeImage(ILjava/lang/String;)V
    .locals 4
    .param p1, "paramInt"    # I
    .param p2, "paramUrl"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paramUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvbgs:[I

    aget v3, v2, p1

    aget v2, v2, p1

    .line 230
    invoke-static {v1, v3, v2}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    .line 229
    invoke-virtual {v0, p2, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 233
    return-void
.end method

.method private showLoseFocusAinimation(I)V
    .locals 9
    .param p1, "paramInt"    # I

    .line 594
    const v7, 0x3f8ccccd    # 1.1f

    .line 595
    .local v7, "f1":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 596
    .local v8, "f2":F
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    move v3, v7

    move v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->setAttributs(FFFFJ)V

    .line 597
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 598
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 610
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 612
    return-void
.end method

.method private showOnFocusAnimation(I)V
    .locals 9
    .param p1, "paramInt"    # I

    .line 561
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 562
    const/high16 v0, 0x3f800000    # 1.0f

    .line 563
    .local v0, "f1":F
    const v8, 0x3f8ccccd    # 1.1f

    .line 564
    .local v8, "f2":F
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f8ccccd    # 1.1f

    const-wide/16 v6, 0xc8

    move v4, v0

    move v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->setAttributs(FFFFJ)V

    .line 565
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 566
    .local v1, "mAnimation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/shenma/tvlauncher/fragment/TopicFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/shenma/tvlauncher/fragment/TopicFragment$4;-><init>(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 584
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 586
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 9

    .line 282
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v2, 0x7f080222

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 283
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v3, 0x7f080223

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 284
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v4, 0x7f080224

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 285
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v5, 0x7f080225

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 286
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v6, 0x7f080226

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 287
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v7, 0x7f080227

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 289
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f08022f

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    aput-object v1, v0, v2

    .line 290
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f080230

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    aput-object v1, v0, v3

    .line 291
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f080231

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    aput-object v1, v0, v4

    .line 292
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f080232

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    aput-object v1, v0, v5

    .line 293
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f080233

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    aput-object v1, v0, v6

    .line 294
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f080234

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    aput-object v1, v0, v7

    .line 296
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f08021a

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 297
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f08021b

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 298
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f08021c

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 299
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f08021d

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 300
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f08021e

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 301
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f08021f

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 304
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f080228

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 305
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f080229

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 306
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f08022a

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 307
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f08022b

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 308
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f08022c

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 309
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f08022d

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 312
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v8, 0x7f080213

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 313
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v2, 0x7f080214

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v3

    .line 314
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v2, 0x7f080215

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v4

    .line 315
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v2, 0x7f080216

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v5

    .line 316
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v2, 0x7f080217

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v6

    .line 317
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    const v2, 0x7f080218

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v7

    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected loadViewLayout()V
    .locals 2

    .line 270
    const/4 v0, 0x6

    new-array v1, v0, [Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_fls:[Landroid/widget/FrameLayout;

    .line 271
    new-array v1, v0, [Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    .line 273
    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogs:[Landroid/widget/ImageView;

    .line 274
    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvLogsa:[Landroid/widget/ImageView;

    .line 275
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mvbgs:[I

    .line 276
    new-instance v1, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    invoke-direct {v1}, Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->animEffect:Lcom/shenma/tvlauncher/utils/ScaleAnimEffect;

    .line 277
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    .line 278
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 337
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v2, Lcom/shenma/tvlauncher/TopicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "TYPE"

    const-string v3, "linkurl"

    const-string v4, "bigpic"

    const-string v5, "describe"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 386
    :pswitch_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x5

    if-le v1, v6, :cond_0

    .line 387
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id6:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtdescribe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id6:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getBigpic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id6:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getLinkurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id6:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getVideotype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 377
    :pswitch_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x4

    if-le v1, v6, :cond_0

    .line 378
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id5:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtdescribe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id5:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getBigpic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id5:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getLinkurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id5:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getVideotype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 368
    :pswitch_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x3

    if-le v1, v6, :cond_0

    .line 369
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id4:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtdescribe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id4:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getBigpic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id4:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getLinkurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id4:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getVideotype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 359
    :pswitch_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x2

    if-le v1, v6, :cond_0

    .line 360
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id3:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtdescribe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id3:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getBigpic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id3:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getLinkurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id3:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getVideotype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 350
    :pswitch_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    if-le v1, v6, :cond_0

    .line 351
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id2:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtdescribe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id2:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getBigpic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id2:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getLinkurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id2:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getVideotype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 341
    :pswitch_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v6, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id1:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtdescribe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id1:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getBigpic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id1:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getLinkurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    iget v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->id1:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getVideotype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->startActivity(Landroid/content/Intent;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08022f
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 79
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->TAG:Ljava/lang/String;

    const-string v1, "topicFragment...onCreate"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 86
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->TAG:Ljava/lang/String;

    const-string v1, "topicFragment...onCreateView"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mQueue:Lcom/android/volley/RequestQueue;

    .line 88
    if-nez p2, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    if-nez v0, :cond_5

    .line 93
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Interface_Style"

    invoke-static {v0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, "Interface_Style":I
    if-nez v0, :cond_1

    .line 96
    const v2, 0x7f0a002c

    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 97
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 99
    const v2, 0x7f0a002e

    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 100
    :cond_2
    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 102
    :cond_3
    const v2, 0x7f0a002d

    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    .line 106
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->init()V

    .line 107
    .end local v0    # "Interface_Style":I
    goto :goto_1

    .line 108
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 109
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_6

    .line 110
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 112
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->data:Ljava/util/List;

    if-nez v0, :cond_7

    .line 113
    invoke-direct {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->initData()V

    .line 115
    :cond_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 626
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onDestroy()V

    .line 627
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 630
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "paramInt":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 418
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 415
    :pswitch_1
    const/4 v0, 0x4

    .line 416
    goto :goto_0

    .line 412
    :pswitch_2
    const/4 v0, 0x3

    .line 413
    goto :goto_0

    .line 409
    :pswitch_3
    const/4 v0, 0x2

    .line 410
    goto :goto_0

    .line 406
    :pswitch_4
    const/4 v0, 0x1

    .line 407
    goto :goto_0

    .line 403
    :pswitch_5
    const/4 v0, 0x0

    .line 404
    nop

    .line 421
    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 422
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->showOnFocusAnimation(I)V

    .line 423
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->home:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    :cond_0
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->flyAnimation(I)V

    goto :goto_1

    .line 428
    :cond_1
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->showLoseFocusAinimation(I)V

    .line 433
    :goto_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Interface_Style"

    invoke-static {v2, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 434
    .local v2, "Interface_Style":I
    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_3

    .line 440
    :cond_2
    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v1, 0x3

    if-ne v2, v1, :cond_6

    .line 446
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    array-length v4, v3

    if-ge v1, v4, :cond_6

    .line 447
    aget-object v3, v3, v1

    .line 448
    .local v3, "tv":Landroid/widget/TextView;
    const/4 v4, 0x5

    if-eq v1, v4, :cond_4

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 449
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 435
    .end local v1    # "i":I
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->tvs:[Landroid/widget/TextView;

    array-length v4, v3

    :goto_4
    if-ge v1, v4, :cond_6

    aget-object v5, v3, v1

    .line 436
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    .line 435
    .end local v5    # "tv":Landroid/widget/TextView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 459
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x7f08022f
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 0

    .line 121
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onStart()V

    .line 122
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 617
    invoke-super {p0}, Lcom/shenma/tvlauncher/fragment/BaseFragment;->onStop()V

    .line 618
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 621
    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 331
    return-void
.end method
