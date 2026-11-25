.class Lcom/applovin/a/b/bk;
.super Lcom/applovin/a/b/cd;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/applovin/a/b/bj;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/bj;Ljava/lang/String;Lcom/applovin/a/b/bd;Lcom/applovin/a/b/e;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/bk;->b:Lcom/applovin/a/b/bj;

    iput-object p5, p0, Lcom/applovin/a/b/bk;->a:Lorg/json/JSONObject;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/a/b/cd;-><init>(Ljava/lang/String;Lcom/applovin/a/b/bd;Lcom/applovin/a/b/e;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bk;->f:Lcom/applovin/a/b/e;

    invoke-static {p1, v0}, Lcom/applovin/a/b/db;->a(ILcom/applovin/a/b/e;)V

    return-void
.end method

.method protected a(Lcom/applovin/a/b/cz;Lcom/applovin/a/b/da;)V
    .locals 2

    const-string/jumbo v0, "device"

    iget-object v1, p0, Lcom/applovin/a/b/bk;->f:Lcom/applovin/a/b/e;

    invoke-static {v0, v1}, Lcom/applovin/a/b/db;->a(Ljava/lang/String;Lcom/applovin/a/b/e;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/bk;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, p2}, Lcom/applovin/a/b/cz;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/a/b/da;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bk;->b:Lcom/applovin/a/b/bj;

    invoke-virtual {v0, p1}, Lcom/applovin/a/b/bj;->a(Lorg/json/JSONObject;)V

    return-void
.end method
