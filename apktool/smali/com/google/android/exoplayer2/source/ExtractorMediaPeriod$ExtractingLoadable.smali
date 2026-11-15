.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private length:J

.field private volatile loadCanceled:Z

.field private final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

.field private seekTimeUs:J

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/util/ConditionVariable;)V
    .locals 9
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p4, "extractorHolder"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;
    .param p5, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p6, "loadCondition"    # Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 858
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 860
    new-instance v0, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-direct {v0, p3}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 861
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    .line 862
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 863
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 864
    new-instance v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/PositionHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    .line 865
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 866
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 867
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v6, -0x1

    move-object v2, v0

    move-object v3, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 868
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    .line 837
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    .line 837
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    .line 837
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    .line 837
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 837
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    return-void
.end method

.method private setLoadPosition(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 919
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 920
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 922
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    .line 875
    return-void
.end method

.method public load()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, "result":I
    :goto_0
    if-nez v0, :cond_6

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v1, :cond_6

    .line 881
    const/4 v1, 0x0

    .line 883
    .local v1, "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 884
    .local v3, "position":J
    new-instance v12, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    const-wide/16 v9, -0x1

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v12

    move-wide v7, v3

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v12, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 885
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 886
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    .line 887
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 889
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    move-object v11, v5

    .line 890
    .local v11, "uri":Landroid/net/Uri;
    new-instance v12, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    move-object v5, v12

    move-wide v7, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V

    move-object v1, v12

    .line 891
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-virtual {v5, v1, v6, v11}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->selectExtractor(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Landroid/net/Uri;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v5

    .line 892
    .local v5, "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v6, :cond_1

    .line 893
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v5, v3, v4, v6, v7}, Lcom/google/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 894
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 896
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v6, :cond_2

    .line 897
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V

    .line 898
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v6

    move v0, v6

    .line 899
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$700(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)J

    move-result-wide v8

    add-long/2addr v8, v3

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    .line 900
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    move-wide v3, v6

    .line 901
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 902
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$900(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$800(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 906
    .end local v3    # "position":J
    .end local v5    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_2
    if-ne v0, v2, :cond_3

    .line 907
    const/4 v0, 0x0

    goto :goto_2

    .line 908
    :cond_3
    nop

    .line 909
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 911
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 912
    nop

    .line 913
    .end local v1    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    goto/16 :goto_0

    .line 906
    .restart local v1    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    :catchall_0
    move-exception v3

    if-eq v0, v2, :cond_4

    .line 908
    if-eqz v1, :cond_5

    .line 909
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_3

    .line 907
    :cond_4
    const/4 v0, 0x0

    .line 911
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 912
    throw v3

    .line 914
    .end local v1    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    :cond_6
    return-void
.end method
