.class Lcom/applovin/a/b/bt;
.super Lcom/applovin/a/b/cd;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/bs;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/bs;Ljava/lang/String;Lcom/applovin/a/b/bd;Lcom/applovin/a/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/bt;->a:Lcom/applovin/a/b/bs;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/a/b/cd;-><init>(Ljava/lang/String;Lcom/applovin/a/b/bd;Lcom/applovin/a/b/e;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bt;->a:Lcom/applovin/a/b/bs;

    invoke-static {v0, p1}, Lcom/applovin/a/b/bs;->a(Lcom/applovin/a/b/bs;I)V

    return-void
.end method

.method protected a(Lcom/applovin/a/b/cz;Lcom/applovin/a/b/da;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/b/bt;->a:Lcom/applovin/a/b/bs;

    invoke-virtual {v0}, Lcom/applovin/a/b/bs;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/a/b/bt;->f:Lcom/applovin/a/b/e;

    sget-object v2, Lcom/applovin/a/b/bb;->u:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v2}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, p2}, Lcom/applovin/a/b/cz;->a(Ljava/lang/String;ILcom/applovin/a/b/da;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bt;->a:Lcom/applovin/a/b/bs;

    invoke-static {v0, p1}, Lcom/applovin/a/b/bs;->a(Lcom/applovin/a/b/bs;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/bt;->a:Lcom/applovin/a/b/bs;

    invoke-static {v0, p2}, Lcom/applovin/a/b/bs;->a(Lcom/applovin/a/b/bs;I)V

    goto :goto_0
.end method
