.class Lcom/shenma/tvlauncher/UserActivity$3;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;

    .line 279
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 283
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/UserActivity;->access$702(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 284
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    const-string/jumbo v4, "userName"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "username":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x1

    const v7, 0x7f07013e

    const v8, 0x7f0e0044

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 328
    :pswitch_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2, v8, v7}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 330
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1300(Lcom/shenma/tvlauncher/UserActivity;)V

    .line 331
    goto/16 :goto_0

    .line 333
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/UserActivity;->access$802(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 334
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/UserActivity;->access$1502(Lcom/shenma/tvlauncher/UserActivity;I)I

    .line 335
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1000(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f0e0035

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 336
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1600(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/UserActivity;->access$902(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)Ljava/util/List;

    .line 337
    goto/16 :goto_0

    .line 317
    :pswitch_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2, v8, v7}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 319
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1300(Lcom/shenma/tvlauncher/UserActivity;)V

    .line 320
    goto/16 :goto_0

    .line 322
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/UserActivity;->access$802(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 323
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2, v6}, Lcom/shenma/tvlauncher/UserActivity;->access$1502(Lcom/shenma/tvlauncher/UserActivity;I)I

    .line 324
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1000(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0e0032

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 325
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1600(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/UserActivity;->access$902(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)Ljava/util/List;

    .line 326
    goto/16 :goto_0

    .line 339
    :pswitch_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2, v8, v7}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 341
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1300(Lcom/shenma/tvlauncher/UserActivity;)V

    goto/16 :goto_0

    .line 343
    :cond_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/UserActivity;->startActivity(Landroid/content/Intent;)V

    .line 344
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {v2, v3, v4}, Lcom/shenma/tvlauncher/UserActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 306
    :pswitch_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2, v8, v7}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 308
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1300(Lcom/shenma/tvlauncher/UserActivity;)V

    .line 309
    goto/16 :goto_0

    .line 311
    :cond_3
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/UserActivity;->access$802(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 312
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1502(Lcom/shenma/tvlauncher/UserActivity;I)I

    .line 313
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1000(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0e011f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 314
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1600(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/UserActivity;->access$902(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)Ljava/util/List;

    .line 315
    goto/16 :goto_0

    .line 287
    :pswitch_4
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/UserActivity;->access$802(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 288
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/UserActivity;->access$902(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)Ljava/util/List;

    .line 289
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1000(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1100(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 292
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->clearDatas()V

    .line 293
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->notifyDataSetChanged()V

    .line 295
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 296
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1000(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0e0125

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 298
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1300(Lcom/shenma/tvlauncher/UserActivity;)V

    goto :goto_0

    .line 300
    :cond_5
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1000(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v6, 0x7f0e01b2

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v6, 0x7f0e0024

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1400(Lcom/shenma/tvlauncher/UserActivity;)V

    .line 304
    nop

    .line 348
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$800(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    .line 349
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$900(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$900(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 351
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1100(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v6, 0x7f0e0096

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/UserActivity;->access$900(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const v6, 0x7f0e001a

    invoke-virtual {v4, v6}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1100(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1000(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v3, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$900(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v5, v5, Lcom/shenma/tvlauncher/UserActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/UserActivity;->access$800(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/nostra13/universalimageloader/core/ImageLoader;Ljava/lang/Boolean;)V

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/UserActivity;->access$1202(Lcom/shenma/tvlauncher/UserActivity;Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    .line 355
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1700(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_6

    .line 356
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1700(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 358
    :cond_6
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1700(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 360
    :cond_7
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1000(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1100(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0e00d3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 362
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->access$1100(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 364
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->clearDatas()V

    .line 365
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$3;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->access$1200(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->notifyDataSetChanged()V

    .line 369
    :cond_8
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0801a3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
