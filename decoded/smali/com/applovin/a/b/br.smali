.class Lcom/applovin/a/b/br;
.super Lcom/applovin/a/b/cd;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/bq;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/bq;Ljava/lang/String;ILcom/applovin/a/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/br;->a:Lcom/applovin/a/b/bq;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/a/b/cd;-><init>(Ljava/lang/String;ILcom/applovin/a/b/e;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/br;->a:Lcom/applovin/a/b/bq;

    invoke-static {v0}, Lcom/applovin/a/b/bq;->d(Lcom/applovin/a/b/bq;)Lcom/applovin/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/br;->a:Lcom/applovin/a/b/bq;

    invoke-static {v1}, Lcom/applovin/a/b/bq;->c(Lcom/applovin/a/b/bq;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/applovin/c/m;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected a(Lcom/applovin/a/b/cz;Lcom/applovin/a/b/da;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/applovin/a/b/br;->a:Lcom/applovin/a/b/bq;

    invoke-static {v0}, Lcom/applovin/a/b/bq;->a(Lcom/applovin/a/b/bq;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/br;->f:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->aF:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    iget-object v0, p0, Lcom/applovin/a/b/br;->a:Lcom/applovin/a/b/bq;

    invoke-static {v0}, Lcom/applovin/a/b/bq;->b(Lcom/applovin/a/b/bq;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/b/br;->a:Lcom/applovin/a/b/bq;

    invoke-static {v0}, Lcom/applovin/a/b/bq;->c(Lcom/applovin/a/b/bq;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v4, p2}, Lcom/applovin/a/b/cz;->a(Ljava/lang/String;IZLcom/applovin/a/b/da;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/br;->a:Lcom/applovin/a/b/bq;

    invoke-static {v0}, Lcom/applovin/a/b/bq;->a(Lcom/applovin/a/b/bq;)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/b/br;->a:Lcom/applovin/a/b/bq;

    invoke-static {v0}, Lcom/applovin/a/b/bq;->c(Lcom/applovin/a/b/bq;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/applovin/a/b/br;->a:Lcom/applovin/a/b/bq;

    invoke-static {v0}, Lcom/applovin/a/b/bq;->b(Lcom/applovin/a/b/bq;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/a/b/cz;->a(Ljava/lang/String;ILorg/json/JSONObject;ZLcom/applovin/a/b/da;)V

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/br;->a:Lcom/applovin/a/b/bq;

    invoke-static {v0}, Lcom/applovin/a/b/bq;->d(Lcom/applovin/a/b/bq;)Lcom/applovin/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/br;->a:Lcom/applovin/a/b/bq;

    invoke-static {v1}, Lcom/applovin/a/b/bq;->c(Lcom/applovin/a/b/bq;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/c/m;->a(Ljava/lang/String;)V

    return-void
.end method
