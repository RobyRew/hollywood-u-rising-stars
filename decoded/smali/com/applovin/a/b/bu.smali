.class Lcom/applovin/a/b/bu;
.super Lcom/applovin/a/b/bs;


# instance fields
.field private a:I

.field private final b:Lcom/applovin/b/b;


# direct methods
.method public constructor <init>(Lcom/applovin/a/b/e;ILcom/applovin/b/b;)V
    .locals 3

    sget-object v0, Lcom/applovin/a/b/g;->a:Lcom/applovin/c/g;

    sget-object v1, Lcom/applovin/a/b/g;->b:Lcom/applovin/c/h;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/applovin/a/b/bs;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;Lcom/applovin/a/b/e;)V

    iput-object p3, p0, Lcom/applovin/a/b/bu;->b:Lcom/applovin/b/b;

    iput p2, p0, Lcom/applovin/a/b/bu;->a:I

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/applovin/a/b/ba;
    .locals 3

    new-instance v0, Lcom/applovin/a/b/cc;

    iget-object v1, p0, Lcom/applovin/a/b/bu;->f:Lcom/applovin/a/b/e;

    iget-object v2, p0, Lcom/applovin/a/b/bu;->b:Lcom/applovin/b/b;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/a/b/cc;-><init>(Lorg/json/JSONObject;Lcom/applovin/a/b/e;Lcom/applovin/b/b;)V

    return-object v0
.end method

.method protected a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bu;->b:Lcom/applovin/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bu;->b:Lcom/applovin/b/b;

    invoke-interface {v0, p1}, Lcom/applovin/b/b;->a(I)V

    :cond_0
    return-void
.end method

.method protected b(Ljava/util/Map;)V
    .locals 2

    const-string/jumbo v0, "slot_count"

    iget v1, p0, Lcom/applovin/a/b/bu;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Ljava/util/Map;)V
    .locals 4

    invoke-static {}, Lcom/applovin/a/b/ci;->a()Lcom/applovin/a/b/ci;

    move-result-object v0

    const-string/jumbo v1, "tFNW"

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/ci;->a(Ljava/lang/String;)Lcom/applovin/a/b/ck;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "etfw"

    invoke-virtual {v0}, Lcom/applovin/a/b/ck;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ntfw"

    invoke-virtual {v0}, Lcom/applovin/a/b/ck;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "nad"

    iget-object v1, p0, Lcom/applovin/a/b/bu;->f:Lcom/applovin/a/b/e;

    invoke-static {v0, v1}, Lcom/applovin/a/b/db;->b(Ljava/lang/String;Lcom/applovin/a/b/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "tFNW"

    return-object v0
.end method
