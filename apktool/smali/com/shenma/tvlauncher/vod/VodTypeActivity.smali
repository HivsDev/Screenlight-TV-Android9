.class public Lcom/shenma/tvlauncher/vod/VodTypeActivity;
.super Landroid/app/Activity;
.source "VodTypeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/vod/VodTypeActivity$WindowMessageID;
    }
.end annotation


# static fields
.field private static final PAGESIZE:I = 0x1e

.field public static Sp:Landroid/content/SharedPreferences;

.field private static VOD_TYPE:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private VOD_DATA:Ljava/lang/String;

.field private VOD_FILTER:Ljava/lang/String;

.field private areas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private author:Ljava/lang/String;

.field private b_type_details_fliter:Landroid/widget/ImageView;

.field private context:Landroid/content/Context;

.field private filterString:Ljava/lang/String;

.field private filter_list_area:Landroid/widget/ListView;

.field private filter_list_seach:Landroid/widget/ListView;

.field private filter_list_sort:Landroid/widget/ListView;

.field private filter_list_type:Landroid/widget/ListView;

.field private filter_list_year:Landroid/widget/ListView;

.field private gHeight:I

.field private gv_type_details_grid:Landroid/widget/GridView;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private iv_type_details_type:Landroid/widget/TextView;

.field private lastIndex:I

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mediaHandler:Landroid/os/Handler;

.field private menulayout:Landroid/widget/LinearLayout;

.field private pageindex:I

