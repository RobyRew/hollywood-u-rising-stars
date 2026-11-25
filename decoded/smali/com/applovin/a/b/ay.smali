.class abstract Lcom/applovin/a/b/ay;
.super Lcom/applovin/a/b/ba;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/applovin/a/b/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/a/b/ba;-><init>(Ljava/lang/String;Lcom/applovin/a/b/e;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/a/b/da;)V
    .locals 8

    new-instance v0, Lcom/applovin/a/b/az;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Repeat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/a/b/ay;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/applovin/a/b/bb;->h:Lcom/applovin/a/b/bd;

    iget-object v4, p0, Lcom/applovin/a/b/ay;->f:Lcom/applovin/a/b/e;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/applovin/a/b/az;-><init>(Lcom/applovin/a/b/ay;Ljava/lang/String;Lcom/applovin/a/b/bd;Lcom/applovin/a/b/e;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/a/b/da;)V

    sget-object v1, Lcom/applovin/a/b/bb;->k:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/cd;->a(Lcom/applovin/a/b/bd;)V

    invoke-virtual {v0}, Lcom/applovin/a/b/cd;->run()V

    return-void
.end method
