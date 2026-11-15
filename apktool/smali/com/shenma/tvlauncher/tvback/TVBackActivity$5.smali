.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    .line 417
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 421
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$700(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$800(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$900(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 424
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1000(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1100(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 427
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1200(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$1300(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 430
    return-void

    .line 432
    :cond_1
    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 458
    :pswitch_0
    const/4 v1, 0x6

    sput v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 459
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    .line 460
    goto :goto_1

    .line 454
    :pswitch_1
    const/4 v1, 0x5

    sput v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 455
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    .line 456
    goto :goto_1

    .line 450
    :pswitch_2
    const/4 v1, 0x4

    sput v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 451
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    .line 452
    goto :goto_1

    .line 446
    :pswitch_3
    const/4 v1, 0x3

    sput v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 447
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    .line 448
    goto :goto_1

    .line 442
    :pswitch_4
    const/4 v1, 0x2

    sput v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 443
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    .line 444
    goto :goto_1

    .line 438
    :pswitch_5
    sput v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 439
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    .line 440
    goto :goto_1

    .line 434
    :pswitch_6
    const/4 v1, 0x0

    sput v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 435
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    .line 436
    nop

    .line 464
    :goto_1
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->access$2500()[Landroid/widget/RadioButton;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 465
    return-void

    :pswitch_data_0
    .packed-switch 0x7f08019c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
