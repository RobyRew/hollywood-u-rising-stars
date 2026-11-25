.class Lcom/applovin/a/b/az;
.super Lcom/applovin/a/b/cd;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/applovin/a/b/da;

.field final synthetic d:Lcom/applovin/a/b/ay;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/ay;Ljava/lang/String;Lcom/applovin/a/b/bd;Lcom/applovin/a/b/e;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/a/b/da;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/az;->d:Lcom/applovin/a/b/ay;

    iput-object p5, p0, Lcom/applovin/a/b/az;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/applovin/a/b/az;->b:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/applovin/a/b/az;->c:Lcom/applovin/a/b/da;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/a/b/cd;-><init>(Ljava/lang/String;Lcom/applovin/a/b/bd;Lcom/applovin/a/b/e;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/az;->c:Lcom/applovin/a/b/da;

    invoke-interface {v0, p1}, Lcom/applovin/a/b/da;->a(I)V

    return-void
.end method

.method protected a(Lcom/applovin/a/b/cz;Lcom/applovin/a/b/da;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/az;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/a/b/az;->f:Lcom/applovin/a/b/e;

    invoke-static {v0, v1}, Lcom/applovin/a/b/db;->a(Ljava/lang/String;Lcom/applovin/a/b/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/a/b/db;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/az;->b:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, p2}, Lcom/applovin/a/b/cz;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/a/b/da;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/az;->c:Lcom/applovin/a/b/da;

    invoke-interface {v0, p1, p2}, Lcom/applovin/a/b/da;->a(Lorg/json/JSONObject;I)V

    return-void
.end method
