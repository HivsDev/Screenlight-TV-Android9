.class Lcom/umeng/analytics/d/d$a;
.super Lcom/umeng/a/a/a/c/c;
.source "ClientStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/d/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/d$1;)V
    .locals 0

    .line 307
    invoke-direct {p0}, Lcom/umeng/analytics/d/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 307
    check-cast p2, Lcom/umeng/analytics/d/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/d$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/d;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 314
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 315
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_2

    .line 316
    nop

    .line 348
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 351
    invoke-virtual {p2}, Lcom/umeng/analytics/d/d;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p2}, Lcom/umeng/analytics/d/d;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p2}, Lcom/umeng/analytics/d/d;->m()V

    .line 358
    return-void

    .line 355
    :cond_0
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'failed_requests\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_1
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'successful_requests\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_2
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    .line 344
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto :goto_1

    .line 336
    :cond_3
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_4

    .line 337
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/d/d;->c:I

    .line 338
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/d;->c(Z)V

    goto :goto_1

    .line 340
    :cond_4
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 342
    goto :goto_1

    .line 328
    :cond_5
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_6

    .line 329
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/d/d;->b:I

    .line 330
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/d;->b(Z)V

    goto :goto_1

    .line 332
    :cond_6
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 334
    goto :goto_1

    .line 320
    :cond_7
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_8

    .line 321
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/d/d;->a:I

    .line 322
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/d/d;->a(Z)V

    goto :goto_1

    .line 324
    :cond_8
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 326
    nop

    .line 346
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->m()V

    goto/16 :goto_0
.end method

.method public synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 307
    check-cast p2, Lcom/umeng/analytics/d/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/d$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/d;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/d/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 361
    invoke-virtual {p2}, Lcom/umeng/analytics/d/d;->m()V

    .line 363
    invoke-static {}, Lcom/umeng/analytics/d/d;->n()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 364
    invoke-static {}, Lcom/umeng/analytics/d/d;->o()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 365
    iget v0, p2, Lcom/umeng/analytics/d/d;->a:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 366
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 367
    invoke-static {}, Lcom/umeng/analytics/d/d;->p()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 368
    iget v0, p2, Lcom/umeng/analytics/d/d;->b:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 369
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 370
    invoke-virtual {p2}, Lcom/umeng/analytics/d/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lcom/umeng/analytics/d/d;->q()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 372
    iget p2, p2, Lcom/umeng/analytics/d/d;->c:I

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 373
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 375
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 376
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 377
    return-void
.end method
