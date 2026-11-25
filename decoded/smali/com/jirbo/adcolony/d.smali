.class Lcom/jirbo/adcolony/d;
.super Lcom/jirbo/adcolony/j;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/jirbo/adcolony/j;-><init>()V

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/j;)Lcom/jirbo/adcolony/d;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/jirbo/adcolony/d;
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lcom/jirbo/adcolony/g;

    invoke-direct {v0, p1}, Lcom/jirbo/adcolony/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/j;)Lcom/jirbo/adcolony/d;

    return-object p0
.end method

.method a(I)Lcom/jirbo/adcolony/h;
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/d;->a(ILcom/jirbo/adcolony/h;)Lcom/jirbo/adcolony/h;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/h;

    invoke-direct {v0}, Lcom/jirbo/adcolony/h;-><init>()V

    goto :goto_0
.end method

.method a(ILcom/jirbo/adcolony/h;)Lcom/jirbo/adcolony/h;
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    .line 358
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->m()Lcom/jirbo/adcolony/h;

    move-result-object p2

    .line 359
    :cond_0
    return-object p2
.end method

.method a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    .line 372
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->i_()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->b()Ljava/lang/String;

    move-result-object p2

    .line 373
    :cond_0
    return-object p2
.end method

.method a(Lcom/jirbo/adcolony/bu;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 307
    if-nez v4, :cond_0

    .line 309
    const-string/jumbo v0, "[]"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/bu;->a(Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void

    .line 311
    :cond_0
    if-ne v4, v1, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const-string/jumbo v0, "["

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/bu;->a(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/j;->a(Lcom/jirbo/adcolony/bu;)V

    .line 315
    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/bu;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_1
    const-string/jumbo v0, "["

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/bu;->b(Ljava/lang/String;)V

    .line 320
    iget v0, p1, Lcom/jirbo/adcolony/bu;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/jirbo/adcolony/bu;->b:I

    move v3, v2

    move v0, v1

    .line 323
    :goto_1
    if-ge v3, v4, :cond_3

    .line 325
    if-eqz v0, :cond_2

    move v1, v2

    .line 327
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/j;->a(Lcom/jirbo/adcolony/bu;)V

    .line 323
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_1

    .line 326
    :cond_2
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/bu;->c(C)V

    move v1, v0

    goto :goto_2

    .line 329
    :cond_3
    invoke-virtual {p1}, Lcom/jirbo/adcolony/bu;->b()V

    .line 331
    iget v0, p1, Lcom/jirbo/adcolony/bu;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/jirbo/adcolony/bu;->b:I

    .line 332
    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/bu;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/d;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method g()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method h()Lcom/jirbo/adcolony/d;
    .locals 0

    .prologue
    .line 301
    return-object p0
.end method

.method h_()I
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method j()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
