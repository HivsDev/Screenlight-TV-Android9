.class Lcom/aliyun/liveshift/LiveTimeUpdater$2;
.super Ljava/lang/Object;
.source "LiveTimeUpdater.java"

# interfaces
.implements Lcom/aliyun/utils/BaseRequest$OnRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/liveshift/LiveTimeUpdater;->updateLiveTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/utils/BaseRequest$OnRequestListener<",
        "Lcom/aliyun/liveshift/bean/TimeLineContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;


# direct methods
.method constructor <init>(Lcom/aliyun/liveshift/LiveTimeUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 77
    iput-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;

    .line 99
    return-void
.end method

.method public onSuccess(Lcom/aliyun/liveshift/bean/TimeLineContent;Ljava/lang/String;)V
    .locals 16
    .param p1, "requestInfo"    # Lcom/aliyun/liveshift/bean/TimeLineContent;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v2}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$800(Lcom/aliyun/liveshift/LiveTimeUpdater;)Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 82
    iget-wide v10, v1, Lcom/aliyun/liveshift/bean/TimeLineContent;->current:J

    .line 83
    .local v10, "currentTime":J
    iget-object v2, v0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v2, v1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$900(Lcom/aliyun/liveshift/LiveTimeUpdater;Lcom/aliyun/liveshift/bean/TimeLineContent;)J

    move-result-wide v12

    .line 84
    .local v12, "shiftStartTime":J
    iget-object v2, v0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v2, v1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$1000(Lcom/aliyun/liveshift/LiveTimeUpdater;Lcom/aliyun/liveshift/bean/TimeLineContent;)J

    move-result-wide v14

    .line 86
    .local v14, "shiftEndTime":J
    iget-object v2, v0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v2, v10, v11}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$602(Lcom/aliyun/liveshift/LiveTimeUpdater;J)J

    .line 87
    iget-object v2, v0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v2}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$500(Lcom/aliyun/liveshift/LiveTimeUpdater;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 88
    iget-object v2, v0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v2}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$600(Lcom/aliyun/liveshift/LiveTimeUpdater;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$502(Lcom/aliyun/liveshift/LiveTimeUpdater;J)J

    .line 91
    :cond_0
    iget-object v2, v0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$700(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V

    .line 92
    iget-object v2, v0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v2}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$800(Lcom/aliyun/liveshift/LiveTimeUpdater;)Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    move-result-object v3

    move-wide v4, v10

    move-wide v6, v12

    move-wide v8, v14

    invoke-interface/range {v3 .. v9}, Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;->onUpdater(JJJ)V

    .line 94
    .end local v10    # "currentTime":J
    .end local v12    # "shiftStartTime":J
    .end local v14    # "shiftEndTime":J
    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 77
    check-cast p1, Lcom/aliyun/liveshift/bean/TimeLineContent;

    invoke-virtual {p0, p1, p2}, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->onSuccess(Lcom/aliyun/liveshift/bean/TimeLineContent;Ljava/lang/String;)V

    return-void
.end method