.field private sort:[Ljava/lang/String;

.field protected sp:Landroid/content/SharedPreferences;

.field private start:J

.field private totalpage:I

.field private trystate:I

.field private tv_filter_year:Landroid/widget/TextView;

.field private tv_type_details_sum:Landroid/widget/TextView;

.field private type:Ljava/lang/String;

.field private type_details_text:Landroid/widget/TextView;

.field private typename:Ljava/lang/String;

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vip:I

.field private vipstate:I

.field private vodDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private vodFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private vodpageindex:I

.field private vodtypeAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

.field private vodtypeinfo:Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

.field private years:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    const-string v0, "VodTypeActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->TAG:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 90
    const-string v0, "VOD_DATA"

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->VOD_DATA:Ljava/lang/String;

    .line 91
    const-string v0, "VOD_FILTER"

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->VOD_FILTER:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->author:Ljava/lang/String;

    .line 95
    iput-object p0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->context:Landroid/content/Context;

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Hotdesc"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "scoredesc"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "updatedesc"

    aput-object v4, v0, v3

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->sort:[Ljava/lang/String;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->lastIndex:I

    .line 109
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$1;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mediaHandler:Landroid/os/Handler;

    .line 150
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->pageindex:I

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->type:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->typename:Ljava/lang/String;

    .line 159
    const-string v0, "Trystate"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->trystate:I

    return-void
.end method

.method private GetMotion(I)V
    .locals 19
    .param p1, "position"    # I

    .line 795
    move-object/from16 v13, p0

    const-string/jumbo v14, "vip"

    const-string v15, ""

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 798
    .local v6, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, v13, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v14, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x1

    cmp-long v7, v0, v4

    if-ltz v7, :cond_1

    :try_start_1
    iget-object v0, v13, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v14, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "999999999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 801
    :cond_0
    const/4 v0, 0x0

    iput v0, v13, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vipstate:I
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 853
    :catch_0
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_3

    .line 799
    :cond_1
    :goto_1
    :try_start_2
    iput v2, v13, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vipstate:I

    .line 803
    :goto_2
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v13, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v13, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 804
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-static {v13, v0, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "User_url":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 806
    .local v8, "RC4KEY":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 807
    .local v9, "RSAKEY":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 808
    .local v10, "AESKEY":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 809
    .local v11, "AESIV":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v13, v1, v15}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 810
    .local v12, "Appkey":Ljava/lang/String;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v13, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 811
    .local v7, "miType":I
    new-instance v16, Lcom/shenma/tvlauncher/vod/VodTypeActivity$18;

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/api.php?app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&act=motion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/vod/VodTypeActivity$16;

    move/from16 v2, p1

    invoke-direct {v5, v13, v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$16;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)V

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity$17;

    invoke-direct {v1, v13}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$17;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v18, v6

    .end local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .local v18, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v6, v17

    :try_start_3
    invoke-direct/range {v1 .. v12}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$18;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 851
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, v13, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    .line 852
    return-void

    .line 853
    .end local v0    # "User_url":Ljava/lang/String;
    .end local v1    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v7    # "miType":I
    .end local v8    # "RC4KEY":Ljava/lang/String;
    .end local v9    # "RSAKEY":Ljava/lang/String;
    .end local v10    # "AESKEY":Ljava/lang/String;
    .end local v11    # "AESIV":Ljava/lang/String;
    .end local v12    # "Appkey":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v18    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :catch_2
    move-exception v0

    move-object/from16 v18, v6

    .line 854
    .end local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .local v0, "ex":Ljava/text/ParseException;
    .restart local v18    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_3
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 855
    move-object/from16 v6, v18

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->tv_type_details_sum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_sort:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodDatas:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodpageindex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .param p1, "x1"    # I

    .line 83
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodpageindex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodtypeinfo:Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodtypeinfo:Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mediaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .param p1, "x1"    # I

    .line 83
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->totalpage:I

    return p1
.end method

.method static synthetic access$1600(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodtypeAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;)Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .param p1, "x1"    # Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodtypeAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodtypeAdapter;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gv_type_details_grid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .param p1, "x1"    # I

    .line 83
    iput p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->pageindex:I

    return p1
.end method

.method static synthetic access$1900(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodFilter:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/shenma/tvlauncher/vod/VodTypeActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->GetMotion(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodFilter:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->pageDown()V

    return-void
.end method

.method static synthetic access$300(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->types:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->types:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->years:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->years:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->areas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .param p1, "x1"    # Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->areas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_type:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_year:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_area:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_seach:Landroid/widget/ListView;

    return-object v0
.end method

.method private clearFilter()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_sort:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->setSelctItem(I)V

    .line 416
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_sort:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 417
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_area:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->setSelctItem(I)V

    .line 418
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_area:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 419
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_type:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->setSelctItem(I)V

    .line 420
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_type:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 421
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_year:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->setSelctItem(I)V

    .line 422
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_year:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 423
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_seach:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->setSelctItem(I)V

    .line 424
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_seach:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodDatas:Ljava/util/ArrayList;

    .line 426
    iput v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->pageindex:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filterString:Ljava/lang/String;

    .line 428
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->processLogic(Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 641
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$10;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    return-object v0
.end method

.method private createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;",
            ">;"
        }
    .end annotation

    .line 581
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$9;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    return-object v0
.end method

.method private createVodFilterErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 573
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$8;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$8;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    return-object v0
.end method

.method private createVodFilterSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/vod/domain/VodFilter;",
            ">;"
        }
    .end annotation

    .line 509
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    return-object v0
.end method

.method private getVodcategory()V
    .locals 21

    .line 224
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v12, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v12, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 225
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 226
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 227
    .local v14, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 228
    .local v15, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 229
    .local v16, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 230
    .local v17, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 231
    .local v18, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 232
    .local v19, "miType":I
    new-instance v20, Lcom/shenma/tvlauncher/vod/VodTypeActivity$4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api.php?app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shenma/tvlauncher/Api;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&act=category_notice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/vod/VodTypeActivity$2;

    invoke-direct {v4, v12}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$2;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/VodTypeActivity$3;

    invoke-direct {v5, v12}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$3;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$4;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v1, v12, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 275
    return-void
.end method

.method private initData()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->iv_type_details_type:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->typename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->getFilterDataFromServer()V

    .line 219
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->getVodcategory()V

    .line 220
    return-void
.end method

.method private initIntent()V
    .locals 4

    .line 191
    const-string v0, ""

    const-string v1, "Api_url"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "Api_url":Ljava/lang/String;
    const-string v2, "BASE_HOST"

    invoke-static {p0, v2, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "BASE_HOST":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->type:Ljava/lang/String;

    .line 194
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->type:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/api.php/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/vod/?ac=list&class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->VOD_TYPE:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TYPENAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->typename:Ljava/lang/String;

    .line 198
    :cond_0
    return-void
.end method

.method private initMenuData()V
    .locals 0

    .line 308
    return-void
.end method

.method private initView()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 205
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->findViewById()V

    .line 206
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->loadViewLayout()V

    .line 207
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->setListener()V

    .line 208
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->processLogic(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gv_type_details_grid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gHeight:I

    .line 211
    return-void
.end method

.method private pageDown()V
    .locals 2

    .line 723
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->pageindex:I

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->totalpage:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodpageindex:I

    if-gt v0, v1, :cond_1

    .line 724
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->pageindex:I

    .line 726
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filterString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 727
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->processLogic(Ljava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->processLogic(Ljava/lang/String;)V

    .line 733
    :cond_1
    :goto_0
    return-void
.end method

.method private setFilterString()V
    .locals 6

    .line 391
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filterString:Ljava/lang/String;

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodDatas:Ljava/util/ArrayList;

    .line 393
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->pageindex:I

    .line 394
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_sort:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 395
    .local v0, "s":I
    if-ltz v0, :cond_0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filterString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&sort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->sort:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filterString:Ljava/lang/String;

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_area:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 399
    .local v1, "j":I
    if-ltz v1, :cond_1

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filterString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&area="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_area:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filterString:Ljava/lang/String;

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_type:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    .line 403
    .local v2, "k":I
    if-ltz v2, :cond_2

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filterString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_type:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filterString:Ljava/lang/String;

    .line 406
    :cond_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_year:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    .line 407
    .local v3, "m":I
    if-ltz v3, :cond_3

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filterString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&year="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_year:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/shenma/tvlauncher/utils/Utils;->getEcodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filterString:Ljava/lang/String;

    .line 410
    :cond_3
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filterString:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->processLogic(Ljava/lang/String;)V

    .line 411
    return-void
.end method


# virtual methods
.method public GetMotionResponse(Ljava/lang/String;I)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 865
    move-object/from16 v1, p0

    move/from16 v2, p2

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 866
    .local v4, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 867
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 868
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 871
    .local v3, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 872
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 873
    .local v8, "code":I
    const/16 v9, 0xc8

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string/jumbo v12, "vip"

    if-ne v8, v9, :cond_3

    .line 874
    :try_start_2
    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v9, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 875
    .local v9, "miType":I
    const/4 v13, 0x0

    .line 876
    .local v13, "msg":Lorg/json/JSONObject;
    const-string v14, "msg"

    if-ne v9, v11, :cond_0

    .line 877
    :try_start_3
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    goto :goto_0

    .line 878
    :cond_0
    if-ne v9, v10, :cond_1

    .line 879
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    goto :goto_0

    .line 880
    :cond_1
    const/4 v15, 0x3

    if-ne v9, v15, :cond_2

    .line 881
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14, v3}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    .line 883
    :cond_2
    :goto_0
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 884
    .local v14, "vip":Ljava/lang/String;
    const-string v15, "Try"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 885
    .local v15, "Try":I
    const-string v10, "Clientmode"

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 886
    .local v10, "Clientmode":I
    iput v15, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->trystate:I

    .line 887
    iget-object v11, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11, v12, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 888
    sget-object v11, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->Sp:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "Submission_method"

    .line 889
    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "Trystate"

    .line 890
    invoke-interface {v11, v12, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 891
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 892
    nop

    .end local v9    # "miType":I
    .end local v10    # "Clientmode":I
    .end local v13    # "msg":Lorg/json/JSONObject;
    .end local v14    # "vip":Ljava/lang/String;
    .end local v15    # "Try":I
    goto/16 :goto_1

    :cond_3
    const/16 v9, 0x7f

    const-string v10, "ckinfo"

    const-string v11, "fen"

    const-string v13, "passWord"

    const-string/jumbo v14, "userName"

    if-ne v8, v9, :cond_4

    .line 893
    :try_start_4
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v15, 0x6

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 894
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 895
    return-void

    .line 896
    :cond_4
    const/16 v15, 0x72

    if-ne v8, v15, :cond_5

    .line 897
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v15, 0x7

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 898
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 899
    return-void

    .line 900
    :cond_5
    const/16 v15, 0x7d

    if-ne v8, v15, :cond_6

    .line 901
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 902
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 903
    return-void

    .line 904
    :cond_6
    if-ne v8, v9, :cond_7

    .line 905
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v15, 0x9

    invoke-virtual {v9, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 906
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v13, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v11, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 907
    return-void

    .line 908
    :cond_7
    const/16 v9, 0xc9

    const/16 v10, 0xa

    if-ne v8, v9, :cond_8

    .line 909
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 910
    return-void

    .line 911
    :cond_8
    const/16 v9, 0x6a

    if-ne v8, v9, :cond_9

    .line 912
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 913
    return-void

    .line 915
    :cond_9
    :goto_1
    iget v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vipstate:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->trystate:I

    if-ne v9, v10, :cond_a

    goto :goto_2

    .line 923
    :cond_a
    iget-object v9, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 916
    :cond_b
    :goto_2
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {v9, v1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 917
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "vodtype"

    iget-object v11, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->type:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    const-string/jumbo v10, "vodstate"

    iget-object v11, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodDatas:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getState()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 919
    const-string v10, "nextlink"

    iget-object v11, v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->vodDatas:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getNextlink()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 920
    invoke-virtual {v1, v9}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 921
    const/high16 v10, 0x10a0000

    const v11, 0x10a0001

    invoke-virtual {v1, v10, v11}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->overridePendingTransition(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 922
    .end local v9    # "intent":Landroid/content/Intent;
    nop

    .line 928
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v8    # "code":I
    :goto_3
    goto :goto_5

    .line 926
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v7, p1

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 929
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method public VodcategoryResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .line 279
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 287
    .local v5, "code":I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "msg":Ljava/lang/String;
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 289
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .local v7, "miType":I
    const-string v9, "UTF-8"

    if-ne v7, v8, :cond_0

    .line 291
    :try_start_1
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->type_details_text:Landroid/widget/TextView;

    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 293
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->type_details_text:Landroid/widget/TextView;

    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 295
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->type_details_text:Landroid/widget/TextView;

    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->type_details_text:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "miType":I
    :cond_3
    goto :goto_1

    .line 299
    :catch_0
    move-exception v4

    .line 300
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected closeProgressDialog()V
    .locals 0

    .line 790
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 791
    return-void
.end method

.method protected findViewById()V
    .locals 3

    .line 312
    const v0, 0x7f0802be

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->iv_type_details_type:Landroid/widget/TextView;

    .line 313
    const v0, 0x7f0802bd

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->type_details_text:Landroid/widget/TextView;

    .line 314
    const v0, 0x7f0802bc

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->tv_type_details_sum:Landroid/widget/TextView;

    .line 315
    const v0, 0x7f0802b9

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->b_type_details_fliter:Landroid/widget/ImageView;

    .line 316
    const v0, 0x7f0802ba

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gv_type_details_grid:Landroid/widget/GridView;

    .line 317
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gv_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 318
    const v0, 0x7f0802bb

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    .line 319
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    const v1, 0x7f08026b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->tv_filter_year:Landroid/widget/TextView;

    .line 320
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_type:Landroid/widget/ListView;

    .line 321
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_type:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 322
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0800ae

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_year:Landroid/widget/ListView;

    .line 323
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_year:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 324
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0800aa

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_area:Landroid/widget/ListView;

    .line 325
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_area:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 326
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0800ab

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_seach:Landroid/widget/ListView;

    .line 327
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_seach:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 328
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0800ac

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_sort:Landroid/widget/ListView;

    .line 329
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_sort:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 330
    return-void
.end method

.method protected getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V
    .locals 9
    .param p1, "reqVo"    # Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    .line 450
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->showProgressDialog()V

    .line 451
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->VOD_DATA:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 453
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$5;

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    const-class v6, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    .line 454
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v7

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$5;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 477
    .local v0, "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .end local v0    # "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;>;"
    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->VOD_FILTER:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    .line 479
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$6;

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    const-class v6, Lcom/shenma/tvlauncher/vod/domain/VodFilter;

    .line 480
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->createVodFilterSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v7

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->createVodFilterErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$6;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 502
    .local v0, "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VodFilter;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    nop

    .line 505
    .end local v0    # "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VodFilter;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method protected getFilterDataFromServer()V
    .locals 5

    .line 380
    const-string v0, ""

    const-string v1, "Api_url"

    invoke-static {p0, v1, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "Api_url":Ljava/lang/String;
    const-string v2, "BASE_HOST"

    invoke-static {p0, v2, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "BASE_HOST":Ljava/lang/String;
    new-instance v2, Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    invoke-direct {v2}, Lcom/shenma/tvlauncher/vod/domain/RequestVo;-><init>()V

    .line 383
    .local v2, "vo":Lcom/shenma/tvlauncher/vod/domain/RequestVo;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->context:Landroid/content/Context;

    iput-object v3, v2, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->context:Landroid/content/Context;

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/api.php/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/vod/?&ac=flitter&class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    .line 385
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->VOD_FILTER:Ljava/lang/String;

    iput-object v3, v2, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->type:Ljava/lang/String;

    .line 386
    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V

    .line 387
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 374
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->setContentView(I)V

    .line 172
    const v0, 0x7f0802fb

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07015b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 173
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->initIntent()V

    .line 174
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->initView()V

    .line 175
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->initData()V

    .line 176
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->initMenuData()V

    .line 177
    const/4 v0, 0x0

    const-string v1, "shenma"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->sp:Landroid/content/SharedPreferences;

    .line 178
    const-string v1, "initData"

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->Sp:Landroid/content/SharedPreferences;

    .line 179
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 335
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_seach:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 336
    if-nez p3, :cond_0

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->VOD_TYPE:Ljava/lang/String;

    const-string v3, "VOD_TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->type:Ljava/lang/String;

    const-string v3, "TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 341
    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->overridePendingTransition(II)V

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 342
    :cond_0
    if-ne p3, v1, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->clearFilter()V

    nop

    .line 347
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_type:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_type:Landroid/widget/ListView;

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 349
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_type:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->setSelctItem(I)V

    .line 350
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->setFilterString()V

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_year:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_year:Landroid/widget/ListView;

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 355
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_year:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->setSelctItem(I)V

    .line 356
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->setFilterString()V

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_area:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_area:Landroid/widget/ListView;

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 361
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_area:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->setSelctItem(I)V

    .line 362
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->setFilterString()V

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_sort:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_sort:Landroid/widget/ListView;

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 367
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_sort:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    invoke-virtual {v0, p3}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;->setSelctItem(I)V

    .line 368
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->setFilterString()V

    .line 370
    :cond_5
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 739
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->showFilter()V

    .line 753
    return v1

    .line 741
    :cond_1
    const-string v0, "VodTypeActivity"

    const-string v2, "KeyEvent.KEYCODE_BACK"

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 744
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gv_type_details_grid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 746
    return v1

    .line 748
    :cond_2
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->overridePendingTransition(II)V

    .line 749
    nop

    .line 755
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 2

    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 184
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->overridePendingTransition(II)V

    .line 185
    return-void
.end method

.method protected processLogic(Ljava/lang/String;)V
    .locals 3
    .param p1, "filter"    # Ljava/lang/String;

    .line 435
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/domain/RequestVo;-><init>()V

    .line 436
    .local v0, "vo":Lcom/shenma/tvlauncher/vod/domain/RequestVo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->context:Landroid/content/Context;

    .line 437
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->VOD_DATA:Ljava/lang/String;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->type:Ljava/lang/String;

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->VOD_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->pageindex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vo.requestUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "joychang"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->start:J

    .line 441
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V

    .line 442
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_type:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 670
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_year:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 671
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_area:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 672
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_seach:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 673
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->filter_list_sort:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 674
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->b_type_details_fliter:Landroid/widget/ImageView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity$11;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$11;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gv_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity$12;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$12;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 685
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gv_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$13;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 697
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gv_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity$14;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$14;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 709
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gv_type_details_grid:Landroid/widget/GridView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodTypeActivity$15;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$15;-><init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 716
    return-void
.end method

.method protected showFilter()V
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const-string v1, "VodTypeActivity"

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gv_type_details_grid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->clearFocus()V

    .line 763
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gv_type_details_grid:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 764
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 765
    const-string v0, "menulayout=GONE"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :cond_0
    const-string v0, "menulayout=VISIBIE"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 769
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->menulayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->gv_type_details_grid:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 772
    :goto_0
    return-void
.end method

.method protected showProgressDialog()V
    .locals 1

    .line 785
    const v0, 0x7f0e0192

    invoke-static {p0, v0}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 786
    return-void
.end method
