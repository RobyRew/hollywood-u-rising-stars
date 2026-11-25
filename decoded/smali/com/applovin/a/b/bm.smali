.class abstract Lcom/applovin/a/b/bm;
.super Lcom/applovin/a/b/ba;


# instance fields
.field protected a:Lcom/applovin/b/b;

.field protected b:Lcom/applovin/b/c;

.field private c:Ljava/util/List;

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/a/b/e;Ljava/util/List;Lcom/applovin/b/c;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/applovin/a/b/ba;-><init>(Ljava/lang/String;Lcom/applovin/a/b/e;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/a/b/bm;->d:I

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Slots cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p0, Lcom/applovin/a/b/bm;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/applovin/a/b/bm;->b:Lcom/applovin/b/c;

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bm;->a:Lcom/applovin/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bm;->a:Lcom/applovin/b/b;

    invoke-interface {v0, p1}, Lcom/applovin/b/b;->a(I)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bm;->a:Lcom/applovin/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bm;->a:Lcom/applovin/b/b;

    invoke-interface {v0, p1}, Lcom/applovin/b/b;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/applovin/a/b/dj;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/a/b/bm;->h:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p2, v1, p1, v2}, Lcom/applovin/a/b/dj;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/a/b/bm;->g:Lcom/applovin/c/l;

    invoke-virtual {p0}, Lcom/applovin/a/b/bm;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to cache icon resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/applovin/c/l;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/a/b/bm;->g:Lcom/applovin/c/l;

    invoke-virtual {p0}, Lcom/applovin/a/b/bm;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to cache icon resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract a(Lcom/applovin/a/b/g;)V
.end method

.method protected abstract a(Lcom/applovin/a/b/g;Lcom/applovin/a/b/dj;)Z
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/applovin/a/b/bm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/g;

    iget-object v2, p0, Lcom/applovin/a/b/bm;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v2}, Lcom/applovin/a/b/e;->m()Lcom/applovin/a/b/dj;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/bm;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v3}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v3

    invoke-virtual {p0}, Lcom/applovin/a/b/bm;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Beginning resource caching phase..."

    invoke-interface {v3, v4, v5}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/applovin/a/b/bm;->a(Lcom/applovin/a/b/g;Lcom/applovin/a/b/dj;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/applovin/a/b/bm;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/applovin/a/b/bm;->d:I

    invoke-virtual {p0, v0}, Lcom/applovin/a/b/bm;->a(Lcom/applovin/a/b/g;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/bm;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/a/b/bm;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Unable to cache resources"

    invoke-interface {v0, v2, v3}, Lcom/applovin/c/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget v0, p0, Lcom/applovin/a/b/bm;->d:I

    iget-object v1, p0, Lcom/applovin/a/b/bm;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/applovin/a/b/bm;->c:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/applovin/a/b/bm;->a(Ljava/util/List;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/applovin/a/b/bm;->f:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->aN:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/a/b/bm;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/a/b/bm;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Mismatch between successful populations and requested size"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/applovin/a/b/bm;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/bm;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/a/b/bm;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Encountered exception while notifying publisher code"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/applovin/a/b/bm;->c:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/applovin/a/b/bm;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
