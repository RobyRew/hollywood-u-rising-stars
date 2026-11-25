.class public Lcom/applovin/a/b/bl;
.super Lcom/applovin/a/b/bm;


# direct methods
.method public constructor <init>(Lcom/applovin/a/b/e;Ljava/util/List;Lcom/applovin/b/c;)V
    .locals 1

    const-string/jumbo v0, "TaskCacheNativeAdImages"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/a/b/bm;-><init>(Ljava/lang/String;Lcom/applovin/a/b/e;Ljava/util/List;Lcom/applovin/b/c;)V

    return-void
.end method

.method private b(Lcom/applovin/a/b/g;)Z
    .locals 1

    const/16 v0, -0xc9

    invoke-virtual {p0, p1, v0}, Lcom/applovin/a/b/bl;->a(Lcom/applovin/a/b/g;I)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected a(Lcom/applovin/a/b/g;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bl;->b:Lcom/applovin/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bl;->b:Lcom/applovin/b/c;

    invoke-interface {v0, p1}, Lcom/applovin/b/c;->a(Lcom/applovin/b/a;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/applovin/a/b/g;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bl;->b:Lcom/applovin/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bl;->b:Lcom/applovin/b/c;

    invoke-interface {v0, p1, p2}, Lcom/applovin/b/c;->a(Lcom/applovin/b/a;I)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/applovin/a/b/g;Lcom/applovin/a/b/dj;)Z
    .locals 6

    iget-object v0, p0, Lcom/applovin/a/b/bl;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "TaskCacheNativeAdImages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Beginning slot image caching for ad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/a/b/g;->e()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/applovin/a/b/bl;->a(Ljava/lang/String;Lcom/applovin/a/b/dj;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/applovin/a/b/g;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/a/b/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/applovin/a/b/bl;->a(Ljava/lang/String;Lcom/applovin/a/b/dj;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/applovin/a/b/g;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/a/b/bl;->b(Lcom/applovin/a/b/g;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/applovin/a/b/bl;->b(Lcom/applovin/a/b/g;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/applovin/a/b/bm;->run()V

    return-void
.end method
