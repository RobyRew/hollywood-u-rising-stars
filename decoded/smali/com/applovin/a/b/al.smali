.class public Lcom/applovin/a/b/al;
.super Lcom/applovin/a/b/av;


# direct methods
.method public constructor <init>(Lcom/applovin/a/b/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/b/av;-><init>(Lcom/applovin/a/b/e;)V

    return-void
.end method


# virtual methods
.method a(Lcom/applovin/a/b/bf;)Lcom/applovin/a/b/ba;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/applovin/a/b/bu;

    iget-object v1, p0, Lcom/applovin/a/b/al;->a:Lcom/applovin/a/b/e;

    invoke-direct {v0, v1, v2, p0}, Lcom/applovin/a/b/bu;-><init>(Lcom/applovin/a/b/e;ILcom/applovin/b/b;)V

    invoke-virtual {v0, v2}, Lcom/applovin/a/b/bu;->a(Z)V

    return-object v0
.end method

.method a(Lcom/applovin/a/b/ah;)Lcom/applovin/a/b/bf;
    .locals 1

    sget-object v0, Lcom/applovin/a/b/g;->c:Lcom/applovin/a/b/bf;

    return-object v0
.end method

.method a()Ljava/util/Map;
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Lcom/applovin/a/b/aw;

    iget-object v0, p0, Lcom/applovin/a/b/al;->a:Lcom/applovin/a/b/e;

    sget-object v3, Lcom/applovin/a/b/bb;->aR:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v3}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/applovin/a/b/aw;-><init>(I)V

    sget-object v0, Lcom/applovin/a/b/g;->c:Lcom/applovin/a/b/bf;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public a(I)V
    .locals 1

    sget-object v0, Lcom/applovin/a/b/g;->c:Lcom/applovin/a/b/bf;

    invoke-virtual {p0, v0, p1}, Lcom/applovin/a/b/al;->b(Lcom/applovin/a/b/bf;I)V

    return-void
.end method

.method public a(Lcom/applovin/a/b/bf;I)V
    .locals 0

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/a/b/ah;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/b/a;

    const/4 v1, 0x0

    check-cast p2, Lcom/applovin/b/a;

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/applovin/b/b;

    invoke-interface {p1, v0}, Lcom/applovin/b/b;->a(Ljava/util/List;)V

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/a/b/bf;I)V
    .locals 0

    check-cast p1, Lcom/applovin/b/b;

    invoke-interface {p1, p3}, Lcom/applovin/b/b;->a(I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/b/a;

    iget-object v1, p0, Lcom/applovin/a/b/al;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->q()Lcom/applovin/b/d;

    move-result-object v1

    new-instance v2, Lcom/applovin/a/b/am;

    invoke-direct {v2, p0}, Lcom/applovin/a/b/am;-><init>(Lcom/applovin/a/b/al;)V

    invoke-interface {v1, v0, v2}, Lcom/applovin/b/d;->a(Lcom/applovin/b/a;Lcom/applovin/b/c;)V

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
