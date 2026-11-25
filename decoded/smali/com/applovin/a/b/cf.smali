.class Lcom/applovin/a/b/cf;
.super Lcom/applovin/a/b/ay;


# instance fields
.field private final a:Lcom/applovin/a/b/a;


# direct methods
.method public constructor <init>(Lcom/applovin/a/b/e;Lcom/applovin/c/a;)V
    .locals 1

    const-string/jumbo v0, "TaskReportReward"

    invoke-direct {p0, v0, p1}, Lcom/applovin/a/b/ay;-><init>(Ljava/lang/String;Lcom/applovin/a/b/e;)V

    check-cast p2, Lcom/applovin/a/b/a;

    iput-object p2, p0, Lcom/applovin/a/b/cf;->a:Lcom/applovin/a/b/a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/cf;)Lcom/applovin/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/cf;->a:Lcom/applovin/a/b/a;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/applovin/a/b/dk;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/cf;->a:Lcom/applovin/a/b/a;

    invoke-virtual {v1}, Lcom/applovin/a/b/a;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v1}, Lcom/applovin/c/p;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "clcode"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v1, "user_id"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/applovin/a/b/aq;->a()Lcom/applovin/a/b/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/cf;->a:Lcom/applovin/a/b/a;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/aq;->b(Lcom/applovin/c/a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v3, "result"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/a/b/cf;->a:Lcom/applovin/a/b/a;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/aq;->a(Lcom/applovin/c/a;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "params"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string/jumbo v1, "cr"

    new-instance v2, Lcom/applovin/a/b/ch;

    invoke-direct {v2, p0}, Lcom/applovin/a/b/ch;-><init>(Lcom/applovin/a/b/cf;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/applovin/a/b/cf;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/a/b/da;)V

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v1, "clcode"

    const-string/jumbo v3, "NO_CLCODE"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/applovin/a/b/cf;->g:Lcom/applovin/c/l;

    const-string/jumbo v1, "TaskReportReward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No reward result was found for ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/cf;->a:Lcom/applovin/a/b/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
