.class public Lcom/applovin/a/b/aj;
.super Lcom/applovin/a/b/av;


# direct methods
.method public constructor <init>(Lcom/applovin/a/b/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/b/av;-><init>(Lcom/applovin/a/b/e;)V

    return-void
.end method

.method private a(Lcom/applovin/c/h;Lcom/applovin/c/g;)Lcom/applovin/a/b/bd;
    .locals 1

    sget-object v0, Lcom/applovin/c/g;->a:Lcom/applovin/c/g;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/a/b/bb;->aj:Lcom/applovin/a/b/bd;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/c/g;->d:Lcom/applovin/c/g;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/applovin/a/b/bb;->ak:Lcom/applovin/a/b/bd;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/applovin/a/b/bb;->al:Lcom/applovin/a/b/bd;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/applovin/c/g;->b:Lcom/applovin/c/g;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/applovin/a/b/bb;->am:Lcom/applovin/a/b/bd;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/applovin/a/b/bb;->aj:Lcom/applovin/a/b/bd;

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/applovin/a/b/bf;)Lcom/applovin/a/b/ba;
    .locals 4

    new-instance v0, Lcom/applovin/a/b/bs;

    invoke-virtual {p1}, Lcom/applovin/a/b/bf;->a()Lcom/applovin/c/g;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/a/b/bf;->b()Lcom/applovin/c/h;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/aj;->a:Lcom/applovin/a/b/e;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/applovin/a/b/bs;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;Lcom/applovin/a/b/e;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/bs;->a(Z)V

    return-object v0
.end method

.method a(Lcom/applovin/a/b/ah;)Lcom/applovin/a/b/bf;
    .locals 1

    new-instance v0, Lcom/applovin/a/b/bf;

    check-cast p1, Lcom/applovin/c/a;

    invoke-direct {v0, p1}, Lcom/applovin/a/b/bf;-><init>(Lcom/applovin/c/a;)V

    return-object v0
.end method

.method a()Ljava/util/Map;
    .locals 6

    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lcom/applovin/c/g;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/c/g;

    sget-object v1, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-direct {p0, v1, v0}, Lcom/applovin/a/b/aj;->a(Lcom/applovin/c/h;Lcom/applovin/c/g;)Lcom/applovin/a/b/bd;

    move-result-object v1

    iget-object v4, p0, Lcom/applovin/a/b/aj;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v4, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v4, Lcom/applovin/a/b/aw;

    invoke-direct {v4, v1}, Lcom/applovin/a/b/aw;-><init>(I)V

    new-instance v1, Lcom/applovin/a/b/bf;

    sget-object v5, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-direct {v1, v0, v5}, Lcom/applovin/a/b/bf;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/aj;->a:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->an:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/applovin/a/b/aw;

    invoke-direct {v1, v0}, Lcom/applovin/a/b/aw;-><init>(I)V

    new-instance v0, Lcom/applovin/a/b/bf;

    sget-object v3, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    sget-object v4, Lcom/applovin/c/h;->b:Lcom/applovin/c/h;

    invoke-direct {v0, v3, v4}, Lcom/applovin/a/b/bf;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/applovin/a/b/bf;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/applovin/a/b/aj;->b(Lcom/applovin/a/b/bf;I)V

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/a/b/ah;)V
    .locals 0

    check-cast p1, Lcom/applovin/c/d;

    check-cast p2, Lcom/applovin/c/a;

    invoke-interface {p1, p2}, Lcom/applovin/c/d;->adReceived(Lcom/applovin/c/a;)V

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/a/b/bf;I)V
    .locals 1

    instance-of v0, p1, Lcom/applovin/a/b/dh;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/applovin/a/b/dh;

    invoke-interface {v0, p2, p3}, Lcom/applovin/a/b/dh;->a(Lcom/applovin/a/b/bf;I)V

    :cond_0
    instance-of v0, p1, Lcom/applovin/c/d;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/applovin/c/d;

    invoke-interface {p1, p3}, Lcom/applovin/c/d;->failedToReceiveAd(I)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Lcom/applovin/a/b/bf;Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/applovin/a/b/av;->a(Lcom/applovin/a/b/bf;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public adReceived(Lcom/applovin/c/a;)V
    .locals 0

    check-cast p1, Lcom/applovin/a/b/ah;

    invoke-virtual {p0, p1}, Lcom/applovin/a/b/aj;->c(Lcom/applovin/a/b/ah;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/applovin/a/b/bf;)Lcom/applovin/a/b/ah;
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/a/b/av;->b(Lcom/applovin/a/b/bf;)Lcom/applovin/a/b/ah;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lcom/applovin/a/b/bf;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/applovin/a/b/av;->b(Lcom/applovin/a/b/bf;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/applovin/a/b/bf;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/a/b/av;->c(Lcom/applovin/a/b/bf;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d(Lcom/applovin/a/b/bf;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/a/b/av;->d(Lcom/applovin/a/b/bf;)V

    return-void
.end method

.method public bridge synthetic e(Lcom/applovin/a/b/bf;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/a/b/av;->e(Lcom/applovin/a/b/bf;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f(Lcom/applovin/a/b/bf;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/a/b/av;->f(Lcom/applovin/a/b/bf;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 0

    return-void
.end method
