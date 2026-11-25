.class Lcom/applovin/a/b/dg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/a/b/bp;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/ax;

.field final synthetic b:Lcom/applovin/a/b/f;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/f;Lcom/applovin/a/b/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/dg;->b:Lcom/applovin/a/b/f;

    iput-object p2, p0, Lcom/applovin/a/b/dg;->a:Lcom/applovin/a/b/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/a/b/dd;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/a/b/dg;->b:Lcom/applovin/a/b/f;

    iget-object v1, p0, Lcom/applovin/a/b/dg;->a:Lcom/applovin/a/b/ax;

    invoke-static {v0, v1, p1}, Lcom/applovin/a/b/f;->a(Lcom/applovin/a/b/f;Lcom/applovin/a/b/ax;Lcom/applovin/a/b/dd;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/dg;->b:Lcom/applovin/a/b/f;

    invoke-static {v1}, Lcom/applovin/a/b/f;->a(Lcom/applovin/a/b/f;)Lcom/applovin/a/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->s()Lcom/applovin/a/b/ar;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/a/b/dg;->a:Lcom/applovin/a/b/ax;

    invoke-virtual {v2}, Lcom/applovin/a/b/ax;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/a/b/ar;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/dg;->b:Lcom/applovin/a/b/f;

    invoke-static {v1}, Lcom/applovin/a/b/f;->a(Lcom/applovin/a/b/f;)Lcom/applovin/a/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v1

    const-string/jumbo v2, "EventServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to track event due to failure to convert event parameters into JSONObject for event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/a/b/dg;->a:Lcom/applovin/a/b/ax;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
