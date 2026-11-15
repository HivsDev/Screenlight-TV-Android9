.class Lcom/shenma/tvlauncher/application/MyApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "MyApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/application/MyApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/application/MyApplication;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/application/MyApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/application/MyApplication;

    .line 47
    iput-object p1, p0, Lcom/shenma/tvlauncher/application/MyApplication$1;->this$0:Lcom/shenma/tvlauncher/application/MyApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 50
    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 52
    const/4 v2, 0x0

    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 53
    .local v3, "status":I
    const-string v4, "health"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 54
    .local v4, "health":I
    const-string v5, "present"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 55
    .local v5, "present":Z
    const-string v6, "level"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 56
    .local v6, "level":I
    const-string v7, "scale"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 57
    .local v7, "scale":I
    const-string v8, "icon-small"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 58
    .local v8, "icon_small":I
    const-string v9, "plugged"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 59
    .local v9, "plugged":I
    const-string/jumbo v10, "voltage"

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 60
    .local v10, "voltage":I
    const-string v11, "temperature"

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 61
    .local v2, "temperature":I
    const-string v11, "technology"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/shenma/tvlauncher/application/MyApplication;->technology:Ljava/lang/String;

    .line 63
    const-string v11, ""

    .line 65
    .local v11, "statusString":Ljava/lang/String;
    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v3, v13, :cond_4

    if-eq v3, v12, :cond_3

    const/4 v14, 0x3

    if-eq v3, v14, :cond_2

    const/4 v14, 0x4

    if-eq v3, v14, :cond_1

    const/4 v14, 0x5

    if-eq v3, v14, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    const-string v11, "full"

    goto :goto_0

    .line 76
    :cond_1
    const-string v11, "not charging"

    .line 77
    goto :goto_0

    .line 73
    :cond_2
    const-string v11, "discharging"

    .line 74
    goto :goto_0

    .line 70
    :cond_3
    const-string v11, "charging"

    .line 71
    goto :goto_0

    .line 67
    :cond_4
    const-string v11, "unknown"

    .line 68
    nop

    .line 83
    :goto_0
    const-string v14, ""

    .line 85
    .local v14, "healthString":Ljava/lang/String;
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 102
    :pswitch_0
    const-string v14, "unspecified failure"

    goto :goto_1

    .line 99
    :pswitch_1
    const-string/jumbo v14, "voltage"

    .line 100
    goto :goto_1

    .line 96
    :pswitch_2
    const-string v14, "dead"

    .line 97
    goto :goto_1

    .line 93
    :pswitch_3
    const-string v14, "overheat"

    .line 94
    goto :goto_1

    .line 90
    :pswitch_4
    const-string v14, "good"

    .line 91
    goto :goto_1

    .line 87
    :pswitch_5
    const-string v14, "unknown"

    .line 88
    nop

    .line 106
    :goto_1
    const-string v15, ""

    .line 107
    .local v15, "acString":Ljava/lang/String;
    if-eq v9, v13, :cond_6

    if-eq v9, v12, :cond_5

    goto :goto_2

    .line 112
    :cond_5
    const-string v15, "plugged usb"

    goto :goto_2

    .line 109
    :cond_6
    const-string v15, "plugged ac"

    .line 110
    nop

    .line 124
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "technology="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/shenma/tvlauncher/application/MyApplication;->technology:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "MyApplication"

    invoke-static {v13, v12}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v2    # "temperature":I
    .end local v3    # "status":I
    .end local v4    # "health":I
    .end local v5    # "present":Z
    .end local v6    # "level":I
    .end local v7    # "scale":I
    .end local v8    # "icon_small":I
    .end local v9    # "plugged":I
    .end local v10    # "voltage":I
    .end local v11    # "statusString":Ljava/lang/String;
    .end local v14    # "healthString":Ljava/lang/String;
    .end local v15    # "acString":Ljava/lang/String;
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
